# Obscurify.ai provider for goose

A [goose](https://github.com/block/goose) custom provider for [Obscurify.ai](https://obscurify.ai/?utm_source=goose), a privacy-focused, OpenAI-compatible API to 200+ models (DeepSeek, GLM, Kimi, Qwen, GPT, Claude, Gemini and more). Text requests only use zero-data-retention routes, prompts and responses aren't stored on Obscurify.ai's servers, and accounts are a random account number with no email.

It's one declarative file, [`obscurify.json`](obscurify.json): goose's `openai` engine pointed at `https://obscurify.ai/v1/chat/completions`, with streaming and the live model list from `/v1/models`.

## Get an API key

1. Create an account at [obscurify.ai](https://obscurify.ai/?utm_source=goose). You get a random account number: no email, no password.
2. Add a balance. The API works on every plan with a positive balance.
3. On [obscurify.ai/account](https://obscurify.ai/account), click **Show API Key** and copy the `sk-obs1_...` key.

## Install

macOS and Linux:

```sh
curl -fsSL https://raw.githubusercontent.com/Obscurify-ai/goose-obscurify/main/install.sh | sh
```

Or by hand: copy `obscurify.json` into goose's custom providers folder.

| OS | Folder |
|---|---|
| macOS / Linux | `~/.config/goose/custom_providers/` |
| Windows | `%APPDATA%\Block\goose\config\custom_providers\` |

## Use it

CLI:

```sh
export OBSCURIFY_API_KEY=sk-obs1_...
goose session --provider obscurify --model deepseek/deepseek-v4-flash
```

To make it the default, run `goose configure`, choose **Configure Providers**, pick **Obscurify.ai** and paste your key. goose Desktop lists it under the providers too (restart goose after adding the file).

Any model ID from `https://obscurify.ai/v1/models` works, such as `z-ai/glm-5.3`, `moonshotai/kimi-k2-0905`, `qwen/qwen3-coder` or `meta-llama/llama-3.3-70b-instruct`. Frontier models need the Casual or Pro plan, and uncensored models need Pro. Prices per model: [obscurify.ai/model_cards](https://obscurify.ai/model_cards?utm_source=goose).

Tested with goose CLI 1.56.0 on Linux: `goose run` with `deepseek/deepseek-v4-flash` streamed a reply and wrote a file with the developer `write` tool.

## License

MIT
