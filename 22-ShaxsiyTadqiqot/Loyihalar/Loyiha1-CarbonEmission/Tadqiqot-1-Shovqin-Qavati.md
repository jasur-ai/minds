---
aliases: [Shovqin qavati, Noise floor]
tags: [shaxsiy-tadqiqot, tadqiqot, tadqiqot]
created: 2026-09-18
updated: 2026-09-18
sektor: 22-ShaxsiyTadqiqot | Tadqiqot
tur: tadqiqot
holat: faol
sarlavha: Tadqiqot 1 — Shovqin qavati
qisqacha: Farq qachon normal, qachon signal: o'lchov aniqligi chegaralari
manba: workspace/01-Loyiha1-Carbon-Emission/Tadqiqotlar/Tadqiqot_1_Shovqin_Qavati.md
---

# TADQIQOT №1 — SHOVQIN QAVATI: O'LCHOV NOANIQLIGI VA QAROR CHEGARASI
### O'zbekiston sharoitida "qancha farq — normal, qancha farq — signal?" savoliga javob

**Sana:** 2026-yil sentabr · **Holat:** tadqiqot, kod yo'q
**Tegishli:** `Emissiya_Goya_Mukammalligi.md` §5, §15-savol 1

---

## 0. Savolning aniq qo'yilishi

G'oyaning butun mantiqi bitta farqqa tayanadi: **hisobotdagi raqam ↔ o'lchangan raqam**. Birinchi texnik savol shu: *qanday farq "shovqin", qanday farq "signal"?*

Bu **sof texnik savol emas**. U **huquqiy** (qaysi farqda jazo qo'llanadi), **iqtisodiy** (qaysi farq tekshiruvga arziydi) va **siyosiy** (qaysi farq e'lon qilinadi) savolga aylanadi. Shuning uchun javob raqam emas — **protokol** bo'lishi kerak.

---

## 1. Nega yagona raqam yo'q: uchta usul, uchta butunlay boshqa xato

Eng ko'p keltiriladigan raqam — **±10,8% (2σ)** — AQSH ko'mir stansiyalari uchun olingan. Lekin u **yagona haqiqat emas**. Manbalar bir-biriga zid raqamlar beradi, chunki usullar har xil:

| Baholash usuli | O'lchangan noaniqlik | Manba | Nega farq qiladi |
|---|---|---|---|
| **Yoqilg'i hisobi** (yoqilg'i miqdori × uglerod koeffitsienti) | **±2,0%** (NIST 1/10 masshtabli model); **±1,3–7,2%** (AQSH ko'mir, zavod o'rtachasi **±1,6%**) | Quick (2019); NIST modello tajribasi | Fizik kattalik (massa) bevosita o'lchanadi — eng ishonchli |
| **Tutun gazi o'lchovi** (CEMS) | **±11%** | Quick (2019), NIST modeli | Oqim + konsentratsiya + namlik → xatolar ko'payadi |
| **Ikki usul taqqoslash** (CEMS ↔ EIA, 210 ko'mir stansiyasi, 2009) | **±10,8% (2σ)**, o'rtacha **−0,7%** | tandfonline 2013 | — |
| **Sun'iy yo'ldosh (OCO-2)**, bitta o'tish | **1,4% – 26,7%**, o'rtacha **15,1%** | Sci. Remote Sensing 2021 | Shamol tezligi eng katta xato manbai |
| **Sun'iy yo'ldosh — yig'indi** (bir necha stansiya, ko'p qaytish) | **0,8%** | o'sha | Xatolar **tasodifiy** → yig'indida o'zaro yo'qoladi |

### 1.1 Bu jadvalning asosiy saboqi

> **Xatolar yo'nalishi va tabiati usulga bog'liq. "Umumiy shovqin qavati" degan narsa yo'q — shovqin qavati *usul juftligi* uchun o'lchanadi.**

Va yana bir muhim xulosa: **yig'indi ishonchli, yakka obyekt ishonchsiz**. Sun'iy yo'ldosh bitta stansiyada 15% xato qiladi, lekin o'nta stansiya yig'indisida 0,8% ga tushadi. Bu — "yakka dalil zaif, tizimli dalil kuchli" tamoyilining bevosita isboti.

