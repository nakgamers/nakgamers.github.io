#!/usr/bin/env python3
from PIL import Image

input_path = r'c:\Users\USER\Downloads\web hotel\assets\IMG_3003.HEIC'
output_path = r'c:\Users\USER\Downloads\web hotel\assets\IMG_3003.jpg'

try:
    img = Image.open(input_path)
    rgb_img = img.convert('RGB')
    rgb_img.save(output_path, 'JPEG', quality=90)
    print(f'✓ Konversi berhasil: {output_path}')
except Exception as e:
    print(f'✗ Error: {e}')
