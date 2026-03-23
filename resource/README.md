# 学校资源库

存放各大学的配色方案和校徽资源。

## 目录结构

```
resource/
├── THU/               # 清华大学
│   ├── logo.pdf
│   ├── logo_white.pdf
│   └── colors.sty
├── PKU/               # 北京大学
├── ZJU/               # 浙江大学
├── SJTU/              # 上海交大
└── custom/            # 自定义示例
```

## 添加新学校

1. 创建 `resource/XXX/` 目录
2. 添加 `colors.sty` 定义配色
3. 添加校徽 `logo.pdf`（建议透明背景）
4. 添加 `README.md` 说明颜色来源

## colors.sty 示例

```latex
% 清华大学配色
\definecolor{primary}{RGB}{128,0,128}      % 清华紫
\definecolor{secondary}{RGB}{255,255,255}   % 白色
\definecolor{accent}{RGB}{200,0,0}          % 点缀红
```
