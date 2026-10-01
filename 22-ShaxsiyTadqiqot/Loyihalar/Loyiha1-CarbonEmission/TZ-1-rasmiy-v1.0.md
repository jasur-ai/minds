---
aliases: [TZ-1 rasmiy, Shovqin qavati piloti TZ]
tags: [shaxsiy-tadqiqot, loyiha1, tz]
created: 2026-09-30
updated: 2026-10-01
sektor: 22-ShaxsiyTadqiqot | Loyiha1
tur: tz
holat: muzlatilgan (10.10.2026 gacha faqat ilova)
sarlavha: TZ-1 — shovqin qavatini o'lchash piloti (v1.0, 10.10.2026 ko'rigi uchun)
qisqacha: T1 mas'ul mutaxassis/memorandum dan T7 natijagacha; Ilova K — kirishsiz rejim (ruxsat berilmasa 8 yo'l)
manba: workspace/01-Loyiha1-Carbon-Emission/Tadqiqotlar/TZ-1-rasmiy-v1.0.md

# TZ-1 (v1.0) — SHOVQIN QAVATINI O'LCHASH: PILOT TEXNIK TOPSHIRIQ

**Sana:** 2026-09-30 · **Asos:** `Tadqiqot-1B-Shovqin-Qavati-Davomi.md` §F (v0.1 qoralama) · **Muddat:** TZ-1 rasmiy v1.0 — **10.10.2026**
**Maqsad hujjati:** o'zbek sharoitida «shovqin qavati»ni **o'lchash**, ya'ni hisobot qiymati bilan uzluksiz
monitoring (CEMS) qiymati orasidagi farq taqsimotini olish va **zona chegaralarini asoslash**.
**Holat:** juftlik ishiga tayyor (rasmiy shakl: mezonlar + ma'lumot almashish rejimi + xatarlar + natija shabloni).

> **Bu hujjat nima emas:** smeta emas, qurilma xaridi emas, natija emas. Bu — **o'lchov dizayni**:
> kim, qanday, qancha va qaysi formatda ma'lumot beradi; natija qanday jadval ko'rinishida chiqadi.

---

## 0. v0.1 → v1.0: nima qo'shildi

| # | v0.1 da bor edi | v1.0 da qo'shildi |
|---|---|---|
| 1 | Maqsad, 3 strata, 100–120 juftlik, T1–T7 bosqichlar | Har bosqichga **sana va mas'ul rol** (§6) |
| 2 | «Obyekt tanlash (yozma rozilik)» | **Ballanadigan mezonlar jadvali** (majburiy + baholanadigan, §2) |
| 3 | «Ma'lumot almashish rejimi» nomi | **To'liq rejim**: nima, format, sxema, kadans, maxfiylik, huquqiy asos, audit (§4) |
| 4 | Natija: «uch zona jadvali + metodik qo'llanma» | **Shablonlar** + 7 noma'lum kattalik → o'lchov topshirig'i xaritasi (Ilova A) |
| 5 | — | **Xatarlar va chora** jadvali (§7) |

---

## 1. Maqsad va tekshiriladigan savollar

**Umumiy formula** (1-tadqiqotdan): farq = hisobot qiymati − CEMS qiymati; farq **belgili** (signed) o'lchanadi.

| Kod | Savol | Nega muhim | Qanday javob olinadi |
|---|---|---|---|
| **H1** | Uch juftlik (sektor × usul) kesimida farq taqsimoti qanday? | «Yagona shovqin qavati yo'q» — buni tasdiqlash/o'zgartirish | T6: kvantillar (5/25/50/75/95), MAD, og'irlik |
| **H2** | Shovqin **belgisi** qaysi bo'g'inda va qancha? | Oqim o'lchagichi xatosi (5–17%) hamma moddalarga **bir yo'nalishda** o'tadi (B1) → tizimli siljish | T3 + T6: surilish belgisi va kattaligi |
| **H3** | Farqning qancha qismi **metama'lumot** bilan izohlanadi? | 1-tadqiqot taxmini: uchdan biri o'lchov emas, metama'lumot | T5: uskuna jurnali × farq kesishmasi |
| **H4** | Zona chegarasi (qabul / shartli / rad) qaysi kvantilda turadi? | Chegara **yolg'on-ijobiy darajasi** bilan asoslanadi, «his-tuyg'u» bilan emas | T7: chegara stoli + yolg'on-ijobiy bahosi |

---

## 2. Obyekt tanlash mezonlari

### 2.1. Majburiy mezonlar (biri bajarilmasa — obyekt olinmaydi)

| # | Mezon | Tekshirish usuli | Nega majburiy |
|---|---|---|---|
| **M1** | **Yozma rozilik** (ma'lumot almashish shartnomasi) | Imzolangan shartnoma (§5) | Maxfiylik va qonuniylik |
| **M2** | Avtomatik monitoring stansiyasi **mavjud va ishlaydi** | O'rnatish dalili + oxirgi 90 kun ma'lumot uzluksizligi | CEMS qiymatisiz juftlik yo'q (B10, B12) |
| **M3** | Hisobot ma'lumoti **O'z DSt 3605:2022** bo'yicha (20 daqiqalik o'rtacha) beriladi | Hisobot shakli va tayyorlash tartibi | Bazaviy taqqoslash me'yori |
| **M4** | Texnik xizmat jurnali yuritiladi (to'xtash, ta'mir, kalibrovka) | Jurnal namunasi (oxirgi 6 oy) | H3 uchun shart — usiz izohlab bo'lmaydi |
| **M5** | Aloqa kanali: javobgar mutaxassis + ma'lumot beruvchi rol | Yozma ro'yxat (2 ism) | 8–12 haftalik oynada uzilishsiz ishlash |

### 2.2. Baholanadigan mezonlar (0–3 ball)

| # | Mezon | 0 | 3 | Manba |
|---|---|---|---|---|
| B1 | Hisobot ↔ fiskal (gaz/elektr) hisob solishtirilishi mumkin | yo'q | agregat darajada bor | 1B §E #6 |
| B2 | Laboratoriya bilan parallel o'lchov tajribasi bor | yo'q | doimiy amaliyot | 1B §E #3 |
| B3 | Yoqilg'i tarkibi o'zgaruvchanligi hujjatlashgan | yo'q | oylik tahlil | 1B §E #1 |
| B4 | Uskuna/yondash usuli almashinuvi tarixi bor | yo'q | so'nggi 3 yilda | 1B §E #5 |
| B5 | Oqim o'lchagichi hujjatlari to'liq (turi, joylashuvi) | yo'q | X-shakl/RATA izi bor | B1 |
| B6 | Oldingi inspeksiya/audit natijasi mavjud | yo'q | rasmiy hisobot | — |

**Tanlov:** majburiy 5/5 + baholanadigan ≥ **12/18 ball**. Teng bo'lganda — **stratifikatsiya muvozanati**
(sektor va usul turlari bir xil taqsimlanishi) ustuvor; ikkinchi mezon — logistika masofasi.

### 2.3. Nomzodlar (hozirgi bosqichda)

| Strata | Nomzodlar | Dalil |
|---|---|---|
| **S1 — yirik energetika (IES/IEM)** | To'raqo'rg'on, Talimarjon, Angren IES; Toshkent, Farg'ona IEM | Stansiyalar o'rnatilgani tasdiqlangan, geoaxborotga integratsiya (B10) |
| **S2 — energetika (ikkinchi juftlik)** | Yuqoridagi 5 dan 1 ta (S1 dan boshqa obyekt) | Xuddi shu ro'yxat |
| **S3 — sement yoki kimyo** | Nomzodlar Ekologiya vazirligi ro'yxatidan (§6, T1) | VM-783: uskunalar markazlashgan xarid orqali, TT shartlari markaz tomonidan (B13) |

> ⚠️ **Halol chegara:** bu **nomzodlar ro'yxati**, namuna emas — «o'rnatildi» ≠ «standartga muvofiq», «integratsiya qilindi» ≠ «ma'lumot ishonchli» (1B §D.2). Tanlov natijasi T1 da **shartnoma bilan** qat'iylashadi.

---

## 3. Strata va namuna hajmi

| Strata | Kim | Juftlik soni | Izoh |
|---|---|---|---|
| S1 | Energetika — 1-obyekt | 30–40 | Kunlik 72 juftlik (20 daqiqalik oyna) yig'iladi → **mustaqil kun** tanlanadi |
| S2 | Energetika — 2-obyekt | 30–40 | Usul farqi bo'lsa (X-shakl / S-zond / SMSS) — ajratib yoziladi |
| S3 | Sement yoki kimyo | 30–40 | Chang (PM) qatori ustuvor: 1B §E #3 topshirig'i shu yerda |
| **Jami** | | **90–120** | Har strata uchun ≥30 dan kam bo'lsa — natija «pilot, kengaytirilishi shart» deb belgilanadi |

**Aniqlik izohi (halol, formulali).** Median uchun normal yaqinlashuvda standart xato ≈ 1,253·σ/√n;

| n | Medianning 95% CI kengligi |
|---|---|
| 30 | ±0,45 σ |
| 40 | ±0,39 σ |

bu yerda σ — farqning (log-nisbatda) tarqalishi; qiymati **pilotning birinchi haftasida** baholanadi.
5 va 95-kvantillar uchun ishonch oralig'i **bootstrap** bilan chiqariladi (taqsimot og'ir dumli — normal formula noto'g'ri bo'lardi).
Agar birinchi hisob-kitobdan keyin CI kerakli aniqlikni bermasa — oyna 4 haftaga uzaytiriladi (§6, zaxira variant).

**Mustaqillik qoidasi:** bitta kunda 72 juftlik bor, lekin ular **korrelyatsiyalangan** (bir xil kun, bir xil sharoit).
Shuning uchun statistika **kunlik o'rtacha** ustida quriladi: 1 kun = 1 juftlik-hodisa. 30–40 → 30–40 **kun**.

---

## 4. Ma'lumot almashish rejimi

### 4.1. Nima beriladi (5 oqim)

| Kod | Ma'lumot | Manba | Kadans |
|---|---|---|---|
| **D1** | CEMS 20 daqiqalik o'rtacha: modda, qiymat, birlik, valid flag | Korxona stansiyasi | Kunlik fayl |
| **D2** | Hisobot qiymati (xuddi shu oyna) | Korxona ekologiya xizmati | Kunlik fayl |
| **D3** | Metama'lumot: uskuna holati, to'xtash/ta'mir, kalibrovka | Texnik xizmat jurnali | Haftalik yangilanish |
| **D4** | Oqim o'lchagichi: turi, joylashuvi, so'nggi tekshiruv natijasi | Metrologiya xizmati | Bir marta + o'zgarishda |
| **D5** | Etalon o'lchovlar (mustaqil brigada, RATA/X-shakl) | Tadqiqot guruhi | T3 bosqichida |

### 4.2. Format va sxema

- **Fayl:** CSV yoki Parquet · UTF-8 · sarlavha qatori majburiy
- **Vaqt:** ISO-8601, mahalliy UTC+5 (`2026-10-13T08:00:00+05:00`) — oyna **boshlanishi** yoziladi
- **Birlik:** mg/m³ (SO₂, NOₓ, CO) · µg/m³ (PM) · oqim m³/s — aralash birlik qabul qilinmaydi
- **Kalit:** `(obyekt_id, modda, oyna_boshi)` — takrorlanish bo'lsa **rad etiladi**

| Kolonka | Tur | Majburiy | Izoh |
|---|---|---|---|
| `obyekt_id` | matn | ✅ | Shartnomada berilgan kod (nomi emas) |
| `modda` | matn | ✅ | `SO2` / `NOx` / `CO` / `PM` |
| `oyna_boshi` | vaqt | ✅ | 20 daqiqalik oyna boshlanishi |
| `qiymat` | son | ✅ | Bo'sh bo'lsa — `valid=false` bilan yoziladi |
| `birlik` | matn | ✅ | §4.2 ro'yxatidan |
| `valid` | bool | ✅ | `false` = uskuna to'xtagan/norasmiy oyna |
| `manba` | matn | ✅ | `cems` \| `hisobot` \| `etalon` |
| `izoh` | matn | ➖ | Kalibrovka/to'xtash belgisi (D3 bilan bog'lanadi) |

