---
aliases: [Apellyatsiya paketi, Adolat paketi implementatsiyasi]
tags: [shaxsiy-tadqiqot, loyiha2, adolat, apellyatsiya]
---

# APELLYATSIYA (ADOLAT) PAKETI — 1C ↔ L2 BOG'LASH XARITASI

**Nima:** `Tadqiqot_1C_Adolat_Paketi.md` (tadqiqot darajasi) qoidalarini **ishlaydigan modulga** aylantirish
xaritasi: nimasi **bajarildi** (kod + test), nimasi **ochiq** va nima uchun.
**Manbalar:** 1C §C.2 (tushuntirish kartasi, 12 maydon) · §D.1/D.2 (apellyatsiya muddatlari) ·
§E.2 (5 ochiq metrika) · L2 TZ §6.5 (7 holat, 10 kun SLA) · O'RQ-457 (30 ish kuni).
**Sana:** 2026-10-01 · **Holat:** prototip ishlaydi (`src/adolat.py`), jonli API'da ochiq.

> **Asosiy qoida:** tizim **hech narsani yashirmaydi** — ma'lumot bazada yo'q bo'lsa, maydon
> «mavjud emas» deb **sababi bilan** ko'rsatiladi. «0» yoki bo'sh joy bilan yashirish — taqiqlangan
> (1C §C.2 ruhi va L2 `docs/limitations.md` tamoyili).

---

## 1. Bajarilgan (kod, test, jonli API)

