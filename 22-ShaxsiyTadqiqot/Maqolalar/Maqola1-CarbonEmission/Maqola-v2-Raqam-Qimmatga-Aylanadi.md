---
aliases: [Maqola 1 v2, Raqam qimmatga aylanadi]
tags: [maqola, ekologiya, emissiya, monitoring]
created: 2026-09-26
updated: 2026-09-26
tur: maqola
holat: qoralama (v2.0)
sarlavha: "RAQAM QIMMATGA AYLANADI — emissiya hisoboti to'g'ri bo'lmasa, O'zbekistonda kim to'laydi?"
qisqacha: Maqola 1 ning professional qoralamasi — o'lchov, himoya va pul qatlamlari bir zanjirda
manba: 03-Maqola1-Carbon-Emission/Maqola/Maqola1_v2_Raqam_Qimmatga_Aylanadi.md
eslatma: v1 (Maqola-EGAZ-BALANS.md) — dalillar to'plami; bu fayl — matn skeleti
---

# RAQAM QIMMATGA AYLANADI
## Emissiya hisoboti to'g'ri bo'lmasa, O'zbekistonda kim to'laydi?

**O'lchov xatosi → koeffitsient → jarima → qaytarish: uch qatlam, to'rt hujjat va bitta ochiq savol**

> **QORALAMA v2.0.** Maqolaning *matn skelet*: to'liq dalillar to'plami alohida faylda (`Maqola-EGAZ-BALANS.md`, v1.0) saqlanadi va **o'chirilmaydi**. Bu fayl — o'sha dalillardan chiqqan **yangi tuzilma va yangi tezis**: tadqiqot 1-B (o'lchov), 1-C (himoya), 1-D (pul) natijalari matnga singdirilgan. Ziddiyatli raqamlar ikkalasi ham ko'rsatilgan, ziddiyat **ochiq** qoldirilgan. Tanlov va tahrir — muallif (Jasur) tomonidan.
>
> **Muallif:** [F.I.Sh.] · **Konferensiya:** MMIT'26 · **Til:** o'zbek · **Hajm:** cheklovsiz

**Kalit so'zlar:** emissiya monitoringi, o'lchov noaniqligi, kompensatsiya to'lovi, avtomatik monitoring stansiyasi (CEMS), kompensatsiyani qaytarish, raqamli nazorat, MRV, O'zbekiston

---

## ABSTRAKT

2026-yil 1-martdan O'zbekistonda emissiya nazorati **pul kategoriyasiga** o'tdi: I va II toifa korxonalar atmosfera havosi fon monitoringi stansiyalarini o'rnatib, uni yagona platformaga ulashi shart; bajarmaganlar uchun kompensatsiya to'lovlari **besh baravarga** oshiriladi (202-son Nizom, 201-band). Buni uddalaganlarga esa davlat **rag'bat** beradi: qarzdorlikdan voz kechish, kompensatsiyaning **50 foizi** (birinchi bosqich) va **70 foizi** (to'liq paket) ikki yil davomida qaytariladi; og'ir holatda to'lovni **36 oy** bo'lib to'lashga ruxsat etiladi.

Bu — kuchli va zamonaviy dizayn. Ammo u **uchta qatlamga** suyanadi va qatlamlardan biri hanuz zaif: (1) **o'lchov** — hisoblangan miqdor qanday raqamdan chiqadi; (2) **himoya** — xato bo'lsa, korxona o'zini qanday oqlaydi; (3) **pul** — raqam qanday qilib jarima, imtiyoz va qaytarishga aylanadi.

Maqola dalillarni shu uch qatlam bo'ylab to'playdi: o'lchov zanjirining eng zaif bo'g'ini **oqim o'lchagichi** (adabiyotda 5–17% xato) va uning xatosi **hamma moddalarga bir yo'nalishda** o'tishi; platforma talablarining sakkiztasida e'tiroz yoki tushuntirish mexanizmining **yo'qligi**; o'lchov xatosi koeffitsientga, koeffitsient summaga, summa esa qaytarish foiziga aylanadigan **uch pog'onali zanjir**. Shu bilan birga maqola O'zbekistonning o'z huquqiy infratuzilmasini ko'rsatadi: 30 ish kuni, ijroni to'xtatish, 10 kunlik e'tiroz — hujjatlarda bor, lekin tizimga **ulanmagan**.

**Texnik implementatsiya (arxitektura, texnologiya) bu maqolada batafsil yozilmaydi** — u alohida hujjatda. Bu yerda faqat g'oya va uning institutsional shartlari muhokama qilinadi.

---

## RAQAMLAR PANELI (maqolaning o'qiga olingan 12 raqam)

| # | Raqam | Mazmuni | Manba |
|---|---|---|---|
| 1 | **663 + 1 672 = 2 335** | I va II toifa xo'jalik yurituvchi subyektlar soni | VM-783 (2024) |
| 2 | **01.03.2026** | stansiyalarni o'rnatish va integratsiya qilish muddati | PQ-343, 4-band |
| 3 | **5×** | o'rnatmaganlar uchun kompensatsiyaga koeffitsient | 202-son Nizom, 201-band |
| 4 | **50% → 70%** | o'rnatganlarga qaytarish (ikki bosqichda) | PF-16; VM 85-son (2026) |
| 5 | **36 oy** | kompensatsiyani bo'lib to'lash mumkin bo'lgan davr | 202-son Nizom, 301-band |
| 6 | **15 ish kuni** | rag'bat xabarnomasini ko'rib chiqish muddati | VM 85-son; gazeta.uz (02.03.2026) |
| 7 | **5–17%** | oqim o'lchagichi xatosi (adabiyot) | tadqiqot 1-B |
| 8 | **≤10% / ≤7,5%** | yillik RATA mezonlari (AQSh amaliyoti) | EPA CAMD (2022) |
| 9 | **347** | byudjetdan sotib olinadigan fon stansiyalari | kun.uz (25.11.2025) |
| 10 | **1 trln 386 mlrd so'm** | 2026-yilda 750 korxonada aniqlangan zarar | Sputnik (05.08.2026) |
| 11 | **548 mlrd so'm** | 2026-yil Maxsus jamg'arma mablag'i | PQ-343, 8-ilova |
| 12 | **~59 000** | 2025-yilda ekologik huquqbuzarliklar soni | gazeta.uz (05.05.2026) |

---

## 1. KIRISH — 1-MART: RAQAM QACHON PULGA AYLANDI?

*(Avtomatlashtirish ipi — 1-band: kirish.)*

2026-yil 1-mart — sanani alohida ajratib yodda tutish kerak. Shu kundan boshlab O'zbekistonda o'lchov xatosi pulga aylana boshladi.

Ikki hujjat bir-biriga tayanadi. Prezidentning 2025-yil 29-oktabrdagi qaroriga ko'ra I va II toifa korxonalar **2026-yil 1-martga qadar** o'z hududlarida fon monitoring stansiyalarini joylashtirib, ularni Ekologiya qo'mitasining Ekologik monitoring milliy markazi bilan birlashtirishi lozim edi **[E1 — rasmiy]**. VM-783-son qarorning uchinchi bandi esa texnik shartni qat'iy qilib qo'ydi: stansiyalar **O'zMSt 194:2024** va **O'zMSt 195:2024** milliy standartlariga mos bo'lishi, muvofiqlikni *Davlat ekologik sertifikatlashtirish va standartlashtirish markazi* baholashi, o'lchash vositalari metrologiya tekshiruvidan o'tishi shart **[E2 — rasmiy]**.

