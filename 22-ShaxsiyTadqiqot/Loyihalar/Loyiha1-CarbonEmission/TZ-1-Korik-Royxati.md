---
aliases: [TZ-1 ko'rik ro'yxati]
tags: [shaxsiy-tadqiqot, loyiha1, tz-1, shovqin]
---

# TZ-1 — JUFTLIK KO'RIGI RO'YXATI (10.10.2026)

**Nima:** `TZ-1 (v1.0) — Shovqin qavatini o'lchash: pilot texnik topshiriq` ni **juftlik ishida** ko'rib chiqish
va tasdiqlash uchun **nazorat ro'yxati**. **Maqsad:** ko'rik 45 daqiqada tugaydi va natijasi — imzolangan TZ
yoki aniq tuzatishlar ro'yxati (u holda v1.1 shu kuni yoziladi).
**Sana:** 10.10.2026 · **TZ versiyasi:** v1.0 (`YAKUNIY/6-TZ-1-Shovqin-Pilot.md`, 16 719 B)

> **Ko'rikning bitta jumlalik mezoni:** TZ-1 «o'lchov dizayni» darajasida bo'lishi kerak —
> smeta emas, qurilma xaridi emas, natija emas. Har bir da'vo A/B-darajali manbaga yoki aniq
> o'lchov topshirig'iga bog'langan bo'lishi shart.

---

## 1. Ko'rik formati (45 daqiqa)

| Daqiqa | Qism | Nima qilinadi |
|---|---|---|
| 0–5 | Kontekst | Nima o'zgardi v0.1 → v1.0 (TZ-1 §0 jadvali) |
| 5–30 | Bandlar bo'yicha | §2 jadvalidagi 8 band — har biri «dalil → savol → qaror» tartibida |
| 30–40 | Ochiq nuqtalar | §4 jadvalidagi 6 qaror (har biriga tavsiya berilgan) |
| 40–45 | Imzo va reja | Tasdiq yoki tuzatishlar ro'yxati + T1 ga start (§5) |

