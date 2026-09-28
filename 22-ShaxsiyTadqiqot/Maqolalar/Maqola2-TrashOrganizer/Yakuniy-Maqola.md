---
aliases: [Yakuniy maqola 2, "Kim nima chiqarayotganini kim biladi"]
tags: [maqola, yakuniy, chiqindi, ochiqlik, qayta-ishlash, WtE]
created: 2026-09-27
updated: 2026-09-27
tur: maqola
holat: yakuniy (complete) — maqola 2 ning oxirgi fayli
sarlavha: "KIM NIMA CHIQARAYOTGANINI KIM BILADI?"
qisqacha: "Chiqindi va ifloslanish hisobi oshkoraligi: ziddiyatli raqamlar, besh kanal, zonalash, murojaat, WtE — 10 grafik (N1-N10)"
---

# KIM NIMA CHIQARAYOTGANINI KIM BILADI?

**Chiqindi va ifloslanish hisobini ochiq qilish: ma'lumot → izoh → e'lon → murojaat — 15 mln tonna, 3–4% qayta ishlash va 6 ta WtE zavod ortidagi savol**

**Kalit so'zlar (9):** chiqindi hisobi · qayta ishlash · chiqindidan energiya (WtE) · ochiq ma'lumot · PRTR · zonalash · fuqaro murojaati (Aarhus) · Ochiq Eko Ledger · institutsional ishonch

**Annotatsiya.** O'zbekistonda bir vaqtda **7,2 / 14 / 15 mln tonna** yillik chiqindi hajmi va **18–19% / 6,6% / 5–6% / 3–4%** qayta ishlash ko'rsatkichi aytiladi. Raqamlar ziddiyatli emas — **metod va qamrov e'lon qilinmagani uchun ishonchsiz**. Maqola yechimni nazoratni kuchaytirishda emas, **oshkoralikda** ko'radi: bir registrdan bir vaqtda besh kanalga e'lon (sayt, API, bot, matbuot-LLM, xarita); to'rt rangli zonalash (🟢🟡🔴 + 🔵 «ma'lumot yo'q» ham ochiq); fuqaro murojaati uchun **≤10 kun** KPI va ochiq arxiv; 2026-yilgi WtE (6 zavod, $933 mln) amaliyoti va unda dioksin/kul monitoringining ochiqligi savoli.

> **YAKUNIY NUSXA (complete) — maqola 2 ning oxirgi fayli.** Dalil to'plami: `Maqola-Ochiq-Eko-Ledger.md` (v1, arxivda). Texnik implementatsiya bu maqolada yozilmagan — u `TZ-Ochiq-Eko-Ledger-MVP.md` (63 KB) da.

**Muallif:** Jasur · **Sana:** 2026-09-27


---

## 1. KIRISH — BIR YIL, IKKI HISOB, BITTA SAVOL

2026-yilning 1-martidan **avtomatik o'lchov uskunalari** o'rnatish majburiyati kuchga kirdi: shu kundan boshlab chiqindi gaz hajmi va tarkibi real vaqtda o'lchanadi. Kelasi oyning 1-oktabridan esa **xavfli chiqindi** hosil qiluvchilar har chorak hisobotini keyingi oyning 20-sanagiga qadar topshiradi. 2027-yil 1-yanvardan I–III sinf chiqindilarining har bir partiyasi **raqamli pasport** bilan yuritiladi.

Ya'ni bir yil ichida davlat ikki hisobni majburiy qildi: **o'lchov hisobi** (emissiya) va **moddiy hisob** (chiqindi). Lekin ikkalasida ham bir xil savol qoladi:

> *E'lon qilinayotgan raqam qanchalik aniq — va u asosida chiqarilgan qaror qanchalik adolatli?*

Bu savol sheriy emas. 2025-yilda ekologiya sohasida ~59 000 huquqbuzarlik qayd etildi (gazeta.uz, 01.05.2026, M). Bitta tekshiruvda 750 korxona ko'rilganda **1 trln 386 mlrd so'm** zarar va ~500 mansabdor shaxs ustidan jazo qo'llanildi (Sputnik, 05.08.2026, M). Chiqindi bo'yicha esa bir vaqtning o'zida **7,2 mln t**, **14 mln t** va **15 mln t** degan uch xil yillik hajm aytiladi (§10). Qarorlar ishlayapti — ishonch esa o'lchanmagan.

**Maqolaning shiori:** raqam ishonchsiz bo'lsa, qaror ham adolatsiz.

---

---

## 2. TUZILMA — IKKI QISM, BIR MANTIQ

