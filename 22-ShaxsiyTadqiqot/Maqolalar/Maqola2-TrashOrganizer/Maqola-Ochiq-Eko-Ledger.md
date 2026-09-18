---
aliases: [Ochiq Eko Ledger maqola]
tags: [shaxsiy-tadqiqot, maqola2, maqola]
created: 2026-09-18
updated: 2026-09-18
sektor: 22-ShaxsiyTadqiqot | Maqola2
tur: maqola
holat: qoralama
sarlavha: Maqola 2 — Ochiq Eko Ledger
qisqacha: Chiqindi va chiqarilish ma'lumotlarini ochiq qilish (qoralama)
manba: workspace/04-Maqola2-Trash-Organizer/Maqola/Maqola2_Ochiq_Eko_Ledger.md
---

# OCHIQ-EKO-LEDGER: KIM NIMA CHIQARAYOTGANINI KIM BILADI? — EKOLOGIK MA'LUMOTNI AVTOMATIK OCHISH ARXITEKTURASI VA DALILLAR TO'PLAMI

> **QORALAMA (DRAFT / RAW COMPILATION).** Bu hujjat — nashrga tayyor maqola emas, balki manba tadqiqot hujjati (`Uzbekistan_Eko_DeepResearch_2026.md`) va qo'shimcha veb-qidiruv natijalarida topilgan **hamma dalil, raqam, iqtibos va taqqoslashning tartiblangan to'plami**. Yakuniy tanlov — nimani qoldirish, nimani qisqartirish — muallif (Jasur) tomonidan alohida hal qilinadi. Qisqartirish ushbu bosqichda qilinmagan; oxirida qo'shimcha materiallar uchun alohida bo'lim mavjud (§12).

**Muallif:** [F.I.Sh.] · **Tashkilot:** [Universitet / kafedra] · **Konferensiya:** MMIT'26  
**Kalit so'zlar:** chiqindi statistikasi, PRTR, E-PRTR, Aarhus konventsiyasi, ochiq ma'lumot, ekologik murojaat, avtomatlashtirilgan e'lon qilish, O'zbekiston

---

## ABSTRAKT

*(Qoralama varianti — avtomatlashtirish ipi bilan.)*

O'zbekiston 2025-yil martda Aarhus konventsiyasiga qo'shildi va ekologik axborotga ochiqlikni huquqiy majburiyat darajasiga ko'tardi; 2025-yil 1-dekabrdan davlat ekologik monitoring bazasi ommaviy ochiq bo'lishi shart, 2026-yil 1-oktabrdan esa xavfli chiqindi bo'yicha choraklik hisobot majburiyati kuchga kiradi. Shu bilan birga amaliyotda tafovut saqlanmoqda: qattiq maishiy chiqindi hajmi turli manbalarda **7,2 dan 14 mln t/yil**gacha (≈2 baravar farq) baholanadi; rasmiy "qayta ishlash 18–19%" ko'rsatkichi plastik bo'yicha **6,6%** bilan mos kelmaydi; ochiq ma'lumotlar portalida ekologiya yo'nalishi **~1,7%**ni tashkil qiladi; obyekt darajasida majburiy ommaviy e'lon qilish mexanizmi yo'q. Maqola xalqaro andozalarni (UNECE PRTR protokoli, YI E-PRTR, AQSh TRI, Xitoy IPE) tahlil qilib, ulardan olinadigan tamoyillarni ajratadi va **insonsiz ishlaydigan zanjir** g'oyasini kontseptual darajada asoslaydi: ma'lumot avtomatik yig'iladi → **raqamli registrga** tushadi → standart qoida bo'yicha izohlanadi → **bir vaqtning o'zida** sayt, API, bot va matbuot kanallariga chiqadi → fuqaro murojaati shu zanjirga ulanadi. Qoralama ziddiyatli raqamlarni yopmaydi, balki ularni ishonchsizlik tezisining dalili sifatida ochiq qoldiradi, va qo'shimcha materiallar bo'limi bilan yakunlanadi.

---

## 1. KIRISH — HUQUQIY MAJBURIYAT BOR, MA'LUMOT YO'Q

*(Avtomatlashtirish ipi — 1-band: kirish.)*

**2025-yil mart** — O'zbekiston Aarhus konventsiyasiga qo'shildi (Markaziy Osiyoda oxirgi bo'lib). Bu hujjat uchta majburiyatni keltiradi: **axborotga kirish**, **qaror qabul qilishda jamoatchilik ishtiroki** va **ekologik masalalar bo'yicha odil sudlov** (3 ustun; mos ravishda 4–5, 6–8 va 9-moddalar). **2025-yil 1-dekabr**dan boshlab Ekologiya vazirligi (Ekologik madaniyat kontsepsiyasi doirasida) davlat ekologik monitoring ma'lumotlar bazasining **ommaviy ochiqligini** ta'minlashi shart. **2026-yil 1-oktabr**dan xavfli chiqindi hosil qiluvchilar choraklik statistik hisobotni **keyingi oyning 20-sanagach** agentlik axborot tizimiga kiritadi; **2027-yil 1-yanvar**dan yagona axborot tizimi va I–III sinf chiqindilarining har bir partiyasi uchun **raqamli pasport** ishga tushadi; 2030-yilga qayta ishlashni **20%**ga yetkazish maqsadi qo'yilgan.

Ya'ni **huquqiy poydevor** yaratildi. Ammo bir savol javobsiz qoldi: *bu majburiyatlarning bajarilishini kim va qanday o'lchaydi?* Bugungi holatda hisobot **inson zanjiridan** o'tadi — yig'ish, tahrir, tasdiqlash, nashr; har bir bosqichda kechikish va tahrir ehtimoli bor. Shu sababli amaliyotda ham, statistikada ham tafovutlar to'planib qolmoqda:

- qattiq maishiy chiqindi hajmi — **7,2 dan 14 mln t/yil**gacha baho (farq ≈ 2 baravar);
- rasmiy "qayta ishlash **18–19%**" vs plastik chiqindi bo'yicha amaliy **6,6%**;
- ekologiya yo'nalishidagi ochiq datasetlar ulushi — **~1,7%** (data.egov.uz, ~10 000 datasetdan ~170 tasi);
- Ekopolitsiya: bir chorakda **1 548–2 107** qoidabuzarlik, jarimalarning ijro darajasi **~17%** — "signallar ko'p, ijro kam".

Shu holatda ikki strategiya mumkin: (a) ko'proq inspektor va ko'proq hisobot talab qilish; (b) **hisobotning o'zini avtomatik, tekshiriladigan va darhol nashr etiladigan** qilish. Bu maqolada ikkinchi yo'l ko'rib chiqiladi — **chunki birinchi yo'l allaqachon sinalgan va uning natijasi yuqoridagi raqamlarda ko'rinadi**. *(Loyihaning texnik implementatsiyasi — arxitektura, modullar, stack — ushbu qoralamada batafsil yozilmaydi; u alohida hujjatda keltiriladi. Bu yerda faqat g'oya va uning tamoyillari muhokama qilinadi.)*

---

## 2. XALQARO ANDOZALAR — RAQAMLAR, HUQUQ VA RAQAMLASHTIRISH

*(Avtomatlashtirish ipi — xalqaro kontekstda.)*

### 2.1. UNECE PRTR protokoli (Kiev, 2003) — "majburiyat, ixtiyoriylik emas"

Kiev protokoli (Aarhus konventsiyasiga ilova) — eng yaqin huquqiy andoza. Uning rasmiy talablari:

- registr **kamida 86 ifloslantiruvchi moddani** qamrab oladi (issiqxona gazlari, kislota yomg'iri gazlari, ozon qatlamini buzuvchilar, og'ir metallar, dioksinlar) — *birinchi manbalarda protokol "≥86 modda" deb beriladi; manba tadqiqot hujjatida esa **91 modda** ko'rsatilgan — bu farq e'tiborga olinadi va keyingi tekshiruvni talab qiladi*;
- ma'lumotlar **internetda, bepul**, **obyekt / modda / joy / muhit bo'yicha qidiriladigan** ko'rinishda taqdim etiladi;
- yangilanish: hisobot yilidan keyin **15 oy** ichida;
- hisobot birligi — **obyekt (facility)**, davriylik — yillik; operatorlar (masalan, neftni qayta ishlash zavodlari, elektr stansiyalari) yillik hisobot topshiradi;
- protokol 2003-yil mayda Kievda qabul qilingan; u bo'yicha alohida **Tomonlar majlisi va Muvofiqlik qo'mitasi** ishlaydi.

**[R1 — rasmiy: UNECE; R2 — rasmiy: Aarhus Clearinghouse]**

**Nega bu andoza muhim:** protokol texnologiyani emas, **majburiyatni** belgilaydi — kim hisobot beradi, qaysi moddalar, qaysi muddatda, va davlat buni **qanday ko'rinishda** e'lon qilishi shart. Ya'ni "ochiqlik" — natija emas, **talab**.