Va o'sha banddagi raqam — maqolaning kaliti: yangi chang-gaz tozalash uskunalarining samaradorligi *«99,5 foizdan, modernizatsiya qilinadigan mavjud uskunalarning samaradorligi esa 95 foizdan kam bo'lmasligi»*, lokal suv tozalash uskunalari uchun — *«80 foizdan kam bo'lmasligi lozim»* **[E2]**.

Ya'ni qonun talabni **foizda** qo'ydi. Foizlar esa — o'lchov bilan aniqlanadi. Savol tug'iladi: agar o'lchovning o'zi xato qilsa, talab bajarildimi yoki bajarilmadimi — kim hal qiladi?

Amalda jarayon boshlanib bo'ldi. 2025-yil noyabr holatiga **to'qqizta sement zavodida** avtomatik kuzatuv stansiyalari ish faoliyatini boshlagan; «Ohangaronsement» AJ va «Jizzax sement plent» MCHJ hududlarida statsionar kuzatuv punktlari tashkil etilgan **[E3 — rasmiy]**.

Ikkinchi tomonda — rag'bat tomoni. VM 85-son (2026-yil 28-fevral, kuchga kirishi — 2-mart) fon stansiyasini o'rnatgan korxonaga ikki narsani beradi: **qarzdorlikdan voz kechish** va kompensatsiya to'lovlarining **50 foizi**gacha qaytarilishini; keyin bir yil ichida chang-gaz va lokal suv tozalash uskunalarini ham o'rnatsa — **70 foizi** qaytariladi. Rasmiy izohda tartib aniq: korxona xabarnomani Davlat xizmatlari markazlari yoki **YaIDXP (my.gov.uz)** orqali yuboradi, qo'mita **15 ish kunidan oshmagan muddatda** ko'rib chiqadi va natija **xulosa** bilan rasmiylashtiriladi **[E4 — media/rasmiy]**.

Mana shu yerda maqolaning asosiy savoli tug'iladi. Davlat «o'lchaganingni ko'rsat, imtiyoz olasan» deyapti. Bu — to'g'ri mantiq. Lekin aynan shu paytda **raqamning o'zi qanday olingani** e'lon qilinmayapti. Uch savol ochiq qoladi:

1. **Hisob-kitob** raqami — ya'ni kompensatsiya undiriladigan miqdor — qanday noaniqlik bilan keladi?
2. Xato yuz berganda korxonaning **e'tiroz yo'li** bormi va u qanchalik tez ishlaydi?
3. Va eng muhimi: xato **kimning cho'ntagidan** chiqadi — korxonadanmi, budjetdanmi, yoki boshqa hech kim sezmaydimi?

Aynan shu uch savol — maqolaning uch qatlami: **o'lchov**, **himoya** va **pul**.

**Nega bu ayniqsa hozir muhim?** Chunki tizim hali qurilmoqda. Platforma 2026-yil 1-sentabrdan ishga tushirilishi rejalashtirilgan **[E5 — rasmiy]**, Toshkentda esa 2026-yil yanvar–fevral oylarida PM2,5 konsentratsiyasi o'tgan yilning shu davriga nisbatan **sezilarli pasaygani** qayd etilgan **[E6 — rasmiy]**. Ya'ni natijalar bor, ishtaha bor — endi savol **raqamning mustahkamligida**.

---

## 2. UCH QATLAM: MAQOLA NIMANI TEKSHIRADI

*(Avtomatlashtirish ipi — 2-band: uslub va chegara.)*

Maqolada o'quvchi uch qatlam bo'ylab harakatlanadi. Bu uch qatlam bir-biridan mustaqil emas: ular **bitta zanjir**.

| Qatlam | Savol | Nima tekshiriladi | Qayerdan olingan |
|---|---|---|---|
| **I. O'LCHOV** | Raqam qayerda xato qiladi? | oqim o'lchagichi, analizator, kalibrovka zanjiri, o'lchov noaniqligi | Tadqiqot 1-B |
| **II. HIMOYA** | Xato bo'lsa, adolat qanday ta'minlanadi? | e'tiroz, tushuntirish, apellyatsiya, yolg'on-ijobiy oshkorligi | Tadqiqot 1-C |
| **III. PUL** | Raqam qanday qilib jarima va imtiyozga aylanadi? | 5× koeffitsient, 50%/70% qaytarish, 36 oy bo'lib to'lash | Tadqiqot 1-D |

Zanjirning mantiqiy ketma-ketligi shunday: **o'lchov xatosi → koeffitsient → summa → qaytarish foizi**. Bir nuqtadagi xato **uch marta** ko'payadi. Buni quyidagicha ham aytish mumkin: bugungi tizimda raqam *xato* bo'lsa, u faqat raqam bo'lib qolmaydi — u **jarimaga**, keyin **imtiyoz radiga**, keyin **sudga** aylanadi.

**Chegara (halol aytilishi kerak):** maqola loyihaning avtomatlashtirish yechimini *texnik* jihatdan tasvirlamaydi. Arxitektura, algoritmlar va bosqichlar — alohida hujjat mavzusi. Bu yerda esa quyidagi savol muhokama qilinadi: *avtomatlashtirish nimani uddalaydi, nimani uddalay olmaydi va u qanday qonunchilik sharoitida ishonchga sazovor bo'ladi?*

**Nega avtomatlashtirish umuman kerak?** Bitta raqam bilan ko'rsatamiz: 2026-yilda ekologiya politsiyasi **750 korxonada** tekshiruv o'tkazib, tabiatga yetkazilgan **1 trillion 386 milliard so'mlik** zararni hisobladi; qariyb **500 mansabdor shaxs** jazalandi, qariyb **16 mlrd so'm** jarima belgilandi **[E7 — media]**. 2025-yilda esa jarimalar **karrasiga** (ikki baravar) oshirilishi e'lon qilingan edi va moliyaviy sanksiyalar tabiatga yetkazilgan zarar hamda to'lovi lozim bo'lgan kompensatsiya miqdoriga **bog'lanmoqda** **[E8 — media]**. Hajm shu qadar o'sdiki, uni «qo'lda, ish-hujjat bilan» ushlab turish amalda imkonsiz: tekshirilgan korxonalar soni 750, aniqdagi zarar esa trillionlarda. Bu nisbat — avtomatlashtirishning eng ishonchli argumenti. Lekin, e'tibor bering: **aynan shu nisbat uning eng katta xavfini ham yashiradi** — noto'g'ri raqam ham trillionlarda ko'payadi.

---

## 3. EMISSIYA RAQAMI QANDAY HISOBLANADI — VA UNDA NIMA USTUN?

*(Avtomatlashtirish ipi — 3-band: «qo'lda tekshirish nimani ko'rmaydi».)*

### 3.1. Hisob-kitob zanjiri

