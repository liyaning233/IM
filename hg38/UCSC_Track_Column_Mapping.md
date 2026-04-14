# UCSC Track 列映射表

> 4 个源文件 → 4 个 Session，每个文件的列按可视化方式分类。

---

## 1. Channel 1 — PC3.channel1_tier1.xlsx（78 列，1281 行）

### ✅ bigBed 标签 Track（10 列）

| # | 列名 | Track 名 | 示例值 |
|---|------|---------|--------|
| 6 | v_class | V-layer | V-SNV / V-INDEL-S / V-INDEL-L |
| 7 | o_class | O-layer | O-LOSS / O-GAIN / O-DESTAB / O-STAB |
| 8 | m_class | M-layer | M-CORE-BREAK / M-CORE-CREATE / M-TRACT-SHORTEN |
| 9 | e_class | E-layer | E-HIGH / E-MEDIUM / E-LOW / E-INSUFFICIENT |
| 12 | display_outcome | Claim | iM loss / iM gain / iM stabilisation |
| 10 | om_consistent | O-M 一致性 | Consistent / Inconsistent |
| 26 | clinvar_clnsig | ClinVar | Pathogenic / VUS / Benign / `-` |
| 64 | cosmic_db_id | COSMIC | COSV64821957 / `-` |
| 77 | ccre_types | cCRE | PLS / pELS / CTCF-bound / `-` |
| 74 | m_subtype | M 亚型 | Core-Break-Complete / Core-Break-Severe |

### ✅ bigWig 柱状图 Track（9 列）

| # | 列名 | Track 名 | 值域 |
|---|------|---------|------|
| 15 | delta_p | ΔP | -1.0 ~ +1.0（正负双向） |
| 18 | channel1_composite | Composite | 0 ~ 1 |
| 20 | channel1_d1 | d1 质量 | 0 ~ 1 |
| 21 | channel1_d2 | d2 功能 | 0 ~ 1 |
| 22 | channel1_d3 | d3 机制 | 0 ~ 1 |
| 23 | channel1_d4 | d4 上下文 | 0 ~ 1 |
| 24 | channel1_d5 | d5 证据 | 0 ~ 1 |
| 25 | cadd_phred | CADD | 0 ~ 40+ |
| 76 | evidence_sum | 证据总分 | 0 ~ 10+ |

### ℹ️ Extra Fields — 点击条目查看（13 列）

| # | 列名 | 原因 |
|---|------|------|
| 3 | ref | 变异碱基 |
| 4 | alt | 变异碱基 |
| 16 | best_ref_score | Ref iM 概率 |
| 17 | best_alt_score | Alt iM 概率 |
| 27 | clinvar_clndn | ClinVar 疾病名（文本长） |
| 32 | best_ref_im_seq | Ref iM 序列（字符串长） |
| 33 | best_alt_im_seq | Alt iM 序列（字符串长） |
| 39 | mechanistic_note | 机制说明（长文本） |
| 50 | vep_consequence | VEP 注释 |
| 54 | vep_biotype | promoter / protein_coding |
| 65 | cosmic_db_gene | COSMIC 基因名 |
| 66 | cosmic_db_mut_desc | COSMIC 突变描述 |
| 67 | cosmic_db_count | COSMIC 计数 |

### ❌ 不可用（46 列）

| # | 列名 | 原因 |
|---|------|------|
| 1 | chrom | 坐标 |
| 2 | pos | 坐标 |
| 5 | event_type | 全是 not_applicable |
| 11 | o_claim_scope | 全是 sequence_resolved_outcome |
| 13 | seq_reconstruction_status | 全是 resolved |
| 14 | effect_scope | 全是 sequence |
| 19 | channel1_tier | 全是 1 |
| 28 | ccre_overlap | 被 ccre_types 取代 |
| 29 | gt | 内部元数据 |
| 30 | is_phased | 布尔 |
| 31 | line | 内部标识 |
| 34 | effect_type | 被 o_class 取代 |
| 35 | mechanism | 被 m_class 取代 |
| 36 | mechanism_subtype | 被 m_subtype 取代 |
| 37 | effect_direction | 被 o_class 取代 |
| 38 | effect_strength_bin | 被 e_class 取代 |
| 40 | primary_class | 被 m_class 取代 |
| 41 | secondary_class | 被 m_subtype 取代 |
| 42 | d1_variant_confidence | 与 channel1_d1 重复 |
| 43 | d2_im_effect_score | 与 channel1_d2 重复 |
| 44 | d3_mechanism_clarity | 与 channel1_d3 重复 |
| 45 | d4_biological_context | 与 channel1_d4 重复 |
| 46 | d5_external_support | 与 channel1_d5 重复 |
| 47 | composite_score | 与 channel1_composite 重复 |
| 48 | tier | 与 channel1_tier 重复 |
| 49 | clair3_supported | 布尔 |
| 51 | vep_all_consequences | 与 vep_consequence 重复 |
| 52 | vep_impact | 信息量低 |
| 53 | vep_gene | 多数为 None |
| 55 | vep_distance | 多数为 `-` |
| 56 | vep_csq_score | 中间计算值 |
| 57 | vep_impact_score | 中间计算值 |
| 58 | vep_combined_score | 中间计算值 |
| 59 | gnomad_af | 多数为 None |
| 60 | gnomad_max_af | 稀疏 |
| 61 | cosmic_id | 被 cosmic_db_id 取代 |
| 62 | clin_sig | 被 clinvar_clnsig 取代 |
| 63 | germline_flag | 几乎全是 unknown |
| 68 | cosmic_match_type | 细节过细 |
| 69 | within_SV | 布尔 |
| 70 | within_CNV | 布尔 |
| 71 | Phasing_Ambiguous | 布尔 |
| 72 | cadd_raw | 被 cadd_phred 取代 |
| 73 | cadd_score | 被 cadd_phred 取代 |
| 75 | m_score | 几乎全是 1.0 |
| 78 | clinvar_clnrevstat | 全是 `-` |

