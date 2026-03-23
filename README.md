# University Beamer Template

A LaTeX Beamer template with PKU-style navigation and multi-layer footer.

## Quick Start

```bash
# Setup for a university
make setup UNI=ZJU

# Compile
make

# Or full compilation with bibliography
make full
```

## Available Universities

| University | Command | Primary Color |
|------------|---------|---------------|
| Tsinghua | `make setup UNI=THU` | Purple RGB(128,0,128) |
| Peking | `make setup UNI=PKU` | Red RGB(139,0,0) |
| Zhejiang | `make setup UNI=ZJU` | Blue RGB(0,63,136) |
| SJTU | `make setup UNI=SJTU` | Red RGB(200,22,30) |

## Directory Structure

```
├── main.tex          # Main document
├── reference.bib     # Bibliography
├── Makefile          # Build commands
├── theme/            # Theme files
│   ├── font.sty     # Font settings
│   ├── inner.sty    # Title/content style
│   └── outer.sty    # Header/footer style
└── resource/         # University resources
    ├── THU/
    ├── PKU/
    ├── ZJU/
    └── SJTU/
```

## Commands

- `make` - Compile main.tex
- `make full` - Full compilation with bib
- `make setup UNI=X` - Setup university
- `make clean` - Clean generated files
- `make help` - Show help

## License

MIT License
