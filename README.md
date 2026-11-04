# Personal Codex Skills

按类别组织的 Codex Skills 仓库。

## 目录
- `ecommerce/ecommerce-visual-director/`：参考分析、高级视觉设计、淘宝无线端排版和视觉质检四合一
- `development/`、`design/`、`automation/`、`productivity/`：预留类别（添加 Skill 后才会出现在 Git 中）

## 一条命令：自动安装与更新

需先安装 **Git**。首次和后续更新执行**同一个命令**，会自动 clone 或 fast-forward pull 并安装全部分类下的 Skills。

### Windows PowerShell

```powershell
irm https://raw.githubusercontent.com/leoLucks/skills/main/setup.ps1 | iex
```

### macOS / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/leoLucks/skills/main/setup.sh | bash
```

**安全提示：** 上述一行命令会直接执行 GitHub 上的脚本，仅在信任并已检查仓库内容时使用；更审慎的做法是先下载并检查 `setup.ps1` / `setup.sh` 再运行。Git 更新使用 `--ff-only`，本地源码目录有冲突时停止而非强制覆盖。

## 无远程脚本执行的安装方式

```bash
git clone https://github.com/leoLucks/skills.git
cd skills
bash install.sh
```

Windows PowerShell：

```powershell
git clone https://github.com/leoLucks/skills.git
cd skills
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\install.ps1
```

以上本地安装脚本会自动发现 `<分类>/<skill>/SKILL.md` 并安装；也可在以后 `git pull` 后再次运行。

## 安装范围

- Skill 目标目录：macOS/Linux `~/.agents/skills/<skill-name>/`，Windows `$HOME\.agents\skills\<skill-name>\`。
- 自动化命令的源码缓存：`~/.codex-skills-source` 或 Windows `$HOME\.codex-skills-source`。
- 覆盖旧版前会备份现有目录。旧版本不会被自动删除。
- 跨设备：每台设备首次需要运行一次安装命令，之后再次运行可手动更新。**并非**账号级云自动部署或后台定时同步。

## 使用

直接说“设计淘宝无线端首页”或“检查商品图片”；也可明确调用 `$ecommerce-visual-director`。安装后如未发现 Skill，重启 Codex。

## 安全说明

不包含 API Key 或付费凭证；可选第三方图像 Skill 不自动下载/执行。仓库 Public/Private 状态以 GitHub 为准。若将仓库设为 Private，直接匿名下载 raw 脚本的单行命令可能失效，此时请使用已鉴权的 Git clone。