### 4.3. Sifat nazorati (qabul sharti)

| Tekshiruv | Chegara | Chora |
|---|---|---|
| Yetishmayotgan oyna (CEMS) | > 10% (oyiga) | Obyekt «shartli»ga o'tadi, sabab D3 dan izohlanadi |
| Takroriy kalit | > 0 | Fayl qaytariladi |
| Oyna kattaligi ≠ 20 daq | > 1 daqiqa og'ish | Qator `valid=false` |
| Birlik mos emas | — | Qaytariladi |
| Valid flag bilan hisobot qiymati bir xil oynada | < 90% mos | Obyekt hisobot sifati «past» deb belgilanadi |

### 4.4. Maxfiylik va oshkoralik

| Qoida | Mazmun |
|---|---|
| Korxona nomi | **Faqat yozma rozilik bilan** e'lon qilinadi; aks holda `K-1`, `K-2`, `K-3` kodlari |
| Qiymatlar | Agregat darajada (taqsimot, kvantil) — xom qatorlar ommaga chiqmaydi |
| Shaxsiy ma'lumot | Yig'ilmaydi (operator ismi ham kerak emas) |
| Natijani korxona ko'rishi | **Shartnomada kafolatlanadi** — bir tomonlama nashr yo'q (ishonch qurilishi) |
| Yolg'on-ijobiy oshkorligi | Natija hisobotida **ochiq** ko'rsatiladi (tizim kimni «ayblagan»i statistikasi) |

