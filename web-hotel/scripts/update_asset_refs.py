from pathlib import Path
import re

root = Path(__file__).resolve().parents[1]
assets_dir = root / 'assets'
print('Root:', root)

candidates = ['.jpg', '.jpeg', '.png']

patterns = [
    (re.compile(r'src=["\']assets/([^"\']+)["\']'), assets_dir),
    (re.compile(r'src=["\']assets/gallery/([^"\']+)["\']'), assets_dir / 'gallery'),
    (re.compile(r"url\(["']?\.\./assets/([^\)"']+)["']?\)"), assets_dir),
]

files = [root / 'index.html', root / 'css' / 'style.css']

replacements = []

for file in files:
    if not file.exists():
        print('Missing', file)
        continue
    text = file.read_text(encoding='utf-8')
    original = text
    for pat, search_dir in patterns:
        for m in list(pat.finditer(text)):
            fname = m.group(1)
            base = Path(fname).stem
            # search for match in search_dir
            found = None
            if (search_dir / fname).exists():
                # exact file exists (maybe .svg) -- check for jpg/png counterpart first
                pass
            # look for files with same stem and jpg/png ext
            if search_dir.exists():
                for f in search_dir.iterdir():
                    if f.is_file() and f.suffix.lower() in candidates and f.stem.lower() == base.lower():
                        found = f.name
                        break
            if found:
                old = fname
                new = found
                # replace only exact occurrences
                text = text.replace(fname, new)
                replacements.append((file.name, old, new))
    if text != original:
        file.write_text(text, encoding='utf-8')

print('Replacements made:')
for r in replacements:
    print(r)
if not replacements:
    print('No replacements found for matching JPG/PNG assets.')