| | **I QISM — EMISSIYA O'LCHOVI** | **II QISM — CHIQINDI HISOBI VA OCHIQLIK** |
|---|---|---|
| Savol | O'lchangan raqam qanchalik ishonchli? | Hisoblangan va e'lon qilingan raqam qanchalik ishonchli? |
| Zaif bo'g'in | **oqim** (5–17% noaniqlik) | **metod va qamrov** (hisob usuli e'lon qilinmagan) |
| Himoya taklifi | uch zonali qoida · tushuntirish kartasi · apellyatsiya | besh kanal · to'rt rangli zonalash · murojaat moduli |
| Pul o'lchovi | 5× jarima ↔ 50–70% imtiyoz ↔ 36 oy | investitsiya (WtE) va rag'bat |
| Asosiy dalil | 2 335 obyekt, ~2% avtomatik qamrov | 15 mln t chiqindi, 3–4% qayta ishlash |

**Umumiy mantiq (ikkala qismda bir xil):**

**ma'lumot → manba va noaniqlik bayoni → himoya (e'tiroz) → e'lon → tuzatish**

Qismlar ataylab aralashtirilmagan: I qism — o'lchov metodologiyasi, II qism — hisob va oshkoralik metodologiyasi. Ko'prik nuqtalari bitta: **manba havolasi** va **«ma'lumot yo'q» ham ochiq ko'rsatilishi** tamoyili.

---

---

## 7. II QISM — CHIQINDI: NEGA TO'RT XIL RAQAM AYTILADI?

### 7.1. Hajm: ikki baravardan ortiq farq

![N1 — Chiqindi hajmi](png/N1.png)

Bir vaqtda uch xil hajm yuritiladi: rasmiy hisobotlarda **7,2 mln t/yil**, poligonlar hisobida **14 mln t/yil**, xalqaro tahlilda **15 mln t/yil** (IndexBox, 22.09.2026, M; gazeta.uz/en 05.12.2025, M). Sabab — hisob metodikasi va qamrov: nima «chiqindi», nima «ikkilamchi xom ashyo», qaysi hajm poligonga ketadi va qaysi qismi hisobga olinmaydi.

### 7.2. Qayta ishlash: to'rt xil ko'rsatkich

![N2 — Qayta ishlash darajasi](png/N2.png)

- rasmiy e'lonlarda **18–19%**;
- plastik bo'yicha amaliy hisobda **6,6%**;
- xalqaro bahoda **5–6%** (2026);
- agentlik rahbari 2025-yilda **3–4%** deb aytgan.

Bu «bir xil narsani to'rt xil o'lchash» holati. Farqni yashiradigan narsa bitta: **manba va metod ko'rsatilmagani**.

### 7.3. Ikkinchi xulosa

> Ishonchsizlik nazorat yetishmasligidan emas, **hisob usuli e'lon qilinmaganidan** tug'iladi. Yechim — ko'proq nazorat emas, **ko'proq oshkoralik**.

---

---

## 8. II QISM — OCHIQLIK: BESH KANAL, TO'RT RANG

### 8.1. Bugungi ochiqlik hajmi

![N8 — Ochiq datasetlar ulushi](png/N8.png)

`data.egov.uz` da ~10 000 dataset bor, ekologiya yo'nalishi — **~170 ta (≈1,7%)** (R). Huquqiy ochiqlik e'lon qilingan (Aarhus 2025-03; monitoring bazasi 01.12.2025 — R), miqdoriy ochiqlik esa hali kichik.

### 8.2. Bir ma'lumot — besh kanal