### 4.5. Huquqiy asos

| Hujjat | Tegishli band |
|---|---|
| **O'z DSt 3605:2022** | 20 daqiqalik o'rtacha qiymat va hisobot tartibi (M3) |
| **ISO/IEC 17025:2019, 7.6.3** | Noaniqlikni baholash **majburiy**; izchillik bo'lmasa xulosa berilmaydi (B6) |
| **VM-783 (25.11.2024)** | Uskunalar va TT shartlari — Davlat ekologik sertifikatlashtirish va standartlashtirish markazi orqali (B13) |
| **PQ-343 (18.11.2025)** | Yagona platforma (01.09.2026) va fon stansiyalari — kelajakda D1/D2 ning avtomatik manbasi (B14) |
| **Metrologiya instituti qo'llanmasi (26.02.2024)** | Laboratoriyalararo izchillik va o'lchashlar ishonchliligi talabi (B6) |

### 4.6. Audit izi

Har fayl uchun: SHA-256 nazorat summasi · yuklash vaqti · kim yukladi (rol) · qatorlar soni.
Ma'lumot **append-only** saqlanadi (o'zgartirish taqiqlanadi; tuzatish — yangi versiya sifatida).
Ikki nusxa: tadqiqot ishchi nusxasi + mustaqil zaxira.