O'zbekistonda tabiatga yetkazilgan zarar uchun kompensatsiya to'lovlari «Atrof tabiiy muhitni ifloslantirganlik va chiqindilarni joylashtirganlik uchun kompensatsiya to'lovlari to'g'risida»gi Nizom (202-son) bilan tartibga solinadi. Uning amaliy o'qilishi shunday: to'lov **choraklik** bo'lib, hisobot chorakdan keyingi oyning **25-sanasigacha** topshiriladi; farq aniqlansa qo'shimcha **10 kun** beriladi; qayta hisob-kitob **3 yil**gacha orqaga qarab qilinishi mumkin; kelishmovchilik tuman organida ko'riladi **[E9 — rasmiy]**.

Diqqat: bu **hisob-kitob** tartibi. Ya'ni summa asosan *qanday o'lchandi* emas, *qanday hisoblandi* — sarf, koeffitsient, normativ — bilan belgilanadi. Va aynan shu yerda maqolaning birinchi katta tarangligi turadi:

> **Davlat to'lovni *hisob-kitob* asosida undiradi; korxonaning muhandislari esa *o'lchov* asosida ishlaydi. Bu ikki raqam hamma vaqt bir xil bo'lavermaydi.**

Nizom esa bu farqni **3 yil**gacha cho'zilgan qayta hisob-kitob orqali qaytarib keladi. Ya'ni bugun «to'g'ri» hisoblangan summa, ertaga — yangi koeffitsient bilan — «noto'g'ri» bo'lib chiqadi. Korxona uchun bu *doimiy ochiq aylanma risk*.

### 3.2. Qamrov: kim hisobot beradi

VM-783-son raqamlari: **663 ta I toifa** va **1 672 ta II toifa** xo'jalik yurituvchi subyekt **[E2]**. Jami 2 335 obyekt. Bu — maqolaning «kim haqida gaplashamiz» raqami. 2026-yil 1-martdan ularning barchasi stansiya jihozlash majburiyati ostida.

### 3.3. Ziddiyatlar — ikkalasi ham qoldiriladi

Maqola qoidasi: **raqam qaysi manbadan ekani va nima uchun farq qilishi** ko'rsatiladi, «to'g'risi» tanlanmaydi.

| Ziddiyat | Raqam A | Raqam B | Holat |
|---|---|---|---|
| Qattiq maishiy chiqindi hajmi | **7,2 mln t/yil** (bir guruh rasmiy manbalar) | **14 mln t/yil** (boshqa rasmiy/tadqiqot baholari) | ochiq — ~2 baravar farq |
| Qayta ishlash darajasi | **18–19%** (rasmiy) | **6,6%** (plastik bo'yicha amaliyot) | ochiq |
| Apellyatsiya muddati (jinoyat ishi doirasida) | **3 oy** (MPK, 187-modda) | **6 oy** (media talqini) | ochiq — keyingi tekshiruv talab |
| CBAM sertifikati bahosi | **€70–100/t** (dastlabki baho) | **75,36 €/t** (I chorak 2026, rasmiy) va **75,28 €/t** (II chorak) | **hal qilindi** — rasmiy raqam ustuvor |

Ushbu ziddiyatlar ro'yxati **atayin qisqartirilmagan holda** v1.0 dalillar faylida ham saqlanadi.

---

## 4. I QATLAM — O'LCHOV: RAQAM QAYERDA XATO QILADI?

*(Avtomatlashtirish ipi — 4-band: shovqin va signalni ajratish.)*

Bu bo'lim tadqiqot 1-B asosida yozildi.

### 4.1. Eng zaif bo'g'in — oqim o'lchagichi

Emissiya massasi «kontsentratsiya × oqim × vaqt» ko'rinishida hisoblanadi. Kontsentratsiya o'lchagichi (gaz analizatori) yaxshi o'rganilgan bo'g'in. **Oqim** esa — eng zaif. Xalqaro adabiyotda va amaliyotda uchraydigan raqamlar:

| Bo'g'in | Xato darajasi | Izoh |
|---|---|---|
| Oqim o'lchagichi (bitta yo'l) | **5–17%** | eng katta noaniqlik manbai |
| Oqim o'lchagichi (X-shakl, yaxshi montaj) | **0,5–1%** | ideal holatga yaqin |
| Etalon (dalil) o'lchash | **±0,7%** | NIST izohi |
| Namuna olish zondi (AQSh milliy standart izohi) | **5–6%** | karta bo'yicha |
| Namuna olish zondi (Lehigh tadqiqoti) | **+20%** gacha | keskin farq |
| Suyultirish (dilution) effekti | **−9…−13%** | tizimli pasaytirish |

**Asosiy xulosa — va u shovqin haqidagi butun munozarani o'zgartiradi:** oqim xatosi **hamma moddalarga bir xil yo'nalishda** o'tadi. Ya'ni bitta noaniq bo'g'in butun hisobotni *bir tomonga* siljitadi. Bu — «tasodifiy shovqin» emas, **belgili (signed) xato**. Va aynan shu tufayli u **statistik tahlil qilinmaydi**: tasodifiy shovqin o'rtacha bilan o'chadi, tizimli og'ish esa — yo'q.

### 4.2. Tekshiruv ziddiyati: o'lchov boshqa raqam berishi mumkin

Xalqaro amaliyotda eng ishlagan nazorat usuli — **RATA** (Relative Accuracy Test Audit): yilda bir marta tizim *etalon* usul bilan qiyoslanadi; mezon — nisbiy aniqlik **≤10%**; natija **≤7,5%** bo'lsa tekshiruv chastotasi kamaytiriladi; muvaffaqiyatsiz RATA bo'lsa, tizim ma'lumotlari **«yaroqsiz» deb e'lon qilinadi** va o'rniga qo'yiladigan (substitute data) usuldan foydalaniladi **[E10 — rasmiy]**.