---

## 2. Muhim topilma: farqning hammasi ham o'lchov xatosi emas

2023-yilgi (Quick 2019) tadqiqot 1065 ta AQSH stansiyasini tekshirib, farqlarning sabablarini **ajratdi**:

| Farq sababi | Qancha stansiyada | Mazmuni | G'oya uchun saboq |
|---|---|---|---|
| **Tuzatib bo'lmaydigan tizimli xato** | **118 / 1065** (11%) | Ba'zi stansiyalarda farq **20% dan oshdi** | "Tuzatib bo'lmaydigan" holat ham bor — tizim **"noma'lum"** deyishni bila olishi kerak |
| **Yo'qolgan qurilma (unit) xatosi** | **45** | CAMD bir necha qozonni ko'rsatmagan, EIA ko'rsatgan; kam bo'lgan qurilmalar zavod chiqarilishining **~6%** ini berardi | **Obyekt ↔ manba bog'lanishi** (ECO-ID) bo'lmasa, farq "soxtalashtirish"ga o'xshab ko'rinadi, aslida — hisob texnikasi |
| **Vaqtinchalik (temporal) xato** | **26** | Yil ichida ishga tushgan yoki yopilgan obyektlar | **Holat o'zgarishi** (qurilish, ta'mir, yopilish) farqni tushuntiradi — metama'lumot majburiy |
| **Obyekt identifikatsiyasi xatosi** | — | Ikki bazada obyekt turli kod bilan yuradi | **Yagona identifikator** shart |

**Va eng muhim statistik nuqta:** farqlar taqsimoti **normal emas** — **og'ir dumli (heavy-tailed)** va **musbat surilgan (positive bias)**.

> **Sabab va oqibat:** agar tizim normal taqsimotga tayanib chegara qo'ysa, **og'ir dumlarni butunlay o'tkazib yuboradi** — ya'ni eng katta farqlar (eng qiziq holatlar) ostonalardan tashqarida qoladi. Shuning uchun chegara **mediana + MAD** yoki **kvantil** asosida qurilishi kerak, o'rtacha + standart og'ish asosida emas.

---

## 3. Xalqaro javob protokoli: EN 14181 (to'rt bosqichli ishonch zanjiri)

Yevropa Ittifoqida bu muammo hal qilingan — standart bilan. **EN 14181** avtomatik o'lchash tizimlari (CEMS) uchun to'rt bosqichli sifat zanjirini belgilaydi:

| Bosqich | Nima qiladi | Kim bajaradi | Davriylik |
|---|---|---|---|
| **QAL1** | Uskuna **turini** sinovdan o'tkazish (sotib olishdan oldin) | Ishlab chiqaruvchi / akkreditlangan laboratoriya | Bir marta |
| **QAL2** | **Joyida kalibrovka** — parallel etalon o'lchovlar (SRM) bilan, kalibrovka funksiyasi va **noaniqlik** chiqariladi | **Mustaqil** akkreditlangan tashkilot | Har 3 yilda (Germaniya amaliyoti) |
| **QAL3** | Uzluksiz **drift va aniqlik** nazorati, nazorat kartalari (Shewhart / CUSUM) | **Operatorning o'zi** | Uzluksiz |
| **AST** | **Yillik nazorat sinovi** — kamida **5 ta parallel o'lchov** | Mustaqil tashkilot | Har yil |

### 3.1 Uch sabab — nega bu protokol bizga aynan kerak

1. **Mustaqillik qoidasi.** Standart bo'yicha: *"tester o'zi o'rnatgan tizimni sertifikatlashi mumkin emas"*. Bu — g'oyaning "yozish huquqini cheklash" tamoyilining rasmiy shakli.
2. **Noaniqlik budjeti.** EU ETS da CEMS noaniqligi QAL2 dagi standart og'ishlar asosida **hisoblanadi va chegara qiymat bilan solishtiriladi**. Ya'ni "noaniqlik" — sub'ektiv baho emas, **hujjatlashtirilgan kattalik**.
3. **AST yiqilsa** — kalibrovka bekor, o'sha davr ma'lumotlari **"yo'q ma'lumot"** protokoli bo'yicha qayta ishlanadi. Ya'ni **"o'lchov yo'q" holati qonuniy tan olingan va tartibga solingan**.

