# 电商视觉总监 - 单一 Codex Skill

触发示例："帮我做淘宝无线端首页"、"参考这张图把商品图做得更高级"、"给这款RFID标签做详情页"、"检查这批主图"；也可明确调用 `$ecommerce-visual-director`。

本技能将参考分析、视觉指导、淘宝手机端排版、成品质检整合为一个入口，按需加载 `references/`；不需要同时提及四个 Skill。

## 全局安装
从仓库根目录执行 `bash install.sh`，安装到 `~/.agents/skills/ecommerce-visual-director/`，同一设备的各 Codex 项目都可使用。

## 多设备
其他设备 clone/pull 后再次执行 `bash install.sh`；这是每设备用户级安装，不是自动随 Codex 账号云同步。

## 可选开源协作
- https://github.com/Leonxlnx/imagegen-skills 的 `brandkit` / `imagegen-frontend-web`
- https://github.com/xianyu110/ecommerce-image-skills 的 `selling-point-infographic` / `taobao-detail-long-image` / `lifestyle-scene`

第三方代码不随本仓库安装、运行或自动安装；如需要先审核其权限、脚本与 API 费用。
