# Shadowrocket-Rules

## 简介

本项目维护适用于 Shadowrocket 的规则集文件，可在 Shadowrocket 配置文件的 `[Rule]` 区域中通过 `RULE-SET` 引用。

规则主要用于自定义分流、直连、代理、拦截及常用服务分类。项目中的规则文件以 `.list` 形式提供，适合在 Shadowrocket 中作为远程规则集使用。

本项目规则为个人使用场景整理，包含人工补充内容，不保证完整性和绝对准确性，请根据自己的网络环境自行调整。

## 说明

本项目规则区分域名规则和 IP 规则。

域名规则文件使用普通名称：

```text
private.list
tiktok.list
google.list
apple.list
```

IP 规则文件会在名称后增加 `_ip`：

```text
private_ip.list
telegram_ip.list
google_ip.list
apple_ip.list
```

例如：

```text
private.list     # 私有网络域名规则
private_ip.list  # 私有网络 IP 规则
```

## 使用方式

在 Shadowrocket 配置文件的 `[Rule]` 区域中添加 `RULE-SET` 引用即可。

示例：

```ini
[Rule]
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/before.list,🚀 节点选择
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/private.list,🎯 全球直连
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/private_ip.list,🎯 全球直连
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/tiktok.list,☘️ TIKTOK
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/google.list,🌏 GOOGLE
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/cn.list,🎯 全球直连
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/cn_ip.list,🎯 全球直连
FINAL,🐟 漏网之鱼
```

请将上方策略组名称替换为你自己配置中的策略组名称，例如：

```text
🚀 节点选择
🎯 全球直连
☘️ TIKTOK
🌏 GOOGLE
🛑 拦截净化
```

## 在线地址

规则文件使用以下地址格式：

```text
https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/文件名.list
```

例如：

```text
https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/tiktok.list
https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/tiktok_ip.list
```

## 规则文件列表

| 文件名 | 类型 | 说明 |
| --- | --- | --- |
| `before.list` | 域名 | 前置规则、手动补充规则 |
| `private.list` | 域名 | 私有网络、局域网相关域名 |
| `private_ip.list` | IP | 私有网络、局域网相关 IP |
| `apple.list` | 域名 | Apple / iCloud 相关域名 |
| `apple_ip.list` | IP | Apple 相关 IP |
| `bilibili.list` | 域名 | Bilibili 相关域名 |
| `bilibili_ip.list` | IP | Bilibili 相关 IP |
| `cloudflare.list` | 域名 | Cloudflare 相关域名 |
| `cloudflare_ip.list` | IP | Cloudflare 相关 IP |
| `cn.list` | 域名 | 中国大陆常用域名 |
| `cn_ip.list` | IP | 中国大陆 IP |
| `facebook.list` | 域名 | Facebook / WhatsApp 相关域名 |
| `facebook_ip.list` | IP | Facebook 相关 IP |
| `github.list` | 域名 | GitHub 相关域名 |
| `google.list` | 域名 | Google / YouTube 相关域名 |
| `google_ip.list` | IP | Google 相关 IP |
| `line.list` | 域名 | LINE 相关域名 |
| `microsoft.list` | 域名 | Microsoft 相关域名 |
| `openai.list` | 域名 | OpenAI / AI 服务相关域名 |
| `proxy.list` | 域名 | 常见代理域名 |
| `telegram.list` | 域名 | Telegram 相关域名 |
| `telegram_ip.list` | IP | Telegram 相关 IP |
| `tiktok.list` | 域名 | TikTok 相关域名 |
| `tiktok_ip.list` | IP | TikTok 相关 IP |
| `twitter.list` | 域名 | Twitter / X 相关域名 |
| `twitter_ip.list` | IP | Twitter / X 相关 IP |
| `wps.list` | 域名 | WPS 相关域名 |
| `youtube.list` | 域名 | YouTube 相关域名 |
| `youtube_ip.list` | IP | YouTube 相关 IP |

## 示例配置

以下示例仅展示规则引用方式，策略组名称请根据自己的 Shadowrocket 配置调整。

```ini
[Rule]
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/before.list,🚀 节点选择

RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/private.list,🎯 全球直连
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/private_ip.list,🎯 全球直连

RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/apple.list,🍎 ICLOUD
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/apple_ip.list,🍎 ICLOUD

RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/telegram.list,📲 电报
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/telegram_ip.list,📲 电报

RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/tiktok.list,☘️ TIKTOK
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/tiktok_ip.list,☘️ TIKTOK

RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/google.list,🌏 GOOGLE
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/google_ip.list,🌏 GOOGLE
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/youtube.list,🌏 GOOGLE
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/youtube_ip.list,🌏 GOOGLE

RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/cn.list,🎯 全球直连
RULE-SET,https://raw.githubusercontent.com/Jacky-Yeeo/Shadowrocket-Rules/release/cn_ip.list,🎯 全球直连

FINAL,🐟 漏网之鱼
```

## 分支说明

| 分支 | 说明 |
| --- | --- |
| `main` | 项目说明文档 |
| `release` | Shadowrocket 规则文件 |

规则文件统一从 `release` 分支引用。

## 注意事项

1. 如果 `raw.githubusercontent.com` 无法访问，请先确保当前网络环境可以连接 GitHub Raw 地址。
2. Shadowrocket 导入配置后，建议手动更新一次远程规则。
3. 规则匹配顺序由上到下执行，越靠前优先级越高。
4. IP 规则建议放在对应域名规则附近，便于维护。
5. 本项目规则为个人维护，不保证适用于所有地区、所有节点和所有客户端。

## 致谢

本项目规则整理过程中参考了以下项目的组织方式和规则分类思路：

- [MetaCubeX/meta-rules-dat](https://github.com/MetaCubeX/meta-rules-dat)
- [Loyalsoldier/clash-rules](https://github.com/Loyalsoldier/clash-rules)

## License

本项目仅供个人学习和自用。
