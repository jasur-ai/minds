---
aliases: [Tanlov paketi, ISBOT taqdimot, TDIU kreativ g'oya]
tags: [shaxsiy-tadqiqot, loyiha1, loyiha2, tanlov, taqdimot]
created: 2026-10-07
updated: 2026-10-08
sektor: 22-ShaxsiyTadqiqot | Loyiha1 + Loyiha2
tur: paket
holat: faol
sarlavha: TANLOV PAKETI — TDIU «Eng yaxshi kreativ g'oya» (ISBOT platformasi)
qisqacha: 15 slaydli taqdimot (127 KB pptx, QR kodlar; **qonunchilik xaritasi**, **«nega aynan shu g'oya yutadi» taqqoslash**, **mijoz foydasi** va **g'alaba kartasi** slaydlari bilan) + bir betlik tavsif + ariza qo'llanmasi + 16 savol-javob va video skript + dalillar reyestri + moliyaviy model (xlsx) + hakamlar uchun tekshirish yo'riqnomasi + **internetsiz ishlaydigan oflayn demo (bitta HTML fayl)**. Pozitsiya: verifikatsiya = yashil moliyaning infratuzilmasi (CBAM default ustama 10% (2026) → 30% (2028), milliy uglerod reyestri 01.01.2026, O'RQ-1143 2–10×). Topshirish muddati 10-noyabr; forma 1 fayl (pptx) talab qiladi.
manba: workspace/YAKUNIY/tanlov/
---

# TANLOV PAKETI — ISBOT

**Tanlov:** Toshkent davlat iqtisodiyot universiteti · «Eng yaxshi kreativ g'oya» respublika tanlovi (universitet bosqichi)
**Muddat:** 10-noyabr · **Yuklanadigan fayl:** `ISBOT-TANLOV-TAQDIMOT.pptx` (15 slayd)

## G'oya bir jumlada

ISBOT — sanoat tashlamasi, chiqindi hisobi va uglerod birliklarini **ruxsatsiz, ochiq ma'lumot asosida**
tekshiradigan va har xulosani huquqiy dalil bilan asoslovchi raqamli verifikatsiya platformasi.

## Nega bu pozitsiya (tanlovga moslashtirilgan kuchaytirish)

1. **Qonunchilik — sotuv argumenti:** har modul kuchda bo'lgan bandga bog'langan (O'RQ-1143 → HAVO · PQ-343 → HAVO+API · PF-46 → CHIQINDI · uglerod qonuni → KARBON · Konstitutsiya 49-modda + Aarhus → apellyatsiya); 21 hujjat × 22 element = **53 bog'lanish**, har elementda ≥2 asos. Bu tanlovda ustuvorlikni oshiradi: g'oya «qiziqarli» emas, **majburiyatning bajarilishini** o'lchaydi.
2. **Yashil moliya** tomoni: Milliy uglerod birliklari reyestri (01.01.2026) va **CBAM** (default qiymatga **10% ustama 2026, 30% 2028**) verifikatsiyani majburiy qildi ⇒ platforma moliya sektori uchun infratuzilma.
3. **Pul dalili:** O'RQ-1143 (2–10× kompensatsiya), 10,8 mlrd so'm misolida 20% noaniqlik ≈ **2,2 mlrd so'm**.
4. **Ishlaydigan dalil:** 493 test, 22 modul, 2 MVP, CI yashil (#22 / **#21**), huquqiy xarita 21 hujjat × 53 bog'lanish.
5. **Raqobat pozitsiyasi:** 10-slaydda 5 g'oya turi (aksiya, ilova, sensor parki, chatbot, konsalting) bilan ochiq taqqoslash — har biri uchun kuchli tomon va cheklov, bizning farqimiz raqam bilan.
6. **Daromad modeli:** obuna (2 335 obyekt) + platforma litsenziyasi (14 viloyat) + CBAM/uglerod verifikatsiyasi.

## Paket tarkibi (workspace)

| Fayl | Vazifasi |
|---|---|
| `YAKUNIY/tanlov/ISBOT-TANLOV-TAQDIMOT.pptx` | Asosiy topshiriladigan fayl, 15 slayd + izohlar (≈4,2 daq) + QR |
| `YAKUNIY/tanlov/01-BIR-BETDA.md` / `.docx` | Bir betlik tavsif (A4; jonli bosqich, email uchun) |
| `YAKUNIY/tanlov/02-ARIZA-MAYDONLARI.md` | Forma maydonlari, topshirish tartibi, ⟦⟧ xaritasi (1/14/15-slayd = 15 joy), 5 xato |
| `YAKUNIY/tanlov/03-SAVOL-JAVOB.md` | 60 s pitch · 5 daqiqalik nutq · 12 savol-javob · video skript |
| `YAKUNIY/tanlov/04-DALILLAR-REYESTRI.md` | Har bir raqamning manbasi (A–F bo'limlar) |
| `YAKUNIY/tanlov/05-FINMODEL.xlsx` | Moliyaviy model, 6 varaq, formulalar bilan |
| `YAKUNIY/tanlov/06-TEKSHIRISH-YORIQNOMASI.md` | Hakam uchun 5 daqiqalik mustaqil tekshirish |
| `YAKUNIY/tanlov/07-GALABA-STRATEGIYASI.md` | **G'alaba strategiyasi:** 6 mezon × dalil, 10 g'oya arxetipi taqqoslashi, 9 qurol, xatar tahlili, jonli bosqich rejasi |
| `YAKUNIY/tanlov/08-DEMO-OFFLINE.html` | **Oflayn jonli demo:** zona kalkulyatori (R → rang, O1 override, severity) · CBAM kalkulyatori · huquqiy xarita. Tashqi resurs 0 — internetsiz brauzerda ishlaydi |

## R61 yakuniy tekshiruvi (08.10.2026)

5 haqiqiy nuqson topildi va yopildi:

1. **Karta arifmetikasi:** `E-1003` kartasi «R = 8.4/35.0 = 1.40» deb noto'g'ri maxraj ko'rsatardi (o'lchov — `bod`, norma — `pm25`). Sabab: `seed.py` indikator nomini `pm25` deb qotirib yozgan edi. Endi klasseni hisoblagan **asosiy indikator** yoziladi; karta o'z-o'zini nazorat qiladi (kasr nisbatga mos kelmasa — qayta hisoblash talabi chiqadi). To'g'ri izoh: `R = 8.4/6.0 = 1.40 → Qizil (qo'llanilgan qoida: O1…)`.
2. **S11 slaydi:** `**2,2 mlrd**` markdown yulduzchalari slaydga chiqib ketgan edi — endi haqiqiy qalin matn (jadval yasovchi `**…**` ni run qilib beradi) + builder'da QA darvozasi (yulduzcha topsa saqlamaydi).
3. **CBAM narx yozuvi:** «€75,36/t» → hamma joyda **€75,36/tCO₂** (t ≠ tonna CO₂); `qa_deck.py` ga aniqlik darvozasi qo'shildi.
4. **Hujjat o'lchami:** barcha `.docx` (5 fayl) Letter'dan **A4** (ISO 216) ga o'tkazildi — O'zbekistonda chop etish standarti.
5. **Topshirish qo'llanmasi:** ⟦⟧ joylari «8 joy, 1/11/12-slayd» deb noto'g'ri ko'rsatilgan edi — aslida **15 joy, 1/14/15-slayd**; QR ham 1- va 15-slaydda (12 emas).

Qayta tasdiqlangan dalillar: L1 **300** + L2 **193** = **493 test** yig'iladi va o'tadi · CI **L1 #22** (`94ecafa`) · **L2 #21** (`1c4f6ed`) ikkalasi `completed/success` · jonli API probasi **9/9** (16 endpoint yo'li) · `huquqiy --qamrov` → **53** bog'lanish, min 2 asos · `egaz-audit.pages.dev` 200 (0,18 s) · `@ecoledg_bot` jonli (id 8989725137) · ikkala repo ochiq va 200.

## Ochib qolgan ish (foydalanuvchi tomonda)

Prezentatsiyadagi **⟦...⟧ joylari** — 1-slayd (6 joy: ism, lavozim, fakultet, guruh, telefon, email),
14-slayd (4 joy: jamoa), 15-slayd (5 joy: aloqa) = **15 joy** to'ldiriladi —
shundan keyin fayl 10-noyabrgacha yuklanadi.
