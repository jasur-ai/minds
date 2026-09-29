---
aliases: [Loyiha 1 MVP natijalari, E-GAZ-AUDIT MVP]
tags: [shaxsiy-tadqiqot, loyiha1, mvp]
created: 2026-09-29
updated: 2026-09-29
sektor: 22-ShaxsiyTadqiqot | Loyiha1
tur: natija
holat: faol
sarlavha: MVP — E-GAZ-AUDIT natijalari (S1–S7)
qisqacha: Ishlaydigan prototip: generator, 26 feature, IF/AE/OCSVM, F1 0,538 / FPR 0,086, 14 test
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
| S8–S10 | dashboard, Docker/CI, demo | ⏳ keyingi bosqich |

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
| `tests/test_pipeline.py` | **14 test — barchasi o'tadi** |

## 5. Cheklovlar (TZ §10 — yashirilmaydi)

- Sintetik A1–A8 real soxtalashtirishdan **soddaroq** — model ko'rsatkichlari yuqori baho bo'lishi mumkin.
- OCSVM qism-to'plamda o'qitilgan (nazorat guruhi roli, TZ §8.3).
- Model raqamni **o'zgartirmaydi**: faqat tekshiruv ustuvorligini belgilaydi (AC-5).
- Real ma'lumot bilan solishtirish uchun PQ-343 (01.03.2026 / 01.09.2026) integratsiyasi kutiladi.

## 6. Qanday qayta ishga tushirish

```bash
cd 01-Loyiha1-Carbon-Emission/MVP
pip install -r requirements.txt
python3 scripts/run_all.py      # ~35 s: S1→S6
pytest -q tests/                # 14 test
uvicorn src.api.app:app --port 8001   # S7: /v1/score, /v1/model/info
```
