---
aliases: [Yakuniy maqola 2, Kim nima chiqarayotganini kim biladi]
tags: [maqola, yakuniy, chiqindi, ochiqlik, qayta-ishlash, WtE]
tur: maqola
sarlavha: "YAKUNIY MAQOLA 2 — Kim nima chiqarayotganini kim biladi?"
---

# YAKUNIY MAQOLA 2 — KIM NIMA CHIQARAYOTGANINI KIM BILADI?

**Chiqindi va ifloslanish hisobining oshkoraligi: ziddiyatli raqamlar, besh kanalli e'lon va fuqaro murojaati tizimi**

**Annotatsiya.** O'zbekistonda chiqindi hisobi bo'yicha bir vaqtda bir necha xil yillik hajm ko'rsatkichi yuritiladi: rasmiy statistikada qariyb 7 million tonna, poligonlarga topshirilgan hajm bo'yicha 14 million tonna, davlat dasturidagi prognozda 14–14,5 million tonna, xalqaro bahoda esa qariyb 15 million tonna. Qayta ishlash darajasi ham manbaga qarab 3–4% dan 6,5% gacha o'zgaradi, plastik oqimi bo'yicha alohida hisobda 6,6%. Bu raqamlar bir-birini inkor etmaydi — ular turli qamrov va metodika bilan hisoblangani uchun taqqoslanmaydi. Maqola ishonchsizlikning sababi nazoratning yetishmasligida emas, hisob metodining oshkor etilmaganida ekanini ko'rsatadi va yechimni ma'lumotni majburiy oshkor qilishda ko'radi: bitta registrdan bir vaqtda besh kanalga e'lon qilish (rasmiy sayt, ochiq API, messenjer-bot, matbuot xabari, xarita qatlami), to'rt rangli zonalash — shu jumladan «ma'lumot yo'q» holatining ham ochiq ko'rsatilishi, fuqaro murojaati uchun 10 ish kunidan oshmaydigan muddat va ochiq arxiv. Maqola 2026-yilgi amaliyotni ham tahlil qiladi: poligonlarni qisqartirish siyosati, oltita chiqindidan energiya zavodi va ularda dioksin hamda kul monitoringining oshkoraligi masalasi.

**Kalit so'zlar:** chiqindi hisobi · qayta ishlash · chiqindidan energiya (WtE) · ochiq ma'lumot · PRTR · to'rt rangli zonalash · Aarhus konventsiyasi · anomaliya aniqlash · avtomatlashtirilgan matn generatsiyasi (RAG) · XAI · oshkoralik siyosati · O'zbekiston

**Muallif:** Jasur · **Sana:** 2026-09-29

---

## 1. Kirish: huquqiy majburiyat bilan ishonch o'rtasidagi masofa qancha?

O'zbekiston 2025-yil martda Aarhus konventsiyasiga qo'shildi: axborotga kirish, qarorlar qabul qilishda ishtirok etish va ekologik masalalar bo'yicha odil sudlov — uchta majburiyat. Keyingi ikki yilda bu majburiyatlar amaliy sanalarga aylantirildi: 2025-yil 1-dekabrdan davlat ekologik monitoringi bazasi ommaviy ochiq bo'lishi, 2026-yil 1-oktabrdan xavfli chiqindi hosil qiluvchilar har chorak hisobotini keyingi oyning 20-sanagiga qadar topshirishi, 2027-yil 1-yanvardan esa I–III sinf chiqindilarining har bir partiyasi raqamli pasport bilan yuritilishi belgilandi. Chempion siyosiy maqsad ham e'lon qilindi: 2030-yilga qadar poligonlar sonini 50 foizga qisqartirish (1-rasm). Ochiqlik talabi alohida hujjat bilan ham mustahkamlangan: 2024-yil 26-sentabrdagi PF-149-son farmon ekologiya va atrof-muhitni muhofaza qilish sohalarida ochiqlikni ta'minlashni alohida yo'nalish sifatida belgilagan.

![1-rasm](png/N10.png)

*1-rasm. Majburiyatlarning huquqiy taqvimi (2025–2030).*


Demak, qonuniy talab bor, muddatlar bor. Savol boshqa joyda: **e'lon qilinayotgan raqam qanday hisoblanadi va uni tekshirish mumkinmi?** Bu savol nazariy emas. Chiqindi hajmi bo'yicha e'lon qilinayotgan raqamlar bir-biridan ikki baravargacha farq qiladi: rasmiy statistikada 7 million tonna atrofida (UN/UNITAR hisoboti, 2024), poligonlarga topshirilgan hajm bo'yicha qariyb 14 million tonna (gazeta.uz, ingliz nashri, 05.12.2025), davlat dasturidagi prognozda 14–14,5 million tonna (PQ-4291, 2019), xalqaro tahlilda esa qariyb 15 million tonna (Euronews/IndexBox, 22.09.2026). Qayta ishlash darajasi ham shunga o'xshash tarqoq: 3–4 foiz (agentlik rahbari, gazeta.uz, 05.12.2025), 4–5 foiz (China Daily, 06.05.2026), 5–6 foiz (IndexBox, 22.09.2026) va 6,5 foiz (uza.uz, 14.09.2026) — eng past va eng yuqori baho orasida ikki baravardan ortiq farq bor.

Bu tafovutlarni yashirmaslik kerak, lekin ularni «yolg'on» deb atash ham to'g'ri emas. Ular turli hududiy qamrov, turli chiqindi toifalari va turli metodikalar asosida olingan. Muammo shunda: **raqam bilan birga uning manbasi va hisoblash usuli e'lon qilinmaydi**. Natijada fuqaro ham, investor ham, jurnalist ham qaysi raqamga tayanishni bilmaydi.