Bu yondashuv O'zbekiston uchun bevosita ko'chiriladigan yechim emas (boshqa standartlar, boshqa laboratoriya tarmog'i), lekin **tamoyili** — «raqam etalonga nisbatan baholanadi va yaroqsiz deb topilishi mumkin» — hozirgi tizimda umuman yo'q. Natijada uchinchi tomon o'lchovi «bir xil xato bilan» qaytariladi va farq sezilmay qoladi.

### 4.3. Maqola uchun eng kuchli savol

Shu joyda maqolaning asosiy savoli shakllanadi. **202-son Nizom koeffitsienti 1× dan 20× gacha.** Adabiyotdagi 5–17% oqim xatosi to'g'ridan-to'g'ri summani 20 barobargacha kattalashtira oladi (modda bo'yicha koeffitsient qo'llansa — o'n barobargacha). Savol:

> **Agar aniqlangan farq o'lchov xatosi darajasida bo'lsa, jarima undirishdan oldin kim va qanday qilib «bu raqam yetarli mustahkammi» deb tekshiradi?**

Bugun bu savolga rasmiy javob yo'q. Bu — «texnik kamchilik» emas. Bu — **huquqiy bo'shliq**, va keyingi bo'lim aynan shu haqda.

---

## 5. II QATLAM — HIMOYA: PLATFORMA TALABLARIDA E'TIROZ BORMI?

*(Avtomatlashtirish ipi — 5-band: avtomatik qaror va inson nazorati.)*

Bu bo'lim tadqiqot 1-C asosida yozildi.

### 5.1. Sakkiz talab — va ulardagi jimjitlik

PQ-343-son qarorning **7-ilovasi** yagona platformaga **sakkizta talab** qo'yadi: masofaviy aniqlash; **inson omilini qisqartirish**; ekologik tahlil; erta ogohlantirish; sertifikat/ekspertiza; **onlayn chora ko'rish**; katta ma'lumotlar; **sun'iy intellekt / Big Data** **[E11 — rasmiy]**.

Talablarni birma-bir o'qib chiqsangiz, e'tibor beradigan narsa — **yo'qligi**: sakkiztalasida ham apellyatsiya, tushuntirish so'rash, **«bu signal xato bo'lishi mumkin»** degan qoida, inson tekshiruvi majburiyati yoki xatolik darajasi (yolg'on-ijobiy) haqida bir og'iz so'z yo'q. 2-talab *«inson omilini qisqartirish»*ni talab qiladi; 6-talab esa *«onlayn chora ko'rish»*ni. Birgalikda o'qilsa, bu ikkisi **tushuntirilmasdan qo'llanadigan avtomatik qaror** yo'lini ochadi.

Bu — xalqaro amaliyotda eng ko'p tanqid qilinadigan dizayn. **Yevropa Ittifoqining Sun'iy intellekt to'g'risidagi qonuni (AI Act) 86-moddasi** (kuchga kirishi — 2026-yil 2-avgust) avtomatik qarorlar uchun **tushuntirish olish huquqini** belgilaydi; **AQShning OMB M-24-10** memorandumi esa avtomatik tizimlardan foydalanishda *due process* va **qo'lda ko'rib chiqish**ni talab qiladi **[E12 — rasmiy; E13 — rasmiy]**.

### 5.2. O'zbekistonda himoya bor — lekin ulanmagan

Adolatsizlik taassurotidan himoyalanish uchun O'zbekistonda yangi institut yaratish **shart emas**. Kerakli mexanizmlar allaqachon bor:

| Mexanizm | Muddat / kuch | Manba |
|---|---|---|
| O'RQ-457 (murojaatlar) — yuqori organga e'tiroz | **30 ish kuni**, **ijro to'xtatiladi**, ish to'liq hajmda ko'riladi | O'RQ-457, 63–67-moddalar |
| MJTK bo'yicha shikoyat | **10 kun**, kuchga kirishi to'xtatiladi | MJTK |
| Jarima to'lash muddati | **60 kun** (rad etilgandan keyin — 30 kun) | MJTK |
| Murojaatga javob berish | **15 kun / 1 oy** | murojaatlar to'g'risidagi qonun |
| Apellyatsiya (sud) | **10 sutka** | MJTK |

Ya'ni savol «himoya bormi?» emas — **«nima uchun u platformaga ulanmagan?»**. Korxona bugun o'z huquqini **bilishi** uchun huquqshunos tutishi kerak; platforma esa unga o'z qarorini **darhol** tushuntirmaydi. Bu holatda «adolatli» va «adolatsiz» tizim o'rtasidagi farq qonunchilikda emas, **interfeysda** hal bo'ladi.

### 5.3. Uch zonali qoida — taklif

Maqola 1-C da taklif qilingan yechimning bir bandini keltiramiz (texnik emas, **qoida** darajasida):

- 🟢 **x̄ < L** — norma bajarilgan, «yozib borish» rejimi (jazo yo'q);
- 🟡 **L ≤ x̄ ≤ L + U** — «**shartli**» zona: o'lchov noaniqligi (U — kengaytirilgan noaniqlik, k=2) hisobga olinadi, **jazo qo'llanilmaydi**, lekin avtomatik tekshiruv ishga tushadi;
- 🔴 **x̄ > L + U** — jazo + **tushuntirish kartasi** (o'lchov qiymati, noaniqlik va uning manbasi, norma hujjati, qaror qoidasi, kalibrovka holati, xom ma'lumot).

Bu yondashuv xalqaro o'lchov metrologiyasida **«guarded acceptance»** deb ataladi (JCGM 106; ILAC-G8) va uning butun mantiqi bitta jumlada: **«xato chegarasida turgan raqamga jazo qo'llanmaydi — u tekshiruvga yuboriladi»** **[E14 — akademik/rasmiy]**.

### 5.4. Yolg'on-ijobiy — eng qimmat xato turi

Muhandislikda yolg'on-ijobiy (false positive) — «yo'q narsani bor deb ko'rsatish». Bu maqolada mavhum tushuncha emas. Ikkita dalil:

1. Tibbiy signalizatsiya tizimlarida yolg'on-ijobiy ulushi **80–99%** gacha chiqadi; xavfsizlikni buzishni aniqlash tizimlarida — **90–99%** (Axelsson, 1999 va keyingi tadqiqotlar) **[E15 — akademik]**;
2. Avtomatik tizimda yolg'on-ijobiyning narxi ikki barobar: korxona **to'lamaydigan pul to'laydi**, davlat esa **ishonchni yo'qotadi** va operatorlar signallarga e'tibor bermay qo'yadi (**«alert fatigue»**).

Shuning uchun maqolaning eng amaliy tavsiyasi texnik emas, **hisobotlash**: **choraklik «Aniqlik hisoboti»** — nechta signal, ulardan qanchasi shartli zonada, qanchasi bekor qilindi, o'lchov noaniqligi normaga nisbatan qanday. Bu — *oshkoralik*, jarima emas. Va u **qizil signallarning kamida 5 foizini** mustaqil (xalqaro akkreditatsiyalangan) laboratoriyada qayta o'lchash bilan mustahkamlanadi.

---

## 6. III QATLAM — PUL: 5× JAZO YOKI 70% QAYTARISH

*(Avtomatlashtirish ipi — 6-band: o'lchov sifati to'g'ridan-to'g'ri pul oqimini boshqaradi.)*

Bu bo'lim tadqiqot 1-D asosida yozildi.

### 6.1. Ikki tomonni bitta jadvalga keltiramiz

O'zbekistonda rag'bat va jazo — **ikki alohida hujjatda**. Birlashtirilmagani uchun korxona ularni yonma-yon ko'rmaydi. Mana ular yonma-yon:

| Holat | Huquqiy oqibat | Manba |
|---|---|---|
| Uskuna o'rnatilmagan | kompensatsiya **besh baravarga** oshirilgan holda to'lanadi | 202-son Nizom, 201-band |
| O'lchov normativi yo'q (bahslashuvchi holat) | koeffitsient **20×**gacha | 202-son Nizom |
| Fon monitoring stansiyasi o'rnatilgan | **qarzdorlikdan voz kechiladi** + to'lovning **50%**igacha qaytariladi (2 yil) | PF-16; VM 85-son |
| + chang-gaz va lokal suv tozalash uskunalari | to'lovning **70%**igacha qaytariladi (2 yil) | PF-16; VM 85-son |
| To'liq paket o'rnatilgan YOKI 15% dan ortiq to'lov qilingan | kompensatsiyani **36 oy** bo'lib to'lashga ruxsat | 202-son Nizom, 301-band |

Hujjat tilidan so'zma-so'z: o'rnatmaganlar uchun *«kompensatsiya to'lovlari besh baravarga oshirilgan holda to'lanadi»*; o'rnatganlar uchun esa *«kompensatsiya to'lovlarini teng ulushlarda 36 oy davomida bo'lib-bo'lib to'lashga ruxsat etiladi»* **[E2]**.

### 6.2. Rag'batning tuzilishi: kuchli tomoni va uch bo'shlig'i

**Kuchli tomoni:** zinapoya to'liq qurilgan — «hech nima» holatidan «to'liq paket» holatigacha **to'rt qadam** bor va har qadamda pul ta'siri aniq ko'rinadi. Bu — O'zbekiston ekologiya siyosatining eng zamonaviy qismlaridan biri: jazodan emas, **rag'batdan** boshlanadigan dizayn.

**Bo'shliq 1 — «gacha» muammosi.** Ikkala imtiyoz ham *«50 foizi»* va *«70 foizi»* deb emas, *«**50 foizigacha**»* va *«**70 foizigacha**»* deb yozilgan. Yakuniy foiz **xulosa** bilan belgilanadi. Ya'ni korxona investitsiya qarorini **noaniq raqam** ostida qabul qiladi. 1-C paketidagi «tushuntirish kartasi» tamoyilini bu yerga ham qo'llash mumkin: *«qanday holatda qancha foiz»* jadvali oldindan e'lon qilinsin.

**Bo'shliq 2 — vaqt assimetriyasi.** Jazo **darhol** boshlanadi (5×), qaytarish esa **ikki yilga** cho'ziladi. Diskontlangan qiymatda bu rag'batni sezilarli zaiflashtiradi. Muqobil: birinchi olti oyda tezlashtirilgan qaytarish.

**Bo'shliq 3 — voz kechish nimaga tegishli?** VM 85-son bo'yicha voz kechish **qarzdorlikka** taalluqli, joriy to'lovga emas. Ya'ni imtiyozning muddati va hajmi cheklangan. Bu — hujjatdagi eng nozik joy va uni amaliyot ko'rsatadi.

### 6.3. Raqamlar qanday ko'rinadi — real holatlar

Nazariyani amaliyotga bog'laymiz. 2026-yilda:

- Qashqadaryodagi **Muborak gazni qayta ishlash zavodiga** ekologik qonunbuzilishlar uchun **10 mlrd 834 mln so'm** qo'shimcha kompensatsiya belgilandi **[E8 — media]**;
- Avvalroq Surxondaryoning Boysun tumanida daryoga neft aralash suyuqlik oqib ketishi ortidan **8,5 mlrd so'mdan ortiq** kompensatsiya hisoblangan edi **[E8]**;
- Yil davomida ekopolitsiya 750 korxonani tekshirib, **1 trln 386 mlrd so'm** zarar hisobladi **[E7]**.

Endi savolni qat'iy qo'yamiz: bu summalarning har biri **o'lchovga** asoslanganmi yoki **hisob-kitobga**? Agar asosda o'lchov turgan bo'lsa — o'lchov noaniqligi (masalan, oqim bo'yicha 5–17%) shu summalarning *bir qismiga* to'g'ridan-to'g'ri o'tadi. Ko'rib chiqish mexanizmi yo'q bo'lsa, bu xato **jimgina** to'lanadi.

### 6.4. Davlat tomoni: pul qayerdan keladi

| Manba | Miqdor / ulush | Manba hujjati |
|---|---|---|
| Respublika budjeti (2025) | **900 mlrd so'm** | PQ-343 |
| Respublika budjeti (2026) | **548 mlrd so'm** (kadastr 8,0 · ihota o'rmon 73,7 · texnika 66,3 · «Yashil makon» 250,0 · sanitar 150,0 mlrd) | PQ-343, 8-ilova |
| Uglerod birliklari savdosi | **20%** (2026-01-01 dan) | PQ-343 |
| Kompensatsiya va jarimalardan ajratmalar | kompensatsiya **45/15**, jarimalar **50/37** (2026 dan) | PQ-343, 9-ilova |
| Amaldagi oqim (2026 I yarim yillik hisoboti) | ekologiya sohasida **274 mlrd so'm** sohaviy jamg'armaga, **84 mlrd so'm** «Yashil makon»ga | gazeta.uz (16.09.2026) |

Oxirgi qator alohida ahamiyatli: bu **real pul oqimi** — byudjet hisoboti. Ya'ni jamg'arma ishlayapti, undirish bor, sarflash ham bor.

### 6.5. Xarajat tomoni: korxona nima to'laydi

Xalqaro narx benchmarklari (O'zbekiston shartnoma summalari ochiq xarid hujjatlarida — bu maqolada ular bo'yicha da'vo qilinmaydi):

| Uskuna | Narx (xalqaro) | Yillik xizmat |
|---|---|---|
| CEMS (bitta mo'ri, to'liq o'rnatilgan) | **$120 000–350 000** | kapitalning **3–6%** |
| Sertifikatlangan fon stansiyasi (CAAQMS) | **$150 000–250 000** | kapitalning **5–15%** |
| Faqat PM monitoringi | **$20 000–50 000** | — |
| Etalon monitor (bitta modda) | **$15 000–40 000** | **$15 000+** |
| Arzon sensor (ko'rsatkich darajasi) | **$500–5 000** | $5–200 |

«Arzon sensor» qatorini maqolada **atayin** qoldiramiz: u narx jihatidan jozibali, lekin sertifikatlash talabi (O'zMSt) ostida **yaroqli variant emas**. Bu — korxona uchun eng ko'p uchraydigan xato: arzon uskuna sotib olinadi, keyin u metrologik tekshiruvdan o'tmaydi va imtiyoz olinmaydi.

### 6.6. Uch qatlamning kesishish nuqtasi

Mana maqolaning eng muhim jumlasi:

> **Qaytarish foizi (50% yoki 70%) o'sha *hisoblangan* summaning foizidir. Agar hisob-kitobga xato kirgan bo'lsa, imtiyoz ham xato summadan hisoblanadi — ya'ni davlat o'z xatosini ikki marta to'laydi: to'la undira olmaydi, keyin ustiga qaytarib beradi.**

Shu sababdan o'lchov aniqligi — **texnik emas, fiskal** masala.

---

## 7. AMALIYOT: NATIJALAR BOR, SAVOLLAR HAM

*(Avtomatlashtirish ipi — 7-band: qamrov matematikasi.)*

### 7.1. Nima qilindi (faktlar)

| Natija | Raqam | Manba |
|---|---|---|
| Sement sanoatida avtomatik kuzatuv stansiyalari ishga tushgan | **9 zavod** | uza.uz (29.11.2025) |
| «Zamin» fondi ko'magida o'rnatilgan stansiyalar | **28 ta** (HORIBA) | Anhor (08.09.2026) |
| Byudjetdan sotib olinadigan fon stansiyalari | **347 ta** reja | kun.uz (25.11.2025) |
| Tekshirilgan korxonalar (2026) | **750** | Sputnik (05.08.2026) |
| Aniqlangan zarar (2026) | **1 trln 386 mlrd so'm** | Sputnik |
| Huquqbuzarliklar (2025) | **~59 000** | gazeta.uz (05.05.2026) |

### 7.2. Qamrov savoli — matematika

2 335 obyekt bor. Ulardan 2026-yilda **750 tasi** tekshirildi (bu — yillik qamrovning taxminan uchdan biri; lekin tekshiruv ekopolitsiya tomonidan, ya'ni *nazorat* kanali). Bir vaqtda **347 stansiya** o'rnatilishi rejalashtirilgan — bu *o'lchov* kanali.

Endi ikki kanalni yonma-yon qo'ying: **tekshiruv** (inson, sayohat, ish-hujjat: 750 obyekt/yil) va **o'lchov** (avtomatik, uzluksiz: bitta stansiya bir yilda o'n minglab qiymat beradi). Nisbat 1 ga 100 va undan yuqori. Bu — avtomatlashtirish **kerak** degan dalil. Lekin xuddi shu nisbat ikkinchi xulosani beradi: **avtomatik signal soni inson tekshiruvidan o'n baravar ko'p bo'ladi**. Ya'ni har bir avtomatik signalni inson ko'zdan kechira olmaydi — demak **signalni saralash, noaniqlikni baholash va shubhalilarni ajratib berish** g'oyasi texnik qulaylik emas, **matematik zaruriyat**.

### 7.3. Nimani hali bilmaymiz (halol ro'yxat)

1. 2 335 obyektdan qanchasi 1-martga qadar stansiya o'rnatdi — rasmiy e'lon qilingan yakuniy hisobot bizga ma'lum emas.
2. 347 stansiyaning shartnoma summalari va yetkazib beruvchilari bo'yicha ochiq ma'lumot topilmadi.
3. Qaytarish (50%/70%) bo'yicha **qancha korxona** xulosa olgani e'lon qilinmagan.
4. Kompensatsiya to'lovlarining **umumiy bazaviy hajmi** (undirilgan summa) ochiq manbalarda to'liq ko'rinmaydi — bo'laklargina bor (Muborak, Boysun).
5. Yolg'on-ijobiy signal darajasi UZ tizimida umuman o'lchanmagan (chunki o'lchov qoidasi yo'q).

**Bu ro'yxatning o'zi maqolaning xulosalaridan biri:** tizim shaffofligining eng katta yutug'i — *raqam e'lon qilinishi*. Hozir e'lon qilinmagan tomoni — **aniqlik ko'rsatkichlari**.

---

## 8. AVTOMATLASHTIRISH: QAYERDA KERAK, QAYERDA XAVFLI?

*(Avtomatlashtirish ipi — 8-band: to'g'ridan-to'g'ri.)*

Maqolaning eng nozik qismi shu. Avtomatlashtirish moda bo'lgani uchun emas, **kerak bo'lgani uchun** kerak — lekin u o'z-o'zidan adolat keltirmaydi.

**Uch xalqaro saboq:**

1. **Xitoy milliy uglerod bozori** — katta ma'lumot asosida anomaliyalarni aniqlash va erta ogohlantirish tizimi joriy qilingan (MEE hisoboti, 2024); shu bilan birga ilmiy tahlillar (MDPI, 2025) MRV ning zaif tomonlarini va ma'lumot ishonchliligi muammosini tan oladi **[E12a — rasmiy; E12b — akademik]**. Saboq: *aniqlash* tizimi *jazolash* tizimisiz ham foydali; lekin aniqlash tizimi **tushuntirish**siz ishlamaydi.
2. **Qozog'iston** — 13 yil davomida KazETS amalda «qog'ozdagi bozor» bo'lib qoldi (narx ~$1/t) **[v1 §10]**. Saboq: ETS ni raqamli infratuzilmasiz joriy qilish **ishlamaydi**.
3. **Hindiston CCTS** — 8 tarmoq, 490 korxona qamrovi **[v1 §10]**. Saboq: qamrovni **tarmoq kesimida** bosqichma-bosqich kengaytirish ishlaydi.

**Yevropa va AQSh tomonidan kelgan qat'iy talablar (2026):**
- **Yevropa Ittifoqi AI Act, 86-modda** — avtomatik qarorlar bo'yicha **tushuntirish huquqi** (kuchga kirishi 2026-08-02) **[E12]**;
- **OMB M-24-10** (AQSh) — avtomatik tizimlarda **qo'lda ko'rib chiqish** va *due process* **[E13]**;
- **40 CFR 22** (AQSh) — ekologik jarima ustidan shikoyatda **30 kun**, to'liq to'lash talabi **[E13a]**.

**Uzbek tizimida** uch me'yor **allaqachon bor** (§5.2 jadvali), lekin platforma talablarida yo'q. Xulosa:

> **Avtomatlashtirishning chegarasi texnik emas — u «qaror qoidasi» yo'qligida. Tizim nechta signalni ushlashi mumkinligini aytadi; u signal *to'g'rimi* yoki *xato*mi, ayta olmaydi. Buni faqat noaniqlik bilan birga hisoblangan qoida aytadi.**

Shu joyda 1-C paketining amaliy qiymati ko'rinadi: u **yangi apparat talab qilmaydi**, **yangi byudjet qatori ochmaydi** — u bor tizimga **uch qoida** qo'shadi (zona, karta, e'tiroz). Maqolaning texnik emas, **institutsional** xulosasi shu.

---

## 9. MUHOKAMA: RISKLAR VA QARSHI FIKRLAR

*(Avtomatlashtirish ipi — 9-band: tanqidni o'z ichiga olish.)*

Har bir maqola o'z qarshisidagi eng kuchli e'tirozni o'zi aytishi kerak. Bizda **beshta**:

**1. «Raqam oshkor qilinsa, korxona o'z xatosini yashirishni o'rganadi».** To'g'ri xavf. Javob: oshkorlik **xom ma'lumot** bilan cheklangan bo'lishi va **qarama-qarshi signal** (yoqilg'i, energiya, ishlab chiqarish hajmi) talab qilinishi kerak. Bitta kanalga tayanadigan oshkorlik — yashirishga o'rgatadi.

**2. «Aniqlik zonasi yaratilsa, hamma shu zonaga suyanadi».** Bu ham real: 🟡 shartli zona kengaytirilsa, korxona uni *imtiyoz* deb o'qiydi. Javob: zona **bir marta, aniq noaniqlik chegarasida** belgilanishi va choraklik hisobotda uning **ulushi** oshkor qilinishi kerak (nazoratchi ham, jurnalist ham ko'rsin).

**3. «Tizim siyosiylashadi».** Viloyatlar reytingi, «yashil» va «qora» ro'yxatlar — saylov arafasida vosita bo'lishi mumkin. Javob: reyting **yaxshilanish trendi** bo'yicha bo'lsin, mutlaq holat bo'yicha emas; metodika **oldindan** e'lon qilinsin.

**4. «Kichik korxona yuki oshadi».** Bitta sertifikatlangan stansiya — o'n minglab dollar; II toifa uchun bu katta yuk. Javob: **bosqichma-bosqich** talablar (II toifa uchun soddalashtirilgan, kvota asosida laboratoriya xizmati) va **15% dan ortiq to'lov qilganlarga** beriladigan 36 oylik imtiyozni ochiq reklama qilish.

**5. «E'tiroz oqimi sudlarni to'ldiradi».** Javob: 1-C dagi **soft-hold** (pul muzlatiladi, jarima emas) va **majburiy karta** aynan shu riskni kamaytirish uchun: e'tiroz **tushunarli asosda** bo'ladi, tasodifiy emas. Xalqaro amaliyot (40 CFR 22, OMB M-24-10) shuni ko'rsatadi: shikoyat yo'li **aniq** bo'lsa, sudga boradigan ishlar **kamayadi**.

**Yashil yuvish (greenwashing) riski** alohida aytilishi kerak: stansiya o'rnatildi, imtiyoz olindi — lekin ishlab chiqarish hajmi o'sdi va mutlaq emissiya **kamaymadi**. Shuning uchun imtiyoz **o'rnatishga** emas, ishlayotganiga va **natijaga** bog'lanishi kerak (1-D dagi bo'shliq 3 shu haqda).

---

## 10. XULOSA VA TAVSIYALAR

**Asosiy tezis (qoralama varianti):** O'zbekiston ekologiya nazoratini *«jarima yig'ish»* modelidan *«rag'bat + o'lchov ishonchi»* modeliga o'tkazdi. Bu — yutuq. Endi keyingi qadam **o'lchovning o'zini isbotlanadigan qilish**: aks holda rag'bat ham, jazo ham **bitta raqamga** ishonib qoladi va u raqam xato bo'lsa — tizim xato qilganini hech kim bilmaydi.

**Tavsiyalar ro'yxati (barcha mumkin bo'lgan variantlar — tanlov muallifga):**

| # | Tavsiya | Kimga | 1-C/1-D bilan bog'liq |
|---|---|---|---|
| 1 | Platforma talablariga **qaror qoidasi** (aniqlik zonasi) qo'shilsin | Qo'mita / PQ-343 7-ilova | 1-C |
| 2 | Har bir qizil signal uchun **tushuntirish kartasi** (o'lchov, noaniqlik, qoida, kalibrovka, xom ma'lumot) avtomatik shakllantirilsin | Platforma operatori | 1-C |
| 3 | **15 kunlik** e'tiroz bosqichi qonunlashtirilsin; apellyatsiya to'liq tizimga ulansin | Qonun chiqaruvchi | 1-C |
| 4 | **Choraklik Aniqlik hisoboti** e'lon qilinsin (5 metrika) | Qo'mita | 1-C |
| 5 | Qizil signallarning **≥5%** mustaqil (ILAC-MRA) laboratoriyada qayta o'lchansin | Milliy monitoring markazi | 1-C |
| 6 | Qaytarish foizi (*«50%/70% gacha»*) **jadval** ko'rinishida oldindan e'lon qilinsin | Qo'mita / VM 85-son | 1-D |
| 7 | Qaytarish muddati **birinchi 6 oyga** tezlashtirilsin (diskont zararini kamaytirish) | Vazirlar Mahkamasi | 1-D |
| 8 | **36 oylik imtiyoz** va **50%/70% qaytarish** birgalikda qo'llanish tartibi oydinlashtirilsin | Hujjat tuzatishi | 1-D |
| 9 | Metrologik tekshiruv natijalari **ochiq reyestrda** e'lon qilinsin (qaysi stansiya, qachon, qanday natija) | Sertifikatlash markazi | 1-B |
| 10 | O'lchov noaniqligi **TT shartlarida** majburiy maydon sifatida qat'iy belgilansin | VM-783 TT | 1-B |

**Nima uchun bu ro'yxat texnik emas?** Chunki uning **to'qqiztasi** yangi texnologiya talab qilmaydi — ular bor tizimga **qoida va oshkoralik** qo'shadi. Faqat 10-tavsiya hujjat matniga tegadi.

---

## 11. MANBALAR

> **To'liq bibliografiya** v1.0 dalillar faylida (`Maqola-EGAZ-BALANS.md`, §9) — CBAM, xalqaro ETS, Orol, sektor raqamlari va boshqa. Quyida **shu nashrning o'z** manbalari (E-turkum) va asos tadqiqotlar.

**A. Rasmiy hujjatlar (R)**

| Kod | Manba | Sana | Havola |
|---|---|---|---|
| E2 | VM **783-son** — I/II toifa majburiyatlari, TT shartlari, O'zMSt 194/195:2024, TIF TN 9027/8421, samaradorlik foizlari; 201-band (5×), 301-band (36 oy) | 25.11.2024 (tahr. 02.03.2026) | https://lex.uz/uz/docs/-7233437 |
| E9 | VM **202-son** Nizom — kompensatsiya to'lovlari: choraklik, 25-sana, +10 kun, 3 yillik qayta hisob | 12.04.2021 | https://lex.uz/uz/docs/-5367873 |
| E4 | VM **85-son** — rag'batlantirish tartibi (D2 bandi) | 28.02.2026 | https://lex.uz/uz/docs/-8068163 |
| E5 | PQ **343-son** — muddatlar, 8-10-ilovalar, platforma (01.09.2026), 548 mlrd so'm | 18.11.2025 | https://lex.uz/uz/docs/-7847341 |
| — | PF-**16-son** — 50%/70% qaytarish | 30.01.2025 | https://lex.uz/docs/-7369703 |
| — | PQ **347-son** — muddatlarni uzaytirish (I toifa 01.01.2026; II toifa 01.07.2026) | 03.06.2025 | https://lex.uz/uz/docs/-7556551 |
| E12 | **EU AI Act, 86-modda** — avtomatik qarorlar bo'yicha tushuntirish huquqi | kuchga kirish 02.08.2026 | https://eur-lex.europa.eu/eli/reg/2024/1689/oj |
| E13 | **OMB M-24-10** — avtomatik tizimlarda qo'lda ko'rib chiqish | 2024 | https://www.whitehouse.gov/omb/ |
| E13a | **40 CFR 22** — ekologik jarima shikoyati: 30 kun | amalda | https://www.ecfr.gov/current/title-40/part-22 |
| E10 | **EPA CAMD** — RATA: yillik tekshiruv, ≤10% / ≤7,5% | 2022 | https://www.epa.gov/system/files/documents/2022-05/Monitoring%20Insights-%20Relative%20Accuracy.pdf |
| E14 | **JCGM 106 / ILAC-G8** — guarded acceptance (qaror qoidasi) | amalda | https://www.bipm.org/en/committees/jc/jcgm |

**B. Davlat va media (rasmiy → media tartibida)**

| Kod | Manba | Sana | Havola |
|---|---|---|---|
| E3 | uza.uz — 9 sement zavodida avtomatik kuzatuv stansiyalari | 29.11.2025 | https://uza.uz/en/posts/sanoat-korxonalarida-ekologik-nazorat-kuchaytirilmoqda_789138 |
| E1 | uza.uz — 01.03.2026 muddati haqida | 29.11.2025 | (yuqoridagi manba) |
| E4 | gazeta.uz — VM 85-son tartibi: 50%/70%, 15 ish kuni | 02.03.2026 | https://www.gazeta.uz/oz/2026/03/02/eco/ |
| E6 | gazeta.uz — PM2,5 pasayishi; 2026–2030 loyihalar | 24.03.2026 | https://www.gazeta.uz/oz/2026/03/24/ecology/ |
| E7 | Sputnik O'zbekiston — 750 korxona, 1,386 trln so'm zarar, ~500 mansabdor | 05.08.2026 | https://oz.sputniknews.uz/20260805/uzbekistan-korxona-ekologiya-zarar-59509079.html |
| E8 | gazeta.uz — Muborak (10,834 mlrd), Boysun (8,5 mlrd) | 13.05.2026 | https://www.gazeta.uz/oz/2026/05/13/muborak/ |
| E18 | gazeta.uz — 2026 I yarim yillik byudjet: 274 mlrd sohaviy jamg'arma, 84 mlrd «Yashil makon» | 16.09.2026 | https://www.gazeta.uz/oz/2026/09/16/budget-2026/ |
| E19 | gazeta.uz — 2025-da ~59 000 huquqbuzarlik; yagona sanksiya taklifi | 05.05.2026 | https://www.gazeta.uz/oz/2026/05/01/eco/ |
| E17 | kun.uz — 347 stansiya, Air Monitoring Uzbekistan | 25.11.2025 | https://kun.uz/news/2025/11/25/toshkentda-ekologik-vaziyatni-yaxshilash-uchun-maxsus-komissiya-tuzildi |
| E20 | Anhor — 28 HORIBA stansiyasi, yagona tizimga integratsiya | 08.09.2026 | https://anhor.uz/uzl/ekologiya/ozbekistonda-havo-sifati-monitoring-kengaytirish |
| E12a | MEE (Xitoy) — milliy uglerod bozori hisoboti, big data anomaliya aniqlash | 2024 | https://www.mee.gov.cn/ywdt/xwfb/202407/W020240722528850763859.pdf |
| E12b | MDPI *Land* — Xitoy ETS: MRV zaif tomonlari | 2025 | https://www.mdpi.com/2073-445X/14/8/1582 |

**C. Narx benchmarklari (xalqaro, illyustrativ)**

| Kod | Manba | Havola |
|---|---|---|
| E16a | Clarity — etalon monitor $15–40k; O&M >$15k | https://www.clarity.io/blog/cost-of-air-quality-monitoring-a-pricing-guide-for-cities-agencies |
| E16b | ESEGAS — CAAQMS $20k–250k; xizmat 5–15% | https://esegas.com/continuous-ambient-air-quality-monitoring-system-price-guide/ |
| E16c | Applus — CEMS $120–350k; OPEX 3–6% | https://www.applus.com/global/en/ei/expertise/faqs/continuous-emission-monitoring-systems-(cems):-a-strategic-primer-for-industrial-decision-makers |

**D. Ichki tadqiqot hujjatlari**

| Kod | Hujjat |
|---|---|
| 1-B | `Tadqiqot-1B-Shovqin-Qavati-Davomi.md` — o'lchov noaniqligi zanjiri (oqim 5–17%, etalon ±0,7%, zond 5–6%, dilutsiya −9…−13%) |
| 1-C | `Tadqiqot-1C-Adolat-Paketi.md` — uch zonali qoida, 12 maydonli karta, apellyatsiya oqimi, Aniqlik hisoboti, 5% kvota |
| 1-D | `Tadqiqot-1D-Moliyaviy-Model.md` — to'rt blokli xarajat, rag'bat zinapoyasi, uch bo'shliq, himoya narxi ~1–3% |
| v1 | `Maqola-EGAZ-BALANS.md` — to'liq dalillar to'plami va R-turkum manbalari |

---

## 12. QORALAMA — YAKUNIY TANLOV MUALLIFGA QOLDIRILADI

Ushbu bo'limda asosiy matnga kirmagan, lekin **yo'qolmasligi kerak** bo'lgan material saqlanadi.

### 12.1. Sarlavha variantlari

1. **«Raqam qimmatga aylanadi»** (joriy) — qisqa, ishga tushadigan;
2. «O'lchov xatosi qancha turadi? O'zbekistonda bir raqamning narxi»;
3. «Beshlik, elliklik va yetmishlik: emissiya nazoratining uch raqami»;
4. «Ko'rinmaydigan hisoblagich: nega raqam ishonchsiz bo'lsa, jazo ham adolatsiz».

### 12.2. Ishlatilmagan dalillar (keyingi tahrir uchun)

| # | Dalil | Nima uchun qoldirildi |
|---|---|---|
| 1 | Tadqiqot 1-B: NIST SMSS izohlaridagi `<1%` (X-shakl oqim) va `5–6%` (zond) | v1 da bor, matnda qisqartirildi |
| 2 | Tadqiqot 1-C: **12 maydonli karta**ning to'liq ro'yxati va **6 bosqichli** apellyatsiya grafigi | texnik ko'rinadi; alohida «uslub» maqolasi uchun |
| 3 | Tadqiqot 1-D: shartli korxona misoli (baza 2 mlrd so'm; S1/S2/S3 stsenariylari) | sarlavhali sanoq; anonim korxona haqida yozish xavfli |
| 4 | VM-783 3-bandining *«respublika hududida texnik servis»* talabi | maqola oqimida kelmadi, lekin **import siyosati** bo'yicha kuchli dalil |
| 5 | Senat ma'lumoti (SQ-844-IV, 2023) — 69 avtostans + 27 kuzatuv punkti | «eski holat» bilan qiyoslash uchun |
| 6 | Eko-sug'urta rejalari (gazeta.uz, 10.02.2025) | alohida mavzu — iqtisodiy instrumentlar ro'yxati |
| 7 | Toshkent stansiyalarining qo'mitaga o'tkazilishi (10 ta) | boshqaruv tuzilmasi bo'yicha tafsilot |

### 12.3. Ochiq savollar (keyingi research uchun)

1. 2 335 obyektdan qanchasi 01.03.2026 gacha stansiya o'rnatdi? (rasmiy yakuniy hisobot kerak)
2. Qaytarish (50%/70%) bo'yicha **nechta xulosa** berilgan? (ochiq ma'lumot topilmadi)
3. 347 stansiyaning **shartnoma narxi** qancha? (xarid.uzex.uz hujjatlari kerak)
4. Kompensatsiya to'lovlarining **yillik umumiy hajmi** qancha? (§7.3 bandi 4)
5. Yolg'on-ijobiy darajasi bo'yicha **pilot natijalari** bormi?
6. 36 oylik imtiyozdan **nechta korxona** foydalandi?

### 12.4. Muqobil formulirovkalar (uslub)

- *«Qonun foizda talab qo'ydi, lekin foizni kim tekshiradi?»* — kirish uchun;
- *«Aniqlik — texnik tushuncha emas, fiskal tushuncha»* — §6.6 uchun muqobil;
- *«Avtomatlashtirish ko'r emas — u faqat aytilgan narsani ko'radi»* — §8 uchun.

---

**Hujjat holati:** QORALAMA v2.0 (2026-09-26). v1.0 dalillar fayli o'chirilmagan va to'liq saqlanadi. Ziddiyatli raqamlar ikkalasi ham ko'rsatilgan. Texnik implementatsiya yozilmagan. Yakuniy tanlov, tahrir va qisqartirish — muallif (Jasur) tomonidan amalga oshiriladi.
