# 电商视觉总监 - 单一 Codex Skill

触发示例：“帮我做淘宝无线端首页”、“参考这张图把商品图做得更高级”、“给这款 RFID 标签做详情页”、“检查这批主图”；也可明确调用 `$ecommerce-visual-director`。

本 Skill 将参考分析、视觉指导、淘宝手机端排版、成品质检整合为一个入口，按需加载 `references/`，不需要同时提及四个 Skill。

## 用户级安装

从仓库根目录：

- macOS / Linux：`bash install.sh`
- Windows PowerShell：`powershell -NoProfile -ExecutionPolicy Bypass -File .\install.ps1`

两种方式均安装到当前用户主目录下的 `.agents/skills/ecommerce-visual-director/`，脚本会备份旧版；Windows 通常为 `C:\Users\<用户名>\.agents\skills\ecommerce-visual-director\`。

## 多设备与升级

每台设备使用 `git clone https://github.com/leoLucks/skills.git` 获取仓库，执行对应安装脚本。升级时在仓库执行 `git pull`，再运行安装脚本。它不会自动随 Codex 账号云同步；需要每设备部署和更新。

## 可选开源协作
- https://github.com/Leonxlnx/imagegen-skills 的 `brandkit` / `imagegen-frontend-web`
- https://github.com/xianyu110/ecommerce-image-skills 的 `selling-point-infographic` / `taobao-detail-long-image` / `lifestyle-scene`

第三方代码不随本仓库安装、运行或自动安装；如需要先审核权限、脚本与 API 费用。