> **G'oyaga saboq:** bizning "shartli zona" (§5.2, uchinchi natija) — bu AST bilan qavatlangan g'oyaning soddalashtirilgan ko'rinishi. Xalqaro standart **allaqachon** "aniqlanmadi" degan natijani tan oladi.

---

## 4. O'zbekistonda nima bor: **O'z DSt 3605:2022**

Bu — tadqiqotning kutilmagan va muhim topilmasi. **2022-yil 18-martda** O'zbekistonning **o'z davlat standarti** tasdiqlangan:

> **O'z DSt 3605:2022** — *"Atmosfera havosini ifloslantiruvchi doimiy manbalarni avtomatik nazorat tizimlari. Umumiy va texnik talablar"*

Standartda allaqachon mavjud bo'lgan talablar (topilgan matndan):

| Talab | Mazmuni | Nega muhim |
|---|---|---|
| **Uzluksiz avtomatik o'lchash** | Avtomatik rejimda to'xtovsiz o'lchash | Bir martalik tekshiruv modelini istisno qiladi |
| **Modulli joylashtirish** | Tizim modul prinsipida | Kengaytirish mumkin |
| **Haftalik texnik xizmat** | Minimal haftada bir | Drift nazorati g'oyasi allaqachon bor |
| **Kalibrovka va xizmat yozuvlari** | Stansiyada bajarilgan **barcha harakatlar, shu jumladan gaz analizatorlari graduirovkasi** qayd etilishi shart | **Audit izi talabi bor** |
| **Ruxsatsiz kirishdan himoya** | Tizim **ma'lumotlar bazasidan ruxsatsiz foydalanishdan, uning elementlari va tizim faoliyatiga aralashuvdan himoyalangan** bo'lishi kerak | **Aynan biz taklif qilgan "yozish huquqini cheklash" — milliy standartda allaqachon yozilgan** |
| **O'lchanadigan nuqtalar** | 1 tadan 32 tagacha nuqta (ketma-ket o'lchash) | Bitta stansiya bir necha manbani qamraydi |
| **Ma'lumot shakli** | Tavsiyaviy ilovada **20 daqiqalik o'rtacha** konsentratsiyalar | Vaqt o'lchovi — 20 daqiqa |
| **Metrologik asos** | O'z DSt 8.009:2004 (o'lchashlar birligini ta'minlash davlat tizimi) ga havola | Milliy metrologik zanjir bor |

### 4.1 Nega bu fakt g'oyani o'zgartiradi

1. **Standart bor, lekin uni kim qo'llaydi — savol.** VM-783 va PQ-343 uskuna **o'rnatilishi**ni talab qiladi; O'z DSt 3605:2022 esa **qanday bo'lishi**ni belgilaydi. Bu ikki talabning **bog'lanishi (muvofiqlikni tekshirish)** hujjatlarda ko'rinmadi — va aynan shu bo'shliq **shovqin qavatining manbai** bo'ladi.
2. **Uskuna sifati haqida hech qanday ommaviy ma'lumot yo'q.** Ya'ni bugun kim o'rnatganini bilamiz (PQ-343 hisobotlari), lekin **o'lchov sifati qanday** — noma'lum.
3. **Metrologik quvvat mahalliy darajada bor.** Toshkent davlat texnika universitetida gaz analizatorlarini kalibrlash, **o'lchash noaniqligini baholash**, nazorat kartalari va **"moslik to'g'risida qaror qabul qilish"** metodikasi ishlab chiqilgan (dissertatsiya ishi) [A5]. Ya'ni shovqin qavatini o'lchash uchun **ilmiy quvvat O'zbekistonda mavjud** — tashqi konsultant shart emas.

---

## 5. Amaliy xulosa: shovqin qavatini qanday o'lchash kerak (protokol)

