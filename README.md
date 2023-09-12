# elyza-fschat-api
日本語LLM「elyza/ELYZA-japanese-Llama-2-7b-instruct」をFastChatのAPIとして動かすコンテナの例。  

## 実行方法
フォルダーに移動してdocker-composeを実行

```
git clone https://github.com/shimiz9/elyza-fschat-api.git
cd elyza-fschat-api
docker-compose up --build
```

## 接続方法
エンドポイント：http://ipアドレス:8000/v1  
APIキー：なし、または「EMPTY」などのダミー  
モデル名：  
- チャャット用：gpt-3.5-turbo
- 生成用：text-davinci-003
- エンベディング：text-embedding-ada-002

APIの利用方法はOpenAIに準ずる  
詳細は以下を参照  
https://github.com/lm-sys/FastChat/blob/main/docs/openai_api.md