---

## 2. Channel 2 — PC3.channel2_annotated_tier1.xlsx（65 列，240 行）

### ✅ bigBed 标签 Track（12 列）

| # | 列名 | Track 名 | 示例值 |
|---|------|---------|--------|
| 1 | source | Source | SV / CNV |
| 6 | sv_type | SV Type | DEL / DUP / INV / INS / BND |
| 8 | event_type | Event | Abolished / Disrupted / Dosage_gain |
| 9 | v_class | V-layer | V-SV-DEL / V-CNV-AMP |
| 10 | o_class | O-layer | O-LOSS / O-DOSAGE-GAIN |
| 11 | m_class | M-layer | M-CORE-BREAK / M-DOSAGE-MOD |
| 12 | e_class | E-layer | E-HIGH / E-MEDIUM / E-LOW |
| 15 | display_outcome | Claim | iM loss |
| 13 | om_consistent | O-M 一致性 | Consistent / Inconsistent |
| 56 | clinvar_sig | ClinVar | Pathogenic / `-` |
| 60 | clinvar_disease | ClinVar Disease | 8p23.1 del syndrome / `-` |
| 64 | annotsv_acmg | AnnotSV ACMG | ACMG 分级 / `-` |

### ✅ bigWig 柱状图 Track（10 列）

| # | 列名 | Track 名 | 值域 |
|---|------|---------|------|
| 18 | delta_p | ΔP | -1.0 ~ +1.0 |
| 21 | channel2_composite | Composite | 0 ~ 1 |
| 23 | channel2_d1 | d1 质量 | 0 ~ 1 |
| 24 | channel2_d2 | d2 功能 | 0 ~ 1 |
| 25 | channel2_d3 | d3 机制 | 0 ~ 1 |
| 26 | channel2_d4 | d4 上下文 | 0 ~ 1 |
| 27 | channel2_d5 | d5 证据 | 0 ~ 1 |
| 49 | n_ims_affected | 受影响 iM 数 | 0 ~ 342 |
| 36 | overlap_ratio | 重叠比例 | 0 ~ 1 |
| 65 | evidence_sum | 证据总分 | 0 ~ 10+ |

### ℹ️ Extra Fields — 点击条目查看（12 列）

| # | 列名 | 原因 |
|---|------|------|
| 3 | var_id | 变异 ID |
| 7 | svlen | SV 长度 |
| 19 | p_ref | Ref iM 概率 |
| 20 | p_alt | Alt iM 概率 |
| 34 | im_id | iM 标识符（长字符串） |
| 37 | ref_im_count | Ref iM 数量 |
| 38 | alt_im_count | Alt iM 数量 |
| 39 | best_ref_im_seq | Ref iM 序列 |
| 40 | best_alt_im_seq | Alt iM 序列 |
| 50 | mechanistic_note | 机制说明（长文本） |
| 51 | gnomad_sv_id | gnomAD SV ID |
| 61 | clinvar_revstat | ClinVar 审核状态 |

### ❌ 不可用（31 列）

| # | 列名 | 原因 |
|---|------|------|
| 2 | chrom | 坐标 |
| 4-5 | sv_start / sv_end | 坐标 |
| 14 | o_claim_scope | 无区分度 |
| 16 | seq_reconstruction_status | 无区分度 |
| 17 | effect_scope | 无区分度 |
| 22 | channel2_tier | 全是 1 |
| 28 | gnomad_sv_af | 稀疏 |
| 29-30 | clingen_hi / clingen_ts | 多数为 `-` |
| 31 | ccre_overlap | 数值，被 ccre_types 互补 |
| 32-33 | annotsv_gene / annotsv_ranking | 多数为 `-` |
| 35 | im_score | 多数为 0 |
| 41-42 | cnv_start / cnv_end | 坐标 |
| 43 | sv_qual | 元数据 |
| 44 | cnv_qual | 多数为 `-` |
| 45 | sv_support | 元数据 |
| 46 | cnvlen | 元数据 |
| 47 | cn | 稀疏 |
| 48 | cnv_type | SV/CNV 互斥 |
| 52-55 | effect_type ~ effect_strength_bin | 被 o/m_class 取代 |
| 57-59 | primary_class ~ secondary_class / clinvar_match_conf | 旧字段或稀疏 |
| 62-63 | clinvar_revstat / clinvar_match_conf | 稀疏 |