Quyidagi — **taklif etiladigan tartib**, kod emas, metodologiya:

**5.1. Juftliklarni aniqlash.** Uch juftlik o'lchanadi:
- hisobot ↔ CEMS/AMS (asosiy juftlik);
- hisobot ↔ fiskal/energetika hisobi (yoqilg'i, gaz, elektr);
- hisobot ↔ sun'iy yo'ldosh signali (M3, faqat yirik manbalar).

**5.2. Stratifikatsiya.** Har bir juftlik **sektor** (energetika, metallurgiya, sement, kimyo, o'g'it), **o'lchov usuli** (tutun gazi / yoqilg'i), **hajm sinfi** (yirik / o'rta) bo'yicha ajratiladi.

> *Sabab:* AQSH ma'lumotlari ko'rsatadi — yoqilg'i hisobi ±2%, tutun gazi ±11%. Bularni bitta qozonga solishtirish **noto'g'ri chegaraga** olib keladi va halol korxonalarni "qoidabuzar" qiladi.

**5.3. Statistik tayyorlash.** Har bir stratada: **kvantillar** (5-, 25-, 50-, 75-, 95-), **MAD**, **og'irlik koeffitsiyenti** (dumlarning og'irligi), va **musbat surilish bor-yo'qligi**. O'rtacha va σ faqat **taqqoslash uchun** keltiriladi, chegara sifatida emas.

**5.4. Uch zonani e'lon qilish:** qabul / **shartli** / rad etish (Eurachem-CITAC mantiqi).

**5.5. Metama'lumotni majburiy bog'lash.** Farqni tushuntirishi mumkin bo'lgan hodisalar **rasmiy maydon** sifatida kiritiladi: qurilish, ta'mir, ishga tushirish/yopilish, uskuna almashtirish, yoqilg'i turi o'zgarishi.

> *Sabab:* tadqiqot ko'rsatdi — 1065 stansiyaning **45 tasida** farq "yo'qolgan qurilma" tufayli, **26 tasida** — vaqtinchalik holat tufayli. Bular **signal emas, metama'lumot** muammosi. Metama'lumot maydoni bo'lmasa, tizim tizimli ravishda **yolg'on flag** chiqaradi.

**5.6. Raqamni e'lon qilishdan qo'rqmaslik.** Shovqin qavati e'lon qilinsa, tizimning yolg'on-ijobiy darajasi ham e'lon qilinishi mumkin. Bu — §8.2 dagi "xatolik darajasini oshkor qilish" tamoyilining texnik asosi.

---

## 6. Halol cheklovlar (bu tadqiqot nimani hal qilmadi)

| # | Hal qilinmagan savol | Nega |
|---|---|---|
| 1 | **UZ uchun aniq raqam** hali yo'q | ±10,8% — AQSH ko'mir stansiyalari; ±2%/±11% — AQSH NIST modeli. UZ ma'lumotlarida **hech kim o'lchamagan** |
| 2 | **O'z DSt 3605:2022 matni to'liq qo'lga kiritilmadi** | Standart to'liq matni rasmiy ro'yxatdan o'tish tartibida tarqatiladi; faqat tasdiqlash buyrug'i va tavsiyaviy ilovalar ochiq |
| 3 | **Uskunalar texnik jihatdan standartga mosmi** — noma'lum | VM-783/PQ-343 o'rnatishni talab qiladi; muvofiqlik auditining ommaviy natijasi yo'q |
| 4 | **Kalibrovka bozori** (akkkreditlangan mustaqil laboratoriyalar soni) | O'zbekistonda QAL2/AST ekvivalenti xizmatini kim ko'rsatadi — ochiq ma'lumot topilmadi |

**Nega bular yozildi?** Chunki "±10,8% ni ishlatamiz" deb yozish — **ko'chirilgan aniqlik**. G'oya uchun haqiqiy da'vo quyidagicha bo'lishi kerak: *"UZ ko'mir/gaz stansiyalarida shovqin qavati nashr etilgan tadqiqotlardagi tartibda (2%–11%) bo'lishi kutiladi; aniq qiymat pilotda o'lchanadi."*

---

