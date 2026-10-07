---
aliases: [Tanlov paketi, ISBOT taqdimot, TDIU kreativ g'oya]
tags: [shaxsiy-tadqiqot, loyiha1, loyiha2, tanlov, taqdimot]
created: 2026-10-07
updated: 2026-10-07
sektor: 22-ShaxsiyTadqiqot | Loyiha1 + Loyiha2
tur: paket
holat: faol
sarlavha: TANLOV PAKETI — TDIU «Eng yaxshi kreativ g'oya» (ISBOT platformasi)
qisqacha: 15 slaydli taqdimot (126 KB pptx, QR kodlar; **qonunchilik xaritasi**, **«nega aynan shu g'oya yutadi» taqqoslash**, **mijoz foydasi** va **g'alaba kartasi** slaydlari bilan) + bir betlik tavsif + ariza qo'llanmasi + 16 savol-javob va video skript + dalillar reyestri + moliyaviy model (xlsx) + hakamlar uchun tekshirish yo'riqnomasi. Pozitsiya: verifikatsiya = yashil moliyaning infratuzilmasi (CBAM default ustama 10% (2026) → 30% (2028), milliy uglerod reyestri 01.01.2026, O'RQ-1143 2-10x). Topshirish muddati 10-noyabr; forma 1 fayl (pptx) talab qiladi.
manba: workspace/YAKUNIY/tanlov/
---

# TANLOV PAKETI — ISBOT

**Tanlov:** Toshkent davlat iqtisodiyot universiteti · «Eng yaxshi kreativ g'oya» respublika tanlovi (universitet bosqichi)
**Muddat:** 10-noyabr · **Yuklanadigan fayl:** `ISBOT-TANLOV-TAQDIMOT.pptx` (15 slayd)

## G'oya bir jumlada

ISBOT — sanoat tashlamasi, chiqindi hisobi va uglerod birliklarini **ruxsatsiz, ochiq ma'lumot asosida**
tekshiradigan va har xulosani huquqiy dalil bilan asoslovchi raqamli verifikatsiya platformasi.

## Nega bu pozitsiya (tanlovga moslashtirilgan kuchaytirish)

0. **Qonunchilik — sotuv argumenti:** har modul kuchda bo'lgan bandga bog'langan (O'RQ-1143 → HAVO · PQ-343 → HAVO+API · PF-46 → CHIQINDI · uglerod qonuni → KARBON · Konstitutsiya 49-modda + Aarhus → apellyatsiya); 21 hujjat × 22 element = **53 bog'lanish**, har elementda ≥2 asos. Bu tanlovda ustuvorlikni oshiradi: g'oya «qiziqarli» emas, **majburiyatning bajarilishini** o'lchaydi.
2. **Raqobat pozitsiyasi:** 10-slaydda 5 g'oya turi (aksiya, ilova, sensor parki, chatbot, konsalting) bilan ochiq taqqoslash — har biri uchun kuchli tomon va cheklov, bizning farqimiz raqam bilan.
1. **Yashil moliya** tomoni: Milliy uglerod birliklari reyestri (01.01.2026) va **CBAM** (default qiymatga
   **10% ustama 2026, 30% 2028**) verifikatsiyani majburiy qildi ⇒ platforma moliya sektori uchun infratuzilma.
2. **Pul dalili:** O'RQ-1143 (2–10× kompensatsiya), 10,8 mlrd so'm misolida 20% noaniqlik ≈ **2,2 mlrd so'm**.
3. **Ishlaydigan dalil:** 493 test, 22 modul, 2 MVP, CI yashil, huquqiy xarita 21 hujjat × 53 bog'lanish.
4. **Daromad modeli:** obuna (2 335 obyekt) + platforma litsenziyasi (14 viloyat) + CBAM/uglerod verifikatsiyasi.

## Paket tarkibi (workspace)

| Fayl | Vazifasi |
|---|---|
| `YAKUNIY/tanlov/ISBOT-TANLOV-TAQDIMOT.pptx` | Asosiy topshiriladigan fayl, 15 slayd + izohlar (≈4,2 daq) + QR |
| `YAKUNIY/tanlov/04-DALILLAR-REYESTRI.md` | Har bir raqamning manbasi (A–F bo'limlar) |
| `YAKUNIY/tanlov/05-FINMODEL.xlsx` | Moliyaviy model, 6 varaq, formulalar bilan |
| `YAKUNIY/tanlov/06-TEKSHIRISH-YORIQNOMASI.md` | Hakam uchun 5 daqiqalik mustaqil tekshirish |
| `YAKUNIY/tanlov/07-GALABA-STRATEGIYASI.md` | **G'alaba strategiyasi:** 6 mezon × dalil, 10 g'oya arxetipi taqqoslashi, 9 qurol, xatar tahlili, jonli bosqich rejasi |

**R58 tekshiruvi (07.10.2026):** 493 test qayta yig'ildi va o'tdi (L1 300 + L2 193) · L2 CI **#19 yashil** (`ed98e5a`, `/v1/appeals` xato so'rovga endi 500 emas, 400 qaytaradi) · `huquqiy --qamrov` → 53 bog'lanish, min 2 asos · bot `@ecoledg_bot` jonli · 21 hujjat/22 element tasdiqlandi · kirill aralashmalari barcha hujjatlardan tozalandi.
| `YAKUNIY/tanlov/01-BIR-BETDA.md` / `.docx` | Bir betlik tavsif (jonli bosqich, email uchun) |
| `YAKUNIY/tanlov/02-ARIZA-MAYDONLARI.md` | Forma maydonlari, topshirish tartibi, 5 xato |
| `YAKUNIY/tanlov/03-SAVOL-JAVOB.md` | 60 s pitch · 5 daqiqalik nutq · 12 savol-javob · video skript |

## Ochib qolgan ish (foydalanuvchi tomonda)

Prezentatsiyadagi **⟦...⟧ joylari** (ism, fakultet, guruh, telefon, email, rahbar, jamoa) to'ldiriladi —
shundan keyin fayl 10-noyabrgacha yuklanadi.
