---
aliases: [EGAZ BALANS, Maqola 1 matni]
tags: [shaxsiy-tadqiqot, maqola1, maqola]
created: 2026-09-18
updated: 2026-09-18
sektor: 22-ShaxsiyTadqiqot | Maqola1
tur: maqola
holat: qoralama
sarlavha: Maqola 1 — EGAZ BALANS
qisqacha: Emissiya hisobi va uni ishonchli qilish muammosi (qoralama)
manba: workspace/03-Maqola1-Carbon-Emission/Maqola/Maqola1_EGAZ_BALANS.md
---

# E-GAZ-BALANS: O'ZBEKISTON EMISSIYA RAQAMLARIGA ISHONISH MUMKINMI? — HISOBOTNI AVTOMATIK TEKSHIRISH G'OYASI VA DALILLAR TO'PLAMI

> **QORALAMA (DRAFT / RAW COMPILATION).** Bu hujjat — nashrga tayyor maqola emas, balki manba tadqiqot hujjati (`Uzbekistan_Eko_DeepResearch_2026.md`) va qo'shimcha veb-qidiruv natijalarida topilgan **hamma dalil, raqam, iqtibos va taqqoslashning tartiblangan to'plami**. Yakuniy tanlov — nimani qoldirish, nimani qisqartirish — muallif (Jasur) tomonidan alohida hal qilinadi. Qisqartirishlar ushbu bosqichda qilinmagan; oxirida qo'shimcha materiallar uchun alohida bo'lim mavjud (§11).

**Muallif:** [F.I.Sh.] · **Tashkilot:** [Universitet / kafedra] · **Konferensiya:** MMIT'26  
**Kalit so'zlar:** issiqxona gazlari statistikasi, MRV, emissiya omillari, uglerod narxlash, CBAM, anomaliya aniqlash, ma'lumot ishonchliligi, O'zbekiston

---

## ABSTRAKT

*(Qoralama varianti — AI/avtomatlashtirish ipi bilan.)*