**Rollar:** Muallif (TZ egasi, 1–6 bandlar bo'yicha javob beradi) · Juftlik/ko'ruvchi (mustaqil savollar,
manbalar tekshiruvi) · Metrolog (T2–T3 bo'yicha) · Korxona vakili (D1–D4 oqimlari bo'yicha, taklif qilinadi).

---

## 2. Tasdiqlanadigan 8 band ↔ dalil

| # | Band (TZ §) | Dalil fayl | Ko'ruvchi nima tekshiradi |
|---|---|---|---|
| 1 | Maqsad va savollar H1–H4 (§1) | TZ-1 §1 · `Tadqiqot_1B_Shovqin_Qavati_Davomi.md` §F | Har savol **o'lchanadigan kattalikka** bog'langanmi (T6/T3/T5/T7) |
| 2 | Obyekt mezonlari, 6 baholanadigan mezon, nomzodlar (§2) | TZ-1 §2 · 1B §E · B10 | Mezonlar obyektni **tanlaydimi yoki bahonami**; zaxira nomzod bormi |
| 3 | Strata va namuna: 3×30–40 = 90–120 juftlik (§3) | TZ-1 §3 · 1-tadqiqot | 20 daqiqalik oyna + **mustaqil kun** tanlash qoidasi aniqmi (soxta mustaqillik yo'q) |
| 4 | Ma'lumot almashish rejimi: D1–D5, kolonkalar, sifat (§4) | TZ-1 §4.1–4.6 · **qabul moduli** (`src/pilot_io.py`, `scripts/validate_pilot_data.py --selftest`) | Sxema **mashina o'qiydigan**mi; takroriy kalit rad etiladimi; audit izi bormi · **aniqlashtirish:** §4.2 kaliti `manba` ni ham o'z ichiga olishi kerak (aks holda cems va hisobot bir faylda turolmaydi) |
| 5 | Shartnoma bandlari (9 band, §5) | TZ-1 §5 | Har band keyin «kelishib olinadigan» emas, **bajariladigan** majburiyatmi |
| 6 | Kalendar T-Z…T7, mas'ul (§6) | TZ-1 §6 · `REJA-56-QADAM.md` (TZ-1 = 1-band) | T4 (o'lchov oynasi) tanqidiy yo'l sifatida ajratilganmi; zaxira +4 hafta bormi |
| 7 | Zona chegarasi mantiqi, yolg'on-ijobiy (§8.1) | TZ-1 §8.1 · `Tadqiqot_1C_Adolat_Paketi.md` · L1 `reports/eval_report.md` §FPR nazorati | Chegara **JCGM 106 + ILAC-G8 (w=U)** bilan asoslanganmi; yolg'on-ijobiy ustuni ochiqmi |
| 8 | Metodik qo'llanma loyihasi, 8 bo'lim (§8.2) | TZ-1 §8.2 | Kim uchun yozilishi aniqmi (B13: sertifikatlashtirish markazi) |

**Kalit bog'lanish (7-band):** pilotning zona chegarasi mantig'i Loyiha-1 dagi **aynan shu masala**ning
sanoat ko'rinishidir — u yerda FPR siyosati (median-slide: eng yomon chorak 0,1075 → 0,0903 ✅) allaqachon
ishlab, test bilan qo'riqlangan (`test_median_slide_preserves_fpr_under_location_shift`). Ko'rikda bu
o'xshashlikni ko'rsatish foydali: **«yolg'on-ijobiy — nazorat qilinadigan kattalik»** tamoyili ikki loyihada bir xil.

---

## 3. Ko'rikdan oldin — 10 daqiqalik texnik tekshiruv

| ☐ | Tekshiruv | Natija sharti |
|---|---|---|
| ☐ | `YAKUNIY/6-TZ-1-Shovqin-Pilot.md` mavjud, hajmi 16 719 B, sarlavha «v1.0» | Mos |
| ☐ | 1B havolalari: `1B §E #1/#3/#5/#6` — **6 joyda** uchraydi, barchasi §E jadvalidagi qatorlarga to'g'ri keladi | Xatosiz |
| ☐ | B-kodlar (B1–B13) TZ-1 §10 da ochib yozilgan, har birida daraja (A/R) bor | To'liq |
| ☐ | Sana bilan bog'liq ifodalar dinamik emas («20 kundan oshgan» tipida yozilgan) | Xatosiz |
| ☐ | Nomzod obyektlar (To'raqo'rg'on / Talimarjon / Angren IES + Toshkent / Farg'ona IEM) — manba: B10, sana bilan | Tasdiq |
| ☐ | Qabul moduli o'zini sinaydi: `python3 scripts/validate_pilot_data.py --selftest` → yaxshi fayl qabul · nuqsonli rad (3 xato sinfi) | Ishlaydi |
| ☐ | Huquqiy asos (§4.5) — O'z DSt 3605:2022, ISO/IEC 17025 7.6.3, VM-783/PQ-343 bog'lanishi | To'liq |
| ☐ | Fayl nusxalari: loyiha papkasi (`Tadqiqotlar/TZ-1-rasmiy-v1.0.md`) va `YAKUNIY/` bir xil (byte-darajada) | Bir xil |

---

## 4. Ko'rikda qaror talab qiladigan 6 ochiq nuqta (tavsiya bilan)

| # | Nuqta | Variantlar | Tavsiya |
|---|---|---|---|
| 1 | S3 stratasining obyekti | Sement **yoki** kimyo | **Sement** — PM qatori ustuvor (1B §E #3 topshirig'i shu yerda) |
| 2 | Etalon o'lchov (T3) ijrosi | X-shakl **yoki** RATA | **X-shakl avval** (B1: 0,5% aniqlik, arzon), RATA — imkon bo'lsa qo'shimcha |
| 3 | T4 oynasi boshlanishi | 07.12.2026 (reja) yoki kechroq | **07.12.2026** — T2/T3 parallel ketadi, kalendar zaxirasi +4 hafta saqlanadi |
| 4 | Shartnoma shakli (§5, 9 band) | Xat, memorandumi, qo'shimcha kelishuv | **Memorandum + ilova** (ma'lumot ro'yxati ilova sifatida — o'zgarsa, ilova yangilanadi) |
| 5 | Nashr tartibi (§4.4) | Ochiq kodlar bilan / korxona nomi bilan | **Kodlar bilan** (korxona birinchi bo'lib ko'radi, 5 ish kuni) |
| 6 | Ma'lumot saqlash muddati | Loyiha tugagach o'chirish / arxiv | **5 yil arxiv** (apellyatsiya muddatlari bilan mos), keyin o'chirish protokoli |

---

## 5. Ko'rikdan keyin darhol (T1: 12.10 – 06.11.2026)

| # | Qadam | Mas'ul | Muddat |
|---|---|---|---|
| 1 | 3 korxona bilan rasmiy aloqa (memorandum loyihasi, §5 kartasi) | Muallif | 12.10 – 18.10.2026 |
| 2 | Nomzodlarga §2 ballash (majburiy mezon → baholanadigan mezon) | Muallif + juftlik | 19.10 – 25.10.2026 |
| 3 | Uchrashuvlar: ma'lumot oqimlari (D1–D4) va kadans kelishuvi | Muallif + korxona | 26.10 – 06.11.2026 |
| 4 | 3 imzo → T2/T3 start (zanjir xaritasi + oqim baholash) | Metrolog + brigada | 09.11.2026 |

**TZ-1 tasdiqlansa:** versiya «v1.0 (imzolangan)» belgisi bilan muzlatiladi va o'zgartirishlar faqat
**ilova** sifatida kiritiladi (TZ matni o'zgarmaydi) — shartnomalar TZ-1 ning aynan qaysi versiyasiga
tayanishi aniq bo'lishi uchun.

---

## 6. Dalil xaritasi (ko'rikda qo'lda turadigan fayllar)

| Fayl | Nima uchun | Hajm |
|---|---|---|
| `YAKUNIY/6-TZ-1-Shovqin-Pilot.md` | Asosiy hujjat (ko'riladi) | 16 719 B |
| `01-Loyiha1-Carbon-Emission/Tadqiqotlar/Tadqiqot_1B_Shovqin_Qavati_Davomi.md` | B-kodlar, §E (7 noma'lum) | 19 595 B |
| `…/Tadqiqot_1C_Adolat_Paketi.md` | Apellyatsiya, yolg'on-ijobiy oshkorligi | 21 503 B |
| `01-Loyiha1-Carbon-Emission/MVP/reports/eval_report.md` | FPR siyosati natijasi (0,1075 → 0,0903) — 7-band dalili | 8 KB |
| `YAKUNIY/00-REJA-56-QADAM.md` | TZ-1 ning umumiy rejadagi o'rni (1-band) | — |

---

**Tayyorlagan:** muallif · **Sana:** 2026-10-01 · **Holat:** ko'rikka tayyor (TZ-1 v1.0 muzlatilgan)
