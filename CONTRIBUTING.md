# 贡献指南

感谢您对 University Beamer Collection 项目的关注！我们欢迎所有形式的贡献，包括添加新学校主题、修复问题、改进文档等。

## 📋 目录

- [如何贡献](#如何贡献)
- [添加新学校主题](#添加新学校主题)
- [提交 Pull Request](#提交-pull-request)
- [问题反馈](#问题反馈)
- [开发规范](#开发规范)

---

## 如何贡献

### 1.  Fork 仓库

点击 GitHub 页面右上角的 "Fork" 按钮，将本项目复制到您的个人账号下。

### 2.  Clone 到本地

```bash
git clone https://github.com/您的用户名/University_Beamer_Collection.git
cd University_Beamer_Collection
```

### 3.  创建分支

```bash
git checkout -b add-school-xxx
```

建议分支名格式：
- 添加学校：`add-school-学校缩写`（如 `add-school-BIT`）
- 修复问题：`fix-问题描述`
- 改进文档：`docs-改进描述`

### 4.  进行修改

根据您的贡献类型进行相应修改（详见下文）。

### 5.  提交并推送

```bash
git add .
git commit -m "feat: 添加 XX 大学主题"
git push origin add-school-xxx
```

### 6.  创建 Pull Request

在 GitHub 页面上点击 "Compare & pull request"，填写 PR 描述后提交。

---

## 添加新学校主题

### 准备工作

在添加新学校前，请确认：
- [ ] 该学校尚未在 `resource/` 目录中存在
- [ ] 您已获取学校的官方配色方案（建议使用学校官网或视觉识别系统）
- [ ] 您有学校的校徽矢量文件（PDF 或 SVG 格式）

### 文件结构

每个学校的资源目录结构如下：

```
resource/XXX/           # XXX 为学校英文缩写（大写）
├── colors.sty          # 配色方案定义
├── logo.pdf            # 校徽（彩色版本）
├── logo_white.pdf      # 校徽（白色版本，可选）
└── README.md           # 颜色来源说明（可选但推荐）
```

### 1. 创建目录

```bash
mkdir resource/XXX
```

`XXX` 应为学校英文缩写，建议 2-4 个大写字母，例如：
- PKU = 北京大学
- THU = 清华大学
- ZJU = 浙江大学

### 2. 编写 colors.sty

创建 `resource/XXX/colors.sty`，格式如下：

```latex
% colors.sty - 学校英文全称
% 学校中文全称配色方案

\definecolor{primary}{RGB}{R,G,B}       % 主色（导航栏、标题等）
\definecolor{secondary}{RGB}{R,G,B}     % 辅色（内容块背景等）
```

**配色建议：**
- **主色 (primary)**: 学校的标准色，用于导航栏、标题、强调文字
- **辅色 (secondary)**: 通常使用白色或浅色，用于内容区域背景

**示例 - 清华大学：**
```latex
\definecolor{primary}{RGB}{128,0,128}      % 清华紫
\definecolor{secondary}{RGB}{255,255,255}   % 白色
```

### 3. 准备校徽文件

**要求：**
- 格式：PDF（首选）或 SVG
- 文件名：`logo.pdf`
- 背景：透明背景
- 质量：矢量格式，确保高清缩放不失真

**转换提示：**
- 如有 AI/EPS 文件，可使用 Adobe Illustrator 导出为 PDF
- 如有 SVG 文件，可用浏览器打印为 PDF
- 确保 Logo 在深色背景上可见（可能需要准备白色版本 `logo_white.pdf`）

### 4. 添加说明文件（可选）

创建 `resource/XXX/README.md` 说明颜色来源：

```markdown
# XXX 大学配色

## 颜色规范

- **主色**: #XXXXXX (RGB: R, G, B)
  - 来源：学校视觉识别系统 / 官网
  - 使用场景：导航栏、标题

## 参考链接

- [学校官网](https://www.xxx.edu.cn)
- [视觉识别系统](https://www.xxx.edu.cn/visual)（如有）
```

### 5. 测试主题

在本地测试新主题是否能正常工作：

```bash
make setup UNI=XXX
make
```

确认：
- [ ] 编译无错误
- [ ] 校徽显示正常
- [ ] 配色正确应用
- [ ] PDF 输出正常

### 6. 更新 README.md

在 `README.md` 的高校表格中添加新学校：

```markdown
| XX大学 | `make setup UNI=XXX` | ... |
```

---

## 提交 Pull Request

### PR 标题格式

```
类型: 简短描述
```

**类型：**
- `feat`: 添加新学校主题
- `fix`: 修复问题
- `docs`: 文档更新
- `style`: 格式调整（不影响功能）
- `refactor`: 代码重构

**示例：**
```
feat: 添加北京理工大学主题
fix: 修复 XX 大学校徽显示问题
docs: 更新 README 中的学校列表
```

### PR 描述模板

```markdown
## 描述
简要描述本次 PR 的内容。

## 变更内容
- 添加了 XXX 大学主题
- 包含 colors.sty 和 logo.pdf
- 更新了 README.md

## 检查清单
- [ ] 已测试本地编译通过
- [ ] 已检查校徽显示正常
- [ ] 已更新 README.md

## 截图（可选）
如有必要，可附上编译后的 PDF 截图
```

### 审核流程

1. 维护者会在 3-5 个工作日内审核您的 PR
2. 如有修改建议，请在对应评论处进行修改
3. 审核通过后，PR 将被合并到 main 分支

---

## 问题反馈

### 提交 Issue

如果您发现 bug 或有新功能建议，请提交 Issue：

**Bug 报告模板：**
```markdown
**问题描述**
清楚描述遇到的问题

**复现步骤**
1. 执行 '...'
2. 点击 '...'
3. 出现错误

**期望行为**
描述您期望发生什么

**环境信息**
- 操作系统：
- TeX 版本：
- 报错信息：
```

**功能请求模板：**
```markdown
**功能描述**
描述您希望添加的功能

**使用场景**
描述这个功能的使用场景

**实现建议**（可选）
如果您有实现思路，可以在此说明
```

---

## 开发规范

### 文件命名

- 学校目录：大写英文缩写（如 `THU`、`PKU`）
- 配色文件：`colors.sty`
- 校徽文件：`logo.pdf`、`logo_white.pdf`

### 代码风格

- LaTeX 文件使用 UTF-8 编码
- 缩进使用 4 个空格
- RGB 颜色值使用大写字母（如 `RGB{128,0,128}`）

### Git 提交信息

遵循 [Conventional Commits](https://www.conventionalcommits.org/) 规范：

```
类型(可选范围): 描述

[可选的正文]
```

**示例：**
```bash
git commit -m "feat: 添加北京理工大学主题"
git commit -m "fix: 修复清华紫色值错误"
git commit -m "docs: 更新贡献指南"
```

---

## 常见问题

**Q: 没有矢量校徽怎么办？**  
A: 可以尝试从学校官网下载高清 PNG，或使用 Inkscape 等工具描摹。但建议尽量使用矢量格式。

**Q: 不知道学校的官方配色怎么办？**  
A: 参考学校官网的主色调，或搜索"XX大学 视觉识别系统"。

**Q: 可以同时添加多个学校吗？**  
A: 可以，但建议每个学校一个独立的 commit，方便审核。

**Q: 提交后多久能被合并？**  
A: 通常在 3-5 个工作日内，如遇节假日可能延迟。

---

## 联系方式

如有任何疑问，欢迎通过以下方式联系：

- 提交 Issue: [GitHub Issues](../../issues)
- 发送邮件: [项目维护者邮箱]

再次感谢您的贡献！🎉
