# 高校 Beamer 模板

一个支持多所大学主题的 LaTeX Beamer 演示文稿模板，采用 PKU 风格导航栏和多层页脚设计，完美支持中文排版。

## ✨ 特性

- 🎨 **多校主题** - 支持清华、北大、浙大、上海交大等高校配色
- 🇨🇳 **中文支持** - 内置 ctex 宏包，完美支持中文排版
- 📚 **参考文献** - 完整的 BibTeX 参考文献支持
- 🖼️ **矢量图标** - 使用 TikZ 绘制，支持高清缩放
- 📱 **宽屏适配** - 默认 16:9 宽屏比例

## 🚀 快速开始

```bash
# 1. 选择大学主题（以浙大为例）
make setup UNI=ZJU

# 2. 编译生成 PDF
make

# 3. 查看结果
open main.pdf
```

## 🎓 支持的高校

目前已支持 **40 所高校**主题：

| 高校 | 命令 | 高校 | 命令 | 高校 | 命令 |
|:--|:--|:--|:--|:--|:--|
| 北京大学 | `make setup UNI=PKU` | 华中科技大学 | `make setup UNI=HUST` | 同济大学 | `make setup UNI=TJU` |
| 清华大学 | `make setup UNI=THU` | 武汉大学 | `make setup UNI=WHU` | 北京航空航天大学 | `make setup UNI=BUAA` |
| 浙江大学 | `make setup UNI=ZJU` | 中山大学 | `make setup UNI=SYSU` | 北京师范大学 | `make setup UNI=BNU` |
| 上海交通大学 | `make setup UNI=SJTU` | 哈尔滨工业大学 | `make setup UNI=HIT` | 中国农业大学 | `make setup UNI=CAU` |
| 南京大学 | `make setup UNI=NJU` | 西安交通大学 | `make setup UNI=XJTU` | 中央民族大学 | `make setup UNI=MUC` |
| 复旦大学 | `make setup UNI=FDU` | 四川大学 | `make setup UNI=SCU` | 南开大学 | `make setup UNI=NKU` |
| 中国科学技术大学 | `make setup UNI=USTC` | 山东大学 | `make setup UNI=SDU` | 天津大学 | `make setup UNI=TJU` |
| 北京理工大学 | `make setup UNI=BIT` | 中南大学 | `make setup UNI=CSU` | 华东师范大学 | `make setup UNI=ECNU` |
| 大连理工大学 | `make setup UNI=DUT` | 吉林大学 | `make setup UNI=JLU` | 厦门大学 | `make setup UNI=XMU` |
| 西北工业大学 | `make setup UNI=NPU` | 湖南大学 | `make setup UNI=HNU` | 电子科技大学 | `make setup UNI=UESTC` |
| 北京交通大学 | `make setup UNI=BJTU` | 兰州大学 | `make setup UNI=LZU` | 东南大学 | `make setup UNI=SEU` |
| 华南理工大学 | `make setup UNI=SCUT` | 中国海洋大学 | `make setup UNI=OUC` | 西北农林科技大学 | `make setup UNI=NWAFU` |
| 重庆大学 | `make setup UNI=CQU` | 东北大学 | `make setup UNI=NEU` | 国防科技大学 | `make setup UNI=NUDT` |
| 中国人民大学 | `make setup UNI=RUC` | 自定义 | `make setup UNI=custom` | | |

> 📢 **欢迎贡献！** 如果你希望添加自己学校的主题，请参考下方的贡献指南，准备好校徽和配色方案后提交 PR！

## 📁 项目结构

```
├── main.tex              # 主文档（中文版）
├── reference.bib         # 参考文献数据库
├── Makefile              # 编译脚本
├── theme/                # 主题样式文件
│   ├── font.sty         # 字体设置
│   ├── inner.sty        # 内页样式（标题、内容）
│   ├── outer.sty        # 外页样式（页眉页脚）
│   ├── colors.sty       # 颜色配置（运行时复制）
│   └── logo.pdf         # 校徽（运行时复制）
├── resource/             # 高校资源文件（40+ 所高校）
│   ├── THU/             # 清华大学
│   ├── PKU/             # 北京大学
│   ├── ZJU/             # 浙江大学
│   ├── SJTU/            # 上海交大
│   ├── ...              # 其他高校
│   └── custom/          # 自定义主题
├── examples/             # 示例 PDF 和预览图
│   ├── PKU.pdf
│   ├── PKU_preview.png
│   └── ...
└── reference/            # 参考模板源码
    ├── PKU-Beamer-Theme/
    ├── THU-Beamer-Theme/
    └── ...
```

## 🛠️ 常用命令

| 命令 | 说明 |
|------|------|
| `make` | 编译主文档（xelatex + bibtex + xelatex×2） |
| `make setup UNI=X` | 切换大学主题（X 为上述表格中的代码） |
| `make clean` | 清理生成的临时文件 |
| `make help` | 显示帮助信息 |

## 📝 自定义内容

编辑 `main.tex` 修改以下内容：

```latex
\title{你的标题}
\subtitle{副标题}
\author{你的名字}
\institute{你的学院}
\date{\today}
```

## 🔧 依赖要求

- **TeX Live 2024+** 或 **MiKTeX**（必须包含 xelatex）
- **ctex** 宏包（中文支持）
- **beamer** 文档类
- **tikz** 绘图包

## 📖 编译说明

本项目使用 XeLaTeX 编译以支持中文：

```bash
xelatex -interaction=nonstopmode main.tex
bibtex main
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex
```

Makefile 已自动处理上述流程。

## 🐛 常见问题

**Q: 编译报错找不到字体？**
A: 确保已安装中文字体（Windows 默认带宋体/黑体，Mac/Linux 需安装字体或使用 ctex 自带配置）。

**Q: 参考文献不显示？**
A: 检查 `reference.bib` 中条目格式，确保使用 `\nocite{*}` 可显示所有文献。

**Q: 如何添加新的大学主题？**
A: 在 `resource/` 下新建目录，放入 `colors.sty` 和 `logo.pdf` 即可。

### 🤝 贡献指南

欢迎各学校的同学贡献自己学校的主题！只需准备以下文件：

1. **校徽 Logo**：`logo.pdf`（矢量格式，建议使用 PDF）
2. **主题配色**：`colors.sty`，参考现有学校的格式：
   ```latex
   \definecolor{primary}{RGB}{R,G,B}    % 主色（导航栏、标题等）
   \definecolor{secondary}{RGB}{R,G,B}  % 辅色（内容块背景等）
   ```
3. **提交 PR**：Fork 项目 → 添加文件 → 提交 Pull Request

有任何问题欢迎提交 Issue 讨论！

## 📄 许可证

MIT License

---

**Happy LaTeXing! 🎉**