---

## 5. Shartnoma bandlari (T1: 3 ta shartnoma)

| # | Band | Nega |
|---|---|---|
| 1 | Tomonlar va obyekt identifikatori (`obyekt_id`) | Anonimlik va kuzatuvchanlik |
| 2 | Ma'lumot ro'yxati (D1–D4) + format (§4.2) | «Nima beriladi» masalasi keyinga qolmasin |
| 3 | Kadans va javob muddati (kunlik yuklash; xato bo'lsa 3 ish kuni) | Uzilishlarning oldini olish |
| 4 | Maxfiylik rejimi (§4.4) + nashr tartibi | Ikkala tomon himoyasi |
| 5 | Etalon o'lchovga ruxsat (T3: brigada kirishi, ish vaqti) | Mustaqil o'lchov kaliti |
| 6 | Natijani birinchi bo'lib korxona ko'rishi (5 ish kuni) | Ishonch va fakt tekshiruvi |
| 7 | Xarajatlarni taqsimlash (kim nimani to'laydi) | Aniqlik |
| 8 | Kutilmagan hodisa tartibi (uskuna almashinuvi, to'xtash) | Uzilishlarni izohlash |
| 9 | Shartnomani bekor qilish va ma'lumotni qaytarish | Huquqiy tozalik |

---

## 6. Ish rejasi (T1–T7) — sana va mas'ul

| Bosqich | Ish | Natija | Muddat | Mas'ul |
|---|---|---|---|---|
| **T-Z** | TZ-1 v1.0 tasdiqlash (juftlik ishi) | Imzolangan dizayn | **10.10.2026** | Muallif + juftlik |
| **T1** | Obyekt tanlash: §2 ballash + 3 shartnoma (§5) | 3 ta imzo | 12.10 – 06.11.2026 | Tadqiqot guruhi |
| **T2** | Zanjir xaritasi: har bo'g'in noaniqligi va **belgisi** | Zanjir jadvali (1B §A shaklida) | 09.11 – 21.11.2026 | Metrolog + korxona |
| **T3** | Oqim o'lchagichini mustaqil baholash (X-shakl/RATA) | Oqim noaniqligi % | 09.11 – 04.12.2026 | Mustaqil brigada |
| **T4** | Parallel o'lchov oynasi: hisobot ↔ CEMS (20 daq) | Juftliklar to'plami (90–120) | 07.12.2026 – 29.01.2027 (**8 hafta**, zaxira +4) | Korxona + guruh |
| **T5** | Metama'lumot qatlami (E jadvalidagi 7 maydon) | Izohlangan farqlar | T4 bilan birga | Texnik xizmat |
| **T6** | Statistika: kvantillar, MAD, og'irlik, surilish belgisi | Taqsimot profili | 01.02 – 12.02.2027 | Analitik |
| **T7** | Zonalar: qabul / shartli / rad + **yolg'on-ijobiy** | Chegara stoli | 15.02 – 26.02.2027 | Muallif + juftlik |
| **Yakun** | Metodik qo'llanma loyihasi (§8.2) | 8 bo'limli hujjat | 26.02.2027 | Muallif |

> **Umumiy kalendar:** ~20 hafta (o'lchov oynasi 8 hafta, zaxira bilan 12). T4 oynasi — tanqidiy yo'l;
> kechikish bo'lsa S3 stratasidan boshlab uzaytiriladi (u eng «yumshoq» rejimli).

---

## 7. Xatarlar va chora

| # | Xatar | Ehtimol | Ta'sir | Chora |
|---|---|---|---|---|
| 1 | Obyekt rozilik bermaydi (3 dan 1 tasi) | O'rta | Kalendar siljiydi | Nomzodlar zaxirasi (2.3) — S3 uchun 2 nomzod tayyor |
| 2 | CEMS ma'lumoti bo'shliqli (>10%) | O'rta | H1 aniqligi pasayadi | Bo'shliqlar D3 bilan izohlanadi; yetishmasa oyna uzaytiriladi |
| 3 | Oqim etaloni (RATA) mavjud emas | Past–o'rta | H2 zaiflashadi | X-shakl varianti + hujjat tahlili (B1: X-shakl 0,5%) |
| 4 | Ma'lumot sifati past (kalibrovka holati noma'lum) | O'rta | Natija «pilot» darajasida qoladi | T2 da zanjir xaritasi — sifatsiz bo'g'in **ochiq** belgilanadi |
| 5 | Nashr bosimi (sanoat norozi) | Past | Ish to'xtashi | §4.4: korxona birinchi bo'lib ko'radi; kodli nashr |
| 6 | Kalendar (TZ-1 juftlik ishi, boshqa topshiriqlar) | O'rta | T4 kechikishi | Bosqichlar mustaqil: T2/T3 T1 dan keyin darhol boshlanadi |

---

## 8. Natija shakli

### 8.1. Uch zona jadvali (asosiy natija)

| Sektor | Usul | n | Median (R) | MAD | 5% | 25% | 75% | 95% | **Qabul** | **Shartli** | **Rad** | Yolg'on-ijobiy |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Energetika | X-shakl USM | — | — | — | — | — | — | — | — | — | — | — |
| Energetika | S-zond / RATA | — | — | — | — | — | — | — | — | — | — | — |
| Sement | PM (gravimetriya bilan) | — | — | — | — | — | — | — | — | — | — | — |

- **Chegara mantiqi:** JCGM 106 (qaror qabul qilishda xato ehtimoli) + ILAC-G8:09/2019 (`w = U` — qo'riq
  zonasi). Ya'ni chegara **noaniqlikni hisobga olgan holda** qo'yiladi, «go'zal raqam» emas.
- **Yolg'on-ijobiy** — tizim «normadan oshgan» deb belgilagan, lekin etalon bilan tasdiqlanmagan holatlar ulushi.
  Bu ustun **ochiq** bo'ladi: u tizimning o'z xatosini ko'rsatadi (1C «adolat paketi» bilan bog'lanadi).

### 8.2. Metodik qo'llanma loyihasi (8 bo'lim)

1. Maqsad va qamrov · 2. Ta'riflar (hisobot, CEMS, etalon) · 3. Zanjir xaritasi va noaniqliklar ·
4. Namuna hajmi va mustaqillik · 5. Ma'lumot almashish rejimi (§4) · 6. Statistika (kvantil, MAD, bootstrap) ·
7. Zonalar va yolg'on-ijobiy · 8. Xatarlar va takrorlash tartibi.

**Kim uchun:** VM-783 va PQ-343 bo'yicha TT shartlarini yozuvchi **Davlat ekologik sertifikatlashtirish va
standartlashtirish markazi** (B13) — metodika kelajakda TT shartlariga kiritilishi mumkin.

---

## 9. Keyingi qadam (B paketi)

TZ-1 v1.0 dan keyin: **adolat paketi** — (a) apellyatsiya tartibi, (b) «tushuntirish kartasi» (fuqaro uchun
bir varaq: nima o'lchandi, qaysi chegara, qanday e'tiroz bildiriladi), (c) **yolg'on-ijobiy oshkorligi**
siyosati. Ular `Tadqiqot_1C_Adolat_Paketi.md` bilan bog'lanadi.

---

## Ilova K. Kirishsiz rejim (ruxsat berilmasa nima qilinadi) — R47

> **Sabab:** korxona hududga kirishga va D1–D5 ma'lumotiga ruxsat bermasligi mumkin.
> Bu ilova **zaxira rejimni** belgilaydi: isbot zanjiri to'xtamaydi, balki **ochiq manbalar +
> huquqiy talab** yo'llariga o'tadi. Batafsil: `YAKUNIY/13-KIRISHSIZ-YOLLAR.md`.

### K.1. Sakkiz yo'l (kod bilan)

| # | Yo'l | Isbot kuchi | Holat |
|---|---|---|---|
| 1 | Huquqiy talab (Aarhus 4-modda · Konstitutsiya 49 · 15 kun) | 5 | ✅ `requests_gen` + kuzatuv |
| 2 | Pastdan-yuqoriga oraliq (EMEP/EEA koeffitsienti × faoliyat) | 4 | ✅ `bands` |
| 3 | Orbita: qatlam og'ishi → oqim kg/s (TROPOMI/Carbon Mapper) | 3 | ✅ `plume` (CSF/IME) |
| 4 | Issiqlik/mash'al nuqtalari (NASA FIRMS) | 3 | ✅ `fetch_public.py` |
| 5 | Umumiy yo'l transsekti → Gauss inversiyasi | 3 | ✅ `transect` |
| 6 | Hududiy ekran (ochiq havo sifati, kalitsiz) | 2 | ✅ `screener` — **jonli** |
| 7 | Shamol bo'yicha «yuqori tomon» nomzodlari | 2 | ✅ `screener.attribute_hours` |
| 8 | Benford / dumaloq raqam skriningi | 1 | ✅ `benford` |

### K.2. Qaror qoidasi

Xulosa (obyekt darajasida) uchun **isbot kuchi ≥3 bo'lgan kamida 2 mustaqil yo'l** yoki
**5-kuchli rasmiy hujjat** kerak. Bitta 1–2 kuchli yo'l bilan «obyekt aybdor» deb aytilmaydi —
faqat «keyingi tekshiruvga asos» yoziladi.

### K.3. Nima isbotlanmaydi (ochiq)

Kirishsiz rejimda **U (o'lchov noaniqligi, k=2)** maydoni to'ldirilmaydi (etalon kerak), va
huquqbuzarlik **yuridik jihatdan** isbotlanmaydi — buni faqat nazorat organi xulosasi beradi.
Shu sababli kirishsiz natijalar T7 jadvalida «**A/B qatlam**» ustunida ko'rsatiladi.

### K.4. T1 o'zgaradi, bekor qilinmaydi

T1 ning maqsadi «ruxsat olish» dan **«talab yuborish va muddatni yuritish»** ga o'tadi:
`requests_gen.build_request()` 5 turdagi so'rovni (o'lchovlar, inspeksiya, ruxsatnoma, monitoring,
mash'al) 15 kunlik javob muddati va eskalatsiya sanasi bilan yaratadi; javob bo'lmasa — 9-modda
apellyatsiyasi. Rad javobi ham dalil (rad sababini tekshirish yo'lini ochadi).

### K.5. Natija shakli (K-ustun qo'shiladi)

`8. Natija shakli` jadvaliga qo'shimcha ustun: **«A/B qatlam (kirishsiz)»** — yo'l ID, isbot kuchi,
o'lchangan/baholangan qiymat va oraliq. Ustun bo'sh qolsa — sabab yoziladi («yo'l ishlamadi: …»).

### K.6. A-qatlam natijasi (birinchi 92 kun) — 2026-10-01

Ilova K ishga tushdi: **2026-07-01 → 2026-09-30** (2 208 soat) ochiq manbalar bilan tekshirildi
(batafsil: `YAKUNIY/15-A-QATLAM-HISOBOTI.md`).

| Ko'rsatkich | Natija |
|---|---|
| Kunlik ekran (CAMS, PM2,5, norma 35 µg/m³) | **0/92 kun** oshgan · eng yuqori kunlik 22,49 |
| Soatlik daraja | 108 soat (4,9%) > 25 µg/m³ · > 35 soat **yo'q** |
| Sektor tahlili (NE sektor, ±45°) | **NO2 lift 2,45 · PM2,5 2,33 · SO2 1,72 · PM10 1,09** |
| Nazorat (model ↔ stansiya) | CAMS 13,27 µg/m³ vs stansiya asosida 38,8 (2024) — model **past baholaydi** |
| Huquqiy talablar | 3 ta tayyor: javob **17.10.2026**, eskalatsiya **22.10.2026** |

**Metodik topilma (kodga ham tegdi):** prognoz API'si 92 kunlik oynani to'liq qoplamadi (shamol 66 kun) —
shu sababli tarixiy shamol **ERA5** arxividan olindi va qiymatlar **vaqt bo'yicha** juftlandi
(`screener.dirty_hours_by_time`); indeks bo'yicha juftlash xatosi test bilan qo'riqlandi.

---

## 10. Manbalar

**Ushbu hujjatdagi har bir tashqi da'vo B-kodlariga bog'langan** (`Tadqiqot-1B-Shovqin-Qavati-Davomi.md`, MANBALAR jadvali):

| Kod | Nima olinadi | Daraja |
|---|---|---|
| B1 | SMSS ±0,7% · USM 5–17% · X-shakl 0,5% · RATA 5–6% · oqim xatosi bir yo'nalishda | R |
| B2 | S-zond musbat siljish +20% gacha | R |
| B3 | 9 ppm NOₓ: ±9% (90% ishonch) · ekstremal −26…+34% | A |
| B4 | PM CEMS: 10% aniqlik, 95% mavjudlik — «yaxshi amaliyot» | R |
| B5 | Texas PEMS RATA: 20% aniqlik, r ≥ 0,8 | A |
| B6 | ISO/IEC 17025 7.6.3 — noaniqlik majburiy; izchillik talabi | R |
| B9 | UZ akkreditatsiya bo'shlig'i (noaniqlik hujjatlashtirish) | A |
| B10 | 5 nomzod obyekt: stansiya + geoaxborot integratsiyasi | R |
| B12 | Markazda 15 laboratoriya; Toshkentda majburiy postlar | M |
| B13 | VM-783: TT shartlari markaz tomonidan | R |
| B14 | PQ-343: yagona platforma 01.09.2026 | R |

**Normativ:** O'z DSt 3605:2022 · ISO/IEC 17025:2019 §7.6.3 · JCGM 106:2012 · ILAC-G8:09/2019.

---

## Ilova A. 7 noma'lum kattalik → o'lchov topshirig'i

| # | Noma'lum (1B §E) | Topshiriq | Qaysi bosqich | Natija mezoni |
|---|---|---|---|---|
| 1 | Mahalliy gaz tarkibi o'zgaruvchanligi | Yoqilg'i hisobining kirish noaniqligi | T2 | % (oylik) |
| 2 | Issiq/sovuq kunlarda oqim drifti | Nazorat kartalari arxivi (Shewhart/CUSUM) | T2 | drift trendi |
| 3 | PM o'lchovining real tarqalishi | Yillik 5 parallel gravimetriya | T4 | tarqalish profili |
| 4 | Metama'lumot bilan izohlanadigan farq ulushi | Jurnal × farq kesishmasi | T5 | **%** (H3 javobi) |
| 5 | Usul almashganda siljish | Ikki usulda bir vaqtda (2 hafta) | T4 | siljish belgisi |
| 6 | Hisobot ↔ fiskal tafovut | Agregat energiya balansi | T5 | % |
| 7 | Filtr/neytralizator samarasi | Kirish−chiqish o'lchovi | T4 | samaradorlik % (o'lchov noaniqligidan **alohida**) |