Maqolaning markaziy savoli shunday: **chiqindi va ifloslanish hisobini tekshiriladigan qilish uchun nima qilish kerak?** Quyida avval raqamlar tafovutining sabablari tahlil qilinadi (I qism), so'ngra e'lon qilish mexanizmi taklif etiladi (II qism), oxirida fuqaro ishtiroki (III qism) va undan keyin alohida bo'limda 2026-yilgi amaliyot — poligonlarni qisqartirish, chiqindidan energiya (WtE) va xavfli chiqindi — ko'rib chiqiladi (5-bo'lim). Alohida bo'lim (7-bo'lim) texnologik qatlamga bag'ishlanadi: minglab yozuv va besh e'lon kanali bilan ishlaydigan tizimni qo'lda boshqarish mumkin emas — shuning uchun avtomatik tahlil usullari va ularning chegarasi ko'rsatiladi.

---

## 2. I qism — Hisob: nega raqamlar bir-biriga to'g'ri kelmaydi?

### 2.1. Hajm bo'yicha tafovut

Yillik hajm bo'yicha uch xil ko'rsatkichning yonma-yon yuritilishi (2-rasm) birinchi navbatda hisob obyekti ta'rifidan kelib chiqadi. «Chiqindi» tushunchasiga nima kiradi: faqat qattiq maishiy chiqindi (QMC) mi, sanoat chiqindisi ham qo'shiladimi, ikkinchi darajali xom ashyo sifatida qaytarilgan hajm hisobga olinadimi, qurilish chiqindisi qaysi tomonda turadi? Har bir javob boshqa son beradi.

Amaliyotdagi yana bir omil — yo'qotish. Rasmiy hisobot poligonga qabul qilingan hajmga tayanadi, poligonlar hisobi esa transport vazni bo'yicha yuritiladi; ayrim hududlarda norasmiy poligonlar hisobga tushmaydi. Xalqaro tahlillar esa aholi jon boshiga ishlab chiqarish koeffitsienti orqali hisoblaydi — bu usul qamrovni to'liqroq oladi, lekin tasdiqlanmagan ekstrapolyatsiyaga tayanadi.

Shu sababli hajmdagi farqni «qaysi raqam to'g'ri» degan savol bilan hal qilib bo'lmaydi.

![2-rasm](png/N1.png)

*2-rasm. Yillik chiqindi hajmi bo'yicha yuritilayotgan ko'rsatkichlar.*
 To'g'ri savol boshqacha: **har bir raqam qanday metodika bilan olingan va u qaysi qamrovni qamraydi?**

Hisobni yagonalashtirish bo'yicha rasmiy qadamlar allaqachon qo'yilgan: PQ-4291-son qaror (17.04.2019) yillik hajm prognozini davlat dasturi darajasida tasdiqlagan, 2025-yildan boshlab esa ma'lumotlarni yagona elektron hisob tizimiga o'tkazish boshlandi. Shu sababli tafovut metodikaning yo'qligidan emas, uni e'lon qilish tartibining yo'qligidan kelib chiqadi.

### 2.2. Qayta ishlash darajasi bo'yicha tafovut

Qayta ishlash ko'rsatkichi bo'yicha tafovut ham sezilarli (3-rasm): eng past baho (3–4 foiz) bilan eng yuqori rasmiy hisobot (6,5 foiz) orasida qariyb ikki baravar farq bor; plastik oqimi bo'yicha hisob (6,6 foiz) boshqa maxrajga — faqat plastik hajmiga — tegishli bo'lgani uchun umumiy ko'rsatkich bilan to'g'ridan-to'g'ri taqqoslanmaydi. Sabablari quyidagicha: birinchi usul yig'ish punktlariga kelib tushgan hajmni qayta ishlangan deb hisoblaydi; ikkinchi usul faqat qayta ishlash korxonalaridan chiqqan tayyor mahsulotni hisobga oladi; uchinchisi eksport qilingan ikkilamchi xom ashyoni ham qo'shadi. Bundan tashqari, «qayta ishlash» tarkibiga kompostlash kiradimi yoki yo'qmi, degan savol ham javobsiz qoladi.

Mazkur tafovutning bir amaliy oqibati bor: davlat 2030-yilga qadar qayta ishlashni sezilarli oshirishni maqsad qilib qo'ygan bo'lsa, qaysi bazadan boshlanayotganini bilmasa, natijani baholab bo'lmaydi. 3 foizdan 20 foizga chiqish bilan 19 foizdan 20 foizga chiqish butunlay boshqa vazifadir.

![3-rasm](png/N2.png)

*3-rasm. Qayta ishlash darajasi bo'yicha manbalar kesimidagi farq.*


### 2.3. Ochiq ma'lumotlarning hajmi

Raqamlar ishonchini oshirishning eng oddiy yo'li — ma'lumotni mashina o'qiydigan shaklda ochiq qilish. Hozirgi holat quyidagicha (4-rasm): davlat ochiq ma'lumotlar portalida (data.egov.uz) o'ndan ortiq ming dataset mavjud bo'lsa-da, ekologiya yo'nalishiga tegishlisi qariyb 170 tani tashkil qiladi, ya'ni taxminan 1,7 foiz. Bu — muallifning oddiy nisbat hisobi bo'lib, ochiqlik huquqiy jihatdan e'lon qilinganiga qaramay miqdoriy jihatdan boshlang'ich bosqichda ekanini ko'rsatadi.

Muhim jihat shundaki, ochiqlik ikki xil bo'ladi: e'lon qilingan hisobot shaklida va qayta ishlanadigan ma'lumot shaklida. Birinchisi jurnalist uchun yetarli, ikkinchisi tahlilchi, ishlab chiquvchi va nazoratchi uchun zarur. Siyosatning keyingi qadami — ikkinchi turga o'tish.

Bu o'tish ham davlat hujjatlarida belgilangan yo'nalish: PF-149-son farmon (26.09.2024) ochiqlikni alohida talab sifatida mustahkamlagan, PQ-184-son qaror esa 2025-yil 1-dekabrdan davlat atrof-muhit monitoringi bazasining ommaviy ochiqligini joriy qilgan. Endi masala — ochiqlikning shakli va sifatida.

![4-rasm](png/N8.png)

*4-rasm. Ochiq ma'lumotlar portalidagi datasetlar va ekologiya yo'nalishining ulushi.*


---

## 3. II qism — E'lon: bir ma'lumot, besh kanal — yetadimi?

### 3.1. Bugungi zanjir va uning zaif nuqtasi

Bugun ma'lumot e'longa aylanish jarayoni bir necha bosqichdan o'tadi: hududiy bo'linma yig'adi, markaziy apparat tahrir qiladi, tegishli rahbariyat tasdiqlaydi, keyin nashr etiladi. Qonunchilikda yagona hisob tizimi allaqachon ko'zda tutilgan: PF-56-son farmon (24.03.2025) sanitar tozalash korxonalari, qayta yuklash stansiyalari va ekosanoat zonalari ma'lumotlarini Agentlikning yagona elektron hisob tizimiga bosqichma-bosqich taqdim etishni belgilaydi. Ya'ni texnik asos bor; yetishmayotgani — shu ma'lumotni e'lon qiladigan avtomatik va ochiq kanal. Xalqaro amaliyotda bu masala PRTR protokoli (Kiev, 2003) va Yevropa Ehtiyojlar va ifloslantiruvchi moddalar reestri (E-PRTR) orqali hal qilingan: korxona darajasidagi ma'lumot davlat tomonidan yig'ilib, ochiq va qayta ishlanadigan shaklda e'lon qilinadi. O'zbekiston uchun bu yo'nalish yangi emas — UNECE PRTR protokoli shu mantiqqa tayanadi. Har bosqichda vaqt ketadi va har bosqichda raqam o'zgarishi mumkin. Natijada e'lon kechikadi — bu xodimning sustligi emas, jarayonning tabiiy xususiyati: tahrir oynasi mavjud bo'lsa, kechikish qonuniy bo'lib qoladi.

Taklif etilayotgan yechim zanjirni odamdan xalos qilish emas, balki **bir manbadan ko'p kanalga parallel chiqarish**: rasmiy sayt va boshqaruv paneli, ochiq API, messenjer-bot, matbuot uchun avtomatik shablon xabari va xarita qatlami. Har bir kanal bir registrdagi bir xil yozuvdan oziqlanadi (5-rasm).

![5-rasm](png/N5.png)

*5-rasm. Bir registrdan besh kanalga e'lon qilish sxemasi.*
 Qo'lda tahrir faqat istisno holatlarda va yozuvning o'zida saqlanadigan o'zgartirish tarixi bilan qoladi.

### 3.2. Zonalash qoidasi

Ma'lumotni tushunarli qilishning amaliy usuli — rangli zonalash. Taklif etilayotgan qoida to'rt holatni ajratadi (1-jadval; 6-rasm):

| Zona | Shart | Mazmuni |
|---|---|---|
| Yashil | ko'rsatkich normativ ichida | rioya qilinmoqda |
| Sariq | normativdan 1–2 baravar yuqori | ogohlantirish, kuchaytirilgan nazorat |
| Qizil | normativdan 2 baravardan yuqori | ustuvor nazorat va tekshiruv |
| Ko'k-neytral | ma'lumot yo'q yoki tekshirilmoqda | holat noma'lum |

**1-jadval.** To'rt rangli zonalash qoidasi: shartlar va mazmuni.

To'rtinchi zona — ko'k — ataylab kiritilgan. Ma'lumot yo'qligi ham axborot: u bo'shliqni yashirmaydi, balki uni ko'rsatadi. Har chorakda ko'k zona ulushi e'lon qilinsa, tizim o'z ko'r nuqtalarini o'zi ochib beradi.

Bunday ko'rsatkich davlat maqsadlari bilan ham bog'lanadi: PF-46-son farmon (25.03.2026) «Toza havo» loyihasida PM2,5 bo'yicha me'yordan oshish kuzatilgan kunlar sonini kamaytirishni maqsad qilib qo'ygan — rangli zonalash shu turdagi maqsadlarni kundalik ko'rinadigan holga keltiradi.

![6-rasm](png/N6.png)

*6-rasm. To'rt rangli zonalash qoidasi (norma, 1–2×, 2× dan yuqori, ma'lumot yo'q).*


### 3.3. Avtomatik izoh va uning chegarasi

E'lon bilan birga tushuntirish matni ham kerak: oddiy fuqaro «qizil» degan belgidan nimani tushunishi lozim? Bu yerda avtomatik tayyorlanadigan, lekin shablon bilan cheklangan izohlash usuli qo'llanilishi mumkin: tizim raqamni normativ bilan solishtiradi, zonani aniqlaydi va tayyor shablon asosida ikki-uch jumla yozadi. Qat'iy shart — raqam registrdan olinadi va o'zgartirilmaydi; matn faqat mavjud qiymatni izohlaydi va har bir jumla manba havolasi bilan birga keladi.

Bu cheklovning sababi oddiy: avtomatik matn yozuvchi tizimlar ishonchli ko'rinadigan, ammo asossiz raqamlar ishlab chiqarishi mumkin. Ekologik hisobotda bunday xato obro'ga jiddiy zarar yetkazadi, shu sababli modelning roli — faqat izohlash, qaror qabul qilish emas.

---

## 4. III qism — Ishtirok: fuqaro nima qila oladi?

### 4.1. Murojaat moduli

Aarhus konventsiyasining uchinchi ustuni — ekologik masalalar bo'yicha odil sudlov huquqi. Bu huquq amalda murojaat tizimining ishlashiga bog'liq. Shu sababli murojaat jarayoni bosqichlar va muddatlar bilan shakllantirilishi taklif etiladi (7-rasm): murojaat qabul qilindi, ko'rib chiqilmoqda, javob berildi, hal qilindi va arxivlandi. Har bir bosqichning sanasi ochiq ko'rinadi, javob muddati esa 10 ish kunidan oshmasligi nazarda tutiladi. Bu — xalqaro minimumdan (Aarhus konventsiyasi, 4-modda: bir oy) va milliy tartibdan (O'RQ-457: 30 ish kuni) qat'iyroq standart. Javobsiz qolgan murojaatlar soni yashirilmaydi — aksincha, alohida ko'rsatkich sifatida e'lon qilinadi.

Muddat chegarasining ahamiyati shunda: fuqaro uchun eng katta to'siq — javobsizlikning noaniq cho'zilishi. Aniq muddat jarayonni tekshiriladigan qiladi va idoraga ham himoya beradi: muddat ichida javob berilgani qayd etiladi.

Bu taklif ekologiya sohasidagi boshqaruv islohoti bilan bir yo'nalishda: PF-217-son farmon (18.11.2025) aynan «aholi talablariga tezkor javob bera oladigan boshqaruv tizimini yaratish»ni maqsad qilib qo'ygan va bu vazifani yangi Ekologiya va iqlim o'zgarishi milliy qo'mitasi zimmasiga yuklagan. Murojaat zanjirining ochiqligi ana shu islohotning ko'rinadigan natijasi bo'ladi.

![7-rasm](png/N7.png)

*7-rasm. Murojaat jarayonining bosqichlari va muddat chegarasi.*


### 4.2. Ishonch arxitekturasi

Ma'lumot ishonchi bir qavatdan iborat emas. Amaliyotda besh qavatni ajratish mumkin (8-rasm):

1-qavat. **Manba dalili** — har bir yozuv qayerdan olingani va qanday kalibrovka asosida;
2-qavat. **Qarama-qarshi signal** — hajm, transport va energiya ko'rsatkichlari bir-biriga mos kelishi;
3-qavat. **Shablonli izoh** — yuqorida bayon etilgan cheklangan avtomatik izohlash;
4-qavat. **E'tiroz va tuzatish oqimi** — korxona ham, fuqaro ham tuzatish taklif qilishi mumkin;
5-qavat. **Jamlanmagan ko'rsatkichlar** — hudud va tarmoq kesimida yaxshilanish dinamikasi.

Beshinchi qavatda «yaxshi/yomon» degan yakuniy hukm emas, dinamika ko'rsatiladi. Sabab amaliy: korxonalarni yagona jamlanma ko'rsatkich bo'yicha taqqoslaydigan **bir martalik reyting** tez siyosiylashadi, dinamika esa ancha barqaror va tekshiriladigan.

![8-rasm](png/N9.png)

*8-rasm. Ma'lumot ishonchining besh qavati.*


---

## 5. 2026-yilgi amaliyot: poligonlar, energiya, taqvim — amalda nima o'zgardi?

### 5.1. Poligonlarni qisqartirish

Poligonlar soni bo'yicha siyosiy maqsad aniq: 2030-yilga qadar 50 foizga qisqartirish. 2026-yil uchun oraliq maqsad 32,6 foiz edi; so'nggi yillarda 47 ta poligon faoliyati to'xtatilib, rekultivatsiya qilindi (gazeta.uz, 04.05.2026; spot.uz, 02.12.2025). Shu bilan birga qayta yuklash stansiyalari tarmog'i kengaytirilmoqda: 2026-yilda 28 ta, 2030-yilga qadar 70 ta. Sanitariya tozalash qamrovi 2025-yilda 88 foizga yetgan, 2026-yil uchun maqsad 90 foiz.

Bu ko'rsatkichlar o'zaro bog'liq: poligon yopilganda chiqindi oqimi boshqa joyga yo'naltirilishi kerak, aks holda yopish norasmiy chiqindixonalar paydo bo'lishiga olib keladi. Shu sababli poligonlar soni yolg'iz ko'rsatkich sifatida emas, qayta yuklash stansiyalari va qayta ishlash quvvatlari bilan birgalikda baholanishi lozim (9-rasm).

Tarmoq kengayishi Prezident farmonlari bilan mustahkamlangan: PF-5 (04.01.2024) chiqindilarni boshqarish tizimini takomillashtirish, yashil subsidiyalar va qayta yuklash stansiyalarini rivojlantirishni belgilagan; PF-56 esa 2025-yilda hisobni yagona elektron tizimga o'tkazgan. Poligonlarni yopish siyosati ana shu infratuzilma bilan birgalikda — himoya va rag'bat juftligida — o'qilishi lozim.

![9-rasm](png/N3.png)

*9-rasm. Poligonlarni qisqartirish va qayta yuklash stansiyalari tarmog'i.*


### 5.2. Chiqindidan energiya

Eng katta yangi qatlam — chiqindidan energiya loyihalari. Oltita zavod bo'yicha umumiy 933 million dollarlik loyihalar 2026–2027-yillarda amalga oshirilmoqda: Qashqadaryo, Samarqand, Toshkent, Andijon, Farg'ona va Namangan hududlarida (Xinhua, 11.09.2026; gazeta.uz, 04.05.2026). To'liq quvvatda ishga tushsa, yiliga 3,6 million tonnaga yaqin chiqindi qayta ishlanadi va 1,6 milliard kilovatt-soatga yaqin elektr energiyasi olinadi. Poligonga tushadigan yuklama qariyb 40 foizga kamayishi kutilmoqda. Birinchi navbatdagi Qashqadaryo zavodi yiliga 500 ming tonnadan ortiq chiqindini qayta ishlashi, 342 million kilovatt-soat elektr ishlab chiqarishi va atmosferaga 180 ming tonna kamroq karbonat angidrid chiqarishi ko'rsatilgan (China Daily, 06.05.2026). Samarqand zavodi uchun kuniga 1 500 tonna quvvat va shahar chiqindisining qariyb 70 foizini qamrash rejalashtirilgan (10-rasm).

Keyingi bosqich ham e'lon qilingan: beshta hududda (Qoraqalpog'iston, Jizzax, Surxondaryo, Buxoro va Xorazm) qo'shimcha loyihalar rejalashtirilgan — umumiy qiymati 625 million dollar, yiliga 1,9 million tonna qo'shimcha quvvat va 635 million kilovatt-soat elektr energiyasi (spot.uz va gazeta.uz, 14.09.2026; Xinhua, 11.09.2026).

Bu loyihalar chiqindi masalasini energetika masalasiga bog'laydi. Shu yerda eng jiddiy savol tug'iladi: **kuydirish jarayonida hosil bo'ladigan dioksin va kul bo'yicha monitoring qanday olib boriladi va natijalar qayerda e'lon qilinadi?** Xalqaro amaliyotda bu savolga javob majburiy o'lchov va davriy e'lon orqali beriladi. Agar O'zbekistonda bu qatlam ochiq bo'lmasa, chiqindidan energiya loyihalari oshkoralik siyosatining eng zaif nuqtasiga aylanadi.

Ikkinchi savol texnologik: kuydirish faqat saralashdan keyin kelishi kerak.

![10-rasm](png/N4.png)

*10-rasm. Chiqindidan energiya: zavodlar, quvvat va kutilayotgan natijalar.*
 Aks holda qayta ishlanadigan qimmatli xom ashyo ham kuydirishga ketadi va qayta ishlash sanoati rivojlanish imkoniyatini yo'qotadi.

### 5.3. Xavfli chiqindi

Xavfli chiqindi oqimi alohida tartibga muhtoj. 2026-yil 1-oktabrdan xavfli chiqindi hosil qiluvchilar choraklik hisobot topshirishi belgilandi: hisobot keyingi oyning 20-sanasigacha taqdim etilishi kerak (yuz.uz, 06.08.2026). Navoiyda 260 million dollarlik xavfli chiqindilarni qayta ishlash platformasi qurilmoqda (MDH hududida ilk integratsiyalashgan platforma); rejalashtirilgan quvvat yiliga 330 ming tonna (gazeta.uz, 04.05.2026). Bunday obyektlarda hisobotning oshkoraligi ikki baravar muhim: xavfli chiqindi noto'g'ri muomalada bevosita aholi salomatligiga ta'sir qiladi.

Bu tartib Prezident qarori (2026-yil avgust) bilan mustahkamlangan: xavfli chiqindilarni 2030-yilga qadar 20 foiz qayta ishlashga yetkazish va 2027-yil 1-yanvardan raqamli pasport joriy etish belgilangan. Bunday qarorlar fonida hisobotning ochiqligi — iltimos emas, talab.

---

## 6. Muhokama: besh kanal ishonchni tiklaydimi?

**6.** Oshkoralik o'zi chiqindini kamaytirmaydi, degan e'tiroz o'rinli. Lekin u javobgarlikni yaratadi: hisoblanmagan va e'lon qilinmagan hajm uchun hech kim javob bermaydi. Shuning uchun oshkoralik — siyosatning alternativasi emas, uning sharti.

**7.** Korxonalar ma'lumotni tanlab e'lon qilish xavfi ham bor. Bunga qarshi asosiy vosita — qarama-qarshi signal: hajm, transport va energiya ko'rsatkichlarini birgalikda tekshirish. Bu usul nisbatan arzon va mustaqil, chunki bu ko'rsatkichlar boshqa idoralarda shakllanadi.

**8.** «Bir ma'lumot, besh kanal» yondashuvi yangi xato kanallarini ham yaratadi: bitta manbadagi xato besh joyda takrorlanadi. Shu sababli manba darajasidagi nazorat va tuzatish tartibi kanallar sonidan muhimroq. Har bir yozuvda o'zgartirish tarixi saqlanishi shu xatoning oldini oladi.

**9.** Chiqindidan energiya tanqidi alohida e'tibor talab qiladi. Kuydirish saralashdan keyin kelishi shart, aks holda rag'bat noto'g'ri tomonga ishlaydi: qayta ishlanishi mumkin bo'lgan xom ashyo yoqib yuboriladi. Shuning uchun WtE quvvatlari saralash quvvatlari bilan birgalikda rejalashtirilishi kerak.

**10.** Texnologik qatlam. Tizim qo'lda boshqarishga mo'ljallanmagan: minglab yozuv, besh kanal va to'rt rangli zonalash avtomatik tahlilni talab qiladi. Bu masala keyingi bo'limda alohida ko'rib chiqiladi — qaysi texnikalar ishlatiladi va ularning chegarasi qayerda (7-bo'lim).

Bu yo'nalish davlat dasturlarida ham ustuvor: PQ-358-son qaror (14.10.2024) sun'iy intellekt strategiyasini tasdiqlab, davlat organlariga AI joriy etishni belgilagan — batafsil keyingi bo'limda.

*(Muhokama nuqtalari 6–10; ro'yxatning boshi — Maqola 1 da, 1–5.)*

---

## 7. AI/ML qatlami: besh kanal va to'rt rang kim uchun ishlaydi?

Muhokamaning texnologik bandi alohida bo'limga arziydi: «bir ma'lumot, besh kanal» tamoyili va to'rt rangli zonalash minglab yozuv bilan ishlaydi — ya'ni bunday tizim qo'lda emas, avtomatik tahlil bilan boshqariladi. Yondashuv milliy kun tartibiga mos: PQ-358 (14.10.2024) sun'iy intellekt strategiyasi va VM-425 (10.07.2025) ustuvor AI loyihalari ro'yxati davlat organlariga AI joriy etishni talab qiladi.

**Miqyos.** Ochiq ma'lumotlar portalida o'ndan ortiq ming dataset bor, shundan ekologiya yo'nalishiga tegishlisi qariyb 170 ta; chiqindi sohasidagi hisobotlar esa har chorakda minglab yozuvni tashkil qiladi (korxonalar, hududlar, ekosanoat zonalari). Bu hajmda «ko'k zona» holatini — ma'lumot yo'qligi yoki kechikishini — va ziddiyatli qiymatlarni qo'lda kuzatish amalda imkonsiz. Xalqaro tajribada ham xuddi shunday: Xitoyning milliy uglerod savdo tizimi 3 680 obyektni, Yevropa Ittifoqining tizimi qariyb 10 ming qurilmani qamraydi va ikkalasi ham monitoring-hisobot-verifikatsiya (MRV) jarayonida avtomatlashtirishga tayanadi (ICAP, 2025; Yevropa Komissiyasi).

**Qaysi texnikalar mos.** Taklif etilayotgan tizimga to'rtta aniq vazifa to'g'ri keladi (2-jadval):

| Vazifa | Texnika | Nega aynan shu |
|---|---|---|
| «Ko'k zona»: ma'lumot yo'q yoki kechikkan yozuvlarni aniqlash | **Nazoratsiz anomaliya aniqlash (Isolation Forest) + bo'shliqlarni to'ldirish (imputation) modellari** | Bo'shliqni yashirmaslik kerak: model uni topadi va ko'rsatadi; to'ldirilgan qiymat esa alohida belgilanadi |
| «Qarama-qarshi signal»: hajm, transport va energiya ko'rsatkichlarining mosligi | **Ko'p manbali ma'lumot sintezi (data fusion) va o'zaro tekshiruv** | Mustaqil manbalar birgalikda ma'lumotni tanlab e'lon qilishni qimmatlashtiradi |
| Avtomatik matbuot izohi (raqamni o'zgartirmasdan) | **Retrieval-Augmented Generation (RAG) yoki cheklangan shablon generatsiyasi** | Hallyutsinatsiyaning oldini oladi: matn faqat registrdagi yozuvdan quriladi, tashqi bilim ishlatilmaydi |
| Izohlar sifatini baholash (ichki audit) | **LLM-as-annotator + inson tekshiruvi** | Katta til modellari hozircha mutaxassisni to'liq almashtirmaydi — bu o'lchov bilan tasdiqlangan |

**2-jadval.** Muammo — texnika — asos jadvali (xalqaro adabiyot asosida).

**Adabiyot nima deydi.** Tabiiy til qayta ishlash (NLP) regulyativ hujjatlar bilan ishlashda yetakchi yo'nalishlardan biriga aylangan: ACL 2025 konferensiyasida e'lon qilingan tizimli sharh (Jain, Dhanasekaran, Diab, 2025) avtomatik muvofiqlik tekshiruvining imkoniyatlari va cheklovlarini umumlashtiradi. Atrof-muhit siyosati sohasida Yang va boshqalar (Sustainability, 2025) katta til modellari yordamida siyosat bilim grafi qurish usulini taklif etadi, Springer nashridagi tadqiqot (EGRWSE 2025, 2026-yilda chop etilgan) esa atrof-muhit regulyatsiyasini ko'rib chiqishda LLM va RAG kombinatsiyasini amalda ko'rsatadi. Muhim ehtiyot chorasi ham adabiyotdan keladi: barqarorlik (ESG) hisobotlarini baholashda eng kuchli model hisoblangan GPT-4o o'rtacha aniqlik bo'yicha atigi ~56 foiz natija bergan, hallyutsinatsiya holatlari esa alohida qayd etilgan (Wu, Hu, Wang, Systems, 2025). Ya'ni bunday model e'lon matnini **tayyorlashi** mumkin, lekin uni **tasdiqlay olmaydi**.

**Chegara va risklar.** Uch shart belgilanadi:

1. **Model registrdan tashqariga chiqmaydi.** RAG yoki shablon generatsiyasi faqat mavjud yozuvdan matn quradi; har bir jumla manba havolasi va o'zgartirish tarixi bilan keladi.
2. **Yolg'on signal muvozanati.** «Ko'k zona» va shubhali qiymatlar jazo emas, inson tekshiruviga yuboriladi; tizim o'zi e'lon yoki sanksiya qarorini chiqarmaydi. Shu sababli zonalash ikkilik emas, to'rt holatli: noma'lum holat ham alohida rang sifatida ko'rsatiladi.
3. **Model dreyfi va audit izi.** Model versiyasi, o'qitish sanasi va o'zgartirish tarixi yozib borilishi shart — aks holda e'lon qilingan raqamni tekshirish imkoni yo'qoladi. Avtomatik qaror ustidan tushuntirish olish huquqi Yevropa Ittifoqining sun'iy intellekt to'g'risidagi qonuni 86-moddasida (2026-yil 2-avgustdan kuchda) mustahkamlangan.

Texnik tanlov va ishlab chiqish bosqichlari — loyiha hujjati (TZ-Ochiq-Eko-Ledger) darajasidagi masala; maqola faqat tamoyilni belgilaydi: avtomatlashtirish e'lon qilishni tezlashtiradi va tartiblaydi, lekin hisob metodini yashirmaydi — aksincha, har bir yozuv manbasi va o'zgartirish tarixi bilan ochiq bo'ladi.

---

## 8. Xulosa: nima qilish kerak va kimdan boshlanadi?

Chiqindi sohasidagi huquqiy asos O'zbekistonda shakllantirildi: ochiqlik muddatlari, pasport tizimi, poligonlar siyosati, energiya loyihalari. Keyingi masala — shu asosning ishlashini o'lchash va o'lchov natijalarini ochiq ko'rsatish.

*(Tavsiyalar 7–12; ro'yxatning boshi — Maqola 1 da, 1–6.)*

7. **Raqam bilan birga metodika e'lon qilinsin.** Har bir yillik va choraklik ko'rsatkich uchun qamrov, toifalar va hisoblash usuli ko'rsatilsin.
8. **E'lon besh kanalda bir vaqtda amalga oshirilsin.** Manba bitta registr bo'lsin, har bir yozuvda o'zgartirish tarixi saqlansin.
9. **Zonalash qoidasi yagona va matematik bo'lsin.** «Ma'lumot yo'q» holati (ko'k zona) alohida ko'rsatilishi va uning ulushi har chorak e'lon qilinishi kerak.
10. **Qayta ishlash ko'rsatkichi ta'rifi qonun darajasida aniqlashtirilsin.** Kompostlash, eksport va ikkinchi darajali xom ashyo hisobga olinishi qoidasi belgilansin.
11. **Murojaat muddati va ochiq arxiv majburiy bo'lsin.** O'rtacha javob muddati va javobsiz murojaatlar ulushi doimiy e'lon qilinsin.
12. **Chiqindidan energiya zavodlarida dioksin va kul monitoringi ochiq bo'lsin.** O'lchov natijalari davriy ravishda e'lon qilinishi va saralash quvvatlari bilan birgalikda rejalashtirilishi kerak.

Bu tavsiyalar PF-217 (18.11.2025) boshqaruv islohoti va PQ-320 (30.10.2025) AI loyihalarini qo'llab-quvvatlash tartibi bilan bir yo'nalishda: davlat ham ochiqlikni, ham avtomatlashtirishni o'z dasturlarida talab qilmoqda. Farq shundaki, maqola bunda ishonch arxitekturasini — manba, metodika va o'zgarish tarixini — birinchi shart deb biladi.

---

## 9. Ochiq savollar

*(Savollar 6–11; ro'yxatning boshi — Maqola 1 da, 1–5.)*

6. 2026-yil oxiriga kelib qayta yuklash stansiyalari va poligonlarni qisqartirish bo'yicha yillik maqsadga erishildimi?
7. Oltita chiqindidan energiya zavodidan qaysilari ishga tushdi va poligonga yuklamaning kamayishi o'lchandi mi?
8. Dioksin va kul monitoringi bo'yicha qanday normativ talablar belgilanadi va natijalar qayerda e'lon qilinadi?
9. Ochiq ma'lumotlar portalida ekologiya yo'nalishidagi datasetlar ulushi o'zgardi mi?
10. Rasmiy qayta ishlash ko'rsatkichi qaysi metodika bilan hisoblanadi va u xalqaro hisob-kitoblardan nega farq qiladi?
11. Korxonalar kesimida jamlanma ekologik ko'rsatkich (ochiq ma'lumotlar asosida hisoblanadigan reyting) joriy etilishi rejalashtirilganmi?

Bu savollar davlat taqvimiga bevosita bog'liq: 2026-yil 1-oktabr (xavfli chiqindi hisoboti), 2027-yil 1-yanvar (raqamli pasport), 2030-yil (poligonlarni yarimga qisqartirish) — javoblar aynan shu sanalar kesimida kutilmog'i lozim.

---

## 10. Manbalar

**Manbalar va usul.** Dalillar uch darajaga ajratilgan: **R** — rasmiy hujjatlar va davlat organlari ma'lumotlari; **A** — hakamlik ko'rigidan o'tgan tadqiqotlar va xalqaro hisobotlar; **M** — media va ochiq manbalar. Ma'lumotlar 2026-yil sentabr holatiga to'plangan. Bir xil ko'rsatkich bo'yicha turli manbalar bergan qiymatlar matnda yashirilmaydi — manbasi bilan yonma-yon ko'rsatiladi. Muallifning o'z hisob-kitoblari matnda alohida belgilangan.

**Rasmiy hujjatlar va davlat ma'lumotlari (R)**

1. PQ-4291-son qaror, 17.04.2019 — qattiq maishiy chiqindilar bilan bog'liq ishlarni amalga oshirish strategiyasi; yillik hajm prognozi 14–14,5 mln tonna. https://lex.uz/docs/-4291729
2. PQ-184-son qaror, 15.05.2025 — 2030-yilgacha ekologik madaniyatni yuksaltirish konsepsiyasi; 2025-yil 1-dekabrdan davlat atrof-muhit monitoringi bazasining ochiqligi. https://lex.uz/uz/docs/-7528761
3. PF-56-son farmon, 24.03.2025 — chiqindilarni qayta ishlash sohasini tizimlashtirish; ma'lumotlarni Agentlikning yagona elektron hisob tizimiga taqdim etish bosqichlari. https://lex.uz/uz/docs/-7445858

4. PF-5-son farmon, 04.01.2024 — chiqindilarni boshqarish tizimini takomillashtirish: yashil subsidiyalar va qayta yuklash stansiyalarini rivojlantirish. https://lex.uz/uz/docs/-6732832
5. VM-85-son qaror, 28.02.2026 — atrof-muhitga salbiy ta'sirni kamaytirish harakatlarini rag'batlantirish tartibi. https://lex.uz/uz/docs/-8068163
6. PF-46-son farmon, 25.03.2026 — «Toza havo» umummilliy loyihasi. https://lex.uz/uz/docs/-8101201
7. Prezident qarori, 2026-yil avgust — xavfli chiqindilarni boshqarish: 2030-yilgacha qayta ishlashni 20% ga yetkazish, 2027-yil 1-yanvardan raqamli pasport (yuz.uz). https://yuz.uz/uz/news/prezident-qarori-2030-iilgaca-xavfli-ciqindilarni-qaita-isl
8. Davlat ochiq ma'lumotlar portali — datasetlar statistikasi. https://data.egov.uz
9. UNECE PRTR protokoli (Kiev, 2003) — ifloslantiruvchi moddalar hisobi va uzatilishi; Yevropa Ittifoqi E-PRTR registri. https://unece.org/env/pp/prtr
10. Chiqindilarni boshqarish va sirkulyar iqtisodiyotni rivojlantirish agentligi (gov.uz), 15.11.2025 — plastik chiqindi QMCHning 15 foizini tashkil qilishi; yiliga 1,8 mln tonna plastik, shundan 6,6 foizi qayta ishlanishi. https://gov.uz/en/sanitation/news/view/102286
11. Xalqaro uglerod harakati hamkorligi (ICAP), 2025 va Yevropa Komissiyasi — Xitoy milliy savdo tizimi 3 680 obyektni, Yevropa tizimi qariyb 10 000 statsionar qurilmani qamrab olishi (qiyosiy ko'lam uchun). https://icapcarbonaction.com/en/news/china-officially-expands-national-ets-cement-steel-and-aluminum-sectors

12. O'RQ-457-son qonun, 08.01.2018 — «Ma'muriy tartib-taomillar to'g'risida»: murojaat va apellyatsiya muddatlari (30 ish kuni). https://lex.uz/docs/-3492199
13. PQ-358-son qaror, 14.10.2024 — sun'iy intellekt texnologiyalarini 2030-yilga qadar rivojlantirish strategiyasi; PF-189 (22.10.2025) va PQ-320 (30.10.2025) — AI loyihalarni qo'llab-quvvatlash; VM-425 (10.07.2025) — 2025–2026 ustuvor AI loyihalari. https://lex.uz/acts/-7158604
14. PF-149-son farmon, 26.09.2024 — ekologiya va atrof-muhitni muhofaza qilish sohalarida ochiqlikni ta'minlash va boshqaruv tizimini takomillashtirish. https://lex.uz/uz/docs/-7128153

15. PF-217-son farmon, 18.11.2025 — ekologiya va turizm sohalarida aholi talablariga tezkor javob bera oladigan boshqaruv tizimi: Ekologiya va iqlim o'zgarishi milliy qo'mitasi; ekologik nazoratni kuchaytirish. https://lex.uz/uz/docs/-7847353

**Tadqiqotlar va xalqaro hisobotlar (A)**

16. Jain, J., Dhanasekaran, N., Diab, M. (2025). «From Complexity to Clarity: AI/NLP's Role in Regulatory Compliance». *Findings of the Association for Computational Linguistics: ACL 2025*, 26629–26641. https://aclanthology.org/2025.findings-acl.1366.pdf
17. Yang, Y., Liu, X., Tu, X., Lu, Y., Wang, Y. (2025). «Automating the Construction of Environmental Policy Knowledge Graph with Large Language Models». *Sustainability*, 17(22), 10282. https://doi.org/10.3390/su172210282
18. «Use of AI-Powered Technologies for Review of Environmental Regulations». *Sustainable Environmental Geotechnology and Pollution Control (EGRWSE 2025)*, Springer, 2026, 329–337. https://doi.org/10.1007/978-3-032-15832-1_31 — LLM va RAG kombinatsiyasi atrof-muhit regulyatsiyasini ko'rib chiqishda.
19. Wu, Y., Hu, P., Wang, D.D. (2025). «The AI Annotator: Large Language Models' Potential in Scoring Sustainability Reports». *Systems*, 13(10), 899. https://doi.org/10.3390/systems13100899 — GPT-4o o'rtacha aniqlik ~56 foiz, hallyutsinatsiya holatlari qayd etilgan.
20. UN/UNITAR (2024). «National E-waste Monitor: Uzbekistan» — yiliga qariyb 7 mln tonna qattiq maishiy chiqindi statistikasi. https://ewastemonitor.info/wp-content/uploads/2024/10/National_E-waste_Monitor_Uzbekistan_EN_WEB.pdf

**Media va ochiq manbalar (M)**

21. gazeta.uz, 14.09.2026 — ikkita zavod yil oxirigacha ishga tushishi; «nol chiqindi» modeli; poligonga yuklamaning 40% ga kamayishi; qo'shimcha loyihalar (625 mln dollar, 1,9 mln tonna, 635 mln kilovatt-soat). https://www.gazeta.uz/oz/2026/09/14/waste/
22. gazeta.uz, 04.05.2026 — 933 mln dollarlik oltita zavod, 3,6 mln tonna va 1,6 mlrd kilovatt-soat; Navoiyda 260 mln dollarlik xavfli chiqindi platformasi (330 ming t/yil); qamrov 88% → 90%; poligonlar −32,6% → −50%; qayta yuklash stansiyalari 28 → 70. https://www.gazeta.uz/oz/2026/05/04/recycle/
23. gazeta.uz (ingliz nashri), 05.12.2025 — qayta ishlash 3–4%, qariyb 200 poligon, 950 mln dollar investitsiya, zavodlarning tayyorligi 30–40%. https://www.gazeta.uz/en/2025/12/05/waste/
24. spot.uz, 14.09.2026 — qo'shimcha loyihalar (625 mln dollar, 1,9 mln tonna, 635 mln kilovatt-soat); poligonga yuklamaning 40% ga kamayishi. https://www.spot.uz/oz/2026/09/14/waste-to-energy
25. spot.uz, 02.12.2025 — 47 ta poligon faoliyati to'xtatilishi va 243 gektar yerning tabiatga qaytarilishi. https://www.spot.uz/oz/2025/12/02/ecological-improvement
26. Xinhua, 11.09.2026 — oltita loyiha 2026–2027-yillarda, 3,6 mln tonna, 1,6 mlrd kilovatt-soat, 158 mln m³ gaz iqtisodi, issiqxona gazlari 316 ming tonna kamayishi. https://english.news.cn/20260911/e4d4070d24ba46b7b71718528d55fd60/c.html
27. Euronews / IndexBox, 22.09.2026 — yillik hajm qariyb 15 mln tonna; qayta ishlash 5–6 foiz; metan ushlash amaliyoti. https://www.euronews.com/2026/09/22/rethinking-waste-the-journey-towards-a-circular-economy
28. uza.uz, 14.09.2026 — hisobot davrida qayta ishlash darajasi 6,5 foiz, chiqindi olib chiqish qamrovi 64 foiz. https://uza.uz/oz/posts/chiqindilarni-qayta-ishlash-darajasi-65-foizni-tashkil-etgan_908783
29. China Daily (Ningbo), 06.05.2026 — Qashqadaryo zavodi (yiliga 500 ming tonnadan ortiq chiqindi, 342 mln kilovatt-soat, 180 ming tonna CO₂ kamayishi) hamda mamlakat bo'yicha qayta ishlash bahosi: manbada «recycling rates estimated at just 4 to 5 percent». https://ningbo.chinadaily.com.cn/2026-05/06/c_1180598.htm
30. qalampir.uz — yillik maishiy chiqindi hajmi 7 mln tonna atrofida. https://www.qalampir.uz/uz/news/7-mln-tonna-uzbekistonda-chik-indi-%D2%B3osil-bulishi-kupaygan-54753
31. president.uz, 30.04.2026 — chiqindilarni boshqarish bo'yicha taqdimot (WtE loyihalari va xavfli chiqindi platformasi). https://president.uz/uz/lists/view/9163

---

## 11. Nashr variantlari

**Sarlavha alternativalari:** «Kim nima chiqarayotganini kim biladi?» (joriy); «Uch raqam, bir savol: chiqindi hisobida ishonch masalasi»; «Ko'k zona: ma'lumot yo'qligini yashirmaslik siyosati».

**Grafiklardan nashrda foydalanish:** asosiy matnda 1-, 2-, 3-, 4-, 5- va 6-rasmlar saqlanishi tavsiya etiladi (huquqiy taqvim, hajm bo'yicha ko'rsatkichlar, qayta ishlash darajasi, portal datasetlari, e'lon qilish sxemasi, to'rt rangli zonalash); 7-, 8-, 9- va 10-rasmlar ilova yoki elektron versiyaga o'tkazilishi mumkin (murojaat jarayoni, ishonch qavatlari, poligonlar tarmog'i, chiqindidan energiya).

**Nashr uchun rasmiy blok (inglizcha).**
**Title:** Who knows what is being generated? The openness of waste accounting in Uzbekistan.
**Abstract.** Uzbekistan operates several different annual waste figures at the same time: about 7 million tonnes in official statistics, 14 million tonnes of waste delivered to landfills, and around 15 million tonnes in international estimates; the recycling rate varies between 3–4 and 6.5 per cent depending on the source, with a separate 6.6 per cent figure for the plastics stream alone. The article argues that the problem is not weak enforcement but undisclosed accounting methodology, and it proposes mandatory disclosure through a single registry feeding five publication channels (official website, open API, messenger bot, automated press release and a map layer) together with four-colour zoning, which includes an explicit "no data" colour, a ten-working-day response deadline for citizen complaints and an open archive. The 2026 practice — landfill reduction policy, six waste-to-energy plants and hazardous waste reporting — is analysed as well.
**Keywords:** waste accounting; recycling; waste-to-energy (WtE); open data; PRTR; four-colour zoning; Aarhus Convention; anomaly detection; automated text generation (RAG); explainable AI; Uzbekistan.

**Juftlik:** maqolaning birinchi qismi — emissiya o'lchovi ishonchi — Maqola 1 («Raqam ishonchsiz bo'lsa, jazo ham adolatsiz») sifatida alohida nashr etiladi. Ikki maqolada tavsiyalar (1–6 va 7–12), ochiq savollar (1–5 va 6–11) va muhokama nuqtalari (1–5 va 6–10) yagona ro'yxat sifatida raqamlangan.