### 2.2. Yevropa Ittifoqi: E-PRTR va kechikish saboqi

Yevropa E-PRTR registri **2007–2017-yil** ma'lumotlarini to'liq ommaviy ko'rinishda saqlaydi; yangi yillar bo'yicha ma'lumotlar yangi **Sanoat emissiyalari portali** ishga tushishigacha **bloklangan** holatda edi (UNECE milliy hisobotlari, 2025-yil 30-yanvar). **IED 2.0** doirasida: **65 faoliyat turi**, **91 ifloslantiruvchi**, yillik nashr.

**[R3 — rasmiy: UNECE milliy hisobotlar; R4 — rasmiy/tahliliy: research §4.7]**

Bu — muhim va kam tilga olinadigan fakt: **hatto Yevropa Ittifoqi ham e'lon qilish kechikishi muammosiga ega**. Saboq: ochiqlik mexanizmini "bir marta qurib qo'yish" yetarli emas; **yangilanish jarayonining o'zi ham institutsional majburiyat** bo'lishi kerak. *(Raqamlashtirish ipi: aynan shu nuqtada avtomatik nashr qilish — "inson tahririni kutmasdan" — kechikishning oldini oluvchi yagona vosita bo'lib chiqadi.)*

### 2.3. AQSh: TRI — "jamoaning bilish huquqi" modeli

**Toxic Release Inventory (TRI)** — 1986-yildagi **EPCRA** (Emergency Planning and Community Right-to-Know Act) **313-bo'limiga** asoslanadi. Asosiy parametrlar:

| Parametr | Qiymat |
|---|---|
| Hisobot beruvchi obyektlar | **21 000+** (50 shtat, Kolumbiya okrugi va hududlar) |
| Moddalar qamrovi | **770 ta alohida modda va 33 modda kategoriyasi** (ba'zi manbalarda "over 600", "nearly 800", "over 650" — *raqamlar farq qiladi, ochiq qoldiriladi*) |
| Majburiyat shartlari | (a) TRI qamrovidagi soha; (b) **10+ to'liq stavkali xodim**; (c) yiliga **25 000 funt** ishlab chiqarish/qayta ishlash yoki **10 000 funt** foydalanish chegarasidan oshish |
| Topshirish muddati | **1-iyul** (oldingi kalendar yil uchun); "Form R" (to'liq) yoki "Form A" (qisqa) |
| Nashr | Har **yanvarda** TRI National Analysis; ma'lumotlar ochiq, qidiriladigan, hududiy xaritalar bilan |
| Maqsad formulirovkasi | *"to inform persons about releases of toxic chemicals… and for other similar purposes"* (42 USC 11023(h)) |
| Cheklov (ochiq e'lon qilinadi) | TRI **chiqarilishlarni** ko'rsatadi, **ekspozitsiyani emas**; release ≠ risk |

**[R5 — rasmiy: Indiana DEM (EPA Region 5); R6 — rasmiy: Ohio EPA; R7 — rasmiy: EPA]**

**Saboq:** tizim **"ekologik" emas, "jamoaviy" mantiqqa** asoslangan: maqsad — "jarima" emas, **"jamoaning bilish huquqi"**. Bu — siyosiy jihatdan eng bardoshli asos: u biznesga ham, davlatga ham bir xil qoidani qo'llaydi. *(Raqamlashtirish ipi: TRI'ning muvaffaqiyatida texnik jihat oddiy — bitta forma, bitta muddat, bitta baza, ochiq qidiruv. Ya'ni murakkab texnologiya emas, **izchil va avtomatlashtirilgan** jarayon g'alaba qozongan.)*

### 2.4. Xitoy: IPE — ma'lumot allaqachon bor, uni **birlashtirish** kerak

**Institute of Public and Environmental Affairs (IPE)** 2006-yil iyunda Pekinda tashkil topgan; u **31 viloyat va 337 shahar** bo'yicha ekologik sifat, emissiya va ifloslanish nazorati yozuvlarini **birlashtiradi**. Platforma: **Blue Map** xaritasi, **AI-asosidagi Blue EcoChain** tizimi, **CITI** va **PITI** indekslari (yashil ta'minot zanjiri reytinglari).

**2026-yil mart holatiga oylik ko'rsatkichlar:** **215 korxona 217 ta uglerod hisobotini** oshkor qildi; **269 korxona 273 ta PRTR hisobotini** oshkor qildi.

**Reputatsion mexanizm (asosiy kuch):** yirik brendlar — **Foxconn, Samsung, Decathlon, PUMA, Microsoft** — IPE bazasidan yetkazib beruvchilarni tekshirish uchun foydalanadi; IPE yetkazib beruvchilarni yillik PRTR ma'lumotini e'lon qilishga taklif qiladi. Kolumbiya universitetining keys-tadqiqotida qayd etilishicha, IPE bazasi suv ifloslanishi bo'yicha **2 500 korxona** va havo ifloslanishi bo'yicha **4 000 korxona** yozuvini to'plagan; yozuvdan chiqarilish uchun **mustaqil (uchinchi tomon) audit** talab qilinadi.

**[R8 — rasmiy/NNT: IPE; R9 — akademik: Columbia Case Consortium]**

**Saboq:** IPE yangi majburiyat yaratmadi — u **mavjud, tarqoq ma'lumotni bir joyga yig'ib, taqqoslanadigan qildi**. Bu O'zbekiston uchun eng arzon va eng tez amalga oshiriladigan yo'l. *(Raqamlashtirish ipi: IPE'ning Blue EcoChain komponenti — AI-asosidagi avtomatik tahlil; ya'ni ochiqlik va avtomatlashtirish bir tizimda birlashgan holat allaqachon mavjud va ishlaydi.)*

### 2.5. Aarhus: majburiyatning aniq muddatlari va himoya mexanizmi

| Element | Mazmun | Manba |
|---|---|---|
| **4-modda (axborotga kirish)** | Organlar ma'lumot so'roviga **1 oy** ichida javob beradi; murakkab/hajmli so'rovlarda muddat yana **1 oy**ga uzaytirilishi mumkin; rad etish ustidan shikoyat qilish mumkin. So'rovchi **manfaatini isbotlashi shart emas** | [R10 — rasmiy: Avstriya BMLUK; R11 — rasmiy/qomusiy] |
| **6–8-moddalar (ishtirok)** | "Jamoatchilik" qaror qabul qilishning **erta bosqichida**, "o'z vaqtida va samarali" xabardor qilinadi; barcha tegishli (maxfiy bo'lmagan) hujjatlar ochiq; bildirilgan fikrlar **hisobga olinadi** va natija sabablari bilan e'lon qilinadi | [R10, R11] |
| **9-modda (adolat)** | Axborot so'rovining rad etilishi yoki "noto'g'ri ko'rib chiqilishi" — **mustaqil organ yoki sudda** ko'rib chiqilishi kerak; jarayon "adolatli, tez va qimmat bo'lmagan" bo'lishi shart | [R11] |
| **Tezkor javob mexanizmi (2021)** | **Ekologik faollar**ni himoya qiluvchi **maxsus ma'ruzachi** (Special Rapporteur) tayinlanadi (Decision VII/9). Har qanday shaxs — o'z nomidan yoki jabrlanuvchi nomidan (uning roziligi bilan) **maxfiy** shikoyat yuborishi mumkin; **milliy choralar tugatilishini kutish shart emas** | [R12 — rasmiy: UNECE press; R13 — tahliliy] |
| **Muvofiqlik qo'mitasi** | "Communications" — davlatlar ustidan shikoyatlar; tarixda ko'pchiligi NNTlar tomonidan berilgan (masalan, Qozog'iston — "Green Salvation", Vengriya — "Clean Air Action Group"); 2007-yil tadqiqoti: qaror chiqishigacha o'rtacha muddat **~1 yil**dan sal ko'proq | [R14 — tahliliy/mustaqil nashr] |

*(Raqamlashtirish ipi: 4-modda muddati — **1 oy** — avtomatlashtirilgan tizimda **real vaqt**da kuzatilishi mumkin bo'lgan boshlang'ich me'yor. Ya'ni qonun talab qilgan muddatni "e'tiborda saqlash" odam vazifasi bo'lmasligi kerak — bu **tizim soati** masalasi.)*

---

## 3. O'ZBEKISTON HOLATI — MA'LUMOT BOR, LEKIN KO'RINMAYDI

### 3.1. Mavjud aktivlar

| Qatlam | Bor (2026) |
|---|---|
| **Institutsional** | Chiqindilarni boshqarish va sirkulyar iqtisodiyot agentligi; Ekologiya vazirligi; Chiqindi poligonlarini boshqarish direksiyasi; **Ekopolitsiya** |
| **Huquqiy** | "Chiqindilar to'g'risida" qonunchilik; "Tabiatni muhofaza qilish" qonuni (kompensatsiya to'lovlari); xavfli chiqindilar bo'yicha yangi tartib (2026); **Aarhus (2025)**; ekologik monitoring bazasining ochiqligi (2025-01-12) |
| **Ma'lumot** | **700+ kamera**; mobil monitoring komplekslari; raqamli pasport (I–III sinf chiqindilar, 2027); statistika agentligi hisobotlari; **23 ta avtomatik havo stansiyasi** (2026) |
| **Ochiqlik** | `data.egov.uz` (~10 000 dataset); "Yashil iqtisodiyot" platformasi; `monitoring.meteo.uz` (23 stansiya); Air Tashkent portali |
| **Jamoatchilik** | Ekologik NNTlar; Sreda.uz tipidagi nashrlar; Telegram-kanallar; "qurilish shaffofligi" tajribasi |
| **Moliya** | TCAF/iCRAFT **$46 mln** grant; donor loyihalari (WB, EU, UNDP, GIZ, AFD) |

### 3.2. Bo'shliqlar (aktivlarning "oyna" tomoni)

| Yo'nalish | Yo'q / kuchsiz |
|---|---|
| Institutsional | Yagona "ifloslantiruvchi reyestr" **operatori va ochiq bazasi** yo'q |
| Huquqiy | Obyekt darajasida **majburiy ommaviy e'lon qilish majburiyati** yo'q; **PRTR protokoliga qo'shilmagan** |
| Ma'lumot | **Yagona ID yo'q; real vaqt oqimi yo'q; API yo'q; tarixiy baza yo'q; "qayerga ketdi" kuzatuvi (traceability) yo'q** |
| Ochiqlik | Ekologik datasetlar ulushi **~1,7%**; ma'lumotlar **eskirgan/nomuvofiq**; "oddiy odam" uchun interfeys yo'q |
| Jamoatchilik | Rasmiy kanal bilan jamoatchilik o'rtasida **"ko'prik" yo'q**; ma'lumot so'ralsa beriladi, lekin **o'zi oqmaydi** |

### 3.3. Statistik ziddiyatlar — "ishonchsizlik tezisining dalili"

| Ko'rsatkich | Raqam A | Raqam B / izoh | Holat |
|---|---|---|---|
| Qattiq maishiy chiqindi | **7,2 mln t/yil** | **14 mln t/yil** | **Ochiq ziddiyat — ~2 baravar** |
| Qayta ishlash darajasi | **18–19%** (rasmiy) | **6,6%** (plastik bo'yicha amaliyot; 1,8 mln t plastikdan) | Ochiq ziddiyat |
| Qurilish chiqindilari | 2017: **1,2 mln t** | 2025: **1,9 mln t** | Dinamika hisob qamrovi o'zgarganini ko'rsatadi |
| Sanoat chiqindilarining to'plangan zaxirasi | xomashyo chiqindixonalarida **~3 mlrd t** | quyqa (tailings) to'plagichlarida **256 mln t** (21 obyekt); boshqa sanoat chiqindilari **~40 mln t** | Qayta ishlash va monitoring salohiyati past |
| Poligon/yoqish/qayta ishlash/noqonuniy to'kish ulushlari | **e'lon qilinmaydi** | — | "Qayerga ketdi" kuzatilmaydi |
| Kichik manbalar (qurilish, savdo, tibbiyot, elektronika) | **statistikada deyarli yo'q** | — | Qamrov bo'shlig'i |

### 3.4. Ijro va jamoatchilik signali

| Ko'rsatkich | Qiymat | Izoh |
|---|---|---|
| Ekopolitsiya qayd etgan qoidabuzarliklar | chorakda **1 548–2 107** | "signallar ko'p" |
| Jarimalar ijrosi | **~17%** | "ijro kam" |
| Hokim/tuman bosimi | noqulay raqam **"qayta ko'rib chiqiladi"** | versiyalash va audit izi **yo'q** |
| To'lovlar | kompensatsiya to'lovi to'lanadi, ish davom etadi | **reputatsion xarajat yo'q** (ommaviy e'lon yo'qligi sababli) |
| Aholining ekologik savodxonligi | past — "ayblov" va "yechim" farqlanmaydi | tushunarli infografika va mahalla darajasidagi ko'rsatkichlar kerak |
| Matbuot/aholi ishonchi | ma'lumot manbasi va tekshiruvi **ko'rinmaydi** | "korrupsiya ehtimoli bor joyda ochiqlik faqat deklaratsiya" |

### 3.5. O'lchangan zarar — "bu ekologiya emas, byudjet masalasi"

- Toshkentda PM2,5 yillik o'rtacha **38,8 µg/m³** (JSST normasidan ~7 baravar);
- shahar bo'yicha ~**3 000 erta o'lim** va yillik zarar **$488,4 mln (YaIMning 0,7%)**;
- mamlakat bo'yicha PM2,5 ta'siridan sog'liq zarari **YaIMning 6,5%**igacha (Jahon banki hisobi).

**Xulosa:** chiqindi va ifloslanish statistikasi ishonchsiz bo'lsa, bu zararni (a) o'lchab bo'lmaydi, (b) manzilga bog'lab bo'lmaydi, (c) byudjet rejalashtirishda hisobga olib bo'lmaydi. Demak, ochiqlik — **iqtisodiy instrument**.

### 3.6. Eng nozik nuqta: yangi WtE zavodlari

O'zbekistonda **8 ta chiqindi yoqish (WtE) zavodi** qurilmoqda: investitsiya **$0,9–1,3 mlrd**, quvvat **3,6 mln t/yil** qayta ishlash, **1,6 mlrd kVt·soat** elektr ishlab chiqarish; **2 tasi 2026-yil oxirigacha** ishga tushadi. Kimyoviy jihatdan bu obyektlar **dioksin/furan, HCl va og'ir metallar** emissiyasi bilan bog'liq. Rasmiylar loyihalar "Yevropa va O'zbekiston standartlariga mos" ekanini bayon qiladi, ammo **mustaqil o'lchov natijalari hali e'lon qilinmagan**.

Bu — ochiqlik siyosati uchun eng kuchli sinov: agar davlat o'zi qurgan va foyda kutayotgan obyektlar bo'yicha real vaqt emissiyani ochiq ko'rsata olsa, **butun tizimga ishonch** shakllanadi. Aksincha — "eng ko'p muhokama qilinayotgan obyektlarda ma'lumot yopiq bo'lsa", qolgan barcha ochiqlik da'volari qadrsizlanadi. *(Shuning uchun taklif etilayotgan tizimning eng ta'sirchan "proof of concept"i — **eng bahsli obyektlardan boshlash**: har bir zavod uchun real-time emissiya + yillik dioksin o'lchovi (TEQ) + ochiq hisobot.)*

*(Avtomatlashtirish ipi — mahalliy holatga bog'lash.)* Yuqoridagi besh kichik bo'lim birgalikda bitta texnik xulosaga olib keladi: O'zbekistonda **ma'lumot qurilmasi bor** (700+ kamera, 23 stansiya, raqamli pasport rejimi, 46 mln $ donor moliyasi), **ma'lumot oqimi yo'q** (real-time uzatish, yagona ID, API, tarixiy baza, traceability). Bu farqni inson mehnati bilan yopib bo'lmaydi: 2 335+ obyekt, o'nlab poligon, yuzlab laboratoriya o'lchovi — hammasini qo'lda birlashtirish, solishtirish va e'lon qilish uchun kadr ham, vaqt ham yetmaydi (P8: kadr tanqisligi; P10: qoplama "nuqta-nuqta"). Ya'ni **avtomatlashtirish bu yerda qulaylik emas, majburiyatning bajarilish sharti**: agar nashr qilish jarayoni qo'lda bo'lsa, 2025-yil 1-dekabrdagi ochiqlik talabi ham, 2026-yil 1-oktabrdagi choraklik hisobot rejimi ham amalda **"qog'ozda" qolish xavfi** bilan turadi.

---

## 4. MUAMMONING ILDIZI — NEGA MA'LUMOT "KO'RINMAYDI"?

*(Avtomatlashtirish ipi — muammoning ildizi.)*

### 4.1. Ildiz sabab: e'lon qilish **odamga bog'liq**

Bugungi zanjir: **hisobot → yig'ish → tahrir → tasdiqlash → nashr**. Har bir bosqichda **inson qarori** bor. Natijalar (yuqoridagi raqamlardan):

- noqulay raqam "qayta ko'rib chiqiladi" — **versiyalash yo'q** (qaysi raqam qachon, kim tomonidan o'zgargani ko'rinmaydi);
- **audit izi yo'q** — javobgarlik shaxsga bog'lanmaydi;
- **nashr kechikadi** — chunki nashr — bu "yakuniy qadam", uni kutish kerak.

**Muhim xulosa:** muammo "yomon niyat" emas, **boshqaruv arxitekturasi**. Inson tahrir qila oladigan har qanday tizimda statistik bosim paydo bo'ladi; yechim — tizimni "odam yaxshi ishlaydi" taxminiga emas, **"odam tahrir qila olmaydi"** qoidasiga qurish. *(Avtomatlashtirish ipi: bu — texnik talab, siyosiy da'vo emas.)*

### 4.2. 14 pain point (manba tadqiqot hujjatidan, to'liq)

**A. Ma'lumot va hisob**
1. **"Qancha chiqindi hosil bo'ladi" bilinmaydi** — baholar 2 baravar farq qiladi (7–14 mln t).
2. **"Qayerga ketdi" kuzatilmaydi** — poligon, yoqish, qayta ishlash, noqonuniy to'kish ulushlari e'lon qilinmaydi; rasmiy "qayta ishlash 18–19%" vs amaliyot (plastik 6,6%).
3. **Sanoat/xavfli chiqindi tarkibi** — to'plangan zaxira juda katta (~3 mlrd t; quyqa 256 mln t/21 obyekt; boshqa sanoat ~40 mln t), lekin **qayta ishlash va monitoring salohiyati past**.
4. **Kichik manbalar** (qurilish, savdo, tibbiyot, elektronika) statistikada deyarli yo'q.
5. **Zarar (impact) o'lchanmaydi** — "10 t chiqindi" degan raqam "qancha zarar"ga aylantirilmaydi (filtrat, metan, tuproq, suv), shuning uchun raqam "quruq" qabul qilinadi.

**B. Institutsional**
6. **Bo'linish:** chiqindi — agentlik, havo/suv — Ekologiya, oqova — suv xo'jaligi/kommunal, tibbiy — sog'liqni saqlash, radioaktiv — boshqa idora. **Yagona reyestr yo'q.**
7. **Mahalliy statistika "siyosiy":** tuman hokimi uchun noqulay raqam "qayta ko'rib chiqiladi". **Versiyalash va audit izi yo'q.**
8. **Ekopolitsiya resurslari cheklangan:** bir chorakda 1 548–2 107 qoidabuzarlik, jarimalar ~17%; **signallar ko'p, ijro kam**.
9. **To'lovlar va jarimalar "biznes-xarajat"ga aylanadi** — kompensatsiya to'lovi to'lanadi va ish davom etadi; **ommaviy e'lon yo'qligi uchun reputatsion xarajat yo'q**.

**C. Texnik**
10. **Qoplama:** 700 kamera, mobil komplekslar, lekin yozib olish "nuqta-nuqta"; **uzluksiz (real-time) oqim emas**.
11. **Standartlar yo'q:** laboratoriyalar turli usullarda o'lchaydi; natijalar **taqqoslanmaydi** (ISO/EN usullarini majburiy qilish kerak).
12. **IT merosi:** vazirliklar bazalari mos emas (format, klassifikator, ID); **API yo'q**.

**D. Ijtimoiy**
13. **Matbuot va aholi ma'lumotga ishonmaydi**, chunki ma'lumot manbasi/tekshiruvi ko'rinmaydi; korrupsiya ehtimoli bor joyda "ochiqlik" faqat **deklaratsiya** bo'lib qoladi.
14. **Aholining ekologik savodxonligi past** — "ayblov" va "yechim" farqlanmaydi; kerak: tushunarli infografika, mahalla darajasidagi ko'rsatkichlar.

*(Avtomatlashtirish ipi: 14 to'siqning 8 tasi — 1, 2, 3, 4, 7, 10, 11, 12 — texnik jihatdan **ma'lumot zanjirining uzilishi**: bir joyda yig'ilmaydi, bir vaqtda tekshirilmaydi, bir xil standartda taqqoslanmaydi, bir zumda e'lon qilinmaydi. Ya'ni avtomatlashtirish bu ro'yxatdagi yarmini **bevosita** yopadi; qolgan yarmi (institutsional, ijtimoiy) esa texnik chora uchun **shart** bo'lib turadi.)*

### 4.3. Ishonch arxitekturasi: 5 qavatli himoya va reputatsiya indeksi

Manba tadqiqot hujjatida tavsiya etilgan model:

| Qavat | Nima | Javobgar |
|---|---|---|
| **1. Manba** | Avtomatik datchiklar + e-hujjat (asl yozuv o'zgarmas) | Korxona |
| **2. Solishtirish (AI)** | Ishlab chiqarish/energiya/yoqilg'i ma'lumotlari bilan kesishmagan natija — **"qizil bayroq"** | Platforma |
| **3. Mustaqil verifikatsiya** | Akkreditatsiyalangan uchinchi tomon (yillik) | Auditorlar palatasi |
| **4. Ochiqlik va jurnalistika** | E'lon qilingan baza + matbuot; xatolar "public correction" orqali | Jamoatchilik/OAV |
| **5. Jazo va rag'bat** | Jarima (kompensatsiya to'lovi ×2…×10), litsenziya cheklash, **va** imtiyozlar (yashil subsidiya, yashil kredit, "toza kompaniya" reytingi) | Idora/Hukumat |

**Reputatsiya indeksi (tavsiya): "Ochiq Eko-Reyting" (A+ … D)** — har bir korxona uchun: hisobotning to'liqligi, o'z vaqtida topshirish, normaga mosligi, yaxshilanish trendi. Bu darhol **banklar/kredit tashkilotlari, sug'urta, xalqaro xaridorlar** (YeI zanjirlari, CBAM, Apple/Nike tipidagi brendlar) uchun asos bo'ladi — ya'ni ochiqlik **tijorat qiymatiga** ega bo'ladi.

### 4.4. Huquqiy bo'shliqlar (qonun o'zgartirish ro'yxati)

1. **"Atrof-muhit to'g'risidagi axborot"** bo'yicha qonunga o'zgartirish: obyekt darajasidagi ma'lumotni **majburiy, davriy va ochiq** e'lon qilish.
2. **Maxfiylik cheklovini toraytirish:** emissiya ma'lumoti bo'yicha "tijoriy sir"ga asoslanishga **yo'l qo'ymaslik** (Aarhus 4-modda talabi).
3. **Chiqindi va xavfli chiqindi:** raqamli pasportni **barcha** chiqindi oqimlariga kengaytirish (I–IV sinf).
4. **EPR** (kengaytirilgan ishlab chiqaruvchi javobgarligi) — qadoqlash/plastik/elektronika uchun: ishlab chiqaruvchi yig'ishni tashkil qiladi, aks holda "utilizatsiya yig'imi".
5. **Ma'lumotga javobgarlik:** yolg'on hisobot → ma'muriy va jinoiy javobgarlik (aniq, **ochiq reyestrda** qayd).

### 4.5. Xalqaro mutanosiblik: O'zbekiston qayerda turadi

| Instrument | Talab | O'zbekiston holati / harakat |
|---|---|---|
| **Aarhus konventsiyasi** (2025) | Axborotga kirish, jamoatchilik ishtiroki, adolat — 3 ustun | A'zolik **bor**; **amaliy infratuzilma** kerak |
| **PRTR protokoli** (Kiev, 2003) | Obyekt darajasida ochiq reyestr, ≥86 (boshqa manbalarda 91) modda, multimedia | Hali **qo'shilmagan**; UNECE taklif qilgan |
| **EU E-PRTR / IED 2.0** | 65 faoliyat turi, 91 ifloslantiruvchi, yillik nashr | Uyg'unlashtirish mumkin (eksport/savdo uchun foyda) |
| **US TRI** | Majburiy, jamoatchilik "right-to-know" | Saboq: oddiy til, qulay qidiruv, maktabgacha daraja |
| **Xitoy IPE** | NNT + davlat bazasi, ta'minot zanjiri diskvalifikatsiyasi | Saboq: **ochiq ma'lumot — tijoriy bosim vositasi** |
| **Hisob palatasi / auditorlik** | Xarajatlarni tekshirish | Ochiq moliyaviy hisobot (uglerod daromadi, jamg'arma) |
| **SDG indikatorlari** | 12.4.1 (chiqindi), 11.6.1, 3.9.1 | Milliy hisobotga integratsiya |

---

## 5. MA'LUMOT MODELI VA OCHIQLIK TAMOYILLARI (KONTSEPTUAL — TEXNIK EMAS)

### 5.1. "Inson tamoyilisiz" — to'g'ri va noto'g'ri talqin

| Noto'g'ri talqin | To'g'ri talqin (tavsiya) |
|---|---|
| "Hech kim tekshirmaydi, robot yozadi" | **Yig'ish va e'lon qilish — avtomatik**; **uslub, taqqoslash va izoh — standart qoidalar** bilan; **xato/soxtalikni tekshirish — mustaqil mutaxassis va AI** |
| "Tegishli idoraga so'rov yo'q" | Ma'lumot idorada **saqlanmaydi**, u **ochiq bazada yashaydi**; idora faqat "yozuv egasi" sifatida javob beradi |
| "Xalq o'zi tushunadi" | Har bir raqam yonida **oddiy tilda izoh** ("bu qiymat normadan 3 baravar yuqori"), kontekst va tarix |
| "Voy, fosh qilish" | Maqsad — **ko'zbo'yamachilikning oldini olish va ishonchni qurish**; korxonalar uchun ham "yaxshi" xabar (toza texnologiya reklamasi) |

### 5.2. Yettita asosiy tamoyil (best practice: UNECE PRTR + EU E-PRTR + US TRI + Xitoy IPE)

1. **Obyekt (facility) — hisobot birligi**, geografik koordinata bilan.
2. **Multimedia** — havo, suv, tuproq/chiqindi; "qaysi muhitga" ajratilgan.
3. **Majburiy va davriy** (yillik/choraklik) hisobot; chegaradan (threshold) yuqori bo'lsa majburiy.
4. **Ochiq, mashinada o'qiladigan format** (CSV/JSON/API), **arxiv bilan**.
5. **Maxfiylik istisnolari juda cheklangan** — Aarhus: emissiyalar ma'lumoti bo'yicha "tijoriy sir"ga asoslanish **taqiqlanadi**.
6. **Xalqqa tushunarli taqdim etish** — grafik, xarita, reyting.
7. **Jazo va mukofot tizimi** — noto'g'ri hisobot → jarima; halol hisobot → "yashil" imtiyozlar.

### 5.3. Obyekt kartochkasi (nima e'lon qilinadi)

**Obyekt kartochkasi (yagona ID):** nomi, **STIR**, faoliyat turi (OKED/NACE), **geolokatsiya**, toifa (I/II), litsenziyalar, ekologik pasport raqami, monitoring uskunalari holati, **javobgar shaxs** (e'lon qilinadigan).

### 5.4. Chiqarilish (release) ko'rsatkichlari — to'liq ro'yxat

| Muhit | Ko'rsatkichlar (misol) | Chastota | Format |
|---|---|---|---|
| **Havo** | SO₂, NOx, CO, **PM2,5/PM10**, NMVOC, NH₃, HCl, **dioksinlar (WtE uchun)**, og'ir metallar | Oylik/choraklik (katta manbalar: kunlik) | t/yil, mg/m³ (stansiya) |
| **Suv** | **BOD, COD**, neft mahsulotlari, azot/fosfor, og'ir metallar, fenollar | Choraklik | t/yil, mg/l |
| **Chiqindi** | Tur bo'yicha hajm (maishiy, qurilish, sanoat, tibbiy, elektron, xavfli I–IV sinf) | Oylik | t/oy; qayta ishlash %; poligonga % |
| **Tuproq/yer** | Poligon filtri (leachate), sizib chiqish, rekultivatsiya holati | Choraklik | t, ga, konsentratsiya |
| **Metan (poligon)** | Gaz yig'ish hajmi, yonish (flare) samaradorligi | **Kunlik (datchik)** | m³, t CO₂-ekv. |
| **Transport** | Og'ir yuk parki emissiyasi, yoqilg'i turi | Yillik | t/yil |

### 5.5. Ta'sir (impact) qatlami — "raqam → zarar"

E'tibor bering: 4.2-bo'limdagi P5 aynan shundan shikoyat qiladi ("zarar o'lchanmaydi"). Taklif etilayotgan qatlam:

- **Dispersiya/ekspozitsiya modeli:** "shu obyekt atrofidagi 3 km radiusda PM2,5 normadan X% yuqori" — **mahalla darajasida xarita**;
- **Ekotoksikologik indikator:** zaharli moddalar uchun **"ekvivalent toksik birlik" (TEQ)** — ayniqsa WtE (dioksin/furan) va tibbiy chiqindi uchun;
- **Iqlim birligi:** chiqindi sektori metanini **t CO₂-ekv.**ga aylantirib, GHG reyestriga uzatish;
- **Iqtisodiy zarar:** kompensatsiya to'lovi asosidagi zarar + sog'liq statistikasi.

### 5.6. Taqqoslash qatlami: har indikator qanday "baholanadi"

Har bir indikator uchun besh qatlamli taqqoslash: **(a) normativ** (O'zR sanitariya me'yori), **(b) JSST/YeI etalon**, **(c) tarmoq o'rtachasi**, **(d) korxona tarixi (3 yil)**, **(e) viloyat reytingi**.

*(Amaliy eslatma, keyingi research uchun: aynan shu besh qatlam — avtomatik rang/marker qoidalari uchun asos bo'la oladi; norma qiymatlari masalan O'zbekiston SanQvaM hujjatlari va JSST etalonlaridan olinishi mumkin. Bu — texnik hujjat mavzusi; qoralamada faqat tamoyil qayd etiladi.)*

---

## 6. AMALIY TAKLIF (OVERVIEW — TEXNIK EMAS)

*(Avtomatlashtirish ipi — yadro; texnik tafsilotlar alohida hujjatda.)*

Ushbu tahlilga asoslanib, biz obyekt darajasidagi chiqindi va ifloslanish ma'lumotini **inson aralashuvisiz** yig'adigan, standart qoida bo'yicha baholaydigan va bir vaqtning o'zida bir necha kanalga e'lon qiladigan hamda fuqaro murojaatini shu zanjirga ulaydigan ochiq platforma prototipini ishlab chiqdik; uning texnik arxitekturasi va modul tafsilotlari alohida hujjatda keltiriladi.

**G'oyaning o'zagi (ochiqlik arxitekturasi "bir ma'lumot — besh kanal"):**

```
       ┌─────────────────────────────┐
       │  YAGONA OCHIQ EKO-BAZA      │  ← yozuvlar (immutable), versiyalar, API
       └──────┬───────┬───────┬──────┘
              │       │       │
   ┌──────────▼──┐ ┌──▼─────┐ ┌▼───────────────┐ ┌▼─────────────┐ ┌▼────────────┐
   │ Rasmiy sayt │ │  API   │ │ Telegram/X bot │ │ Matbuot xonasi│ │ Mahalla     │
   │ dashboard,  │ │(JSON,  │ │ kunlik/choraklik│ │ press-release │ │ e'lon taxtasi│
   │ xarita,     │ │ CSV)   │ │ postlar + grafik│ │ avtomatik     │ │ QR + infografik│
   │ reyting     │ │        │ │                 │ │               │ │              │
   └─────────────┘ └────────┘ └─────────────────┘ └───────────────┘ └──────────────┘
```

**"Inson tamoyilisiz" post qilish mexanikasi (kontseptual):** har chorak oxirida (yoki kunlik real-time) tizim **avtomatik press-reliz** shakllantiradi: *"Ohangaron poligoni: o'tgan chorakda X m³ gaz yig'ildi, Y t CO₂-ekv. ushlandi; norma: Z."* Shu bilan birga **muhim signallar** (normadan 2x+ oshish, hisobot bermaganlik) avtomatik **"alert"** bo'lib chiqadi. Jurnalistlar uchun: filtr, obuna (RSS/Telegram), grafik va ma'lumot yuklab olish (embed).

**Muhim kafolat:** bir xil raqam **hamma joyda bir xil** bo'lishi kerak (sayt = API = bot = press-reliz). Bu "yolg'on aralashmasligi"ning eng oddiy va eng mustahkam kafolati: tizim bir manbadan chiqadi, ko'p kanalga tarqaladi — teskari emas.

---

## 7. MUHOKAMA — RISKLAR, MANIPULYATSIYA, ADOLAT VA QARAMA-QARSHI FIKRLAR

### 7.1. To'rtta risk matritsasi (manba tadqiqot hujjatidan)

| Risk | Ehtimol | Ta'sir | Mitigatsiya |
|---|---|---|---|
| Korxonalar hisobot bermaydi | Yuqori | Yuqori | Bosqichli jazo + "litsenziya/eksport ruxsati"ga bog'lash |
| Mahalliy hokimiyat raqamni tuzatadi | Yuqori | Yuqori | Avtomatik kesishma (soliq/energiya) + o'zgarish tarixi **ochiq** |
| "Ma'lumot ko'p, foyda yo'q" (jamoatchilik o'qimaydi) | O'rta | O'rta | Mahalla darajasi, infografika, bot, maktablar; OAV uchun tayyor "story" |
| Xavfli chiqindi ma'lumoti "yashiriladi" (tibbiy/radioaktiv) | O'rta | Yuqori | Aniq maxfiylik qoidalari + **jamlanma ko'rsatkich (agregat)** |
| **WtE dioksin bahsi** | **Yuqori** | Yuqori | **Dioksin/furan uzluksiz monitoring + ochiq e'lon** — tizim o'zi "ishonch vositasi" |

### 7.2. Avtomatlashtirilgan ochiqlik tizimining o'z risklari (cheklovlar, ochiq muhokama)

*(Avtomatlashtirish ipi — muhokama. Bu ro'yxat yashirilmasligi kerak.)*

1. **"Raqam bor, ma'nosi yo'q" riski.** Ma'lumot ko'p bo'lishi, tushunilishini kafolatlamaydi. Yechim: oddiy tilda izoh, kontekst, mahalla darajasi, tendentsiya ko'rsatkichi.
2. **"Avtomatik tizim ham manipulyatsiya manbai bo'ladi" riski.** Noto'g'ri sensor, buzilgan kalibrlash, tanlab olingan o'rtacha — bularning hammasi "ob'ektiv ko'rinadigan" xatoni yaratadi. Yechim: har bir raqam **manba + usul + noaniqlik diapazoni** bilan; **tashqi mustaqil tekshirish** uchun API; xatolar uchun "**public correction**" tartibi.
3. **Javobgarlikni "tarqatish" riski.** "Tizim shunday chiqardi" — bu ayblov emas, balki mas'uliyatning yo'qolishi bo'lishi mumkin. Yechim: **e'lon qilingan ma'lumot uchun javobgar — korxona** (yozuv egasi), platforma esa faqat **manba va usulni ko'rsatadi**.
4. **Adolat (fairness) masalasi.** Bir xil miqdordagi ifloslanish katta shaharda kichik ta'sir, qishloqda katta ta'sir qiladi; shuning uchun **xom miqdor** bo'yicha reyting qishloq korxonalarini nohaq "yomon" ko'rsatishi mumkin. Kontseptual yechim: reyting **ko'rsatkichni emas, nisbatni** (normaga, hudud sig'imiga, mahalliy aholiga nisbatan) aks ettiradi; metodika ochiq bo'lgani uchun bu tanlov ham muhokamaga ochiq.
5. **Maxfiylik va faollar himoyasi.** Ekologik murojaat qilgan fuqaro bosimga uchrashi mumkin. Xalqaro mexanizm mavjud (Aarhus tezkor javob, 2021). Kontseptual talab: murojaat qiluvchi **default anonim**; identifikatsiya faqat qonuniy tartibda va ochiq asosda.
6. **Kichik/birlamchi o'lchovlar qiymati.** "Nuqta-nuqta" o'lchovlar real oqimga aylantirilmasa, tizim **suratga** o'xshab qoladi. Yechim: real-time kanallarni birinchi navbatda ishga tushirish.
7. **Siyosiy risk — "ochiqlik quroli".** Ochiqlik raqibni obro'sizlantirish, hududlar orasida "reyting urushi", hokimlarning "yaxshi raqam" talabi kabi yangi deformatsiyalar keltirib chiqarishi mumkin. Yechim: **metodika mustaqil ilmiy kengash tomonidan** tasdiqlanadi; chegaralar **qonun bilan** belgilanadi; barcha tuzatishlar **tarix bilan** e'lon qilinadi (ko'rinmas tahrir imkonsiz).

### 7.3. Qarama-qarshi fikrlar va ularga javoblar

| Qarama-qarshi fikr | Javob (dalil bilan) |
|---|---|
| *"Ochiqlik korxonalarni O'zbekistondan chiqarib yuboradi"* | Xitoy IPE tajribasi: ochiqlik **tasdiqlangan brendlar uchun shart**ga aylandi (Foxconn, Samsung, Decathlon, PUMA, Microsoft supplier screening); EPR/reyting esa bozorda **ustunlik** beradi [R8, R9] |
| *"Avval chiqindi muammosini hal qilaylik, keyin hisob yuritamiz"* | Hisobsiz "hal qilish" imkonsiz: 7,2–14 mln t farqi — aynan hisob yo'qligining natijasi; qaror **o'lchovsiz** qabul qilinmaydi |
| *"Bu — fuqarolarni davlatga qarshi qo'yish"* | Aarhus — **davlat majburiyati**, kuch ishlatish emas: 3 ustun (axborot, ishtirok, adolat) rasmiy organ bilan jamoatchilik o'rtasida **kanal** qurishni talab qiladi [R10] |
| *"Ma'lumot ko'p bo'lsa, chalkashlik ko'payadi"* | US TRI saboqi: bitta forma + bitta muddat + bitta baza + ochiq qidiruv; soddalik — dizayn talabi [R5, R6] |
| *"Xavfli chiqindi ma'lumoti xavfsizlikka zarar"* | Aniq istisnolar ro'yxati (qonunda) + **agregat ko'rsatkich** yechimi; umumiy "tijoriy sir" niqobi esa Aarhus bo'yicha qabul qilinmaydi |

### 7.4. Foydalanuvchi qiymati: ochiqlik **qayerda pulga aylanadi**

| Foydalanuvchi | Qiymat |
|---|---|
| **Eksportchi korxona** | CBAM'da "verified actual" — default ustamasidan qochish; reytingda A+ → xaridor ishonchi |
| **Bank/sug'urta** | Ekologik riskni baholash, "yashil portfel" |
| **OAV/jurnalist** | Tayyor ma'lumot + API + grafik → "story" tez tayyorlanadi |
| **NNT/jamoatchilik** | Mahalla darajasidagi ko'rsatkich, murojaat kanali, javob muddati ko'rinadi |
| **Hokimlik** | O'z hududi bo'yicha **yagona raqam** — bahs tugaydi (raqam ochiq va versiyalangan) |
| **Davlat budjeti** | Sog'liq zararini kamaytirish ($488,4 mln/yil faqat Toshkent) — o'lchovdan boshlanadi |
| **Donorlar** | Natija ko'rsatkichi (Ilova C KPI: ochiq e'lon qilingan obyektlar 0 → ≥2 500) |

### 7.5. Manfaatdor tomonlar va ularning strategiyasi

| Gurub | Manfaat | Xavf/norozi | Strategiya |
|---|---|---|---|
| Eksportchi sanoat (sement, o'g'it, metall) | CBAM chegirmasi, bozor saqlash | hisobot yuki, texnologiya xarajati | "texnologiya evaziga moslashuv" paketi; **pilot ulardan boshlash** |
| Kichik biznes/xizmat | sodda tartib, yashil kredit | jarima | **3 yillik imtiyoz davri**; bepul hisob-kitob ilovasi |
| Dehqon/fermerlar | biogaz, o'g'it tejamkorligi, suv | qo'shimcha nazorat | faqat **rag'bat**; "kartadan to'lov" (subsidiya sharti) |
| Gaz/energetika kompaniyalari | texnologiya investitsiyasi | metan limit | LDAR + "sotilgan gaz = daromad" argumenti |
| Banklar/sug'urta | riskni baholash, yashil portfel | — | reyting ma'lumotidan foydalanish; yashil kredit liniyasi |
| OAV/jurnalistlar | ochiq ma'lumot, "story" | javobgarlik | **matbuot xonasi**, trening, API |
| NNT/jamoatchilik | salomatlik, adolat | "ishonchsizlik" | Aarhus bo'yicha jamoatchilik kengashlari |
| Xalqaro donorlar | natija, hisobot | boshqaruv riski | darvozalar (gates) tizimi; **ochiq moliyaviy hisobot** |
| Vazirliklar/idoralar | vakolat, budjet | "hokimiyat yo'qotish" | birgalikda egalik (joint ownership); markaz — **platforma, monopol emas** |

---

## 8. XULOSA VA TAVSIYALAR (BARCHA MUMKIN TAVSIYALAR RO'YXATI)

**Umumiy xulosa:** O'zbekiston huquqiy jihatdan **ilgarilab ketgan** (Aarhus 2025; monitoring bazasining ochiqligi 2025-12-01; xavfli chiqindi rejimi 2026), amaliy jihatdan **orqada** (obyekt darajasida majburiy e'lon yo'q; 7,2–14 mln t ziddiyati; ekologik datasetlar ~1,7%). Tafovutni yopishning eng arzon yo'li — **texnologik**: ma'lumotni bir marta yig'ib, standart qoida bo'yicha baholab, bir vaqtning o'zida ko'p kanalga chiqarish.

**Tavsiyalar ro'yxati:**

1. **Obyekt darajasida majburiy e'lon qilish rejimini joriy etish** — avvalo I toifa va xavfli chiqindi hosil qiluvchilar uchun; 2026-10-01dan boshlanadigan choraklik hisobot **to'g'ridan-to'g'ri ochiq nashr** kanaliga ulanadi.
2. **"E'lon qilmagan = toza emas" qoidasini qonunlashtirish** — hisobot bermagan obyekt ochiq ro'yxatda **"ma'lumot yo'q"** holati bilan ko'rinadi (bu ochiqlikni bo'shliqni yashirish vositasi bo'lishidan saqlaydi).
3. **PRTR protokoliga qo'shilishni maqsad qilib belgilash** — ≥86 modda, bepul/qidiriladigan platforma, 15 oylik yangilanish: xalqaro majburiyat ichki tizimni **muddatga bog'laydi**.
4. **Fuqaro murojaati muddatini qonunan belgilash va ochiq kuzatuvni joriy etish** — Aarhus 4-moddasidagi 1 oylik minimaldan qat'iyroq milliy muddat; javob bermaslik **o'zi** ochiq ko'rinadigan holatga aylanadi.
5. **Maxfiylikni toraytirish va aniq ro'yxat tuzish** — emissiya ma'lumoti bo'yicha "tijoriy sir"ga asoslanish taqiqlansin; istisnolar (tibbiy, radioaktiv, xavfsizlik) qonunda aniq sanab o'tilsin + agregat ko'rsatkich mexanizmi.
6. **Raqamli pasportni barcha chiqindi oqimlariga kengaytirish** (I–IV sinf) va "hosil bo'lgan joy → utilizatsiya" marshruti kuzatuvini (traceability) to'liq yo'lga qo'yish.
7. **EPR (kengaytirilgan javobgarlik) joriy etish** — qadoqlash, plastik, elektronika uchun; ishlab chiqaruvchi yig'ishni tashkil qiladi.
8. **"Ochiq Eko-Reyting" (A+…D)** ni joriy etish va uni **bank/sug'urta/xaridor** tizimlariga ulash — ochiqlikni tijorat qiymatiga aylantirish.
9. **Ochiq KPI dashboard** (15 indikator, Ilova C), xususan: ochiq e'lon qilingan obyektlar (0 → ≥2 500), murojaatga javob vaqti (≤10 kun), ekologik datasetlar (~170 → ≥2 000), jamoatchilik ishonchi (≥60%).
10. **WtE zavodlaridan boshlash** — real-time emissiya + yillik dioxin (TEQ) o'lchovi + ochiq hisobot; eng bahsli obyektlar — ishonchning eng qimmat sinovi.
11. **Standartlashtirish (ISO/EN usullari)** — laboratoriyalar natijalarini taqqoslanadigan qilish; usulsiz raqam reytingga kirmasin.
12. **"Public correction" tartibini joriy etish** — xato aniqlansa, o'chirilmaydi: **tuzatish qo'shiladi**, tarix saqlanadi.
13. **Murojaat kanalini jamoatchilikka ochiq qilish** — Telegram bot + veb-forma + API; holat zanjiri (yuborildi → ko'rib chiqilmoqda → javob berildi/hal qilindi) va javob muddati ochiq hisoblanadi.
14. **Hududlar reytingida faqat yaxshilanish trendini baholash** (jazolash vositasiga aylanishining oldini olish uchun dizayn qoidasi).
15. **Uglerod/ekologik tushum bo'yicha ochiq moliyaviy hisobot** — "Yashil Jamg'arma" modeli, tushumning ≥60%i o'lchov/texnologiya/jamoatchilikka.

---

## 9. FOYDALANILGAN ADABIYOTLAR (TO'LIQ RO'YXAT)

**A. Xalqaro huquqiy va institutsional hujjatlar**
1. **[R1]** UNECE PRTR Protocol registr talablari — ≥86 modda; bepul, internetda, qidiriladigan; 15 oylik yangilanish — https://unece.org/env/pp/prtrng.html *(rasmiy)*
2. **[R2]** UNECE/Aarhus Clearinghouse — PRTR protokoli bo'yicha ko'rsatma (Kiev, 2003-yil may; operatorlarning yillik hisobotlari) — https://aarhusclearinghouse.unece.org/resources/guidance-implmentation-protocol-pollutant-release-and-transfer-registers *(rasmiy)*
3. **[R3]** UNECE milliy hisobotlar (2025-01-30) — YI E-PRTR 2007–2017 ma'lumotlari; yangi ma'lumotlar Sanoat emissiyalari portali kutilmoqda — https://prtr.unece.org/national-reports/reports *(rasmiy)*
4. **[R4]** IED 2.0 / EU E-PRTR parametrlari (65 faoliyat turi, 91 ifloslantiruvchi) — research hujjat §4.7 *(rasmiy/tahliliy)*
5. **[R5]** Indiana DEM, "TRI Basics" (EPA Region 5 materiali) — 21 000+ obyekt; 770 modda va 33 kategoriya; 10 FTE; 25 000/10 000 funt chegaralari; 1-iyul muddati; yanvarda National Analysis — https://www.in.gov/idem/ctap/files/e101_tri_presentation_p2.pdf *(rasmiy)*
6. **[R6]** Ohio EPA, TRI bo'limi — TRI nima qamraydi, nima qamramaydi; hududiy xaritalar va ommaviy hisobot — https://epa.ohio.gov/wps/portal/gov/epa/divisions-and-offices/air-pollution-control/dapc-programs/toxic-release-inventory-tri *(rasmiy)*
7. **[R7]** EPA, Toxics Release Inventory Program — EPCRA 313-bo'limi; 42 USC 11023(h) maqsad formulirovkasi *(rasmiy)*
8. **[R8]** Institute of Public and Environmental Affairs (IPE) — 31 viloyat/337 shahar; Blue Map, Blue EcoChain; 2026-yil mart: 215 korxona/217 uglerod hisoboti, 269/273 PRTR hisoboti; brendlar va yetkazib beruvchilar — https://wwwen.ipe.org.cn/about/about.aspx ; https://wwwen.ipe.org.cn/greensupplychain/main.aspx *(rasmiy/NNT)*
9. **[R9]** Columbia University Case Consortium, "Ma Jun va IPE" keysi — 2 500 suv, 4 000 havo yozuvi; de-listing uchun mustaqil audit — https://ccnmtl.columbia.edu/projects/caseconsortium/casestudies/135/casestudy/files/global/135/Ma%20Jun%20final.pdf *(akademik)*
10. **[R10]** Aarhus Konventsiyasi 4-modda — 1 oy (murakkabda +1 oy) javob muddati; rad etish ustidan shikoyat — https://www.bmluk.gv.at/en/topics/climate-environment/eu-international-affairs/three-pillars-of-the-aarhus-convention.html *(rasmiy)*
11. **[R11]** Aarhus "uch ustun" tahlili (4–5, 6–8, 9-moddalar) — https://earth.org/what-is-the-aarhus-convention/ *(mustaqil nashr/tahlil)*
12. **[R12]** UNECE, "Rapid response mechanism to protect environmental defenders" (2021; Decision VII/9) — maxfiy shikoyat; milliy choralarni kutmaslik — https://unece.org/media/environment/Aarhus-Convention/press/361413 *(rasmiy)*
13. **[R13]** IWGIA, "The Indigenous World 2025: UN Special Rapporteur on Environmental Defenders" — shikoyat tartibi, vositalar, "letter of allegation" amaliyoti — https://iwgia.org/en/unsr-environmental-defenders/5718-iw-2025-unsr-ed.html *(tahliliy)*
14. **[R14]** Muvofiqlik qo'mitasi amaliyoti (Green Salvation — Qozog'iston; Clean Air Action Group — Vengriya); 2007-yil tadqiqoti: ishning o'rtacha davomiyligi ~1 yil — https://earth.org/what-is-the-aarhus-convention/ *(tahliliy)*

**B. O'zbekiston: huquq, institutlar, raqamlar**
15. UNECE Aarhus Convention — O'zbekiston 2025-yil martda qo'shilgan — https://unece.org/env/pp *(rasmiy)*
16. Ekologik madaniyatni yuksaltirish kontsepsiyasi — davlat ekologik monitoring bazasining **2025-12-01**dan ommaviy ochiqligi — norma.uz *(rasmiy)*
17. Xavfli chiqindilar bo'yicha Prezident qarori (2026-yil avgust) — 2026-10-01dan choraklik hisobot (20-sanagach), 2027-01-01dan raqamli pasport va yagona AT, 2030-yilga 20% qayta ishlash — https://yuz.uz/uz/news/prezident-qarori-2030-iilgaca-xavfli-ciqindilarni-qaita-isl *(rasmiy)*
18. `data.egov.uz` — ~10 000 dataset, ekologiya **~1,7%** (~170 dataset); Milliy ma'lumotlar platformasi (PF-190, 2027-07-01) *(rasmiy)*
19. `green.imv.uz` — milliy uglerod birliklari reyestri ishga tushgan; **korxona/loyiha soni e'lon qilinmagan** *(rasmiy; aniq son mustaqil tasdiqlanmagan)*
20. Chiqindi statistikasi: MSW **7,2–14 mln t/yil**; plastik **1,8 mln t**, qayta ishlash **6,6%**; qurilish chiqindilari **1,2 → 1,9 mln t**; sanoat zaxirasi (~3 mlrd t; quyqa **256 mln t**/21 obyekt; **~40 mln t**) *(rasmiy/tadqiqot)*
21. WtE: **8 zavod**, $0,9–1,3 mlrd, **3,6 mln t/yil**, **1,6 mlrd kVt·soat**, 2 tasi 2026-yil oxirigacha; mustaqil o'lchovlar e'lon qilinmagan *(rasmiy + media)*
22. Ijro: chorakda **1 548–2 107** qoidabuzarlik, jarima ijrosi **~17%** *(rasmiy/tahliliy)*
23. Havo zarari: Toshkent **$488,4 mln/yil** (YaIMning 0,7%); mamlakat bo'yicha **6,5%**gacha; PM2,5 o'rtacha **38,8 µg/m³** *(WB hisobi)*
24. Aktivlar: **700+ kamera**; **23 avtomatik stansiya**; mobil monitoring komplekslari; `monitoring.meteo.uz`; Air Tashkent portali; TCAF/iCRAFT **$46 mln** grant *(rasmiy)*

**C. Asosiy tadqiqot hujjati (ichki manba)**
25. *Uzbekistan_Eko_DeepResearch_2026.md* (2026-09-17) — §0 (metodologiya), §1 (12 xulosa), §2.1–2.4, §4.1–4.9, §5 (integratsiya: ECO-ID, "bir tizim, ikki rels"), Ilova C (15 KPI), Ilova D (manfaatdor tomonlar).

---

## 10. QORALAMA — YAKUNIY TANLOV MUALLIFGA QOLDIRILADI

### 10.1. Asosiy oqimga kirmagan qo'shimcha raqamlar va dalillar

| # | Dalil / raqam | Manba | Holat |
|---|---|---|---|
| 1 | PRTR protokoli moddalari: **≥86** (UNECE rasmiy) vs **91 modda** (research hujjat) | R1 vs §4.7 | **Raqamlar farq qiladi — tekshirilsin** |
| 2 | EU E-PRTR / IED 2.0: **65 faoliyat turi**, **91 ifloslantiruvchi**, yillik nashr | §4.7 | rasmiy |
| 3 | TRI qamrovi raqamlari: "**over 600**", "**over 650**", "**nearly 800**", "**770 + 33**" — turli manbalarda farq | R5, R6, R7 | **Raqamlar farq qiladi** |
| 4 | TRI chegaralari: **25 000 funt** (manufacture/process) / **10 000 funt** (otherwise use); **10+ FTE** | R5 | rasmiy |
| 5 | TRI cheklovi: release ≠ exposure; risk hisoblash uchun qo'shimcha ma'lumot kerak | R6 | rasmiy (ochiq tan olingan) |
| 6 | IPE: **215 korxona / 217 uglerod hisoboti**, **269 / 273 PRTR** (2026-03, oylik) | R8 | rasmiy/NNT |
| 7 | IPE tarixi: tashkil topgan **2006-yil iyun**, Pekin; **31 viloyat / 337 shahar** | R8 | rasmiy/NNT |
| 8 | IPE yozuvlar bazasi: **2 500** suv ifloslanishi, **4 000** havo ifloslanishi yozuvi (keys tadqiqoti davri) | R9 | akademik (tarixiy) |
| 9 | Aarhus muvofiqlik ishi davomiyligi: **~1 yil**dan sal ko'proq (2007 tadqiqoti) | R14 | tahliliy |
| 10 | Aarhus 4-modda: javob **1 oy**; murakkab so'rovda **2 oy** | R10, R11 | rasmiy |
| 11 | Aarhus 6-modda bo'yicha GMO o'zgartirishiga ko'ra: **30 kun**lik fikr bildirish muddati | R11 | rasmiy |
| 12 | WtE: **8 zavod**, **$0,9–1,3 mlrd**, **3,6 mln t/yil**, **1,6 mlrd kVt·soat** | §4.9 | rasmiy/media |
| 13 | Sanoat zaxirasi: xomashyo chiqindixonalari **~3 mlrd t**; quyqa **256 mln t / 21 obyekt**; boshqa **~40 mln t** | §4.3 | rasmiy |
| 14 | Qurilish chiqindilari: **1,2 → 1,9 mln t** (2017→2025) | §4.2 | rasmiy |
| 15 | Xarajat modeli (2-mavzu): platforma **$4–8 mln**, integratsiyalar **$2–4 mln**, poligon/datchik **$8–20 mln**, laboratoriya **$3–6 mln**, kadr **$2–4 mln**; **jami $19–42 mln** | §4.8 | illyustrativ |
| 16 | Kadrlar ro'yxati (yangi kasblar): ma'lumot injeneri, GIS mutaxassisi, kimyogar-analitik, MRV auditori, statistik modelchi, **"data-jurnalistika" mutaxassisi**, kiberxavfsizlik va maxfiylik huquqshunosi | §4.8 | tavsiya |
| 17 | Bosqichlar (2-mavzu): **0** tayyorgarlik (0–6 oy), **I** pilot (6–18 oy, 50–100 obyekt), **II** kengaytirish (18–36 oy, 2 335+ obyekt + reyting), **III** yetuklik (36–60 oy, ta'sir modellari, EPR, E-PRTR interfeys) | §4.9 | tavsiya |
| 18 | Integratsiya (1+2 mavzu): **bitta ECO-ID**; bir stansiya — ikki maqsad; bitta baza — ikki ko'rinish; bir nizom paketi; **metan ko'prigi** (chiqindi 10,5 Mt; metanning 16,1%i chiqindida, 42,2%i agRoda) | §5.1 | tavsiya |
| 19 | Reputatsiya indeksi: **A+ … D** (hisobot to'liqligi, o'z vaqtida topshirish, normaga moslik, yaxshilanish trendi) | §4.6 | tavsiya |
| 20 | KPI (Ilova C dan 2-mavzuga tegishlilari): #7 chiqindi (7–14 → yagona raqam ±5%), #8 qayta ishlash (18%/6,6% → ≥35%), #9 poligon metan yig'ilishi (0 → 100% yirik poligonlar), #11 ochiq e'lon qilingan obyektlar (0 → ≥2 500), #12 ekologik datasetlar (~170 → ≥2 000), #14 murojaatga javob vaqti (**≤10 kun**), #15 jamoatchilik ishonchi (**≥60%**) | Ilova C | tavsiya |

### 10.2. Ziddiyatlar (hech biri tanlanmagan — ikkalasi ham qoldiriladi)

| Savol | Raqam A | Raqam B | Izoh |
|---|---|---|---|
| Qattiq maishiy chiqindi | **7,2 mln t/yil** | **14 mln t/yil** | ~2 baravar; **ochiq qoldiriladi** |
| Qayta ishlash | **18–19%** (rasmiy) | **6,6%** (plastik) | Sektor kesimida farq |
| PRTR moddalari | **≥86** | **91** | Manbalar farqi — tekshirilsin |
| TRI moddalari | **over 600** | **nearly 800 / 770+33** | Hisoblash kesimiga qarab |
| "Qayta ishlash maqsadi" | 2030: **20%** (xavfli chiqindi bo'yicha) | KPI maqsadi: **≥35%** (umumiy) | Ikkalasi ham qoldiriladi — turli bazalar |

### 10.3. Keyingi research uchun savollar

1. **WtE dioksin monitoringi** kim tomonidan (qaysi akkreditatsiyalangan laboratoriya) olib boriladi va natijalar qanday e'lon qilinadi?
2. **"Tijoriy sir"** da'volari ochiq bazaga joylashtirilganda qanday hal qilinadi — qonun loyihasida aniq ro'yxat kerakmi?
3. **Xavfli chiqindi raqamli pasporti** I–IV sinfga kengaytiriladimi yoki faqat I–III da qoladimi?
4. **Uglerod/ekologik tushum jamg'armasi**: byudjet ichida yoki byudjetdan tashqari?
5. **Viloyatlar reytingi** "jazolash" vositasiga aylanmasligi uchun dizayn qoidasi aniq nima bo'lishi kerak?
6. **Murojaatga javob muddati**: milliy standart sifatida **10 kun** qabul qilinadimi (Aarhus minimali — 1 oy)?
7. **Aarhus 4-modda amaliyoti** O'zbekistonda: ma'lumot so'rovlariga javob muddatlari va rad etish statistikasi e'lon qilinyaptimi?

### 10.4. Foydalanilmagan ideyalar / muqobil formulirovkalar

- **Sarlavha variantlari:** "Ma'lumot bor — ko'rinmaydi: ekologik ochiqlikning texnik sharti" · "Beshta kanal, bitta raqam: kim nima chiqarayotganini qanday bilamiz?" · "Qoraqalpog'istondagi chang va Toshkentdagi tutun — bitta savol: kim, qancha, qayerga?"
- **Narrativ formulirovka (muhokama uchun):** *"Orolda biz bir suv havzasini yo'qotdik, chunki o'lchovni kechiktirdik. Atmosferada va yerda bunday yo'qotishni ko'z bilan ko'ra olmaymiz — shuning uchun raqam yagona ko'zimiz bo'lishi shart."*
- **Nativatsiya g'oyasi:** "**bitta raqam — beshta kanal**" tamoyili — oddiy va eslab qoladigan; maqolaning markaziy metaforasi bo'lishi mumkin.
- **Qo'shimcha taqqoslash g'oyasi (muhokama uchun):** "ochiqlik = obro' riski" mantiqi — CBAM va brendlar talabi bilan bog'lanib, **iqtisodiy rag'batga** aylantirilishi; bu — "ekologiya × iqtisod" chorrahasidagi kuchli argument.

---

**Hujjat holati:** QORALAMA v1.0 (2026-09-17). Qisqartirish qilinmagan. Yakuniy tanlov va tahrir — muallif (Jasur) tomonidan amalga oshiriladi. Har bir raqam manba va sana bilan berilgan; ziddiyatli raqamlar atayin **ochiq** qoldirilgan.