---
aliases: [Maqola 2 v3, Ochiq Eko Ledger yakuniy, Kim nima chiqarayotganini kim biladi]
tags: [maqola, chiqindi, ochiqlik, ekologiya, yakuniy]
created: 2026-09-26
updated: 2026-09-26
tur: maqola
holat: qoralama (v3.0 — o'qish nusxasi)
sarlavha: "KIM NIMA CHIQARAYOTGANINI KIM BILADI? — chiqindi va ifloslanish hisobini ochiq qilish"
qisqacha: Matn + raqam + grafik ketma-ketligi; zanjir — ma'lumot → izoh → e'lon → murojaat; 10 grafik (N1–N10)
manba: workspace/YAKUNIY2/ (grafiklar) · Maqola-Ochiq-Eko-Ledger.md (v1 dalillar)
---

# KIM NIMA CHIQARAYOTGANINI KIM BILADI?
## Chiqindi va ifloslanish hisobini ochiq qilish: ma'lumot → izoh → e'lon → murojaat

**Aarhus majburiyati bor, raqamlar esa bir-biriga ishonmaydi — zanjirni inson qo'lidan olib tashlash g'oyasi**

> **QORALAMA v3.0 — o'qish nusxasi.** Ketma-ket o'qish uchun: matn → raqamlar → grafik → xulosa. Dalillar to'plami: `Maqola-Ochiq-Eko-Ledger.md` (v1) — **o'chirilmaydi**. Texnik implementatsiya (stack, modul) bu maqolada batafsil yozilmaydi — u `TZ-Ochiq-Eko-Ledger-MVP.md` da.

**Muallif:** [F.I.Sh.] · **Konferensiya:** MMIT'26 · **Sana:** 2026-09-26
**Kalit so'zlar:** chiqindi statistikasi · PRTR · Aarhus · ochiq ma'lumot · ekologik murojaat · avtomatik e'lon · aylanma iqtisodiyot · O'zbekiston

---

## 1. KIRISH — HUQUQIY MAJBURIYAT BOR, RAQAM YO'Q

2025-yil martda O'zbekiston **Aarhus konventsiyasiga** qo'shildi: axborotga kirish, qaror qabul qilishda ishtirok va ekologik odil sudlov — uchta majburiyat. **2025-yil 1-dekabrdan** davlat ekologik monitoring bazasi ommaviy ochiq bo'lishi shart. **2026-yil 1-oktabrdan** xavfli chiqindi hosil qiluvchilar choraklik hisobotni keyingi oyning **20-sanagach** topshiradi. **2027-yil 1-yanvardan** I–III sinf chiqindilarining har bir partiyasi uchun **raqamli pasport** ishga tushadi. 2030-yilga poligonlar soni **50% ga** qisqartiriladi.

Ya'ni huquqiy poydevor qurildi. Ammo savol qoladi: *bajarilishini kim va qanday o'lchaydi?* Bugun hisobot **inson zanjiridan** o'tadi — yig'ish → tahrir → tasdiqlash → nashr. Har bosqichda kechikish va tahrir ehtimoli bor. Natijasi raqamlarda ko'rinadi.

![N10 — Majburiyatlar taqvimi](png/N10.png)

**Bitta jumla bilan:** majburiyat bor, ishonch yo'q.

---

## 2. UCH QATLAM — MAQOLA NIMANI KO'RSATADI

| Qatlam | Savol | Nima tekshiriladi |
|---|---|---|
| **I. MA'LUMOT** | Raqam qayerdan keladi va nima uchun ziddiyatli? | hajm, qayta ishlash, datasetlar ulushi |
| **II. ZANJIR** | Ma'lumot qanday qilib e'longa aylanadi? | bir ma'lumot — besh kanal; zonalash qoidasi; LLM izohi |
| **III. ISHTIROK** | Fuqaro nima qila oladi? | murojaat moduli, ≤10 kun KPI, ochiq status, reyting |

Zanjirning mantig'i: **ma'lumot → standart izoh → bir vaqtda e'lon → murojaat → tuzatish**. Bir joyda kechikish bo'lsa, zanjirning qolgan qismi ham kechikadi.

> **Chegara:** bu maqola texnik loyiha emas. Arxitektura, stack va modullar — alohida TZ hujjatida.

---

## 3. I QATLAM — RAQAM QAYERDAN KELADI VA NEGA ZIDDIYATLI?

### 3.1. Hajm: ikki baravardan ortiq farq

![N1 — Chiqindi hajmi](png/N1.png)

Bir guruh rasmiy manbalarda **7,2 mln t/yil**, poligonlar hisobida **14 mln t/yil**, 2026-yil bahosida **15 mln t/yil** (IndexBox, 22.09.2026). Farq — hisob-kitob metodikasi va qamrovdan.

### 3.2. Qayta ishlash: to'rt xil raqam

![N2 — Qayta ishlash darajasi](png/N2.png)

Rasmiy **18–19%**, plastik bo'yicha amaliy **6,6%**, xalqaro baho **5–6%** (2026), agentlik rahbari 2025-yilda **3–4%** deb aytgan. Bu — «bir xil narsani to'rt xil o'lchash» holati.

### 3.3. Ochiq ma'lumotlar: 1,7%

![N8 — Ochiq datasetlar ulushi](png/N8.png)

`data.egov.uz` da ~10 000 dataset bor, ekologiya yo'nalishi — **~170 ta (≈1,7%)**. Ya'ni ochiqlik **huquqiy** darajada e'lon qilingan, **miqdoriy** darajada esa hali kichik.

> **Xulosa (I qatlam):** raqamlar ziddiyatli bo'lgani uchun emas, **manbasi va metodi ko'rsatilmagani uchun** ishonchsiz. Yechim — ko'proq nazorat emas, **ko'proq oshkoralik**.

---

## 4. HUQUQIY XRONOLOGIYA VA XALQARO ANDOZALAR

![N10 — Majburiyatlar taqvimi](png/N10.png)

| Andoza | Nima o'rnatadi | Saboq |
|---|---|---|
| **UNECE PRTR protokoli** (Kiev, 2003) | 86+ modda, obyekt kesimida, bepul, qidiriladigan, 15 oy ichida yangilanish | ochiqlik — **talab**, natija emas |
| **YI E-PRTR / IED 2.0** | 65 faoliyat turi, 91 ifloslantiruvchi, yillik nashr | hatto YIda ham **kechikish** muammosi bor |
| **AQSh TRI** | obyekt darajasida yillik e'lon | soddalik ishlaydi |
| **Xitoy IPE** | NNT platformasi, 31 viloyat, 337 shahar | fuqaro ishtiroki **texnologiya bilan** kuchayadi |

**Asosiy saboq:** hamma joyda ishlaydigan formula bir xil — **obyekt + modda + muddat + ochiq format**.

---

## 5. II QATLAM — ZANJIR: BIR MA'LUMOT, BESH KANAL

![N5 — Bir ma'lumot, besh kanal](png/N5.png)

Bugungi holatda e'lon **qo'lda** zanjirdan o'tadi. G'oya — zanjirni avtomatik qilish: bitta registrdan **bir vaqtda** sayt, API, Telegram-bot, matbuot (LLM) va xarita kanallariga chiqish; inson tahriri yo'q.

**Nima uchun bu institutsional talab, texnik qulaylik emas?** Chunki YI misolida ko'rinadi: kechikish **institut** darajasida hal qilinishi kerak. Avtomatik nashr — kechikishning oldini oluvchi yagona izchil vosita.

### 5.1. Zonalash qoidasi — matematik va bir xil

![N6 — To'rt rangli zonalash](png/N6.png)

- 🟢 **yashil** — normativ ichida;
- 🟡 **sariq** — normativdan 1–2× oralig'ida;
- 🔴 **qizil** — 2× dan yuqori;
- 🔵 **ko'k-neytral** — ma'lumot yo'q yoki verifikatsiya kutilmoqda.

Qoida **bir xil** va avtomatik: har chorak qayta hisoblanadi. Ko'k zona **atayin** qoldirilgan — «ma'lumot yo'q» ham ochiq ko'rsatiladi, chunki jimjitlik yashirishga aylanmasligi kerak.

### 5.2. Avtomatik izoh (LLM) — shartli

LLM faqat **shablon ichida** yozadi: raqam → norma → zona → sabab. Har bir raqam **manba havolasi** bilan. «Yolg'on aralashmasin» talabi shu bilan bajariladi: model **yangi raqam yaratmaydi**, faqat registrdagi raqamni izohlaydi.

---

## 6. III QATLAM — FUQARO: MUROJAAT VA ISHONCH

![N7 — Murojaat zanjiri](png/N7.png)

Murojaat **besh holatdan** o'tadi: yuborildi → ko'rilmoqda → javob berildi → hal qilindi → **ochiq arxiv**. **KPI: ≤10 kun**; har bir holat va muddat ommaviy ko'rinadi. «Javobsiz qolgan murojaat» statistikasi yashirilmaydi.

### 6.1. Ishonch arxitekturasi — besh qavat

![N9 — Besh qavatli himoya](png/N9.png)

1. **Manba va kalibrovka dalili** — har raqam qayerdan olingani;
2. **Qarama-qarshi signal tekshiruvi** — hajm, transport, ishlab chiqarish ko'rsatkichlari;
3. **Avtomatik izoh** — shablon + manba;
4. **E'tiroz va tuzatish oqimi** — korxona ham, fuqaro ham;
5. **Ochiq Eko-Reyting** (A+…D) — jamlangan ishonch ko'rsatkichi.

> Maqsad: raqam **«kimdir aytdi»** darajasidan **«davlat talab qiladi va tekshirish mumkin»** darajasiga chiqadi.

---

## 7. AMALIYOT — SOHA QAYERGA KETYAPTI (2026)

![N3 — Poligonlar](png/N3.png)

- 2025-yilda **47 poligon** yopilib, rekultivatsiya qilindi; **−32,6%** — 2026 maqsadi, **−50%** — 2030 maqsadi;
- **qayta yuklash stansiyalari**: 2026 — **28 ta**, 2030 gacha — **70 ta**;
- sanitariya tozalash qamrovi 2025-yilda **88%**, 2026 maqsadi — **90%**.

![N4 — Chiqindidan energiya](png/N4.png)

**WtE (chiqindidan energiya) — eng katta yangi fakt:**
- **6 zavod**, umumiy qiymati **$933 mln** (Xitoy kompaniyalari; Qashqadaryo, Samarqand, Toshkent, Andijon, Farg'ona, Namangan);
- to'liq ishga tushsa: **3,6 mln t/yil** qayta ishlanadi, **1,6 mlrd kVt·soat** elektr;
- **1,9 mln t** chiqindi qayta ishlanadi, **316 ming t** CO₂ kamayadi, **500** ish o'rni;
- poligonga tushadigan hajm **−40%**; Qashqadaryo zavodi yiliga **>500 ming t** va **−180 ming t CO₂**;
- **ishonch masalasi:** WtE zavodlarida **dioksin va kul** monitoringi qanday e'lon qilinadi? Bu — keyingi research savoli (§10).

---

## 8. MUHOKAMA — QARSHI FIKRLAR

1. **«Ochiq raqam ifloslanishni kamaytirmaydi»** → To'g'ri, o'zi kamaytirmaydi. Lekin **javobgarlikni** yaratadi: bilmagan raqam uchun hech kim javob bermaydi.
2. **«Korxona xatoni yashiradi»** → Javob: **qarama-qarshi signal** (hajm, transport, energiya) va ochiq e'tiroz oqimi.
3. **«Reyting siyosiylashadi»** → Reyting **yaxshilanish trendi** bo'yicha; metodika oldindan e'lon qilinadi.
4. **«WtE — yashil yechim emas»** → To'g'ri: kuydirish **saralashdan keyin** kelishi kerak; aks holda aylanma iqtisodiyot kuydirishga aylanadi.
5. **«Ko'k zona bo'shliqni yashiradi»** → Aksincha: ko'k zona **ochiq ko'rsatiladi** va har chorak hisobotda uning ulushi e'lon qilinadi.

---

## 9. XULOSA VA TAVSIYALAR

O'zbekistonda chiqindi sohasi **2025–2027-yillarda institutsional sakrash** qildi: Aarhus, ochiqlik muddati, choraklik hisobot, raqamli pasport, WtE zavodlari. Endi savol **bajarilishni o'lchashda**.

| # | Tavsiya | Kimga |
|---|---|---|
| 1 | Har bir e'lon qilingan raqamga **manba + metod** qo'shilsin | Qo'mita / agentlik |
| 2 | Ochiq datasetlar ulushini **1,7% → 5%** ga chiqarish rejasi | Raqamli texnologiyalar vazirligi |
| 3 | Zonalash qoidasi **yagona** va ochiq bo'lsin (rang + chegara) | Nazorat organi |
| 4 | Murojaat **≤10 kun** KPI ochiq kuzatilsin | Agentlik |
| 5 | WtE zavodlarida **dioksin monitoringi** majburiy e'lon qilinsin | Qo'mita / investor |
| 6 | Ko'k-neytral zona ulushi **har chorak** e'lon qilinsin | Platforma operatori |
| 7 | Poligonlar qisqarishi hisoboti **obyekt kesimida** berilsin | Agentlik |
| 8 | LLM izohida **raqam o'zgartirilmasin** — faqat registrdagi qiymat | Platforma |
| 9 | Fuqaro murojaati natijasi **arxivda ochiq** qolsin | Agentlik |
| 10 | PRTR tamoyiliga o'tish **pilot** bilan boshlansin (2 viloyat) | Qo'mita |

---

## 10. OCHIQ SAVOLLAR (kuzatuv ro'yxati)

1. 2026-yil oxirida WtE zavodlari ishga tushdimi va **qanday ko'rsatkichlar** bilan?
2. Dioksin/kul monitoringi **kim** olib boradi va **qayerda** e'lon qilinadi?
3. Ochiq datasetlar ulushi o'zgardi mi (1,7% dan)?
4. Murojaatlarning **o'rtacha javob muddati** qancha?
5. Poligonlar soni 2026-yilda **−32,6%** ga yetdimi?
6. Xavfli chiqindi bo'yicha **choraklik hisobotlar** amalda boshlandimi (01.10.2026)?

---

## 11. MANBALAR

| Kod | Manba | Daraja |
|---|---|---|
| N-1 | gazeta.uz (14.09.2026) — 6 WtE zavod, $933 mln, 3,6 mln t, 1,6 mlrd kVt·soat | M |
| N-2 | gazeta.uz (04.05.2026) — poligonlar −32,6% (2026) / −50% (2030); 28→70 qayta yuklash stansiyasi | M |
| N-3 | spot.uz (14.09.2026) — poligonga hajm −40%, $625 mln 5 hudud | M |
| N-4 | IndexBox (22.09.2026) — 15 mln t/yil, qayta ishlash 5–6% | M |
| N-5 | China Daily / Ningbo (06.05.2026) — Qashqadaryo >500 ming t, −180 ming t CO₂ | M |
| N-6 | UNECE PRTR protokoli (2003) · YI E-PRTR / IED 2.0 | R |
| N-7 | Aarhus konventsiyasi (2025-03) · monitoring bazasi 01.12.2025 · xavfli chiqindi 01.10.2026 · pasport 01.01.2027 | R |
| N-8 | data.egov.uz — ~10 000 dataset, ekologiya ~170 (≈1,7%) | R |
| N-9 | v1 dalillar to'plami: `Maqola-Ochiq-Eko-Ledger.md` (§2–§12) | — |
| N-10 | Loyiha 2 TZ: `TZ-Ochiq-Eko-Ledger-MVP.md` | — |

Grafiklar: `png/N1…N10.png` (shu fayl yonida).

---

## 12. QORALAMA — YAKUNIY TANLOV MUALLIFGA QOLDIRILADI

**12.1. Sarlavha variantlari:** (1) **«Kim nima chiqarayotganini kim biladi?»** (joriy) · (2) «Chiqindi: raqamlar ishonchsiz bo'lsa, siyosat ham ishonchsiz» · (3) «Besh kanal: ochiqlikni qo'ldan olish» · (4) «1,7%: ochiqlik qog'ozda qolgan raqam».

**12.2. Ishlatilmagan dalillar:** Ekopolitsiya choraklik **1 548–2 107** qoidabuzarlik va **~17%** ijro darajasi · PRTR «86 vs 91 modda» ziddiyati · YI E-PRTR 2018–2024 ma'lumotlari bloklangan davri · Xitoy IPE 337 shahar statistikasi · `Ekologik madaniyat kontsepsiyasi` tafsilotlari.

**12.3. Ziddiyatlar (ochiq qoldiriladi):** hajm 7,2 / 14 / 15 mln t · qayta ishlash 18–19% / 6,6% / 5–6% / 3–4% · PRTR moddalar soni 86 / 91.

---

**Hujjat holati:** QORALAMA v3.0 (2026-09-26). v1 (dalillar to'plami, 51 KB) **o'chirilmaydi**. Grafiklar `png/` papkasida. Yakuniy tanlov — muallif (Jasur) tomonidan.
