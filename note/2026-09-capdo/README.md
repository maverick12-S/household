# note「かずき｜未経験から独立 個人開発」— 最短収益化のための新規無料記事 CAPDo（2026-09-24）

対象：https://note.com/hitori_release
目的：新しい無料記事を1本作ることではなく、**無料記事から有料購入を最短で発生させ、note全体の月間売上を最大化する**こと。

## 成果物の索引（依頼文セクション27の①〜⑳＋㉘）

| # | 成果物 | ファイル |
|---|---|---|
| ① | CURRENT STATE | [01_current_state.md](01_current_state.md) |
| ②③ | COMPETITOR RESEARCH（197本）／WINNING PATTERNS／需要比較表 | [02_competitor_research.md](02_competitor_research.md) |
| ④⑤⑥⑦⑧ | CONTENT GAP／TOP 10／REVENUE PRIORITY SCORE／SELECTED TOPIC／SEARCH INTENT | [03_act_gap_topics_rps.md](03_act_gap_topics_rps.md) |
| ⑨⑫⑬⑭ | ARTICLE BLUEPRINT／INTERNAL LINKS／CTA／PAID PRODUCT／PLAN仮説 | [04_plan_blueprint_product.md](04_plan_blueprint_product.md) |
| ⑩⑪ | FINAL TITLE／FINAL ARTICLE（noteに貼る完成原稿。本文5,122字・スロット3・QA済み） | [05_final_article.md](05_final_article.md) |
| ⑩ | タイトル案15＋採点、原稿A/B審査ログ、QAログ | [06_titles_and_review.md](06_titles_and_review.md) |
| ⑬⑮⑯⑰⑱ | CTA 2版／IMAGE PLAN／IMAGE PROMPTS／TAGS／SNS | [07_cta_images_tags_sns.md](07_cta_images_tags_sns.md) |
| ⑲⑳ | KPI／NEXT CAPDo／STOP条件 | [08_kpi_next_capdo.md](08_kpi_next_capdo.md) |
| ㉘ | 最終判断 | [09_final_judgment.md](09_final_judgment.md) |

## 結論（1分で読む）

- **今回作る1本**：未経験（製造業・研修のみ）がSES現場面談で聞かれること・答え方・最初の現場の選び方（メインKW「SES面談 未経験」）。
- **売るもの**：P-2「未経験でSES現場面談を通った実物」（¥980仮説：スキルシート実物＋質問原文と答え＋逆質問＋NG集＋現場チェックリスト＋言い換え表）。既存P-1が面談を扱うならP-1を主CTAに。
- **なぜ**：需要 high × 購入意図 high の交点がここだけ。競合197本に「製造業→未経験→基本情報→SES→面談→Java/SQL→要件定義〜運用→2年目独立」の線を持つ発信者はいない。
- **公開前に本人がやること**：01の本人記入欄、原稿の【本人記入スロット】（最大4）、P-1主題の確認、【URL】置換、アイキャッチ生成。

## 品質保証

- 原稿は Opus 5.5 が2案制作 → 審査2名（読者視点・編集/法務視点）→ 統合 → QA4検査（事実・コピー・法務・SEO/書式）→ 修正 → 再検証2名 → Fable 5.1 最終編集。
- 事実検証の結果、本人の保有が未確認の「実物スキルシート・質問原文」を前提にしたCTAは安全版に差し替え（実物版は 07 に保管）。
- コピー検証の結果、競合定型（「最初の現場で決まる」「落ちる×技術以外」「【実録】」「約30分でほぼ決まった流れ」等）を除去。12文字以上の文字列一致なし。

## 制約（正直に）

- このセッションのネットワークポリシーで note.com・Qiita・Zenn・企業サイトが遮断されていたため、**自アカウントの現状は未検証**、競合の数値（スキ・販売数）は「本人がタイトルに明記した数字」か「第三者が日付付きで記録した数字」以外は【不明】。
- 本人の事実は依頼文の確定リストだけを使用。**面談で実際に聞かれた質問の原文は書いていない**（スロットで本人が埋める）。
- 次回セッションで環境の Network access に `note.com` を追加すれば、現状ファネルの自動再取得と計測が可能になる。

## モデル分担

- Fable 5.1：命令・タスク分解・分析・比較・判断・優先順位・CAPDoの意思決定・最終統合（本READMEと 01/03/04/08/09、02の統合部）
- Opus 5.5：Web検索・データ収集・記事分解・懐疑検証・原稿制作・タイトル案・審査・CTA・画像プロンプト・タグ・SNS・QA（ワークフロー5本、計85エージェント、WebSearch 約400回）