O'zbekiston 2022-yilda 209,6 mln t CO₂-ekv. issiqxona gazini chiqargan (BTR1/NIR, 2024), biroq o'sishning asosiy manbai energetika emas — qishloq xo'jaligi (+178%), sanoat jarayonlari (+159%) va chiqindilar (+116%) hisoblanadi: ya'ni emissiya tuzilmasi "millionlab kichik manba" tomon siljimoqda. Aynan shu holat an'anaviy nazorat usullarining chegarasini ko'rsatadi: 663 I toifa va 1 672 II toifa korxonani (VM-783) inspektor bilan qamrab olish mumkin, ammo mavjud bo'lmagan korxona darajasidagi majburiy hisobot, milliy emissiya omillari (EF) va yagona identifikator sharoitida raqamlarning ishonchliligi o'lchanmaydi ham. Maqolada statistik nomuvofiqliklarning dalillari (chiqindi hajmi bo'yicha 7,2–14 mln t/yil farqi, chorvachilik sonining "qayta ko'rib chiqilishi", turli koeffitsiyentlar bilan hisoblangan emissiyalar) to'planadi va shu dalillar asosida **hisobotlarni avtomatik, ko'p signalli tekshirish g'oyasi** (e'lon qilingan emissiyani mustaqil signallar — yoqilg'i, energiya, ishlab chiqarish hajmi — bilan qiyoslash) kontseptual darajada asoslanadi. Xalqaro tajriba (Xitoy milliy uglerod bozorining katta ma'lumotga asoslangan anomaliya aniqlash tizimi; Qozog'istonning 13 yillik "qog'ozdagi bozor" saboqi) muammoning institutsional o'lchamini ko'rsatadi. Qoralama qo'shimcha materiallar bo'limi bilan yakunlanadi — unda asosiy oqimga kirmagan raqamlar, ziddiyatlar va keyingi research uchun savollar saqlanadi.

---

## 1. KIRISH — NEGA QO'LDA TEKSHIRISH YETMAYDI?

*(AI/avtomatlashtirish ipi — 1-band: kirish.)*

mavjud imkoniyatni tasavvur qilaylik: O'zbekistonda emissiya bo'yicha hisobot berishi lozim bo'lgan punkt manbalar soni — **663 I toifa va 1 672 II toifa korxona, jami 2 335 obyekt** (VM-783, 2024). Har bir korxonada yiliga kamida bir marta hujjatli tekshiruv o'tkazish uchun zarur bo'lgan inspektor, auditor va laborant soni bugungi kadr salohiyatidan bir necha baravar ortiq. Tajriba shuni ko'rsatadiki, resurs cheklanganda tekshiruv "tanlab olish"ga aylanadi, tanlab olish esa — statistik ifodada — **ko'zbo'yamachilikning** iqtisodiy jihatdan foydali strategiyaga aylanishiga olib keladi. Shu sababdan savol texnik emas, arxitekturaviy: *tekshiruv inson soatiga emas, ma'lumot oqimiga asoslanishi kerak*.

Bu — bugungi kunning emas, qonunning ham mantig'i. "Issiqxona gazlari emissiyasini cheklash to'g'risida" qonun (2025) **2026-yil 9-yanvardan** kuchga kirdi; NDC 3.0 (2025-yil noyabr) 2035-yilga intensivlikni **−50%** (2010 bazasi) va 2055-yilga net-zero trayektoriyasini belgiladi; milliy uglerod birliklari reyestri ishga tushdi; iCRAFT bo'yicha policy-crediting kanalida dunyoda birinchi to'lov — **$7,5 mln / 500 ming t (~$15/t)** — olindi. Ya'ni O'zbekistonda "nima qilish kerak" bosqichi o'tib bo'ldi; endi savol "raqam ishonchli bo'ladimi"ga o'tdi.

Va aynan shu paytda eksport tarafi qattiq signal bermoqda. Yevropa Ittifoqining CBAM mexanizmi 2026-yildan moliyaviy rejimga o'tdi va rasmiy sertifikat narxini e'lon qildi: **2026-yil I chorak — 75,36 €/tCO₂, II chorak — 75,28 €/tCO₂** (Yevropa Komissiyasi, DG TAXUD; e'lon sanalari: 2026-yil 7-aprel va 6-iyul) **[R1, R2 — rasmiy]**. Va eng muhimi: **standart (default) qiymatlardan foydalangan importchi uchun ustama** joriy etildi — po'lat, sement, aluminiy va vodorod uchun 2026-yilda **10%**, 2027-yilda **20%**, 2028-yildan **30%** (o'g'itlar uchun 1%) **[R3 — rasmiy/tahliliy]**. Ya'ni hisobotning aniqligi to'g'ridan-to'g'ri **pulga** aylanadigan parametrga aylandi: Fastmarkets hisob-kitobiga ko'ra, Xitoy aluminiyi uchun CBAM yuki ~**144,13 €/t**, Turkiya uchun ~**36,37 €/t**, Hindistonning BF-BOF po'lati uchun ~**254,13 €/t** **[R4 — media/iqtisodiy tahlil]**.

Shu kontekstda ushbu qoralama uch savolga javob materialini to'playdi: **(1)** O'zbekiston emissiya statistikasi bugun qanday raqamlarga tayanadi va ular bir-biriga mos keladimi? **(2)** Nomuvofiqlikning institutsional va texnik sabablari nima? **(3)** Hisobot ishonchliligini tekshirishning texnologik g'oyasi (avtomatik anomaliya aniqlash) qanday tamoyillarga tayanishi kerak va uning shartlari qanday? **Loyihaning texnik implementatsiyasi (arxitektura, texnologiyalar, bosqichlar) ushbu qoralamada batafsil yozilmaydi** — u alohida hujjatda keltiriladi; bu yerda faqat g'oya va uning institutsional shartlari ko'rib chiqiladi.

---

## 2. GLOBAL VA MINTAQAVIY KONTEKST — "UGLEROD NARXI ENDI SAVDO SHARTI"

### 2.1. Fizik chegara: "assimilyatsiya" g'oyasini to'g'ri o'qish

Okean va quruqlik sinklari antropogen CO₂ning ~50%ini yutadi (so'nggi o'n yillikda okean **29%**, quruqlik **21%**). Lekin bu raqamni "tabiat o'zini tozalaydi" deb o'qish xato:

- **CO₂ — to'planuvchi (stock) ifloslantiruvchi**: u atmosferada asrlar davomida qoladi; "shuncha chiqarsa, shuncha vaqtda tozalanadi" formulasi faqat yutilish tezligi doimiy bo'lsa ishlaydi;
- iqlim o'zgarishining o'zi sinklarni zaiflashtiradi: 2015–2024-yillarda quruqlik sinki **25%**, okean sinki **7%**ga kichraydi (iqlimsiz stsenariyga nisbatan), jami **~15–20%** yo'qotish; atmosferadagi CO₂ o'sishining **8%i** aynan shu zaiflashuv hissasi;
- 2025-yilda global CO₂ emissiyasi **42,2 Gt** (fossil yoqilg'i: **38,1 Gt**); 1,5°C maqsadi uchun qolgan byudjet **170 Gt CO₂ ≈ 4 yil**.

**Amaliy xulosa (O'zbekiston uchun):** "assimilyatsiya salohiyatiga qarab cheklov" g'oyasi **lokal** ifloslantiruvchilar uchun to'g'ri (havo havzasi: Toshkent vodiysi, Chirchiq–Angren, Olmaliq), **CO₂ uchun esa global kvota mantig'i** ishlaydi. Ya'ni tizim ikki o'lchamli bo'lishi kerak: **lokal — "salohiyat" (mg/m³, daryo havzasi)**, **global — "kvota/byudjet" (t CO₂-ekv./YaIM birligi)**.

### 2.2. Iqtisodiy chegara: narxlash qamrovi va daromad

2025-yil holatiga dunyoda **80+ uglerod narxlash instrumenti** mavjud; ular global emissiyaning **~28%ini** qamrab olgan va **$107 mlrd** daromad keltirgan. O'rtacha narx ~**$19/t**; EU ETS o'rtacha **€65/t** (2024); CBAM sertifikati **€70–100/t** diapazonida baholangan **[manba: research hujjat §2.1]**. *(Yangi tekshiruv natijasi: 2026-yil uchun rasmiy CBAM narxlari aniqlandi — I chorak 75,36 €/t, II chorak 75,28 €/t [R1, R2 — rasmiy]; ya'ni avvalgi "€70–100" bahosi tasdiqlandi va aniqlashtirildi.)*

### 2.3. Savdo chegarasi: CBAM va uning kengayishi

**2026-yil 1-yanvardan** CBAM to'liq moliyaviy rejimga o'tdi: sement, o'g'it, po'lat, aluminiy, elektr energiya, vodorod bo'yicha sertifikat sotib olish majburiyati. Kengayish rejasi: po'lat/aluminiy qiymat zanjiridagi **~180 qo'shimcha pozitsiya** (mashina, asbob-uskuna, avtomobil qismlari, maishiy texnika).

**O'zbekiston uchun o'lchangan ta'sir (IMF bahosi):**
- Markaziy Osiyo + Kavkaz bo'yicha CBAM bilan qoplanadigan emissiyaning **90%i ikki mamlakatda**: Qozog'iston **60%**, **O'zbekiston 30%** (asosan po'lat, aluminiy, o'g'it);
- YaIM bo'yicha yuklamasi kichik — **~0,03% YaIM**, lekin **tarif ekvivalenti 30%**: ya'ni "o'rtacha iqtisodiy zarar" kichik, **ayrim korxona/mahsulot uchun halokatli**;
- Jahon banki baholashida O'zbekiston aluminiyining ekstensivligi Yevropa o'rtachasidan **toza** (Trade Exposure indeksi −0,1…−0,3%) — ya'ni verifikatsiyalangan "yashil" ma'lumot korxonalarga **raqobat ustunligi** beradi;
- Yevropaga eksport 2024-yilda **$1,7 mlrd**, tarkibida kimyo (o'g'it, uran) **54%**, to'qimachilik **8,4%**, qora/rangli metallar **8,2%**.

**Xulosa:** CBAM O'zbekiston uchun "hammasi yomon" degani emas. Ammo u **korxona darajasida o'lchangan, verifikatsiyalangan ma'lumotni** talab qiladi. Bugun bunday ma'lumot yo'q → eksportyorlar **default qiymatlar** bilan jarimalanadi. Demak, statistika va MRV — birinchi navbatda **eksport raqobatbardoshligi infratuzilmasi**.

### 2.4. Xalqaro AI/big-data tajribasi (alohida ajratiladi)

*(AI/avtomatlashtirish ipi — xalqaro kontekstda.)*

Bu qoralama uchun eng muhim xalqaro dalil — **Xitoy milliy uglerod bozori platformasi**. Ekologiya va atrof-muhit vazirligining (MEE) rasmiy hisobotiga ko'ra, milliy, viloyat va shahar darajasidagi vakolatli organlar **katta ma'lumot (big data) texnologiyasidan foydalanib anormal ma'lumotlarni o'z vaqtida aniqlaydi va erta ogohlantirish beradi**; hisobot davri bo'yicha kalit korxonalar reyestri, ma'lumot sifati rejalari, oylik ma'lumotlar, hisobot va verifikatsiya ustidan **to'liq jarayonli kuzatuv** yo'lga qo'yilgan **[R5 — rasmiy, MEE Progress Report 2024]**.

Shu bilan birga, mustaqil akademik tahlil Xitoy misolida muammoning to'liq yopilmaganini ko'rsatadi: MDPI *Land* jurnalida chop etilgan tadqiqot (2025) MRV qoidalarining majburiy emasligini, talablar nomuvofiqligini, **yagona axborot platformasi yo'qligini va ma'lumot aniqligi/ishonchliligi pastligini** asosiy to'siqlar sifatida qayd etadi **[R6 — akademik]**. Ya'ni: texnologiya yetarli emas — **arxitektura va institutsional majburiyat** hal qiluvchi.

Ikkinchi muhim xalqaro dalil — **Xitoy IPE (Institute of Public and Environmental Affairs, 2006)**: u **31 viloyat va 337 shahar** bo'yicha ekologik sifat, emissiya va ifloslanish nazorati yozuvlarini birlashtiradi; Blue Map xaritasi va AI-asosidagi Blue EcoChain tizimini yuritadi. 2026-yil mart holatiga oylik ko'rsatkich: **215 korxona 217 ta uglerod hisobotini, 269 korxona 273 ta PRTR hisobotini** oshkor qildi **[R7 — rasmiy/NNT]**. Ushbu platformaning kuchi — **reputatsion mexanizm**: yirik brendlar (Foxconn, Samsung, Decathlon, PUMA, Microsoft) IPE bazasidan yetkazib beruvchilarni tekshirish uchun foydalanadi; yozuvdan chiqarilish uchun **mustaqil audit** talab qilinadi **[R8 — akademik keys]**.

*(AI/ML tajribasi sifatida qo'shimcha kontekst: sanoat monitoringida o'qituvchisiz anomaliya aniqlash usullari — Isolation Forest, Autoencoder, One-Class SVM — bo'yicha qiyosiy tadqiqotlar mavjud; masalan SCADA telemetriyasida Autoencoder AUC 0,9667, Isolation Forest inferens tezligi 3,94 s/1,16 mln yozuv, One-Class SVM 143,87 s ko'rsatgan [R9 — akademik]. Bu ma'lumotlarning batafsil tahlili alohida hujjatga — prototip texnik topshirig'iga — tegishli; bu yerda faqat "bunday yondashuv ilmiy jihatdan o'rganilgan yo'nalish" ekani qayd etiladi.)*

### 2.5. Mintaqaviy taqqoslash: kim nimani o'rgatadi

| Mezon | **Yevropa (EU ETS+CBAM)** | **Qozog'iston (KazETS, 2013)** | **Xitoy (ETS, 2021)** | **Hindiston (CCTS, 2025–26)** | **O'zbekiston (2026)** |
|---|---|---|---|---|---|
| Qamrov | ~40%+ iqtisodiyot | ~50% CO₂, 200+ korxona | Quvvat → sement/po'lat/aluminiy (+1 500 korxona) | 490 korxona, 8 tarmoq | Majburiy cap **yo'q**; hisobot + bozor |
| Narx | €65–100 | **~$1/t** (bepul kvota) | >$10 (2030 prognoz: $30–50) | benchmark (tez orada) | kelishilgan: $15–30 (iCRAFT) |
| Asosiy saboq | cap; LRF; barqarorlik zaxirasi; daromadning 100%i iqlimga | **Bepul kvota + past narx + kuchsiz ijro = o'lja bo'lmaydi** | **AI platformasi: real-time yig'ish, anomaliya aniqlash, avtomatik verifikatsiya → ma'lumot manipulyatsiyasi keskin kamaydi** | Intensity-based (mutlaq cap yo'q) — o'sayotgan iqtisod uchun model | — |
| Institutsional talab | Reyestr, akkreditatsiya, jarima | MRV 2018–21, hali kadr tanqisligi | Milliy raqamli platforma + MEE | Reyestr + benchmark + treyderlar | MoEF + Ekologiya vazirligi + Uzhydromet |

**Markaziy Osiyo uchun amaliy saboqlar:**
1. **Bozor bo'lsa ham narx bo'lmasa — bu bozor emas.** KazETS 13 yildan keyin ham $1/t: sabab — kvotalar bepul, cap "biznes-reja"ga moslashtirilgan, jarima kuchsiz. O'zbekiston shu tuzoqqa tushmasligi kerak: **bozorni cheklovdan oldin qurmaslik**.
2. **Raqamlashtirish — qozonish sharti.** Xitoyning ajralib turuvchi xususiyati: milliy platforma + AI + anomaliya aniqlash.
3. **Intensivlik modeli (Hindiston) — o'sayotgan iqtisod uchun realist**, lekin uzoq muddatda mutlaq cap'ga o'tish kerak, aks holda "o'sish hisobiga qisqartirish" effekti yo'qoladi.

---

## 3. O'ZBEKISTON HOLATI — RAQAMLAR NEGA BIR-BIRIGA ISHONMAYDI?

### 3.1. Emissiya profili (BTR1 / NIR / NDC 3.0, 1990–2022 kadastri)

| Ko'rsatkich | Qiymat (2022) | Izoh |
|---|---|---|
| Jami GHG (LULUCF'siz) | **209,6 mln t CO₂-ekv.** | LULUCF hisobga olinsa — 201,2 mln t |
| Gazlar tarkibi | CO₂ **64,7%** (~135,6 Mt); **CH₄ 28,7% (60,2 Mt)**; N₂O **6,1%** (12,7 Mt); HFC 0,5% | Metan — strategik dastak |
| Energetika | **133,5 Mt (63,6%)** | 1990-yilda 82% edi |
| Qishloq xo'jaligi | ~**17,6%** (~37 Mt) | 1990: 8% → **+178%** |
| IPPU (sanoat jarayonlari) | ~**14–15%** (~30 Mt) | **+159%** |
| Chiqindilar | **10,5 Mt (5,0%)** | **+116%**; metanning **16,1%i** shu yerda |
| Transport | ~**12 Mt** (road transport 2022: **11,9 Mt**) | 730 ming+ Toshkent avtomobili, eski park |
| Bino/uy-joy | ~**20 Mt** (residential fuel combustion) | isitish (ko'mir/gaz), samarasiz binolar |
| LULUCF yutilishi | **−8,5 Mt** | yutilish **−47,3%** ga kamaygan |
| YaIM uglerod sig'imi | 2,85 → **1,62 kg CO₂-ekv./$** (2010→2022) | maqsad: 2035-da −50% (2010) |
| Aholi jon boshiga | ~**5,5 t CO₂-ekv.** | dunyo o'rtachasidan past, lekin o'sish trendida |
| Eng tez o'sish davri | **2018–2022** | "endi muammo boshlangan" davr |

**Metan balansi (asosiy ilmiy-iqtisodiy dalil):** jami metan emissiyasining **42,2%i qishloq xo'jaligida** (chorvachilik enterik fermentatsiyasi, go'ng, sholi, o'g'it), **16,1%i chiqindilar sektorida** (poligonlar, oqova suv). Metan — texnik jihatdan eng tez va arzon qisqartiriladigan gaz; demak chiqindi va agro statistikasi ayni paytda iqlim siyosatining eng samarali dastagi.

*(AI/avtomatlashtirish ipi — mahalliy holatga o'tish.)* Yuqoridagi jadvaldagi uch satr — **+178%, +159%, +116%** — texnik jihatdan bir xil xususiyatga ega: ular **mayda, tarqoq, ko'p sonli manbalar** hissasi. Punkt manba (yirik korxona) uchun o'lchov — hisoblagich masalasi; diffuz manba uchun esa **faqat uch manba birgalikda** ishlaydi: (a) ma'muriy registrlar (veterinariya, o'g'it savdosi, ekin maydoni), (b) statistik tanlanma, (c) masofadan zondlash (sun'iy yo'ldosh). Bu uch manbani qo'lda solishtirish amalda imkonsiz — bu yerda avtomatlashtirish **ixtiyoriy emas, yagona yo'l**.

### 3.2. Siyosat va huquq xronologiyasi

| Yil | Hujjat / hodisa | Ahamiyati |
|---|---|---|
| 2019 | **PF-4477** — "Yashil iqtisodiyotga o'tish" strategiyasi | Institutsional karkas |
| 2021 | NDC 2.0 | 2030-yilga intensivlik **−35%** |
| 2022 (dek.) | **PQ-436** | MRV tizimini 2024-yil 1-yanvardan to'liq joriy etish topshirig'i |
| 2023 (may) | **PF-81** | Ifloslantiruvchi manbalarni avtomatik monitoring bilan qamrash grafigi (I toifa — 2025-01-07gacha, II toifa — 2025-yil oxiri); **$100 mln** kredit liniyasi; "ifloslantiruvchi to'laydi" to'lovlarini qonun darajasida tartibga solish |
| 2024 (yanv.) | **PF-5** | Chiqindilarni boshqarish islohi, "yashil subsidiyalar", 2024–2028 manzilli dasturlar |
| 2024 (iyul) | **UP-106** | Iqlim kengashi Prezident huzurida, Milliy iqlim markazi |
| 2024 (noy.) | **BTR1 + NIR** (1990–2022); **VM-783** | Xalqaro talabga javob beradigan birinchi to'liq hisobot; I/II toifa tekshirish dasturi (**663 / 1 672**) |
| 2025 (mart) | **Aarhus konventsiyasiga qo'shilish** | Ekologik axborotga ochiqlik — huquqiy majburiyat |
| 2025 (iyul) | **"Issiqxona gazlari emissiyasini cheklash to'g'risida" qonun** | Milliy uglerod birliklari, reyestr, xalqaro savdo tartibi; **kuchga kirish: 2026-01-09**; 18-modda 5-qismi — 2027-yil boshidan |
| 2025 (noy.) | **NDC 3.0** | 2035-yilga intensivlik −50%; metan siyosati; 2055 net-zero; chiqindilar/agro/transport choralari |
| 2026 (avg.) | Xavfli chiqindilar bo'yicha yangi tartib | **2026-01-10dan** choraklik hisobot majburiyati; **2027-01-01dan** yillik rejalar va I–III sinf chiqindilarining har bir partiyasi uchun **raqamli pasport**; qayta ishlashni 20%ga yetkazish maqsadi; Ekopolitsiya nazorati |

*(Yangi tekshiruv natijalari, sana va ishonchlilik darajasi bilan:)*
- **Chiqindi tartibi tafsilotlari** (rasmiy, 2026-yil avgust): xavfli chiqindi hosil qiluvchilar choraklik statistik hisobotni **keyingi oyning 20-sanagach** agentlik axborot tizimiga kiritadi; yagona axborot tizimi va raqamli pasport **2027-yil 1-yanvarga** qadar quriladi; 2030-yilga qayta ishlash **20%** [R10 — rasmiy].
- **Ekologik ochiqlik** (rasmiy, 2025): Ekologik madaniyat kontsepsiyasi doirasida **2025-yil 1-dekabrdan** davlat ekologik monitoring ma'lumotlar bazasi **ommaviy ochiq** bo'lishi shart [R11 — rasmiy].
- **Milliy uglerod reyestri**: `green.imv.uz` platformasi ishlaydi (yashil loyihalar, hisobotlar, yangiliklar bo'limlari), Jahon banki bilan avtorizatsiya seminari o'tkazilgan; **ro'yxatga olingan korxona/loyihalar soni bo'yicha ochiq raqam e'lon qilinmagan** [R12 — rasmiy, *lekin aniq son bitta manba bo'yicha ham topilmadi → mustaqil tasdiqlanmagan*].
- **CBAM rasmiy narxlari** (rasmiy): 2026-yil I chorak — **75,36 €/tCO₂** (e'lon: 2026-04-07); II chorak — **75,28 €/tCO₂** (e'lon: 2026-07-06); 2026-yilda narx **choraklik**, 2027-yildan **haftalik**; sertifikatlar 2026-yil importi uchun **2027-yil fevraldan** xarid qilinadi [R1, R2].
- **CBAM faktor va ustamalar** (tahliliy): 2026-yilda CBAM faktori **2,5%** (bepul kvotalarning 97,5%i saqlanadi), 2034-yilga 100%; default qiymat ustamalari 10/20/30% [R3].
- **O'zbekistonda GHG hisobotini soxtalashtirish bo'yicha sud/inspeksiya ishi**: ochiq manbalarda **topilmadi**. Topilgan eng yaqin ijro dalillari — atrof-muhit (havo) qoidabuzarliklari bo'yicha: **630 issiqxona** (rezina/shina yoqish, "dudburon" qoidalari), **57 korxona** faoliyati to'xtatilgan, **154 fermer xo'jaligi** jarimaga tortilgan, **95 korxona** vaqtincha yopilgan [R13 — media/rasmiy]. *Bu ma'lumotlar GHG hisoboti soxtaligini emas, diffuz manbalar nazoratining amaliy muammosini ko'rsatadi — farqni yozib qo'yish muhim.*

### 3.3. Allaqachon mavjud "temir" — tizim qurish uchun aktivlar

| Aktiv | Holat (2026) |
|---|---|
| Milliy kadastr/inventar | 1990–2022 baza, IPCC 2006 + ETF talablari, Uzhydromet koordinatsiyasi |
| MRV tizimi | joriy etilmoqda; **RISQ** onlayn platformasi (CITEPA/AFD ko'magi) |
| Milliy uglerod reyestri | ishga tushgan ("Yashil iqtisodiyot" platformasi, green.imv.uz) |
| Korxona darajasidagi hisobot | **majburiy emas**, faqat ko'ngilli/pilot; GIZ bilan o'quv-seminar (2026) |
| Avtomatik monitoring stansiyalari | sanoat korxonalarida I/II toifa dasturi (2024–25), shahar muhitida **23 ta** (2026) |
| Xavfli chiqindi kuzatuvi | raqamli pasport (2027-yildan), agentlik AT |
| Chiqindi kuzatuvi | **~700 kamera**, mobil monitoring komplekslari (GAT + uchuvchisiz apparat) |
| Ochiq ma'lumot | data.egov.uz (~10 000 dataset; ekologiya **~1,7%**); Milliy ma'lumotlar platformasi (PF-190, 2027-yil 1-iyulga qadar) |
| AI institutlari | AI strategiyasi 2030 (PQ-358, 2024), AI markazi, PF-189 (2025) — AI etika kodeksi, idoralar reytingi |
| Moliyalashtirish oqimlari | iCRAFT/TCAF **$46 mln** grant; CBAM-tayyorgarlik donorlari; Jahon banki/EOTB/ADB loyihalari |
| Xalqaro "oltin" misol | **iCRAFT:** policy-crediting bo'yicha dunyoda birinchi to'lov: $7,5 mln / 500 ming t (~$15/t) |

**Xulosa:** "O'zbekistonda hech narsa yo'q" degan gap noto'g'ri. **Yo'q narsa — ulanish:** reyestr ↔ kadastr ↔ statistika ↔ soliq ↔ bojxona ↔ litsenziya ↔ ekologik monitoring. Bu — arxitektura masalasi, qonun emas.

### 3.4. "Orol saboqi": kechikishning aniq narxi

Orol fojiasi — tarixiy hodisa, lekin **bugungi qarorlar uchun model**:

1. **Fizik bosqichlar:** dengiz maydoni **4+ barobar** qisqardi, sath **22 m** tushdi, hajm **10 barobar** (1 064 → 70 km³); qurigan tub **4,2–5,5 mln ga**; **yiliga 15–100 mln t** chang-tuz ko'tariladi (turli baholar!), chang-to'zon kengligi **40 km**, uzunligi **400 km**, **yiliga 90+ kun**.
2. **Bilvosita zararlar:** sug'oriladigan yerlarda tuz cho'kishi **250–500 kg/ga** (Chimboyda 500 t/ga gacha); paxta hosildorligi 5–15%, sholi 3–6% pasayishi; baliqchilik (yiliga **45 ming t**) va ~**100 ming ish o'rni** yo'qolgan; Qoraqalpog'istonda sho'rlangan yerlar **90%+**.
3. **Davlat xarajati:** Orolbo'yi uchun 10 yilda **$1,2 mlrd+**; 0,4–1,7 mln ga o'rmonzor; har yilgi qo'shimcha foyda bahosi **$28–44 mln**; iqlim loyihasi doirasida **1,3 mln ga tiklash → 7,5 mln t CO₂** ushlash kutilmoqda.
4. **Asosiy saboq (path dependency):** 1960–1990-yillarda **har yili "o'lchov + hisobot"ni kechiktirish** bugun **qaytarilmas** natija berdi. Bugun CO₂/chiqindi statistikasini "ko'rinmaydigan" deb kechiktirish — xuddi shu mantiqning takrori, faqat **ko'lami butun iqtisodiyot**.
5. **Muloqot (narrativ) uchun formulirovka:** *"Orolda biz bir suv havzasini yo'qotdik. Atmosferada bunday 'ikkinchi Orol'ni ko'z bilan ko'ra olmaymiz — shuning uchun raqamlar yagona ko'zimiz bo'lishi shart."*

---

## 4. MUAMMONING ILDIZI — "EGASI YO'Q, MAJBURIYAT YO'Q, EF YO'Q"

### 4.1. Kontseptual aniqlashtirish: olti tamoyil

Foydalanuvchi g'oyasidagi mantiq to'g'ri, lekin uni noto'g'ri talqin qilish loyihani "o'lik tug'ilgan" qilishi mumkin:

| # | Tamoyil | Nega muhim | Amaliy talab |
|---|---|---|---|
| **T1** | **Intensivlik ≠ mutlaq emissiya** | YaIM +7,7% o'smoqda (2025); mutlaq cap o'sishni to'sadi va siyosiy qarshilikka uchraydi | 2026–2030: **intensivlik benchmark** (t CO₂/YaIM, kg SO₂/t mahsulot); 2031+: **mutlaq sektor cap'lari** |
| **T2** | **CO₂ — global stock; lokal zarar — boshqa gazlar/parchalar** | "Havo o'zini tozalaydi" mantiqi faqat lokal ifloslantiruvchilarga tegishli | **Ikki konturli tizim:** Kontur A (global, t CO₂-ekv., reyestr, bozor) + Kontur B (lokal, mg/m³, suv havzasi, tuproq) |
| **T3** | **Punkt ≠ diffuz manba** | 663 + 1 672 korxona o'lchanadi; dehqon xo'jaliklari (mahsulotning **81,6%i**), tomorqa chorvachiligi, transport — yo'q | Punkt: majburiy o'lchash + avtomatik uzatish. Diffuz: **tanlanma + metodika + sun'iy yo'ldosh** |
| **T4** | **Dehqonchilik — "rag'bat" obyekti, "nazorat" emas** | **4+ mln** dehqon/tomorqa xo'jaligi bor; har biriga hisobot yuklash ijro etilmaydi | MRV'ning "R" qismi majburiy, "cap" qismi — **subsidiya, o'g'it kartasi, biogaz granti** |
| **T5** | **Cheklov = matematika emas, ijro mexanizmi** | Qog'ozda cheklov, ijrosiz — KazETS saboqi ($1/t) | Har bir cheklovga: **o'lchov + verifikatsiya + sanktsiya + ommaviy e'lon** |
| **T6** | **Hisobot bir marta yig'iladi — ko'p joyda ishlatiladi** | Bugun korxona 12 xil idoraga 12 xil hisobot beradi | **"Bir marta kiritish" (once-only)**: yagona korxona ID + yagona ekologik pasport |

### 4.2. Baseline: SWOT (bugungi tizimning kuchli va zaif tomonlari)

- **Kuchli (S):** kadastr an'anasi (1999-yildan), BTR1/ETF muvofiqligi, MRV va RISQ, milliy uglerod reyestri, iCRAFT tajribasi, siyosiy iroda (Prezident darajasidagi farmonlar), donor moliyasi, statistik agentlik registrlari.
- **Zaif (W):** korxona darajasidagi majburiy MRV yo'q; **emissiya omillari milliy emas — ko'p hollarda IPCC default**; dehqon/chorva statistikasi ro'yxatga olishdan keyin **qayta ko'rib chiqiladi** (2026-yilda qoramol soni **2,1 mln boshga** "kamaydi") → ishonch e'tiborsiz qoladi; idoralar aro ma'lumot almashish **qo'lda**; jarima/mukofot signali kuchsiz.
- **Imkoniyat (O):** AI-MRV arxitekturasi; CBAM verifikatsiyasi orqali eksport premiumi; iCRAFT va Art.6 orqali **$15–30/t** daromad; metan — eng arzon qisqartirish; Yevropa ITT "Green Deal" hamkorligi; xalqaro "tez boshlovchi" obro'si.
- **Tahdid (T):** **ma'lumot soxtalashtirilishi** (mahalliy "qog'ozda yaxshilanish"); CBAM tufayli sement/o'g'it/metallurgiya bozorlarini yo'qotish; gaz strukturasi o'zgarishi; donor loyihalari "hisobot yozish"ga aylanishi; jamoatchilik ishonchi yo'qligi.

### 4.3. "Pain points": 15 to'siq (alomat → sabab → oqibat → yechim)

**A. Institutsional va huquqiy**

**P1. "Egasi yo'q" muammosi.** Ekologiya vazirligi (monitoring), MoEF (moliyalashtirish, reyestr, ETS), Uzhydromet (kadastr), Statistika agentligi (hisobot), Soliq qo'mitasi (akkizlar), hokimliklar (mahalliy ijro) — **5+ markaz, yagona operator yo'q**.
→ **Yechim:** Vazirlar Mahkamasi huzurida **"Milliy ekologik hisob markazi" (NELC)** — bitta egasi, boshqa idoralar "data-provider" maqomida; Kengash (siyosat) va Markaz (operatsion) ajratiladi.

**P2. Majburiylik yo'qligi.** Qonun kuchga kirdi, lekin **korxona uchun majburiy yillik emissiya deklaratsiyasi** mexanizmi hali to'liq shakllanmagan.
→ **Yechim:** VM qarori bilan nizom: **25 kt CO₂-ekv./yil** chegarasidan yuqori korxonalar uchun majburiy yillik MRV (Yevropa andozasida), **5 kt** — soddalashtirilgan deklaratsiya.

**P3. Jarima "kuchsiz".** Kompensatsiya to'lovlarining ko'paytiruvchilari (2–10 baravar) mavjud, lekin ekologik to'lovlar baribir **"yashash narxi"** bo'lib qolmoqda; metan sizib chiqishi uchun **aniq sanktsiya yo'q**.
→ **Yechim:** uch pog'onali tizim: ogohlantirish (1-yil) → to'lov (2-yil) → **limit/sertifikat bekor qilish va faoliyatni to'xtatish** (3-yil).

**B. Ma'lumot va metodologiya**

**P4. Emissiya omillari (EF) milliy emas.** Ko'p sohalarda IPCC default ishlatiladi → raqam "taxminiy" va **CBAM uchun yaroqsiz** (verifikator real qiymat talab qiladi).
→ **Yechim:** 3 yillik dastur: har bir asosiy tarmoq (gaz, sement, metallurgiya, o'g'it, chorvachilik) uchun **milliy EF laboratoriya o'lchovlari** asosida.

**P5. Faoliyat ma'lumotlari bo'lingan.** Gaz iste'moli — "Hududgaz", yoqilg'i — bozor/e-hisob, chorva — veterinariya, ekin maydoni — kadastr, chiqindi — agentlik. **Bir korxona ID yo'q** → qo'lda birlashtirish, xato va soxtalashtirishga yo'l.
→ **Yechim:** **Yagona obyekt ID** (STIR + kadastr + litsenziya + ekologik pasport bog'langan).

**P6. Ro'yxatga olish ≠ statistika.** Chorvachilik soni 2026-yilda **2,1 mln boshga** "kamaydi"; chiqindi hajmi **7 dan 14 mln t** gacha baholanadi.
→ **Yechim:** "statistik xato" emas, **"statistik audit"**: har yili mustaqil audit; e'lon qilingan raqamlar **versiyalanadi (v1.0, v1.1)** va farq izohi bilan chiqariladi.

**P7. Diffuz manbalar umuman hisobga olinmaydi.** Jami emissiyaning ~**17,6%i** qishloq xo'jaligida, lekin manba — "millionlab nuqta".
→ **Yechim:** tanlanma tadqiqot (sample survey) + **sun'iy yo'ldosh/NDVI + hosildorlik modeli**; 3 bosqichli (Tier 1 → 2 → 3) metodika.

**C. Texnik va kadr**

**P8. Kadr tanqisligi.** MRV auditorlari, energetik auditorlar, laborant-meteorologlar yetishmaydi; GIZ/AFD/GCF o'quv dasturlari **loyiha davri bilan cheklangan**.
→ **Yechim:** 2 ta yangi ixtisos — "GHG hisobchisi (MRV auditori)" va "ekologik ma'lumot injeneri"; universitetlarda modul; **milliy reyestr** (auditorlar palatasi).

**P9. Uskunalar (o'lchash) qamrovi.** I toifa korxonalarda avtomatik monitoring 2025-yil 1-iyulgacha, II toifa — yil oxirigacha topshirilishi kerak edi; **natijalar hali to'liq e'lon qilinmagan**.
→ **Yechim:** ochiq **"stansiya holati dashboard"**: qaysi korxona, qaysi sanada o'rnatdi, hozir onlaynmi.

**P10. Ishonchsiz o'lchov = ishonchsiz siyosat.** Toshkentda kunlik prognoz tizimi kuchsiz: **23 ta avtomatik stansiya** — shahar uchun juda oz.
→ **Yechim:** stansiyalar sonini **150+**ga (har tumanga 3–5), ma'lumot **ochiq real-time API**.

**D. Moliyaviy va bozor**

**P11. Bepul kvota tuzog'i.** Agar cheklov "eski daraja = kvota" tarzida berilsa — narx $1/t (KazETS saboqi), hech narsa qisqarmaydi.
→ **Yechim:** **base-year orqaga sanash (backcasting)**: 2035 maqsadidan orqaga; benchmark = **eng yaxshi 20% korxona** darajasi; 5%gacha auktsion.

**P12. Subsidiyalar teskari ishlaydi.** Yoqilg'i/energiya subsidiyalari "ko'proq iste'mol = arzon" signalini beradi; iCRAFT aynan **subsidiya islohi evaziga** to'lov oldi.
→ **Yechim:** subsidiyani bosqichli olib tashlash + ijtimoiy kompensatsiya (iCRAFT tajribasi: $7,5 mln / 500 ming t).

**P13. Daromad manbasi aniqlanmagan.** Uglerod birliklari savdosida 80%gacha xalqaro bozorga chiqarish mumkin, lekin **valyuta tushumi qayerga ketadi** — aniq yo'naltirish yo'q.
→ **Yechim:** "Yashil Jamg'arma" + qat'iy qoida: tushumning **≥60%i** o'lchov/texnologiya/jamoatchilik loyihalariga; hisobot **ochiq**.

**E. Ijtimoiy va siyosiy**

**P14. Mahalliy darajadagi "ko'zbo'yamachilik" bosimi.** Hokim/tuman rahbari uchun emissiya = "sanoat sekinlashdi" degani; shuning uchun raqamlar yumshoq bo'ladi. *(Bu — ushbu maqolaning markaziy pain point'i: aynan shu bosim avtomatik, o'zgarmas va ochiq tekshiruv bilan yopiladi.)*
→ **Yechim:** **mustaqil verifikatsiya + raqamni e'lon qilish**; "yashil reyting"da tumanlar/korxonalar ochiq taqqoslanadi.

**P15. Adolat (just transition) masalasi.** Cheklov birinchi navbatda **qishloq va kichik korxonalarga** tushsa — siyosiy qarshilik.
→ **Yechim:** "hech kim ortda qolmaydi" dasturi: kichik korxonalar uchun **3 yillik imtiyozli davr**, texnologiya kreditlari, ko'nikma oshirish.

*(AI/avtomatlashtirish ipi — nega AI-yechim mantiqan zarur.)* Diqqat qilinadigan jihat: ro'yxatdagi **15 to'siqning kamida 9 tasi** (P2, P4, P5, P6, P7, P9, P10, P11, P14) texnik jihatdan **o'lchov va taqqoslash** masalasidir. Masalan P14 — "raqam yumshoq bo'ladi" — bu siyosiy muammo, ammo uning **texnik yechimi bor**: agar hisobot avtomatik ravishda mustaqil signallar (gaz hisoblagichi, yoqilg'i savdosi, ishlab chiqarish hajmi) bilan kesishsa, "yumshoq raqam" **fizik jihatdan** mos kelmaydi va bu mos kelmaslik **inson qarorisiz** ko'rinadi. Xuddi shunday P6 (ro'yxat ≠ statistika) — versiyalash va audit izi bilan; P7 (diffuz manbalar) — sun'iy yo'ldosh va registrlarni avtomatik solishtirish bilan. Boshqacha aytganda, **avtomatlashtirish bu ro'yxatdagi eng qimmat, siyosiy jihatdan eng nozik to'siqlarni "texnik fakt"ga aylantiradi**.

### 4.4. Sektor kesimida: nimani qanday o'lchash va cheklash

| Sektor | Emissiya ulushi (2022) | Asosiy manba | O'lchov usuli (bosqichli) | Cheklov turi (2026→2035) | "Tez yutuq" |
|---|---|---|---|---|---|
| **Energetika (elektr/issiqlik)** | ~133,5 Mt (63,6%) | gaz yoqish, 17,6 GVt issiqlik stansiyalari | Punkt: yonilg'i balansi + onlayn sezgi; diffuz: kichik qozonlar | 2026: benchmark (kg CO₂/kVt·soat) → 2030: intensivlik → 2033+: mutlaq cap | Qozon modernizatsiya, kogeneratsiya, tarmoq yo'qotishlarini kamaytirish |
| **Neft-gaz qazib olish/tashish** | gaz sizib chiqishi (metan) — energetika metanining katta qismi | quduq, kompressor, quvur | LDAR dasturi + dron/sun'iy yo'ldosh (AQSh bilan loyiha: **50 000+ sizib chiqish, 7 mln t CO₂-ekv./yil**) | metan: **2027-dan majburiy LDAR**, sizib chiqishga limit; 2030: "rutina flaring = 0" | LDAR, flaringni yo'qotish, kompressor elektrlashtirish |
| **Sanoat (IPPU)** | ~30 Mt (14–15%) | sement (kalsinatsiya), o'g'it (nitrat kislota → N₂O), metallurgiya | Punkt: korxona darajasida to'liq MRV (majburiy) | benchmark + **CBAM-ga mos hisobot**; andozadan yuqori bo'lsa "yelka" (border price) | Sement: "quruq usul" va chiqindi gaz issiqligi; N₂O katalizatori (arzon, tez) |
| **Qishloq xo'jaligi** | ~37 Mt (17,6%) | chorvachilik (enterik + go'ng), o'g'it (N₂O), sholi (CH₄), yer o'zgarishi | Tier1→Tier2; **veterinariya registri + tanlanma so'rov + yo'ldosh**; o'g'it savdosi (e-hisob) | **cap emas → rag'bat**: biogaz, go'ngni qayta ishlash, o'g'it normasi, sholida "intermittent irrigation" | Biogaz (potentsial **6–11 mlrd m³ gaz**), go'ngni to'plash, o'g'it isrofi 20–30% kamaytirish |
| **Chiqindilar** | 10,5 Mt (5,0%), metan 16,1% | poligonlar (metan), oqova suv | Poligon darajasida gaz o'lchash; klasterlar AT | poligon metan yig'ish; **2026–28: gaz yig'ish majburiy** | Poligon gazini yig'ish (**Ohangaron: 16 mln kVt·soat + 53 ming t CO₂**) |
| **Transport** | ~12 Mt (road 2022: 11,9 Mt) | 730 ming+ Toshkent avtomobili, eski park | Yoqilg'i savdosi (e-hisob) + tex ko'rik + GPS | Yoqilg'i sifat standarti, parkni yangilash, elektr transport | Yoqilg'i sifati, gaz/elektrga o'tkazish |
| **Bino/uy-joy** | ~20 Mt (residential fuel combustion) | isitish (ko'mir/gaz), samarasiz binolar | Energoaudit + kommunal hisob | Yangi binolar uchun energiya sinfi majburiy | Issiqlik izolyatsiyasi, "quyoshli xonadon" (**2 GVt** o'rnatilgan) |

### 4.5. Institutsional arxitektura: kim nima qiladi

```
                    ┌─────────────────────────────────────────────┐
                    │  Iqlim/Ekologik KENGASH (Prezident huzurida)│  ← siyosat, nizolarni yechish
                    └──────────────────┬──────────────────────────┘
                                       │
      ┌────────────────────────────────┼────────────────────────────────┐
      │                                │                                │
┌─────▼──────┐   ┌─────────────┐  ┌────▼─────────┐  ┌────────────┐  ┌──▼─────────┐
│ MILLIY     │   │ EKOLOGIYA   │  │ MOLIYA va    │  │ UZHYDROMET │  │ STATISTIKA │
│ EKOLOGIK   │◄──┤ VAZIRLIGI   │  │ IQTISODIYOT  │  │ (kadastr,  │  │ AGENTLIGI  │
│ HISOB      │   │ (monitoring,│  │ VAZIRLIGI    │  │ EF, RISQ)  │  │ (diffuz    │
│ MARKAZI    │   │  ekopolis)  │  │ (reyestr,    │  │            │  │  manbalar) │
│ (NELC)     │   │             │  │  bozor, xalq.│  │            │  │            │
│  ─ yagona  │   │             │  │  savdo)      │  │            │  │            │
│  ID/reyestr│   │             │  │              │  │            │  │            │
└─────┬──────┘   └─────────────┘  └──────────────┘  └────────────┘  └────────────┘
      │
      ├──► Korxonalar (punkt manbalar): majburiy MRV, onlayn uzatish
      ├──► Hokimliklar: hududiy agregat, "yashil reyting"
      ├──► Mustaqil verifikatorlar (akkreditatsiya palatasi)
      ├──► Ochiq qatlam (API + dashboard + Telegram-bot)
      └──► Xalqaro: UNFCCC (BTR), CBAM (verifikatsiya), Art.6 (ITMO)
```

**Muhim tafsilot:** bitta markaz, lekin **uchta ish rejimi**: (a) *non-compliance* — o'quv va pilot (0–12 oy); (b) *semi-compliance* — hisobot majburiy, cheklov yo'q (12–24 oy); (c) *compliance* — benchmark + to'lov + bozor (24+ oy).

### 4.6. AI va avtomatlashtirish g'oyasi: nima qilinishi ko'zda tutilgan (umumiy ko'rinish)

*(AI/avtomatlashtirish ipi — asosiy g'oya. Texnik implementatsiya batafsil yozilmaydi.)*

**Maqsad:** "inson aralashmaydigan" ma'lumot oqimi — to'plam avtomatik keladi, mutaxassis faqat **tekshiradi va tasdiqlaydi** (insoniyat verifikatsiyada qoladi, yig'ishda yo'q).

**Ko'zda tutilgan ma'lumot manbalari (kirish):**
1. Korxona hisobotlari (e-deklaratsiya, API).
2. Avtomatik monitoring stansiyalari (CEMS — real-time, 5 daqiqalik interval).
3. Energiya: "Hududgaz"/"Hududelektr" hisoblagich oqimi; elektr savdosi birjasi.
4. Yoqilg'i: yoqilg'i shoxobchalari onlayn monitoring tizimi (2026-yildan pilot), AKT/aksiz ma'lumotlari.
5. Ishlab chiqarish hajmi: soliq (QQS/faktura), bojxona (import/eksport), "ASL BELGI" (aktsiz).
6. Qishloq xo'jaligi: veterinariya registri, o'g'it/pestitsid savdosi (e-hisob), kadastr, yo'ldosh (Sentinel-2/Landsat + NDVI).
7. Chiqindilar: agentlik AT (raqamli pasport), poligon gaz datchiklari, kameralar (700+), "og'irlik-bilet" (weighbridge) integratsiyasi.
8. Sun'iy yo'ldosh metan deteksiyasi (Sentinel-5P/TROPOMI, MethaneSAT); dron monitoring.
9. Ob-havo: Uzhydromet meteorologik tarmoq (dispersiya modellari uchun).

**AI/model qatlami (4 ta model — faqat kontseptual):**
- **Anomaliya aniqlash:** "korxona ishlab chiqarishi +3%, gaz iste'moli −40% → hisobot yolg'on" tipidagi signallar. Bu Xitoy ETS platformasining asosiy foydasi bo'lgan.
- **Prognoz:** emissiya trendini 12 oy oldin aytish; NCAP/ogohlantirish.
- **Dispersiya va ta'sir:** punkt manbadan "kim, qancha nafas oldi" — mahalla darajasida.
- **Benchmark generatsiyasi:** tarmoq ichida eng yaxshi 20% korxona asosida dinamik normativ (har yili toraytiriladi).

**Ishonchni ta'minlash (audit trail):** har bir raqam uchun **"kim → qachon → qanday usulda → qaysi manbadan"** zanjiri; o'zgartirishlar versiyalanadi va **o'chirib bo'lmaydi** (immutable log). Bu — "yolg'on aralashmasligi" talabining texnik yechimi.

**Xarajat bahosi (illyustrativ):** markaziy platforma + integratsiyalar: **$8–15 mln** (3 yil); stansiyalar/poligon datchiklari: **$15–40 mln** (donor grantlari); kadr tayyorlash: **$3–6 mln**; jami **~$25–60 mln / 3 yil**. Solishtirish uchun: bir yillik havo ifloslanishidan sog'liq zarari (Toshkent) ~**$488 mln** — ya'ni xarajat **1–2 oyda qoplanadi**.

---

## 5. QO'SHIMCHA TAHLIL: UCH VARIANT, IQTISODIY BAHOLASH, KPI VA RISKLAR

*(Bo'lim manba hujjatning §3.7–3.10 va Ilova C/E materiallarini to'liq saqlaydi.)*

### 5.1. Uch variant: cheklovlarni qanday joriy etish

| | **Variant A: "Qattiq cap" (tez)** | **Variant B: "Statistika-first" (bosqichli) — TAVSIYA** | **Variant C: "Faqat ko'ngilli" (bozor-o'zi)** |
|---|---|---|---|
| Mazmun | 2027-dan milliy cap, bepul kvota + savdo (KazETS nusxasi) | 2026–28: majburiy hisobot + verifikatsiya; 2029–31: benchmark + to'lov; 2032+: cap | Faqat ko'ngilli hisobot, uglerod loyihalari |
| Siyosiy xavf | **Yuqori** (sanoat qarshiligi, "qishloq xo'jaligi uchun adolatsiz") | O'rta (bosqichli moslashish) | Past (lekin natija ham past) |
| Narx signali | Bor, lekin **bepul kvota tufayli soxta** ($1/t) | **Haqiqiy va o'sib boruvchi** ($5→$15→$30+) | Yo'q |
| CBAM himoyasi | Bor (qisman) | **Bor** (verifikatsiyalangan ma'lumot = chegirma) | Yo'q |
| Ijro qobiliyati | Past (kadr yo'q, ma'lumot yo'q) | **Yuqori** (har bosqich oldingisiga tayanadi) | O'rta |
| "Yolg'on statistik" xavfi | **Yuqori** | O'rta (verifikatsiya + ochiqlik) | Yuqori |
| Xalqaro ishonch | Past | **Yuqori** (BTR/Art.6/CBAM) | Past |

**Nega A variant xavfli:** Qozog'istonning 13 yillik misoli bor; bepul kvota + kuchsiz ijro = **"bozor dekoratsiyasi"**. Va eng kattasi: **noto'g'ri raqamga asoslangan cap iqtisodiy zarar keltiradi** (kapital noto'g'ri tarmoqqa yo'naltiriladi).

**Nega C variant yetarli emas:** ko'ngilli tizimda CBAM default qiymatlari qoladi → eksport yo'qotishlari davom etadi; metan sizib chiqishi davom etadi.

### 5.2. Iqtisodiy va fiskal baholash (illyustrativ modellar)

**A. CBAM xavfi (mikro darajada katta):**
- Markaziy Osiyo CBAM ta'sirining **30%i** O'zbekistonda; YaIMga ta'sir **0,03%**, lekin **tarif ekvivalenti 30%**;
- Misol (sement): Yevropa benchmark ~**0,7 t CO₂/t klinker**, O'zbekiston korxonasi ~**0,9 t** → farq **0,2 t × €80 = €16/t sement**, cap-xarajatining **8–15%i**;
- **Xulosa:** hisobotni "korxona darajasida" qilish — **eksportni saqlab qolish investitsiyasi**.

**B. Uglerod birligi daromadi (realistik diapazon):**
- iCRAFT: **$15/t** (RBCF), Art.6.2 bo'yicha **$30/t**; maqsad **60 mln t**; TCAF granti **$46 mln**;
- Agar 2030-yilga **15–25 mln t/yil** verifikatsiyalangan qisqartirish bo'lsa, $15–30/t da — **$225–750 mln/yil** *nazariy* potentsial; **ehtiyotkor baho: realroq — $100–300 mln/yil** (bozor likvidligi va talab cheklangan).

**C. Ichki to'lov (narx) daromadi:**
- Faqat energetika sektorida **133,5 Mt**; uni **60% qamrov (80 Mt) × $5/t = ~$400 mln/yil**; $10/t da **~$800 mln/yil**;
- Bu summani **ijtimoiy kompensatsiya va texnologiya**ga yo'naltirish shart; aks holda "yana bir soliq" sifatida qabul qilinadi.

**D. Xarajat tomoni (3 yil):** platforma **$8–15 mln** + stansiyalar **$15–40 mln** + kadr **$3–6 mln** + verifikatsiya fondi **$5–10 mln** ≈ **$31–71 mln** (donorlar bilan qoplanadi).

**E. Kechikish narxi (cost of inaction), ehtiyotkor:**
- Havo ifloslanishi: **$488 mln/yil** (faqat Toshkent, YaIMning **0,7%**); mamlakat bo'yicha sog'liq zarari YaIMning bir necha foizigacha;
- CBAM default qiymatlar bilan: eksport yo'qotishlari (mikro darajada **10–20% marja**);
- Ishonchsiz statistika → **donor moliyasidan mahrum bo'lish** (Art.6, GCF, JCM talablari).

### 5.3. KPI va bosqichli yo'l xaritasi (1-mavzu)

| Bosqich | Muddat | Asosiy harakat | O'lchanadigan natija (KPI) |
|---|---|---|---|
| **I. Poydevor** | 0–12 oy | NELC tashkil; korxona ID; majburiy MRV nizomi (25/5 kt); EF dasturi starti; pilot 100 korxona | ≥100 korxona hisobot berdi; EF 3 tarmoqda milliy; reyestr↔soliq↔bojxona integratsiyasi (API) |
| **II. Qamrov** | 12–24 oy | Barcha I toifa (663) + II toifa (1 672) majburiy MRV; agro tanlanma (Tier2); metan LDAR dasturi; ochiq dashboard v1 | 2 335 korxona **95% qamrov**; metan o'lchovi 100 obyekt; 3 tarmoq benchmark v1 |
| **III. Narx** | 24–36 oy | Benchmark + to'lov (pilot: energetika, sement, o'g'it); uglerod birligi bozori (ichki); Art.6/JCM loyihalari | Yillik to'lov tushumi **≥$100 mln**; ≥5 mln t uglerod birligi sotildi; CBAM hisobotlarining 80%i "verified actual" |
| **IV. Cheklov** | 36–72 oy | Sektor cap'lar (energetika → sement/metallurgiya → transport); auktsion (5%dan); barqarorlik zaxirasi | Mutlaq emissiya **peak**dan o'tdi; intensivlik −50% (2035) trayektoriyasi; YaIM o'sishi ≥5% |
| **V. Kengaytirish** | 72–120 oy | Barcha tarmoq (agro diffuz, bino, transport), mintaqaviy bog'lash (Art.6, ETS'lar), net-zero trayektoriyasi | 2055 net-zero ehtimoli; mintaqaviy uglerod markazi maqomi |

### 5.4. Risklar matritsasi (1-mavzu)

| Risk | Ehtimol | Ta'sir | Mitigatsiya |
|---|---|---|---|
| **Ma'lumot soxtalashtirilishi** | **Yuqori** | Yuqori | Anomaliya AI + mustaqil verifikator + ommaviy e'lon + jinoiy javobgarlik |
| Sanoatning siyosiy qarshiligi | Yuqori | O'rta | Bosqichlilik, bepul kvota o'rniga "rozilik bitimlari" (benchmark evaziga texnologiya krediti) |
| Kadr yetishmovchiligi | Yuqori | O'rta | 3 yillik o'quv dasturi + xalqaro mentorlar + sertifikatlash |
| Donor moliyasi kechikishi | O'rta | O'rta | Milliy budjetdan "seed" + xususiy sektor ko'magi; Xitoy/Indoneziya modellari |
| CBAM bosimi kutilganidan tez | O'rta | Yuqori | 2026–27 pilot **aynan eksportchi tarmoqlarda** (sement, o'g'it, metallurgiya) |
| "Adolatsizlik" noroziligi | O'rta | Yuqori | Daromadning 50%+ini kichik korxona/xonadonga qaytarish; ochiq hisobot |
| Metan o'lchovi texnik xato | O'rta | O'rta | Ikki usul: "bottom-up" hisob + "top-down" sun'iy yo'ldosh tekshiruvi |

### 5.5. KPI dashboard: 15 indikator (manba: Ilova C — to'liq saqlanadi)

| # | Indikator | Manba | Boshlang'ich (2026) | Maqsad (2030) |
|---|---|---|---|---|
| 1 | GHG jami (mln t CO₂-ekv.) | reyestr | ~209,6 (2022) | peakka yaqinlashish |
| 2 | YaIM uglerod sig'imi (kg/$) | kadastr + statistika | 1,62 (2022) | −35% (2030, 2010 bazasiga) |
| 3 | Metan emissiyasi (mln t) | kadastr / LDAR | 60,2 (2022) | −30% (2030) |
| 4 | Majburiy MRV qamrovi (%) | NELC | ~0 | ≥95% I/II toifa |
| 5 | Verifikatsiyalangan hisobot ulushi (%) | NELC | ~0 | ≥80% |
| 6 | "Verified actual" CBAM hisobotlari (%) | bojxona | ~0 | ≥80% |
| 7 | Chiqindi hosil bo'lishi (mln t/yil) | agentlik | 7–14 (bahsli) | yagona raqam, ±5% aniqlik |
| 8 | Qayta ishlash ulushi (%) | agentlik | ~18% (rasmiy) / 6,6% (plastik) | ≥35% |
| 9 | Poligon metan yig'ilishi (mln m³/yil) | agentlik | ~0 | 100% yirik poligonlar |
| 10 | Avtomatik havo stansiyalari (son) | Uzhydromet | 23 | ≥150 |
| 11 | Ochiq e'lon qilingan obyektlar (son) | NELC | 0 | ≥2 500 |
| 12 | Ochiq datasetlar (ekologiya, son) | data.egov.uz | ~170 | ≥2 000 |
| 13 | Uglerod/to'lov tushumi ($ mln/yil) | MoEF | ~0 | ≥300 |
| 14 | Norozilik/murojaatga javob vaqti (kun) | Ekologiya | — | **≤10** |
| 15 | Jamoatchilik ishonchi (so'rov, %) | so'rovnoma | — | ≥60% |

*Eslatma: #7 va #8 indikatorlari — yuqoridagi ziddiyatlar bilan bevosita bog'liq (bitta raqamga keltirish — KPI'ning o'zi).*

---

## 6. METODOLOGIK G'OYA (OVERVIEW — TEXNIK EMAS)

*(AI/avtomatlashtirish ipi — yadro.)*

Yuqoridagi tahlildan bitta amaliy xulosa chiqadi: **tekshiruvni inspektor soni bilan hal qilib bo'lmaydi**, lekin uni **ma'lumot arxitekturasi** bilan hal qilish mumkin. G'oyaning mohiyati uch nuqtada:

**(1) Mos kelmaslikni izlash, soxtalikni isbotlash emas.** Korxona e'lon qilgan emissiya bir nechta **mustaqil signal** bilan qiyoslanadi: yoqilg'i xaridi (AKT/aksiz), gaz iste'moli hisoblagichi, elektr iste'moli, ishlab chiqarish hajmi (QQS/faktura, bojxona), chiqindi hajmi. Agar hisobotdagi emissiya **fizik jihatdan** bu signallar bilan mos kelmasa (masalan, ishlab chiqarish +3%, gaz iste'moli −40%), bu — **"tekshirishga loyiq signal"**, hukm emas. Aynan shu yondashuv Xitoy milliy uglerod bozorida qo'llaniladi: rasmiy hisobotga ko'ra, big data asosida anormal ma'lumotlar aniqlanadi va erta ogohlantirish beriladi **[R5]**.

**(2) Verifikatsiya — insonda, yig'ish — avtomatik.** Tizim "robot yozadi" degani emas: **ma'lumot yig'ish, solishtirish va flag qilish** avtomatik; **xulosa chiqarish va sanktsiya** — mustaqil verifikator va vakolatli organ. Bu ajratish muhim: avtomatik tizim **hech kimni ayblamaydi**, u faqat "shu yerda raqamlar mos kelmaydi" deb ko'rsatadi va **isbot zanjirini** (kutilgan ↔ e'lon qilingan ↔ farq, manba va vaqt bilan) taqdim etadi.

**(3) Har bir raqam izlanadigan bo'lishi kerak.** "Kim → qachon → qanday usulda → qaysi manbadan" zanjiri; o'zgartirishlar **versiyalanadi** va **o'chirilmaydi**. Bu — "yolg'on aralashmasligi" talabining texnik javobi, va shu bilan birga **statistikani siyosiylashishdan** himoya qiladi: raqamni "yumshoq" qilish uchun uni **tahrir qilish** kerak bo'ladi, tahrir esa ochiq ko'rinadi.

**Shart (institutsional zaruriyat):** bu g'oya **faqat** quyidagilar bilan birgalikda ishlaydi — (a) korxona darajasidagi **majburiy** hisobot (25/5 kt nizomi), (b) **milliy EF** (aks holda solishtirish asossiz), (c) **yagona obyekt ID** va **API integratsiyasi** (soliq, bojxona, gaz, agentlik). Usiz u "yaxshi niyat" darajasida qoladi — bu cheklovni yashirmaslik kerak.

*(Loyihaning texnik implementatsiyasi — model tanlovi, arxitektura, bosqichlar, stack — ushbu qoralamada aytilmaydi; u alohida texnik hujjatda batafsil keltiriladi.)*

---

## 7. MUHOKAMA — ZIDDIYATLAR, RISKLAR, QARAMA-QARSHI FIKRLAR

### 7.1. "Nega hozir?" — kechikishning iqtisodiy mantig'i

Uchta mustaqil sabab bir vaqtda ishlaydi: **(a)** CBAM 2026-yildan pul talab qiladi (75 €/t atrofidagi sertifikat narxi, default ustamasi bilan); **(b)** NDC 3.0 va qonun majburiyat yaratdi — hisobotsiz bajarib bo'lmaydi; **(c)** donor va uglerod moliyasi (iCRAFT $15/t, Art.6 $30/t) **faqat verifikatsiyalangan** natijaga to'lanadi. Ya'ni "hozir" — tanlov emas, **shartlar to'qnashuvi**.

### 7.2. Qarama-qarshi fikr: "Avval iqtisodiyot o'ssin, keyin ekologiya"

Bu fikrga ikkita dalil bilan javob beriladi: (1) O'zbekiston NDC **intensivlik** modelini tanlagan — ya'ni o'sishni to'sish emas, **o'sish sifatini** o'zgartirish maqsad qilingan; (2) "o'sish hisobiga qisqartirish" effekti faqat **o'lchov** mavjud bo'lsa ko'rinadi — o'lchovsiz bu ham da'vo bo'lib qoladi. Biroq qarama-qarshi fikrning asosli qismi ham bor: agar cheklov **noto'g'ri raqamga** asoslansa, kapital noto'g'ri tarmoqqa yo'naladi va zarar statistikadan katta bo'ladi. Shu sababli ketma-ketlik (statistika → benchmark → narx → cap) — **iqtisodiy xavfsizlik sharti**, "sekinlashtirish" emas.

### 7.3. Siyosiylashish xavfi

Mahalliy statistikaning siyosiylashishi (P14) — eng nozik masala. Uch yechim: (a) **mustaqil verifikatorlar palatasi** va ularning akkreditatsiyasi; (b) **ochiq reyestr** — tuman va korxona reytingi ommaviy; (c) **versiyalash va audit izi** — "raqam qachon, kim tomonidan, nima uchun o'zgargan" ko'rinadi. Muhokama uchun qo'shimcha savol: *viloyatlar reytingi "jazolash" vositasiga aylanmasligi uchun dizayn qoidasi nima bo'lishi kerak?* (Masalan, faqat **yaxshilanish trendi** baholanishi.)

### 7.4. "Yashil yuvish" xavfi (ikki tomonlama)

Risklar nosimmetrik: bir tomondan, korxona **past raqam** ko'rsatishi (soxtalashtirish), ikkinchi tomondan **yuqori sertifikat** sotib olishi (offset) haqiqiy qisqartirishsiz. Yechim: offset **faqat o'z sektorida** va **cheklangan ulushda** qabul qilinishi; reyestrda har bir birlik **loyiha → metodika → verifikator** zanjiri bilan ko'rinishi.

### 7.5. AI-yechimning cheklovlari va shartlari (ochiq muhokama)

*(AI/avtomatlashtirish ipi — muhokama.)* Avtomatik tekshiruvning to'rtta cheklovi bor va ular yashirilmasligi kerak:

1. **False positive** — halol korxona "qizil bayroq" oladi (masalan, agregat almashtirilgan, hisoblagich nosoz, ishlab chiqarish tuzilmasi o'zgargan). Yechim: signal **"tekshirishga loyiq"** deb belgilanadi, sanktsiya emas; izohda farq sabablari ko'rsatiladi; korxonaga **apellyatsiya** yo'li ochiq.
2. **Ma'lumot sifati = natija sifati** — sanoq tizimi, EF noaniqligi va birlik xatolari o'zi "anomaliya" bo'lib ko'rinadi. EF **noaniqlik diapazoni** hisobga olinmasa, flag'lar asossiz bo'ladi.
3. **Adversarial moslashuv** — korxona tizimni chalg'itishni o'rganadi (masalan, hisoblagich ko'rsatkichini signal bilan moslashtirish). Yechim: signal manbalarining **mustaqilligi** doimiy tekshirilishi, kutilmagan yangi signallar (sun'iy yo'ldosh metan) qo'shilishi.
4. **Institutsional bo'shliq** — agar majburiy hisobot yo'q bo'lsa, tekshiriladigan narsa ham yo'q. Demak, texnologiya **instituttsional islohotni almashtira olmaydi**, faqat uni **arzonlashtiradi va tezlashtiradi**.

### 7.6. Rahbar amallari (qisqa ro'yxat, muhokama uchun)

1. **Majburiy MRV nizomi** (25 kt / 5 kt) — 2027-yil 1-yanvardan.
2. **Milliy EF dasturi** — 3 tarmoqdan boshlab, 3 yil.
3. **Yagona obyekt ID** va idoralar aro API (soliq, bojxona, gaz, kadastr, agentlik).
4. **Reyestr ↔ stat & soliq ↔ bojxona** integratsiyasi — pilot eksportchi tarmoqlarda (sement, o'g'it, metallurgiya).
5. **Ochiq KPI dashboard** — 15 indikator (Ilova C).
6. **Verifikatorlar palatasi** (akkreditatsiya) va 2 yangi ixtisos bo'yicha o'quv dasturi.

---

## 8. XULOSA VA TAVSIYALAR (BARCHA MUMKIN TAVSIYALAR RO'YXATI)

1. **Statistika-first ketma-ketlikni qonunlashtirish:** hisobot → verifikatsiya → benchmark → narx → cap. Cap'ni "tez" joriy etish (Variant A) — bepul kvota tuzog'i va "qog'ozdagi bozor" xavfi.
2. **Majburiy korxona darajasidagi MRV** (25 kt to'liq, 5 kt soddalashtirilgan) — 2027-yil 1-yanvardan; nizomda **hisobotlarni avtomatik tekshirish tartibi** ham yozilsin.
3. **Milliy emissiya omillari (EF) dasturi** — gaz, sement, metallurgiya, o'g'it, chorvachilik; laboratoriya o'lchovlari asosida; EF yangilanmasa CBAM hisoboti "yaroqsiz".
4. **Yagona obyekt ID** va "bir marta kiritish" tamoyili; idoralar aro API integratsiyasi (reysestr, kadastr, statistika, soliq, bojxona, ekologik monitoring).
5. **Reyestrning o'zi ochiq va versiyalangan bo'lishi** — har yili mustaqil "statistik audit"; tuzatishlar tarix bilan.
6. **Metanni birinchi navbatdagi tezkor g'alaba sifatida rasmiylashtirish:** majburiy LDAR (2027), poligon gazini yig'ish (2026–28), biogazli go'ng boshqaruvi; metan — eng arzon qisqartirish.
7. **CBAM piloti eksportchi tarmoqlarda** — 2026–27: sement, o'g'it, metallurgiya; verifikatsiyalangan "actual" ma'lumot default to'lovni sezilarli kamaytiradi.
8. **Uglerod tushumini boshqarish modeli:** "Yashil Jamg'arma", tushumning ≥60%i o'lchov/texnologiya/jamoatchilikka; hisobot ochiq.
9. **Daromadning bir qismini kichik biznes va xonadonga qaytarish** (P15 — just transition), aks holda siyosiy qarshilik kuchayadi.
10. **Kadrlar:** "GHG hisobchisi (MRV auditori)" va "ekologik ma'lumot injeneri" ixtisoslarini ochish; GIZ/AFD dasturlarini doimiy modulga aylantirish.
11. **Ochiq KPI dashboard** (15 indikator, Ilova C) — jamoatchilik, OAV va donorlar uchun yagona ko'rinish.
12. **AI-tekshiruvni institutsional paket bilan birga joriy etish** — usiz u "yaxshi niyat" bo'lib qoladi (7.5-bo'lim).
13. **Sement misolida mikro-iqtisodiy hisob:** 0,2 t CO₂/t klinker farqi × €80 = **€16/t sement** — bu raqam eksportchiga "hisobotni yaxshilash"ning darhol rentabelligini ko'rsatadi.
14. **Sanoat bilan "rozilik bitimlari":** benchmarkga erishish evaziga texnologiya krediti va o'tish davri — qarshilikni kamaytirishning eng arzon yo'li.
15. **Qarama-qarshiliklarni yashirmaslik siyosati:** rasmiy statistikada ikki xil raqam bo'lsa, **ikkalasi** manbasi bilan e'lon qilinadi (bu ishonchning eng tez quriladigan shakli).

**Bitta jumlali xulosa (qoralama variant):** *O'zbekistonga "yana bir nazorat idorasi" emas, bir marta quriladigan, avtomatik yig'iladigan, mustaqil tekshiriladigan va xalqqa ochiq yagona ekologik hisob tizimi kerak — u avvalo statistikani, keyin normativni, eng oxirida narx/cheklovni hosil qiladi.*

---

## 9. FOYDALANILGAN ADABIYOTLAR (TO'LIQ RO'YXAT)

**A. Rasmiy / xalqaro hujjatlar**
1. "Issiqxona gazlari emissiyasini cheklash to'g'risida" O'zbekiston Respublikasi Qonuni (2025; kuchga kirish — 2026-01-09) — https://daryo.uz/2025/07/08/ozbekistonda-issiqxona-gazlarining-chiqarilishi-cheklanadi
2. NDC 3.0 (2025-yil noyabr) — intensivlik −50% (2035), metan −30% (2030), 2055 net-zero.
3. BTR1 / National Inventory Report (2024; 1990–2022 baza) — emissiya tarkibi va sektor dinamikasi.
4. Vazirlar Mahkamasi qarori **VM-783** (2024) — I toifa 663, II toifa 1 672 korxona.
5. O'zbekiston Respublikasi Prezidenti hujjatlari: **PF-4477** (2019), **PQ-436** (2022), **PF-81** (2023), **PF-5** (2024), **UP-106** (2024), **PQ-358** (2024), **PF-189 va PF-190** (2025).
6. UNECE Aarhus Konventsiyasi (O'zbekiston — 2025-yil mart) — https://unece.org/env/pp
7. UNECE PRTR protokoli (Kiev, 2003) — ≥86 modda, bepul/qidiriladigan registr, 15 oylik yangilanish — https://unece.org/env/pp/prtrng.html
8. Milliy uglerod birliklari reyestri — https://green.imv.uz/
9. Ekologik madaniyat kontsepsiyasi (2025) — monitoring bazasining 2025-01-12dan ochiqligi — norma.uz
10. Xavfli chiqindilar bo'yicha Prezident qarori (2026-yil avgust) — https://yuz.uz/uz/news/prezident-qarori-2030-iilgaca-xavfli-ciqindilarni-qaita-isl
11. World Bank, "Uzbekistan Receives $7.5 Million in Carbon Credits…" (2024) — https://www.worldbank.org/en/news/press-release/2024/06/21/uzbekistan-receives-7-5-million-in-carbon-credits-for-enabling-half-a-million-tons-of-emissions-reduction

**B. AI/big-data, CBAM va xalqaro registrlar (yangi qidiruv natijalari)**
12. **[R1]** "The European Commission has published the first quarterly price for CBAM certificates" (2026-04-07; Q1 2026 = 75,36 €/t) — https://gmk.center/en/news/the-european-commission-has-published-the-first-quarterly-price-for-cbam-certificates/ *(rasmiy)*
13. **[R2]** "The EC has announced the price of CBAM allowances for Q2 2026" (2026-07-06; 75,28 €/t) — https://gmk.center/en/news/the-ec-has-announced-the-price-of-cbam-allowances-for-q2-2026/ *(rasmiy)*
14. **[R3]** EU CBAM 2026 qoidalari: faktor 2,5%; default ustamalari 10/20/30% — https://cbamguide.com/learn/eu-cbam/ *(tahliliy)*
15. **[R4]** Fastmarkets, "European Commission publishes first CBAM certificate price" — https://www.fastmarkets.com/insights/european-commission-publishes-first-cbam-certificate-price/ *(media/tahlil)*
16. **[R5]** MEE (Xitoy), *Progress Report of China's National Carbon Market* (2024) — big data asosida anormal ma'lumotlarni aniqlash va erta ogohlantirish — https://www.mee.gov.cn/ywdt/xwfb/202407/W020240722528850763859.pdf *(rasmiy)*
17. **[R6]** *Land* (MDPI), "China's Carbon Emissions Trading Market" (2025) — MRV zaif tomonlari, ma'lumot ishonchliligi — https://www.mdpi.com/2073-445X/14/8/1582 *(akademik)*
18. **[R7]** IPE — 31 viloyat / 337 shahar; Blue Map, Blue EcoChain; 2026-yil mart: 215 korxona / 217 uglerod hisoboti, 269 korxona / 273 PRTR hisoboti — https://wwwen.ipe.org.cn/about/about.aspx *(rasmiy/NNT)*
19. **[R8]** Columbia University Case Consortium, "Ma Jun va IPE" keysi — 2 500 suv, 4 000 havo yozuvi; de-listing uchun mustaqil audit — https://ccnmtl.columbia.edu/projects/caseconsortium/casestudies/135/casestudy/files/global/135/Ma%20Jun%20final.pdf *(akademik)*
20. **[R9]** MDPI *Future Internet* 18(2):96 (2026) — SCADA anomaliya aniqlashda AE/LSTM-AE/OCSVM/IF qiyoslash — https://doi.org/10.3390/fi18020096 *(akademik)*
21. **[R10]** Xavfli chiqindi rejimi tafsilotlari (2026): 2026-01-10dan choraklik hisobot, 20-sanagach; raqamli pasport 2027-01-01 — https://yuz.uz/uz/news/prezident-qarori-2030-iilgaca-xavfli-ciqindilarni-qaita-isl *(rasmiy)*
22. **[R11]** Ekologik monitoring bazasi 2025-yil 1-dekabrdan ochiq — norma.uz *(rasmiy)*
23. **[R12]** `green.imv.uz` — reyestr ishlaydi; korxona/loyiha soni e'lon qilinmagan *(rasmiy; aniq son mustaqil tasdiqlanmagan)*
24. **[R13]** Ijro amaliyoti: 630 issiqxona, 57 korxona to'xtatilgan, 154 fermer jarima, 95 korxona yopilgan — https://www.gazeta.uz/oz/2025/02/10/air-pollution/ ; https://www.spot.uz/oz/2025/09/13/air-minecology *(media/rasmiy)*

**C. Asosiy tadqiqot hujjati va ichki manbalar**
25. *Uzbekistan_Eko_DeepResearch_2026.md* (2026-yil 17-sentabr) — §0, §1, §2.1–2.4, §3.1–3.10, Ilova C (15 KPI), Ilova E (metodik izohlar).
26. Jahon banki hisobi: Toshkent havo ifloslanishidan sog'liq zarari — **$488,4 mln/yil** (YaIMning 0,7%); mamlakat bo'yicha **6,5%**gacha.
27. IFAS/hukumat hisobotlari — Orol dengizi holati va Orolbo'yi dasturlari (1990–2026).

---

## 10. QORALAMA — YAKUNIY TANLOV MUALLIFGA QOLDIRILADI

Ushbu bo'limda asosiy oqimga "sig'magan", lekin topilgan va **yo'qolib ketmasligi kerak** bo'lgan qo'shimcha raqamlar, dalillar, sitatalar va keyingi research uchun savollar saqlanadi.

### 10.1. Qo'shimcha raqamlar va dalillar (asosiy oqimdan tashqarida qolgan)

| # | Dalil / raqam | Manba | Holat |
|---|---|---|---|
| 1 | Global uglerod narxlash instrumentlari: **80+**, qamrov **~28%**, daromad **$107 mlrd** (2025) | research §2.1 | rasmiy/tahliliy |
| 2 | Okean/yer sinklari: okean **29%**, yer **21%** (so'nggi o'n yillik) | research §2.1 | akademik |
| 3 | 2015–2024: yer sinki **−25%**, okean sinki **−7%**; atmosfera CO₂ o'sishining **8%i** shu zaiflashuvdan | research §2.1 | akademik |
| 4 | 2025: global CO₂ **42,2 Gt** (fossil **38,1 Gt**); 1,5°C byudjeti **170 Gt ≈ 4 yil** | research §2.1 | akademik |
| 5 | CBAM kengayish rejasi: **~180 qo'shimcha pozitsiya** | research §2.1 | rasmiy reja |
| 6 | O'zbekiston aluminiy Trade Exposure indeksi **−0,1…−0,3%** — "toza" pozitsiya | research §2.1 (WB) | rasmiy |
| 7 | Yevropaga eksport (2024): **$1,7 mlrd**; kimyo **54%**, to'qimachilik **8,4%**, metallar **8,2%** | research §2.1 | rasmiy |
| 8 | Hindiston CCTS: **490 korxona, 8 tarmoq** | research §2.2 | rasmiy |
| 9 | Qozog'iston KazETS: **200+ korxona**, narx **~$1/t** (13 yil) | research §2.2 | rasmiy |
| 10 | Xitoy ETS: **+1 500 korxona** kengayish (sement/po'lat/aluminiy) | research §2.2 | rasmiy |
| 11 | Transport: Toshkentda **730 ming+** avtomobil (2022) | research §3.4 | rasmiy/statistika |
| 12 | Bino/uy-joy: **~20 Mt** (residential fuel combustion); "quyoshli xonadon" **2 GVt** | research §3.4 | rasmiy |
| 13 | Biogaz potentsiali: **6–11 mlrd m³** gaz | research §3.4 | tahliliy |
| 14 | O'g'it isrofi: **20–30%** kamaytirish imkoniyati | research §3.4 | tahliliy |
| 15 | Neft-gaz: AQSh bilan loyiha — **50 000+ sizib chiqish**, **7 mln t CO₂-ekv./yil** | research §3.4 | rasmiy |
| 16 | Ohangaron: **16 mln kVt·soat** + **53 ming t CO₂** qisqartirish | research §3.4 | rasmiy |
| 17 | Verifikatsiya fondi xarajati: **$5–10 mln** (3 yil) | research §3.8 | illyustrativ |
| 18 | Jami 3 yillik xarajat diapazoni: **$31–71 mln** | research §3.8 | illyustrativ |
| 19 | Orol: paxta hosildorligi **5–15%**, sholi **3–6%** pasayishi; baliqchilik **45 ming t/yil**, **~100 ming ish o'rni** | research §2.4 | rasmiy |
| 20 | Orol: tuz cho'kishi **250–500 kg/ga** (Chimboyda **500 t/ga**gacha); Qoraqalpog'istonda sho'rlangan yerlar **90%+** | research §2.4 | rasmiy |
| 21 | Orol: dengiz hajmi **1 064 → 70 km³** (10 barobar) | research §2.4 | rasmiy |
| 22 | Orolbo'yi: o'rmonzor **0,4–1,7 mln ga**; yillik foyda bahosi **$28–44 mln** | research §2.4 | rasmiy |
| 23 | Sanoat **~30 Mt (14–15%)** — IPPU | research §3.1 | rasmiy |
| 24 | Energetika 1990-yilda **82%** edi → 2022-da **63,6%** (ulush pasaygan, mutlaq o'sgan) | research §3.1 | rasmiy |

### 10.2. Ochiq (yechilmagan) savollar — keyingi research uchun

1. Korxonalarning aynan qaysi qismi **25 kt** chegarasidan yuqori? (litsenziya/energiya ma'lumotlari kerak)
2. Metan o'lchovining qaysi qismi **sun'iy yo'ldosh** bilan, qaysi qismi **yerda** o'lchanadi — xalqaro metodika tanlovi?
3. **WtE zavodlarida** dioksin monitoringini kim olib boradi va natijalar qanday e'lon qilinadi?
4. Qishloq xo'jaligi uchun **"rag'bat paketi"ning fiskal qiymati** qancha? (biogaz granti, o'g'it kartasi, suv tejash)
5. Ochiq bazaga joylashtirilganda **"tijoriy sir"** da'volarini qanday hal qilish kerak — qonunda aniq ro'yxat kerak.
6. Uglerod birligi tushumi uchun **jamg'arma modeli**: byudjetdan tashqari yoki byudjet ichida?
7. Viloyatlar reytingi **"jazolash" vositasiga aylanmasligi** uchun dizayn qoidasi (faqat yaxshilanish trendi baholansinmi?).

### 10.3. Ziddiyatlar (hech biri tanlanmagan — ikkalasi ham qoldiriladi)

| Savol | Raqam A | Raqam B | Holat |
|---|---|---|---|
| Qattiq maishiy chiqindi hajmi | **7,2 mln t/yil** (ba'zi rasmiy manbalar) | **14 mln t/yil** (boshqa rasmiy/tadqiqot baholari) | **Ochiq ziddiyat — ~2 baravar farq** |
| Qayta ishlash darajasi | **18–19%** (rasmiy) | **6,6%** (plastik bo'yicha amaliyot) | Ochiq ziddiyat |
| Yorliq/EF qiymatlari | IPCC default | (kelajakda) milliy EF | Metodik ziddiyat |
| CBAM sertifikat narxi bahosi | **€70–100/t** (dastlabki baho) | **75,36 / 75,28 €/t** (rasmiy, 2026) | **Hal qilindi — rasmiy raqam ustuvor** |
| O'zbekiston CBAM tarif ekvivalenti | **30%** (IMF) | **0,03% YaIM** (o'rtacha yuk) | Qarama-qarshi emas: mikro va makro ikki xil o'lchov |
| Metan umumiy emissiyasi | **60,2 Mt** (BTR1, 2022) | — | Yakka manba |
| Sektor metan ulushi | agro **42,2%**, chiqindi **16,1%** | — | Yakka manba (mustaqil tasdiqlanmagan) |

### 10.4. Foydalanilmagan ideyalar / muqobil formulirovkalar

- **Sarlavha variantlari:** "Emissiya raqamlari ishonchsiz bo'lsa, iqlim siyosati ham ishonchsiz" · "Ko'rinmaydigan Orol: nega raqam yagona ko'zimiz" · "Raqam yumshoq bo'ladi — yoki yumshoq qilib qo'yiladi?"
- **Metafora (muhokama uchun):** *"Raqam — bu bugungi iqlimning hisoblagichi. Hisoblagichni o'qiy olmasak, cheklov ham, imtiyoz ham adolatsiz bo'ladi."*
- **Nativatsiya g'oyasi (xulosa uchun):** asosiy oqimda **sement mikromisoli** (€16/t) eng "tushunarli" dalil bo'lishi mumkin — bitta raqam bilan butun CBAM muammosi tushuntiriladi.

---

**Hujjat holati:** QORALAMA v1.0 (2026-09-17). Qisqartirish qilinmagan. Yakuniy tanlov va tahrir — muallif (Jasur) tomonidan amalga oshiriladi. Har bir raqam manba bilan berilgan; ziddiyatli raqamlar atayin **ochiq** qoldirilgan.
