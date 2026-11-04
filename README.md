# Codex Skills Collection

可复用的个人 Codex Skills 集合，按任务领域分类管理。

## 目录
- `ecommerce/ecommerce-visual-director/`：统一电商视觉设计 Skill，包含参考图分析、高级艺术指导、淘宝无线端排版及成品质检。
- `development/`：预留开发类 Skills
- `design/`：预留通用设计类 Skills
- `automation/`：预留自动化类 Skills
- `productivity/`：预留效率类 Skills

Git 不跟踪空文件夹，未来添加对应 Skills 时目录会自动出现。

## macOS / Linux 安装

在终端执行（需安装 Git）：

```bash
git clone https://github.com/leoLucks/skills.git
cd skills
bash install.sh
```

安装到 `~/.agents/skills/ecommerce-visual-director/`。

## Windows 安装（PowerShell）

先安装 Git for Windows，打开 **PowerShell**（无需管理员权限）：

```powershell
git clone https://github.com/leoLucks/skills.git
Set-Location skills
powershell -NoProfile -ExecutionPolicy Bypass -File .\install.ps1
```

安装到 `$HOME\.agents\skills\ecommerce-visual-director\`，通常对应 `C:\Users\<用户名>\.agents\skills\ecommerce-visual-director\`。

`-ExecutionPolicy Bypass` 仅作用于上述新启动的 PowerShell 进程，不修改系统或用户长期策略；请在执行前检查仓库脚本。

## 更新与跨设备

在已克隆的仓库目录下：

| 系统 | 更新命令 |
| --- | --- |
| macOS / Linux | `git pull && bash install.sh` |
| Windows (PowerShell) | `git pull; if ($LASTEXITCODE -ne 0) { throw 'git pull failed' }; powershell -NoProfile -ExecutionPolicy Bypass -File .\install.ps1` |

脚本会先备份已有同名 Skill，再复制最新文件。安装后可重启 Codex。

这是**设备用户级**安装（所有该用户的 Codex 项目可用），并非 GitHub 或 Codex 账号自动分发；每台设备均需首次克隆/安装，并在需要时手动更新。

## 使用

直接说“帮我设计这套淘宝无线端首页”或“检查这批电商图片”，可自动触发；也可显式调用 `$ecommerce-visual-director`。

## 安全与第三方依赖
- 不包含 API 密钥、产品私密素材或第三方付费生图凭证。
- 官方或第三方的生图 Skill 均为**可选**，不在安装脚本中静默下载执行。
- 安装和发布前检查仓库可见性；Public/Private 以 GitHub Settings 为准。
