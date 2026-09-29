---
aliases: [Loyiha 2 MVP natijalari, Ochiq-Eko-Ledger MVP]
tags: [shaxsiy-tadqiqot, loyiha2, mvp]
created: 2026-09-29
updated: 2026-09-29
sektor: 22-ShaxsiyTadqiqot | Loyiha2
tur: natija
holat: faol
sarlavha: MVP — Ochiq-Eko-Ledger natijalari (S0–S7)
qisqacha: Ishlaydigan prototip: zona dvigateli (4 rang), murojaat moduli (7 holat, SLA), xarita, 125 test
manba: workspace/02-Loyiha2-Trash-Organizer/MVP-NATIJALAR.md
---

# LOYIHA 2 — MVP NATIJALARI (OCHIQ-EKO-LEDGER, S0–S7 bajarildi)

**Sana:** 2026-09-29 · **Holat:** ✅ ishlaydigan prototip (+ jonli xarita va API) · **Kod:** `02-Loyiha2-Trash-Organizer/MVP/`
**TZ:** `TZ/Loyiha2_Ochiq_Eko_Ledger_MVP_TZ.md` (v1.3).

---

## 1. Nima qurildi (TZ bosqichlari ↔ kod)

| TZ bosqichi | Deliverable | Bajarildi |
|---|---|---|
| **S0** Ma'lumot modeli, 3 indikator | korxona kartochkasi, 5 oqim | ✅ `db/schema_sqlite.sql` (+ `schema_postgis.sql`), `src/seed.py` |
| **S1** Backend va baza | API + migratsiya + seed + 15 test | ✅ `src/db.py`, `src/api/app.py` |
| **S2** Zona-rang algoritmi | engine + rules.md + 100 test | ✅ `src/zoning/engine.py`, `src/zoning/rules.md`, **125 test** (zona: 48) |
| **S3** Xarita va dashboard | `web/map.html`, mobil | ✅ `web/map.html` (o'z-o'zini ta'minlaydi; `/` da jonli) |
| **S4** LLM matn generatori | prompt_v1.md + verify.py + 100 test-matn | ✅ `src/llm/generate.py` (6 qavat), `src/llm/prompt_v1.md` |
| **S5** Telegram bot (aiogram) | 6 ssenariy | ⏳ **token kerak** — kod skeleti: `docs/BOT-INTEGRATSIYA.md` (API tayyor) |
| **S6** Murojaat moduli | 7 holat, SLA, 25+ test | ✅ `src/murojaat/service.py` |
| **S7** Test/demo/hujjat | CI, demo, hisobot | ✅ demo + hisobot + docs (CI badge — keyingi qadam) |

## 2. Zona dvigateli — demo natijasi (TZ §5, rule_version 1.0)

- **78 sintetik obyekt**, 6 tuman; har 4 rang demo'da ko'rinadi:

| Zona | Rang | Qamrov | Nima ko'rsatadi |
|---|---|---|---|
| Yunusobod | 🔴 qizil | 100% | ekstremal (R=6,2, O3) + tabiiy manba (O5) + mavsumiy (O4) |
| Chilonzor | 🔴 qizil | 100% | 2 ta sariq korxona → agregatsiya qoidasi |
| Mirzo Ulug'bek | 🟡 sariq | 100% | sariq korxona; ko'k+C<0,5 holati |
| Yakkasaroy | 🟢 yashil | 100% | norma ichida, ishonchli ma'lumot |
| Olmazor | 🔵 ko'k | **46%** | qamrov <70% → «ko'r zona», «toza» EMAS |
| Sergeli | 🟢 yashil | 100% | C−0,2 testi (stansiya uzoqda) |

- Klass taqsimoti: red 4 · yellow 4 · green 62 · blue 8 · «tekshiruv kutilmoqda» 1
- **Override qoidalari O1–O6 va severity 1–3** — barchasi test bilan qoplangan

## 3. Murojaat moduli (TZ §6) — demo

- 8 murojaat, **7 holatning barchasi** ko'rsatilgan; SLA hisoboti: median javob **4,0 kun**, muddatga rioya **100%**, muddati o'tgan 1 (jurnalist murojaati — 5 kunlik rejim)
- Dublikat: aynan o'xshash (≥0,85) → **birlashtirildi** (`supporters_count` oshadi, murojaat yo'qolmaydi); 0,55–0,85 → «o'xshash murojaatlar» guruhi
- Anti-spam: 1 telefon → ≤5/kun; **o'chirish taqiqlangan** (append-only audit) — test bilan tasdiqlangan
- KPI paneli ochiq: `/v1/kpi/sla`

## 4. LLM qatlami (TZ §8)

- Oltin qoida: **raqam registrdan, matn shablondan**; 6 qavat verifikatsiya (V1 faktlar ↔ registr, V2 raqamlar, V3 taqiqlangan so'zlar, V4 manba, V5 format, V6 namuna nazorati)
- Demo: 3 matn — barchasi **PASS**; uydirma raqam testi va "ko'k zona hech qachon «toza» deb atalmaydi" testi o'tadi
- API kaliti bo'lmasa ham ishlaydi (deterministik rejim); kalit bilan LLM rejimiga o'tadi (prompt `prompt_v1.md`)

## 5. Artefaktlar va ochiq endpointlar

| Fayl / endpoint | Nima |
|---|---|
| `/` (server) → `web/map.html` | jonli xarita (SVG, CDN'siz, mobil moslashuv) |
| `/v1/geo/zones.geojson` | zona qatlami (rang, qamrov, rule_version) |
| `/v1/export/measurements.csv` | ochiq ma'lumot eksporti (Aarhus 4-modda) |
| `/v1/appeals` · `/v1/appeals/{code}` · `/transitions` | murojaat sikli |
| `/v1/kpi/sla` | ochiq KPI |
| `reports/DEMO-NATIJA.md` | to'liq demo hisoboti |
| `tests/` (4 fayl) | **125 test — barchasi o'tadi** |

## 6. Cheklovlar va keyingi qadam

- Ma'lumotlar **sintetik** (real korxona nomlari yo'q — TZ §1 anti-da'vosi).
- S5 (real Telegram bot) — bot tokeni kutilmoqda; ulash yo'li hujjatlashtirilgan.
- Keyingi: CI badge (GitHub Actions), 3 demo video, `zoning/rules.md` versiyasini imzolash (S1 oldi sharti).

## 7. Ishga tushirish

```bash
cd 02-Loyiha2-Trash-Organizer/MVP
pip install -r requirements.txt
python3 scripts/run_demo.py     # DB seed + hisob + hisobot + xarita
pytest -q tests/                # 125 test
uvicorn src.api.app:app --port 8000   # / → xarita
```