## 7. Xulosa (uch jumla)

1. **Yagona shovqin qavati yo'q** — u usul juftligi va sektorga bog'liq; adabiyotda kuzatilgan oraliq **±2% (yoqilg'i hisobi) – ±11% (tutun gazi)**, ikki usul taqqoslashda **±10,8% (2σ)**.
2. **Farqlar normal taqsimlanmagan** (og'ir dumli, musbat surilgan) va **uchdan biri o'lchov xatosi emas, metama'lumot xatosi** (yo'qolgan qurilma, vaqtinchalik holat, identifikatsiya) → chegara kvantil asosida, metama'lumot maydoni majburiy.
3. **O'zbekistonda asos bor:** O'z DSt 3605:2022 (ruxsatsiz aralashuvdan himoya, kalibrovka yozuvlari, 20 daqiqalik o'rtacha) va mahalliy metrologik ilmiy quvvat — ya'ni shovqin qavatini **o'zimiz o'lchashimiz mumkin**, import qilish shart emas.

---

## MANBALAR

| Kod | Manba | Sana | Daraja | Havola |
|---|---|---|---|---|
| A1 | Quick va boshq., "Systematic error and uncertain CO₂ emissions from U.S. power plants" (*J. Air & Waste Manage. Assoc.*) — 1065 stansiya, 118 tasida tuzatib bo'lmaydigan xato, 45 ta yo'qolgan qurilma, 26 ta vaqtinchalik, og'ir dumli taqsimot, ±11% vs ±2% | 2019 | A | https://www.tandfonline.com/doi/full/10.1080/10962247.2019.1578702 |
| A2 | CEMS ↔ yoqilg'i hisobi taqqoslash, 210 ko'mir stansiyasi, ±10,8% (2σ), o'rtacha −0,7% | 2013 | A | https://doi.org/10.1080/10962247.2013.833146 |
| A3 | OCO-2 bilan stansiya chiqarilishini baholash — 1,4–26,7% (o'rtacha 15,1%), yig'indi 0,8% ichida | 2021 | A | https://www.sciencedirect.com/science/article/pii/S0034425721002996 |
| A4 | Gaz analizatorlarini metrologik nazorat qilish, o'lchash noaniqligi va moslik qarorlari (TDTU ilmiy ishi) | 2022 | A | https://api.ziyonet.uz/uploads/books/10001253/TnVPHLZlf8BVW9S.pdf |
| R1 | **O'z DSt 3605:2022** "Atmosfera havosini ifloslantiruvchi doimiy manbalarni avtomatik nazorat tizimlari. Umumiy va texnik talablar" — tasdiqlash buyrug'i | 18.03.2022 | R | https://lex.uz/docs/-5984627?type=doc |
| R2 | EN 14181 bo'yicha CEMS sifat zanjiri (QAL1–QAL3, AST) — amaliy izoh | 2026 | R | https://www.alamsekitar.com.my/insights/en-14181-explained-cems-quality-assurance/ |
| R3 | Germaniya UBA, KEMS hisoboti — EN 14181 bo'yicha noaniqlik hisobi EU ETS doirasida; QAL2 har 3 yil, AST har yil | amaldagi | R | https://www.dehst.de/SharedDocs/downloads/EN/publications/Experience_report-KEMS.pdf |
| R4 | Eurachem/CITAC "Compliance leaflet" — qaror qoidasi, qabul/rad etish zonalari, guard band | 2015–2021 | R | https://www.citac.group/wp-content/uploads/2021/02/eurachemcomplianceleaflet_EN.pdf |
| R5 | ISO/IEC 17025:2017, 7.8.6.1 — qaror qoidasi talabi (amaliy izoh) | 2017/2026 | R | https://www.isobudgets.com/statements-of-conformity-and-decision-rules/ |
| R6 | AQSH NRC — noaniqlikni hisobga olish/olmaslik siyosati ("simple acceptance") | 1990/amaldagi | R | https://www.nrc.gov/facilities-safety/radiation-protection/consideration-of-measurement-uncertainty-when-measuring-radiation-levels-approaching-regulatory-limits |
