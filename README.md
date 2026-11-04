# Codex Skills Collection

可复用的个人 Codex Skills 集合，按任务领域分类管理。

## 目录
- `ecommerce/ecommerce-visual-director/`：统一电商视觉设计 Skill，包含参考图分析、高级艺术指导、淘宝无线端排版及成品质检。
- `development/`：预留开发类 Skills
- `design/`：预留通用设计类 Skills
- `automation/`：预留自动化类 Skills
- `productivity/`：预留效率类 Skills

Git 不跟踪空文件夹，未来添加对应 Skills 时目录会自动出现。

## Mac / Linux 安装

```bash
git clone https://github.com/leoLucks/skills.git
cd skills
bash install.sh
```

安装到用户级 `~/.agents/skills/ecommerce-visual-director`，同一设备的 Codex 项目都能发现。脚本会备份已有同名 Skill。
之后更新：`git pull && bash install.sh`。每台新设备都需执行一次安装；本仓库**不是** Codex 账号级自动同步功能。

## 使用

直接说“帮我设计这套淘宝无线端首页”或“检查这批电商图片”，可自动触发；也可显式调用 `$ecommerce-visual-director`。

## 安全与第三方依赖
- 不包含 API 密钥、产品私密素材或第三方付费生图凭证。
- 官方或第三方的生图 Skill 均为**可选**，不在安装脚本中静默下载执行。
- 安装和发布前检查仓库可见性；当前仓库的 Public/Private 以 GitHub Settings 为准。
