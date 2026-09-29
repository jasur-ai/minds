---
aliases: [Loyiha 1 MVP natijalari, E-GAZ-AUDIT MVP]
tags: [shaxsiy-tadqiqot, loyiha1, mvp]
created: 2026-09-29
updated: 2026-09-29
sektor: 22-ShaxsiyTadqiqot | Loyiha1
tur: natija
holat: faol
sarlavha: MVP — E-GAZ-AUDIT natijalari (S1–S7)
qisqacha: To'liq prototip (S1–S10): generator, 26 feature, IF F1 0,538 / FPR 0,086; dashboard, Docker/CI, demo; 25 test
manba: workspace/01-Loyiha1-Carbon-Emission/MVP-NATIJALAR.md
---

# LOYIHA 1 — MVP NATIJALARI (E-GAZ-AUDIT, S1–S7 bajarildi)

**Sana:** 2026-09-29 · **Holat:** ✅ ishlaydigan prototip · **Kod:** `01-Loyiha1-Carbon-Emission/MVP/`
**TZ:** `TZ/Loyiha1_AI_anomaliya_TZ.md` (v1.3) — shu bosqichlarning spetsifikatsiyasi.

---

## 1. Nima qurildi (TZ bosqichlari ↔ kod)

| TZ bosqichi | Deliverable | Bajarildi |
|---|---|---|
| **S0** Scope, spec, metrika | metrikalar muzlatildi (F1/P/R/FPR/recall@k) | ✅ `scripts/run_all.py` (ALERT_RATE=0,12 — S0 qarori) |
| **S1** UZ-proksi generator | A1–A8 injection, 5 sektor, 2021Q1–2026Q2 | ✅ `src/generator.py` |
| **S2** EDA + baseline | statistik baseline | ✅ hisobotda; feature taqsimoti figuralarda |
| **S3** Feature engineering | 6 guruh, 26 feature, lug'at | ✅ `src/features.py` + `docs/feature_dictionary.md` |
| **S4** Model v1 — IF | Isolation Forest + tuning | ✅ n=600, max_samples=0,5 (tajriba bilan tanlandi) |
| **S5** Model v2 — AE (+OCSVM) | uch tomonlama qiyos | ✅ `src/models.py` |
| **S6** Baholash harness | PR/ROC, FPR, tur recall, biznes | ✅ `src/evaluate.py` + `reports/eval_report.md` |
| **S7** Serving | FastAPI `/v1/score` | ✅ `src/api/app.py` (sync endpointlar — threadpool) |
| **S8** Dashboard | KPI, alert feed (top-20 + izoh), monitoring | ✅ `web/dashboard.html` (139 KB, CDN'siz) |
| **S9** Test/Docker/CI | 20+ test, konteyner, CI | ✅ **25 test** · `Dockerfile` · `docker-compose.yml` · `.github/workflows/ci.yml` |
| **S10** Demo/himoya | 8–10 slayd + jonli skript | ✅ `presentation/DEMO.md` (hakam savollari bilan) |

## 2. Sintetik oqim (S1)

- **50 600 yozuv** = 2 300 korxona × 22 kvartal; injection 15% (ssenariy: clean/low/medium/high sozlanadi)
- Sektorlar: Energy 60% · Agriculture 18% · IPPU 15% · Waste 5% · Other 2%
- A1–A8 turlari kod bilan izlanadi (`anomaly_type` ustuni — ground truth)

## 3. Model natijalari (S6 hisobot, test = 2025Q3–2026Q2)

| Model | Precision | Recall | F1 | ROC-AUC | FPR |
|---|---|---|---|---|---|
| **Isolation Forest (v1)** | **0,590** | **0,495** | **0,538** | **0,789** | **0,086** ✅ |
| Autoencoder (v2) | 0,457 | 0,347 | 0,394 | 0,674 | 0,103 |
| One-Class SVM (nazorat) | 0,523 | 0,529 | 0,526 | 0,736 | 0,120 |

- **AC-2 (FPR ≤ 0,10) bajarildi:** IF FPR = 0,086
- **Ish nuqtasi sweep** (threshold faqat train kvantilidan — p-hacking yo'q): 0,06→F1 0,303; **0,12→0,538 (tanlangan)**; 0,15→0,545/FPR 0,122
- **Biznes qiyos (TZ §9.4):** 200 tekshiruvda random aniqlik 0,20 → model bilan **0,67 (3,4×)**
- **Tur bo'yicha recall:** A4 **0,993** · A6 0,642 · A1 0,533 · A3 0,420 · A2 0,412 · A5 0,158 · A7 0,079 · A8 0,065
  — A4 (birlik xatosi) deyarli to'liq topiladi; A5/A7/A8 nozik turlar uchun feature kengaytirish keyingi ish.
- **Inferens:** 0,05 ms / 1 000 yozuv (TZ §8.2: IF OCSVM'dan ~36× tez — tasdiqlandi)

## 4. Artefaktlar

| Fayl | Nima |
|---|---|
| `data/uz_proxy_v1.csv.gz` (3,6 MB) | S1 dataset (50 600 yozuv) |
| `data/features_v1.csv.gz` (13 MB) | S3 feature'lar (26 ta) |
| `models/if_v1.joblib` (30 MB, siqilgan) | model + scaler |
| `models/metadata.json` | audit izi: params, feature ro'yxati, threshold, trained_at |
| `reports/eval_report.md` | to'liq baholash hisoboti (sweep jadvali bilan) |
| `reports/figures/*.png` | PR/ROC, skor taqsimoti, tur bo'yicha recall |
| `tests/` (2 fayl) | **25 test — barchasi o'tadi** |
| `web/dashboard.html` | S8 monitoring paneli: KPI kartalar, alert feed (top-20 + top-3 izoh), figuralar, audit izi |
| `presentation/DEMO.md` | S10: 10 slayd, jonli demo buyruqlari, kutiladigan savollar javoblari bilan |

## 5. Cheklovlar (TZ §10 — yashirilmaydi)

- Sintetik A1–A8 real soxtalashtirishdan **soddaroq** — model ko'rsatkichlari yuqori baho bo'lishi mumkin.
- OCSVM qism-to'plamda o'qitilgan (nazorat guruhi roli, TZ §8.3).
- Model raqamni **o'zgartirmaydi**: faqat tekshiruv ustuvorligini belgilaydi (AC-5).
- Real ma'lumot bilan solishtirish uchun PQ-343 (01.03.2026 / 01.09.2026) integratsiyasi kutiladi.

## 6. S8–S10 natijalari (professional paket)

### 6.1. S8 — monitoring paneli
`make dashboard` → `web/dashboard.html` (statik, tashqi CDN yo'q — ichki audit uchun ham ishlaydi):
- **KPI kartalar:** F1 0,538 · Precision 0,590 · Recall 0,495 · **FPR 0,086 (AC-2 ✔)** · ROC-AUC 0,789 · alertlar soni
- **Uch nomzod jadvali** (TZ §8.2 rollari bilan) va **A1–A8 tur recall** chiplari
- **Alert feed (top-20):** har bir signal uchun eng katta og'ishli 3 feature (z-qiymat) va «biz bilgan tur» (faqat sinov uchun)
- **Audit izi:** model params, threshold (train kvantili), feature ro'yxati, o'qitilgan sana

### 6.2. S9 — Docker, CI, hujjatlar
- `Dockerfile` + `docker-compose.yml` (1 server; healthcheck `/v1/health`)
- `.github/workflows/ci.yml`: 25 test + quvur smoke (MVP papkasi repoga chiqarilganda darhol ishlaydi)
- `docs/architecture.md` (qatlamlar + ADR), `docs/limitations.md` (7 band halol cheklov)
- **25 test:** chegaralar (±0,01), dublikat/SLA zanjiri, uydirma-raqam testi, dashboard izoh qoplami, determinizm

### 6.3. S10 — demo va himoya
`presentation/DEMO.md`: 10 slayd (har biri 30–90 s), jonli buyruqlar, kutiladigan hakam savollariga
javoblar (sintetik oqim, FPR chegarasi, p-hacking, OCSVM tanlovi).

### 6.4. Huquqiy bog'lanish (har bir qatlam qaysi hujjatga xizmat qiladi)

| MVP qatlami | Prezident hujjati | Nima beradi |
|---|---|---|
| Skoring signali (o'lchov → bayroq) | **PF-81** (31.05.2023), **PF-46** (25.03.2026, I/II toifa monitoring), **PQ-343** (18.11.2025 — 01.03.2026 / 01.09.2026) | tekshiruv ustuvorligi aynan davlat joriy etayotgan monitoring bilan bir oqimda |
| Hisobot madaniyati | **GHG qonuni** (07.07.2025; kuchda 09.01.2026) + **NDC 3.0** | korxona-daraja hisoboti — model shu raqamlar sifati ustida ishlaydi |
| Jazo/rag'bat muvozanati (foyda modeli) | **O'RQ-1143** (5×), **VM-85**, **PQ-343** (kechiktirishga 5×) | signal→tekshiruv zanjiri iqtisodiy oqibatlarga to'g'ri bog'lanadi |
| AI qatlami | **PQ-358** (14.10.2024), **PF-189** (22.10.2025), **PQ-320** (30.10.2025), **VM-425** (10.07.2025) | loyiha milliy AI kun tartibida — grant/imtiyozli kredit yo'li bor |
| Serving va ochiqlik | **PF-149** (26.09.2024), **PF-6079** (05.10.2020, «Raqamli O'zbekiston — 2030») | API/dashboard ochiq standartlarda — handover PQ-343 platformasiga |
| Nazorat kuchaytirish | **PF-217** (18.11.2025; sanksiyalar 01.04.2026) | model yuklamani tartiblaydi — nazorat tizimining yordamchisi |

## 7. Qanday qayta ishga tushirish

```bash
cd 01-Loyiha1-Carbon-Emission/MVP
pip install -r requirements.txt
python3 scripts/run_all.py      # ~35 s: S1→S6
pytest -q tests/                # 25 test
uvicorn src.api.app:app --port 8001   # S7: /v1/score, /v1/model/info
```