| 1C talabi | Modul / endpoint | Test | Holat |
|---|---|---|---|
| §C.2 — tushuntirish kartasi, **12 maydon** | `src/adolat.py: explain_card()`<br>`GET /v1/adolat/karta/{eco_id}` | `test_card_has_12_fields`, `test_card_filled_fields_are_real` | ✅ 12/12 maydon (7 tasi to'ldirilgan, 5 tasi sabab bilan ochiq) |
| §C.2 — «uch savol birinchi sahifada» (uz + ru) | `objection_text(card, lang)` → `etiroz_matni.uz/.ru` | `test_card_three_questions_answered`, `test_objection_text_uz_and_ru` | ✅ |
| §C.2/§D — «e'tiroz yo'li» (muddat, kanal, mas'ul) | karta 12-maydoni + `appeal_window()`<br>`GET /v1/adolat/oyna?qaror_sanasi=…` | `test_appeal_window_is_30_workdays`, `test_appeal_window_weekend_start` | ✅ 10 kun javob · 30 ish kuni oyna |
| §E.2 — **5 ochiq metrika** | `accuracy_report()`<br>`GET /v1/adolat/hisobot` | `test_report_has_5_metrics`, `test_report_counts_match_zone_data` | ✅ 3/5 hisoblanadi, 2 tasi «mavjud emas» + sabab |
| §E.2 — «1 va 3 juftlikda e'lon qilinadi» | `oskorlik_qoidasi` maydoni | `test_report_disclosure_rule` | ✅ qoida matnga singdirilgan |
| §D.2 — apellyatsiya oqimi 7 holat | L2 `src/murojaat/service.py` (mavjud) | L2 `tests/test_murojaat.py` | ✅ (R37 da qurilgan) |
| §C.2 — **chop etiladigan karta** (R46) | `card_html()` + `qr_svg()` · `GET /v1/adolat/karta/{eco_id}/html` · `scripts/build_card.py` | `test_card_html_has_qr`, `test_card_html_no_external_resources`, `test_card_pdf_one_page` | ✅ A4 HTML + **PDF 1 varaq**; QR — botga havola; tashqi resurs yo'q (oflayn chop) |
| §E.2 — **precision 8-holatga ulandi** (R46) | `_insp_result()` → `accuracy_report()` 3-metrika | `test_report_precision_before_inspection`, `test_report_precision_after_inspection`, `test_insp_result_parser` | ✅ Kod tayyor; qiymat inspeksiya yozuvi paydo bo'lgach chiqadi |
| Fuqaro kanali | Bot buyrug'i `/tushuntirish <eco_id>` | `test_tushuntirish_renders_three_questions`, `test_tushuntirish_404_message` | ✅ jonli botda |

**Jonli misol (E-1001):** «Nima o'lchandi: 2026-09-25 · 217,0 µg/m³ (auto_accredited) →
Nega shunday qaror: R = 217,0/35,0 = 6,20 → Qizil (R ≥ 2,0) → Qanday e'tiroz: bot/sayt, javob 10 kunda,
apellyatsiya 30 ish kuni». Ya'ni fuqaro **uchta savolga birinchi ekranda** javob oladi.

**Aniqlik hisoboti (hozirgi baza):** signallar **8** · sariq ulushi **50%** · precision — *mavjud emas
(inspeksiya yakuni maydoni yo'q)* · o'zgargan qarorlar **0%** · U/L — *mavjud emas (TZ-1 piloti to'ldiradi)*.

---

## 2. Ochiq qismlar (halol ro'yxat) va ularning yechimi

| # | Yetishmayotgani | Nega muhim | Yechim (kim beradi) | Qachon |
|---|---|---|---|---|
| 1 | **O'lchov noaniqligi U (k=2)** — karta 4-maydoni | 1C ning butun mavzusi: chegara noaniqliksiz oqlanmaydi (JCGM 106, ILAC-G8 `w=U`) | **TZ-1 piloti**: T2/T3 bosqichlari U ni beradi (oqim + kalibrovka) | T2–T3: 09.11 – 04.12.2026 |
| 2 | **Kalibrovka jurnali** — 7-maydon (hozir «qisman») | Qaror asosini tekshirish uchun | TZ-1 **D3 oqimi** (uskuna jurnali) | T4 bilan: 07.12.2026 |
| 3 | **Tasdiqlangan qizil signallar (precision)** — 3-metrika | Yolg'o-ijobiy darajasi ochiq bo'lmasa, ishonch qurilmaydi | **R46: kod tayyor** — 8-holat `yakunlandi_tekshiruv` (`natija=` majburiy) yozuvi paydo bo'lishi bilan hisoblanadi | Yo'naltirish moduli: himoyadan keyin |
| 4 | **Inson tekshiruvi** — 11-maydon | «Kim, qachon, xulosa» — javobgarlik | Hozir `audit_log` dan eng yaqin harakat; to'liq maydon inspektor moduli bilan | Himoyadan keyin |
| 5 | **Koeffitsient va summa** — 9/10-maydon | Moliyaviy qaror fuqaroga ta'sir qiladi | Platforma **jarima hisoblamaydi** (ochiq xabar qatlami) — maydon «qo'llanilmaydi»; nazorat organi qarori bilan birga to'ldiriladi | Dizayn qarori (o'zgarmaydi) |

**Muhim:** 1–4 qismlar **L2 ning o'z MVP chegarasidan tashqarida** (L2 = xabar va murojaat qatlami).
Shu sababli ular «nuqson» emas — **ma'lumot manbai ulanishini kutayotgan maydonlar** va karta buni
yashirmasdan ko'rsatadi. Aynan shu holat 1C §G («halol cheklovlar») ruhiga mos.

---

## 3. Ishga tushirish (reproducibility)

```bash
cd 02-Loyiha2-Trash-Organizer/MVP
# 1) modul testlari
python3 -m pytest -q tests/test_adolat.py            # 21 test
python3 -m pytest -q tests/test_murojaat.py           # 35 test (8-holat)
# 1b) karta: HTML + PDF (chop etish uchun)
python3 scripts/build_card.py --eco E-1001 --format both --out reports/kartalar/
#     → reports/kartalar/karta_E-1001.html (10 983 B) · karta_E-1001.pdf (37 581 B)
# 2) terminal ko'rinishi (demolar uchun)
python3 /home/user/tools/demo_probe.py adolat
# 3) jonli API
python3 -m uvicorn src.api.app:app --host 0.0.0.0 --port 8000
curl -s localhost:8000/v1/adolat/karta/E-1001 | python3 -m json.tool | head -20
curl -s localhost:8000/v1/adolat/hisobot
curl -s "localhost:8000/v1/adolat/oyna?qaror_sanasi=2026-09-25"
curl -s localhost:8000/v1/adolat/karta/E-1001/html | head -20
# 4) bot: /tushuntirish E-1001
```

**Testlar:** L2 jami **189** (adolat 21 + murojaat 35 + qolgan 133) — barchasi ✅.

---

## 4. Keyingi qadamlar (taklif)

| # | Qadam | Nega | Muddat |
|---|---|---|---|
| 1 | TZ-2 §6 ga **8-holat** taklifi: `yakunlandi_tekshiruv` (inspeksiya natijasi) — precision metrikasi shu yerdan oziqlanadi | 3-metrika «mavjud emas» dan «bor» ga o'tadi | Ko'rikda (10.10.2026) muhokama |
| 2 | Tushuntirish kartasini **PDF/QR** ko'rinishida chiqarish (karta pasporti) | Korxona/fuqaro qo'lida qoladigan dalil | 3 hafta (himoya oldi) |
| 3 | U maydoni ulanganda kartani **avtomatik qayta chiqarish** (versiyalash: `karta_v1`, `karta_v2`) | Bir qaror uchun ikki xil matn chiqmasligi (TZ-2 §8.5 izchillik qoidasi) | TZ-1 T6 dan keyin |
| 4 | Apellyatsiya statistikasini **choraklik hisobotga** kiritish (4-metrika allaqachon hisoblanadi) | «Apellyatsiya ishlayaptimi» savoliga raqamli javob | 15.10.2026 |
| 5 | Kartani **rus tilida ham** to'liq chiqarish (hozir e'tiroz matni ikki tilli, karta maydonlari uz) | 1C talabi: uz lotin + rus | 3 hafta |

---

## 5. Bog'lanish xaritasi (bitta jadvalda)

| Hujjat/qatlam | Roli |
|---|---|
| `Tadqiqot_1C_Adolat_Paketi.md` | **Tadqiqot** — nima uchun kerak (1C §A–§G), xalqaro asos (JCGM 106, ILAC-G8, OMB M-24-10, EU AI Act 86) |
| `TZ-1 (v1.0)` §8.1, §9 | **O'lchov** — U ni beradigan pilot dizayni (karta 4-maydoni shu yerdan to'ladi) |
| `TZ-2 (v1.3)` §6.5, §9 | **Platforma** — 7 holatli murojaat zanjiri, 10 kunlik SLA, cheklovlar |
| `src/adolat.py` + API + bot | **Implementatsiya** — karta, hisobot, oyna (shu hujjat) |
| `docs/limitations.md` | **Cheklovlar** — nima hali yo'q (U, kalibrovka jurnali, precision) |

---

**Tayyorlagan:** muallif · **Sana:** 2026-10-01 · **Holat:** prototip jonli (API + bot), testlar 16/16 ✅
