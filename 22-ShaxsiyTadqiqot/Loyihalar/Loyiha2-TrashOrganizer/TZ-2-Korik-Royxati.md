---
aliases: [TZ-2 ko'rik ro'yxati]
tags: [shaxsiy-tadqiqot, loyiha2, tz-2, eko-ledger]
---

# TZ-2 — JUFTLIK KO'RIGI RO'YXATI (10.10.2026)

**Nima:** `5-TZ-Loyiha-2-Eko-Ledger.md` (80 144 B, v1.3 + ilova) — «Ochiq-Eko-Ledger MVP» texnik topshirig'ini
**juftlik ishida** ko'rib chiqish uchun nazorat ro'yxati. **Maqsad:** ko'rik 45 daqiqada tugaydi va natijasi —
imzolangan TZ yoki aniq tuzatishlar ro'yxati.
**Sana:** 10.10.2026 (TZ-1 bilan bir kunda — ikkala loyiha bir xil formatda ko'riladi).

> **Ko'rikning bitta jumlalik mezoni:** TZ-2 **yaratilayotgan tizim** darajasida bo'lishi kerak — g'oya darajasi
> emas (u `3-Loyiha-2-Goya.md` da), natija darajasi ham emas (u `MVP-NATIJALAR.md` da). Har mexanizm
> **huquqiy asosga** (§0.2) yoki **tekshiriladigan spetsifikatsiyaga** (§5, §6, §8) bog'langan bo'lishi shart.

---

## 1. Ko'rik formati (45 daqiqa)

| Daqiqa | Qism | Nima qilinadi |
|---|---|---|
| 0–5 | Da'vo va kontekst | TZ-2 §0.1 (60 soniyalik dalil) + §1 (nima isbotlanadi) |
| 5–30 | Bandlar bo'yicha | §2 jadvalidagi 8 band — «dalil → savol → qaror» |
| 30–40 | Ochiq nuqtalar | §4 jadvalidagi 8 qaror (har biriga tavsiya berilgan) |
| 40–45 | Imzo va reja | Tasdiq yoki tuzatishlar + himoyadan oldin ro'yxati (§5) |

**Rollar:** Muallif (TZ egasi) · Juftlik/ko'ruvchi (mustaqil savollar, huquqiy havolalar tekshiruvi) ·
Texnik ko'ruvchi (zona algoritmi §5 va LLM verifikatsiya §8) · Ixtiyoriy: yurist (Aarhus/PQ-184 bog'lanishi).

---

## 2. Tasdiqlanadigan 8 band ↔ dalil

| # | Band (TZ §) | Dalil | Ko'ruvchi nima tekshiradi |
|---|---|---|---|
| 1 | Huquqiy asos xaritasi — 7 mexanizm (§0.2) | TZ-2 §0.2 · Ilova C (26 manba) | Har mexanizm **mavjud hujjatga** tayanadimi (yangi qonun talab qilinmaydimi); havolalar URL + sana bilanmi |
| 2 | Zona algoritmi: R → rang, C → ishonch, 6 override (§5.1–5.6) | TZ-2 §5 · `MVP/src/zoning/` · `web/map.html` | Chegaralar (**R ≥ 2,0 / 1,0; C ≥ 0,5**) aniqmi; «ko'k ≠ yashil» tamoyili saqlanganmi |
| 3 | Murojaat moduli: 12 maydon, 7 holat, 10 kunlik SLA (§6) **+ adolat paketi** | TZ-2 §6 · `MVP/src/murojaat/` · SLA paneli (jonli) · **`src/adolat.py`** (karta, oyna, aniqlik hisoboti) | Har holat o'tishi **kun bilan** belgilanganmi; rad etishda **sabab majburiy**; apellyatsiya 30 kunmi |
| 4 | LLM matn qatlami: 6 qavat verifikatsiya (§8.4) | TZ-2 §8 · `MVP/src/llm/` · `tests/test_llm.py` (10 test) | **V2 (raqam tekshiruvi)** va **V3 (taqiqlangan so'zlar)** ishlaydimi; shablon fallback bormi; audit maydonlari (input_hash …) saqlanadimi |
| 5 | Arxitektura va stack asoslanishi (§7) | TZ-2 §7 (Mermaid) · `deploy/` (3 servis) · `docs/` | Har komponent **nega aynan shu** ekani yozilganmi; talaba/advisor konteksti hisobga olinganmi |
| 6 | Ma'lumot modeli va manba tanlash (§4) | TZ-2 §4 · `db/schema_{sqlite,postgis}.sql` | Sxema spetsifikatsiyaga mosmi; **append-only** talabi jadval darajasida bormi |
| 7 | Risklar va cheklovlar (§9) · Ilova B checklist | TZ-2 §9 · `docs/limitations.md` | Cheklovlar halol yozilganmi; «nima emas» bo'limi bormi |
| 8 | Yakuniy Gantt va resurs byudjeti (§10) | TZ-2 §10 · `MVP-NATIJALAR.md` (bajarilgan S0–S7) | Reja **bajarilgan ish bilan** solishtirilganda izchilmi (S0–S7 ✅) |

**Kalit bog'lanish (2-band):** zona chegarasi mantig'i (§5.1) Loyiha-1 dagi **FPR siyosati** bilan bir xil tamoyilga
tayanadi: chegara **xato ehtimoli** bilan oqlanadi, «go'zal raqam» bilan emas. L1 da bu tamoyil ishlab, test bilan
qo'riqlangan (`median-slide`, eng yomon chorak FPR 0,1075 → 0,0903 ✅); L2 da esa **ko'k-neytral ulushi** shu
tamoyilning ko'rsatkichi («necha % hudud ko'r zonada»).

