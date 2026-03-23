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

| 高校 | 命令 | 主题色 |
|------|------|--------|
| 清华大学 | `make setup UNI=THU` | 紫色 RGB(128,0,128) |
| 北京大学 | `make setup UNI=PKU` | 红色 RGB(139,0,0) |
| 浙江大学 | `make setup UNI=ZJU` | 蓝色 RGB(0,63,136) |
| 上海交大 | `make setup UNI=SJTU` | 红色 RGB(200,22,30) |
| 自定义 | `make setup UNI=custom` | 灰色 RGB(100,100,100) |

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
├── resource/             # 高校资源文件
│   ├── THU/             # 清华大学
│   ├── PKU/             # 北京大学
│   ├── ZJU/             # 浙江大学
│   ├── SJTU/            # 上海交大
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
| `make setup UNI=X` | 切换大学主题（X=THU/PKU/ZJU/SJTU/custom） |
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

## 📄 许可证

MIT License

---

**Happy LaTeXing! 🎉**
