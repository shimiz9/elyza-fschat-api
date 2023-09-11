#!/bin/sh

# コントローラー開始
nohup python3 -m fastchat.serve.controller --host 0.0.0.0 &

# ワーカー開始
# 既存のAPIからシームレスに使えるようにOpenAIのモデル名をフェイクで登録する
# メモリが足りない場合は　--load-8bit（ただし遅い）
nohup python3 -m fastchat.serve.model_worker --host 0.0.0.0 --model-path elyza/ELYZA-japanese-Llama-2-7b-instruct  --model-names "gpt-3.5-turbo,text-davinci-003,text-embedding-ada-002" &

# 高速版fastモデルの場合
# nohup python3 -m fastchat.serve.model_worker --host 0.0.0.0 --model-path elyza/ELYZA-japanese-Llama-2-7b-fast-instruct  --model-names "gpt-3.5-turbo,text-davinci-003,text-embedding-ada-002" &

# WebGUIを利用することも可能（ワーカーの「--model-name ""設定を削除して利用）
# nohup python3 -m fastchat.serve.gradio_web_server --host 0.0.0.0 --port 7860 &

# OpenAI互換のAPIサーバー開始
python3 -m fastchat.serve.openai_api_server --host 0.0.0.0 --port 8000