---

## 3. Ko'rikdan oldin — 10 daqiqalik texnik tekshiruv

| ☐ | Tekshiruv (buyruq) | Natija sharti |
|---|---|---|
| ☐ | `cd 02-…/MVP && python3 -m pytest -q tests/` | **189 passed** |
| ☐ | `curl -s :8000/v1/kpi/sla` | JSON javob (jami 8 · median 4,0 · compliance 100%) |
| ☐ | `bash scripts/bot_healthcheck.sh` | **4/4** (API · GeoJSON · bot getMe · jarayon) |
| ☐ | `python3 tools/demo_probe.py dup` | sim 1.00 · `delete → PermissionError` (append-only dalili) |
| ☐ | `python3 tools/demo_probe.py llm` va `llm-fail` | PASS (hash) va **FAIL:V3** (taqiqlangan gap rad etiladi) |
| ☐ | `curl https://egaz-audit.pages.dev/map.html` | 200 · SVG + GeoJSON inline · tashqi resurs yo'q |
| ☐ | `python3 tools/demo_probe.py zones` | 4 rang: Z-YUN/Z-CHI red · Z-MUL yellow · Z-YAK/Z-SER green · Z-OLM blue 46% |
| ☐ | Huquqiy havolalar (TZ-2 Ilova C) — URL tekshiruvi | 200/202 (WAF 403 — «o'lik emas» deb belgilanadi) |
| ☐ | Nusxalar: loyiha papkasi ↔ `YAKUNIY/` ↔ vault (byte-darajada) | Bir xil |
| ☐ | `git log` — ochiq repo CI: L2 run #11 ✅ | Yashil |

---

## 4. Ko'rikda qaror talab qiladigan 8 ochiq nuqta (tavsiya bilan)

| # | Nuqta | Variantlar | Tavsiya |
|---|---|---|---|
| 1 | Xarita render | Leaflet (interaktiv, CDN) **yoki** statik SVG (oflayn) | **Ikkalasi**: demo/nashr uchun statik SVG (CDN'siz, sinfda ishlaydi), ishlab chiqarishda Leaflet — TZ §5.8 shunga moslanadi |
| 2 | LLM provayderi | Bulutli API **yoki** lokal model | **Bulutli + shablon fallback** (V2 rad etsa Jinja2 shablon — e'lon to'xtamaydi); lokal variant — keyingi bosqich |
| 3 | Ko'k-neytral KPI maqsadi | Maqsad qo'yish **yoki** faqat kuzatish | **Kuzatish + yillik pasaytirish maqsadi** (masalan −10%/yil) — sun'iy «yashillashtirish» bosimini oldini oladi |
| 4 | Apellyatsiya oynasi | 10 kun (o'z standarti) **yoki** 30 ish kuni (O'RQ-457) | **30 kun** — milliy tartib bilan mos (platforma standarti faqat **javob** uchun qat'iyroq: 10 kun) |
| 5 | Dublikat chegaralari | ≥0,85 merge · ≥0,55 guruh | **Tasdiq** (TZ Ilova A) — test bilan qo'riqlangan; 300 m/24 h oynasi saqlansin |
| 6 | Nashr kadansi | Har o'zgarishda **yoki** kunlik to'plam | **Kunlik to'plam** (GeoJSON + CSV) + har rang o'zgarishida alohida yozuv (§5.7 audit qoidasi) |
| 7 | **Adolat paketi doirasi** — tushuntirish kartasi (1C §C.2) va aniqlik hisoboti (§E.2) MVP hajmiga kiradimi? | (a) MVP ichida — prototip tayyor; (b) keyingi bosqich | **Prototip MVP ichida qoladi** (karta va hisobot ishlaydi), lekin **majburiy** deb e'lon qilish himoyadan keyin — U va precision maydonlari manbaga ulanmaguncha to'liq emas |
| 8 | **Inspeksiya yakuni holati** — `yakunlandi_tekshiruv` (TZ-2 §6.5 ga ilova) qabul qilinadimi? | (a) ha — ilova sifatida kiritiladi (kod va 7 test tayyor); (b) yo'q — kod MVP ichida qoladi, TZ matni tegmaydi | **(a)** — busiz `precision` (1C §E.2 3-metrikasi) umuman hisoblanmaydi; ilova shakli v1.3 muzlatishini buzmaydi |

---

## 5. Ko'rikdan keyin darhol (himoya oldi, 3 hafta)

| # | Qadam | Natija | Muddat |
|---|---|---|---|
| 1 | TZ-2 ni «v1.3 (imzolangan)» deb muzlatish; o'zgarishlar — ilova sifatida | Imzo protokoli | 10.10.2026 |
| 2 | Performance testi: 10 000 marker / 3 s (Ilova B bandi) | Test natijasi hisobotga | 13.10 – 17.10.2026 |
| 3 | `docs/limitations.md` to'ldirish (nima emas, qanday cheklov) | Hujjat | 13.10 – 17.10.2026 |
| 4 | GeoJSON/CSV eksport ochiq (Aarhus/PRTR mos) + `v1.0` git tag | Nashr | 20.10 – 24.10.2026 |
| 5 | LLM 100 holat tekshiruvi («uydirma raqam»siz) — V2 statistikasi | Jadval: 100/100 | 20.10 – 24.10.2026 |
| 6 | Demo video 3 ta (yakuniy) + himoya paketi | `YAKUNIY/video/` bilan birlashtirish | 27.10 – 31.10.2026 |

---

## 6. Dalil xaritasi (ko'rikda qo'lda turadigan fayllar)

| Fayl | Nima uchun | Hajm |
|---|---|---|
| `YAKUNIY/5-TZ-Loyiha-2-Eko-Ledger.md` | Asosiy hujjat (ko'riladi) | 80 144 B |
| `YAKUNIY/3-Loyiha-2-Goya.md` | G'oya qatlami (TZ dan ajratilgan) | — |
| `02-Loyiha2-Trash-Organizer/MVP-NATIJALAR.md` | Bajarilgan S0–S7 + jonli natijalar | — |
| `…/MVP/tests/` (7 fayl) | 189 test — spetsifikatsiya dalili | — |
| `…/MVP/docs/limitations.md` | Cheklovlar (7-band) | — |
| <https://egaz-audit.pages.dev/map.html> | Jonli nashr (xarita) | 23 794 B |
| `YAKUNIY/7-TZ-1-KORIK-ROYXATI.md` | Qardosh ro'yxat (L1) — format izchilligi uchun | — |

---

**Tayyorlagan:** muallif · **Sana:** 2026-10-01 · **Holat:** ko'rikka tayyor (TZ-2 v1.3)