---

## 3. Joint Tier1* — PC3.joint_tier1_star.xlsx（142 列，72 行）

### ✅ bigBed 标签 Track（15 列）

| # | 列名 | Track 名 | 示例值 |
|---|------|---------|--------|
| 3 | joint_tier | Joint Tier | 1* |
| 5 | source | Source | SmallVariant / SV / CNV |
| 18 | v_class | V-layer | V-SNV / V-SV-DEL |
| 19 | o_class | O-layer | O-LOSS / O-DESTAB |
| 20 | m_class | M-layer | M-CORE-BREAK |
| 21 | e_class | E-layer | E-HIGH / E-MEDIUM |
| 24 | display_outcome | Claim | iM loss / iM destabilisation |
| 22 | om_consistent | O-M 一致性 | Consistent / Inconsistent |
| 25 | mechanism_freeze_status | Mech Freeze | core_locked / unlocked |
| 26 | wetlab_mechanism_eligible | Wetlab | yes / no |
| 27 | phasing_reliability_tier | Phasing | A_reliable / B_limited |
| 53 | clinvar_clnsig | ClinVar | Benign / Pathogenic / `-` |
| 96 | cosmic_db_id | COSMIC | COSV56672434 / `-` |
| 109 | ccre_types | cCRE | PLS / pELS / `-` |
| 82 | vep_consequence | VEP | 3_prime_UTR_variant |

### ✅ bigWig 柱状图 Track（14 列）

| # | 列名 | Track 名 | 值域 |
|---|------|---------|------|
| 6 | calibrated_score | Calibrated Score | 0 ~ 1 |
| 4 | joint_rank | Rank | 1 ~ N |
| 7 | pareto_tier | Pareto Tier | 1 ~ N |
| 31 | delta_p | ΔP | -1.0 ~ +1.0 |
| 38 | channel1_composite | Ch1 Composite | 0 ~ 1 |
| 40-44 | channel1_d1 ~ d5 | Ch1 d1~d5 | 0 ~ 1 |
| 45 | channel2_composite | Ch2 Composite | 0 ~ 1 |
| 108 | evidence_sum | 证据总分 | 0 ~ 10+ |
| 111 | z_score | Z Score | 0 ~ 4 |
| 140-142 | view_a / view_b / view_c | Pareto 三视角 | 0 ~ 1 |

### ℹ️ Extra Fields — 点击条目查看（15 列）

| # | 列名 | 原因 |
|---|------|------|
| 1 | display_locus | 位置展示 |
| 2 | display_variant | 变异展示 |
| 13-14 | ref / alt | 变异碱基 |
| 28 | phasing_limitation_reason | Phasing 限制原因 |
| 32-33 | best_ref_score / best_alt_score | iM 概率 |
| 54 | clinvar_clndn | ClinVar 疾病名 |
| 64-65 | best_ref/alt_im_seq | iM 序列 |
| 71 | mechanistic_note | 机制说明 |
| 85 | vep_gene | VEP 基因名 |
| 86 | vep_biotype | VEP 生物类型 |
| 97-100 | cosmic_db_gene / mut_desc / count / match_type | COSMIC 详情 |

### ❌ 不可用（98 列）

主要包括：
- 坐标列（chrom, pos, sv_start, sv_end, cnv_start, cnv_end）
- 无区分度列（o_claim_scope, seq_reconstruction_status, effect_scope 全一致）
- Channel 1/2 互斥空列（SmallVariant 行的 ch2 列全 `-`，SV/CNV 行的 ch1 列全 `-`）
- 旧字段（effect_type, mechanism, primary_class 等被 v/o/m_class 取代）
- 重复字段（d1~d5_xxx 与 channel1_d1~d5 重复，composite_score 与 channel1_composite 重复）
- 稀疏列（gnomad_af, clingen_hi/ts, annotsv_gene 等多数为 `-`）
- 元数据（gt, is_phased, line, clair3_supported, germline_flag 等）
- 内部计算（cadd_raw, cadd_score, vep_csq/impact/combined_score 等）

---

## 4. Joint Tier1 — PC3.joint_tier1.xlsx（142 列，287 行）

与 Joint Tier1* 结构完全相同，仅 `joint_tier` 值为 `1`（非 `1*`），行数更多。
Track 分类同上。

---

## 汇总

| 文件 | 总列 | bigBed | bigWig | Extra | 不可用 |
|------|:----:|:------:|:------:|:-----:|:-----:|
| Channel 1 | 78 | 10 | 9 | 13 | 46 |
| Channel 2 | 65 | 12 | 10 | 12 | 31 |
| Joint T1* | 142 | 15 | 14 | 15 | 98 |
| Joint T1 | 142 | 15 | 14 | 15 | 98 |