![N5 — Bir ma'lumot, besh kanal](png/N5.png)

Bugun e'lon **inson zanjiridan** o'tadi: yig'ish → tahrir → tasdiqlash → nashr. Taklif — bir registrdan **bir vaqtda** besh kanalga chiqish: veb-sayt/dashboard · ochiq API · Telegram-bot · matbuot e'loni (LLM shablon asosida) · xarita qatlami.

Nima uchun bu **institutsional** talab? Chunki kechikish odamga emas, jarayonga xos: tahrir oynasi bo'lsa, kechikish qonuniy bo'lib qoladi. Avtomatik nashr — kechikishni yo'q qiluvchi yagona izchil vosita.

### 8.3. To'rt rangli zonalash

![N6 — Zonalash qoidasi](png/N6.png)

- 🟢 **yashil** — normativ ichida;
- 🟡 **sariq** — normativdan 1–2× oralig'ida;
- 🔴 **qizil** — 2× dan yuqori (ustuvor nazorat);
- 🔵 **ko'k-neytral** — **ma'lumot yo'q** yoki tekshiruv kutilmoqda.

Ko'k zona atayin kiritilgan: «ma'lumot yo'q» ham **ochiq ko'rsatiladi**, chunki jimjitlik yashirishga aylanmasligi kerak. Har chorak ko'k zona ulushi e'lon qilinadi.

---

---

## 9. II QISM — FUQARO VA ISHONCH

![N7 — Murojaat zanjiri](png/N7.png)

Murojaat besh holatdan o'tadi: **yuborildi → ko'rilmoqda → javob berildi → hal qilindi → ochiq arxiv**. KPI: **≤10 kun**; har holat va muddat ommaviy ko'rinadi; «javobsiz qolgan murojaat» statistikasi yashirilmaydi (Aarhus 9-modda — odil sudlov, R).

![N9 — Ishonchning besh qavati](png/N9.png)

Ishonch arxitekturasi besh qavatdan iborat:

1. **manba va kalibrovka dalili** — har raqam qayerdan olingani;
2. **qarama-qarshi signal** tekshiruvi — hajm, transport, energiya ko'rsatkichlari bir-biriga mos keladimi;
3. **avtomatik izoh** — LLM faqat shablon ichida yozadi, **raqamni o'zgartirmaydi**;
4. **e'tiroz va tuzatish oqimi** — korxona ham, fuqaro ham;
5. **ochiq Eko-Reyting** (yaxshilanish trendi bo'yicha).

---

---

## 10. II QISM — 2026 AMALIYOTI: POLIGONLAR, WtE, TAQVIM

![N3 — Poligonlar va qayta yuklash](png/N3.png)

- 2025-yilda **47 poligon** yopilib rekultivatsiya qilindi; 2026 maqsadi — **−32,6%**, 2030 maqsadi — **−50%** (gazeta.uz 04.05.2026, M);
- **qayta yuklash stansiyalari** 2026 — **28 ta**, 2030 gacha — **70 ta**;
- sanitariya qamrovi 2025 — **88%**, 2026 maqsadi — **90%**.

![N4 — Chiqindidan energiya](png/N4.png)

**WtE (chiqindidan energiya) — eng katta yangi fakt:**

- **6 zavod**, umumiy qiymati **$933 mln** (Qashqadaryo, Samarqand, Toshkent, Andijon, Farg'ona, Namangan — gazeta.uz 14.09.2026, M);
- to'liq quvvatda **3,6 mln t/yil** chiqindi qayta ishlanadi, **1,6 mlrd kVt·soat** elektr olinadi;
- poligonga yuklama **−40%**; Qashqadaryo zavodi: yiliga **>500 ming t**, **−180 ming t CO₂**, ~800 ish o'rni (China Daily/Ningbo 06.05.2026, M);
- Samarqand: **1 500 t/kun**, **240 mln kVt·soat/yil** (shahar chiqindisining ~70%), start 2027-yil boshi (asiaplus 04.05.2026, M);
- Navoiy: **$260 mln** xavfli chiqindi platformasi — **330 ming t/yil** (gazeta.uz 04.05.2026, M).

![N10 — Majburiyatlar taqvimi](png/N10.png)

**Ochiq savol:** WtE zavodlarida **dioksin va kul** monitoringi qanday e'lon qilinadi? Kuydirish **saralashdan keyin** kelishi kerak — aks holda aylanma iqtisodiyot kuydirishga aylanadi (§12.5).

---

---

## 8. ZIDDIYATLAR JADVALI (HISOB QISMI)

| # | Qism | Raqam A | Raqam B | Holat |
|---|---|---|---|---|
| 5 | II | 7,2 / 14 / 15 mln t hajm | uch xil metodika | ochiq — metod e'lon qilinsin |
| 6 | II | 18–19% (rasmiy) | 3–4% / 5–6% / 6,6% | ochiq — o'lchov chegarasi |
| 7 | II | PRTR 86 modda | 91 modda (YI) | izohlangan — protokol/registr farqi |

**Qoida:** ziddiyatlar yashirilmagan; yakuniy tanlov muallifga (§13).

---

## 9. MUHOKAMA — QARSHI FIKRLAR VA JAVOB

5. **«WtE — yashil yechim emas»** (II) → To'g'ri: kuydirish saralashdan **keyin** kelishi kerak; aks holda rag'bat noto'g'ri tomonga ishlaydi.
6. **«Ko'k zona bo'shliqni yashiradi»** (II) → Aksincha: ko'k zona ochiq ko'rsatiladi va uning ulushi har chorak e'lon qilinadi.
7. **«AI izohi xato qiladi»** (II) → LLM **yangi raqam yaratmaydi**: faqat registrdagi qiymatni shablon ichida izohlaydi, har bir raqam manba havolasi bilan.

**1–4 nuqtalar** (o'lchov bo'yicha) — maqola 1 da: `../Maqola1-CarbonEmission/Yakuniy-Maqola.md`.

---

## 10. XULOSA VA TAVSIYALAR (HISOB QISMI)

| # | Tavsiya | Kimga | Qism |
|---|---|---|---|
| 7 | Ochiq datasetlar ulushi **1,7% → 5%** rejasi | Raqamli texnologiyalar vazirligi | II |
| 8 | Besh kanalga **bir registrdan** e'lon | Platforma operatori | II |
| 9 | Zonalash qoidasi **yagona va matematik** bo'lsin | Agentlik | II |
| 10 | Murojaat **≤10 kun** KPI ochiq kuzatilsin | Agentlik | II |
| 11 | Ko'k zona ulushi **har chorak** e'lon qilinsin | Platforma | II |
| 12 | WtE zavodlarida **dioksin/kul monitoringi** majburiy e'lon | Qo'mita / investor | II |

---

## 11. OCHIQ SAVOLLAR (KUZATUV RO'YXATI)

6. WtE zavodlari ishga tushdimi va **qanday ko'rsatkichlar** bilan?
7. Dioksin/kul monitoringi kim tomonidan va qayerda e'lon qilinadi?
8. Ochiq datasetlar ulushi o'zgardi mi (1,7% dan)?
9. Murojaatlarning o'rtacha javob muddati qancha?
10. Poligonlar 2026-yilda **−32,6%** ga yetdimi?

**1–5 savollar** — maqola 1 da.

---

## 12. MANBALAR (N-TURKUM)

| Kod | Manba | Sana | Daraja |
|---|---|---|---|
| N-1 | gazeta.uz — 6 WtE zavod, $933 mln, 3,6 mln t, 1,6 mlrd kVt·soat | 14.09.2026 | M |
| N-2 | gazeta.uz — poligonlar −32,6% / −50%; 28→70 stansiya | 04.05.2026 | M |
| N-3 | spot.uz — poligonga −40%; $625 mln, 5 hudud | 14.09.2026 | M |
| N-4 | IndexBox — 15 mln t/yil; qayta ishlash 5–6% | 22.09.2026 | M |
| N-5 | China Daily/Ningbo — Qashqadaryo >500 ming t, −180 ming t CO₂ | 06.05.2026 | M |
| N-6 | asiaplus — Samarqand 1 500 t/kun, 240 mln kVt·soat/yil | 04.05.2026 | M |
| N-7 | PQ-4291 (lex.uz) — 2026–28: 70/26/1/27; ≥60% qayta ishlash | 17.04.2019 | R |
| N-8 | Aarhus konventsiyasi · monitoring 01.12.2025 · pasport 01.01.2027 | 2025–2027 | R |
| N-9 | data.egov.uz — ~10 000 dataset, ekologiya ~170 (≈1,7%) | 2026 | R |
| N-10 | UNECE PRTR protokoli · YI E-PRTR / IED 2.0 | 2003 / 2024 | R/A |

---

## 13. QORALAMA — YAKUNIY TANLOV MUALLIFGA QOLDIRILADI

**16.1. Sarlavha variantlari:**
1. **«Raqam ishonchsiz bo'lsa, qaror ham adolatsiz»** (joriy);
2. «Bir yil, ikki hisob: o'lchov va chiqindi — ishonch kim tekshiradi?»;
3. «2 335 obyekt va 15 mln tonna: ishonchning ikki kitobi»;
4. «Ko'rinmas ifloslanish, ko'rinmas raqam».

**16.2. Tuzilma qarorlari:**
- Ikki qismni **birlashtirish** (bor) yoki **ikki alohida maqola** sifatida chop etish (variant);
- 20 grafikdan qaysilari nashrda qoldirilishi (matn + 8–12 grafik variant);
- I qism va II qism sarlavhalarini umumiy shior ostida berish yoki alohida.

**16.3. Ochiq qoldirilgan savollar:** §14 (10 savol) — javoblar tashqi hisobotlarga bog'liq.

**16.4. Ishlatilmagan dalillar (arxiv):** 1 548–2 107 qoidabuzarlik (choraklik ekopolitsiya statistikasi) · ~17% ijro darajasi · Xitoy IPE 337 shahar · E-PRTR bloklangan davri · Ekologik madaniyat kontseptsiyasi.

---

**Hujjat holati:** YAKUNIY v5.0 (2026-09-27) — **complete nusxa** (I qism: 10 grafik; II qism: 10 grafik; jami 16 bo'lim). Manba maqolalar v1–v3 arxivda saqlanadi. Yakuniy tanlov — muallif (Jasur) tomonidan.
