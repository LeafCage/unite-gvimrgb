if exists('s:save_cpo')| finish| endif
" Original Author: Yuki <paselan@gmail.com> (autoload/unite/sources/webcolorname.vim)
" Author: LeafCage <leafcage@gmail.com>
" License: MIT License {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}

let s:save_cpo = &cpo| set cpo&vim
"=============================================================================
"s:RGBS "{{{
let s:RGBS = [
  \ {'name': 'snow', 'rgb': [255, 250, 250], 'fg': 'black'},
  \ {'name': 'ghost white', 'rgb': [248, 248, 255], 'fg': 'black'},
  \ {'name': 'GhostWhite', 'rgb': [248, 248, 255], 'fg': 'black'},
  \ {'name': 'white smoke', 'rgb': [245, 245, 245], 'fg': 'black'},
  \ {'name': 'WhiteSmoke', 'rgb': [245, 245, 245], 'fg': 'black'},
  \ {'name': 'gainsboro', 'rgb': [220, 220, 220], 'fg': 'black'},
  \ {'name': 'floral white', 'rgb': [255, 250, 240], 'fg': 'black'},
  \ {'name': 'FloralWhite', 'rgb': [255, 250, 240], 'fg': 'black'},
  \ {'name': 'old lace', 'rgb': [253, 245, 230], 'fg': 'black'},
  \ {'name': 'OldLace', 'rgb': [253, 245, 230], 'fg': 'black'},
  \ {'name': 'linen', 'rgb': [250, 240, 230], 'fg': 'black'},
  \ {'name': 'antique white', 'rgb': [250, 235, 215], 'fg': 'black'},
  \ {'name': 'AntiqueWhite', 'rgb': [250, 235, 215], 'fg': 'black'},
  \ {'name': 'papaya whip', 'rgb': [255, 239, 213], 'fg': 'black'},
  \ {'name': 'PapayaWhip', 'rgb': [255, 239, 213], 'fg': 'black'},
  \ {'name': 'blanched almond', 'rgb': [255, 235, 205], 'fg': 'black'},
  \ {'name': 'BlanchedAlmond', 'rgb': [255, 235, 205], 'fg': 'black'},
  \ {'name': 'bisque', 'rgb': [255, 228, 196], 'fg': 'black'},
  \ {'name': 'peach puff', 'rgb': [255, 218, 185], 'fg': 'black'},
  \ {'name': 'PeachPuff', 'rgb': [255, 218, 185], 'fg': 'black'},
  \ {'name': 'navajo white', 'rgb': [255, 222, 173], 'fg': 'black'},
  \ {'name': 'NavajoWhite', 'rgb': [255, 222, 173], 'fg': 'black'},
  \ {'name': 'moccasin', 'rgb': [255, 228, 181], 'fg': 'black'},
  \ {'name': 'cornsilk', 'rgb': [255, 248, 220], 'fg': 'black'},
  \ {'name': 'ivory', 'rgb': [255, 255, 240], 'fg': 'black'},
  \ {'name': 'lemon chiffon', 'rgb': [255, 250, 205], 'fg': 'black'},
  \ {'name': 'LemonChiffon', 'rgb': [255, 250, 205], 'fg': 'black'},
  \ {'name': 'seashell', 'rgb': [255, 245, 238], 'fg': 'black'},
  \ {'name': 'honeydew', 'rgb': [240, 255, 240], 'fg': 'black'},
  \ {'name': 'mint cream', 'rgb': [245, 255, 250], 'fg': 'black'},
  \ {'name': 'MintCream', 'rgb': [245, 255, 250], 'fg': 'black'},
  \ {'name': 'azure', 'rgb': [240, 255, 255], 'fg': 'black'},
  \ {'name': 'alice blue', 'rgb': [240, 248, 255], 'fg': 'black'},
  \ {'name': 'AliceBlue', 'rgb': [240, 248, 255], 'fg': 'black'},
  \ {'name': 'lavender', 'rgb': [230, 230, 250], 'fg': 'black'},
  \ {'name': 'lavender blush', 'rgb': [255, 240, 245], 'fg': 'black'},
  \ {'name': 'LavenderBlush', 'rgb': [255, 240, 245], 'fg': 'black'},
  \ {'name': 'misty rose', 'rgb': [255, 228, 225], 'fg': 'black'},
  \ {'name': 'MistyRose', 'rgb': [255, 228, 225], 'fg': 'black'},
  \ {'name': 'white', 'rgb': [255, 255, 255], 'fg': 'black'},
  \ {'name': 'black', 'rgb': [0, 0, 0], 'fg': 'white'},
  \ {'name': 'dark slate gray', 'rgb': [47, 79, 79], 'fg': 'white'},
  \ {'name': 'DarkSlateGray', 'rgb': [47, 79, 79], 'fg': 'white'},
  \ {'name': 'dark slate grey', 'rgb': [47, 79, 79], 'fg': 'white'},
  \ {'name': 'DarkSlateGrey', 'rgb': [47, 79, 79], 'fg': 'white'},
  \ {'name': 'dim gray', 'rgb': [105, 105, 105], 'fg': 'white'},
  \ {'name': 'DimGray', 'rgb': [105, 105, 105], 'fg': 'white'},
  \ {'name': 'dim grey', 'rgb': [105, 105, 105], 'fg': 'white'},
  \ {'name': 'DimGrey', 'rgb': [105, 105, 105], 'fg': 'white'},
  \ {'name': 'slate gray', 'rgb': [112, 128, 144], 'fg': 'white'},
  \ {'name': 'SlateGray', 'rgb': [112, 128, 144], 'fg': 'white'},
  \ {'name': 'slate grey', 'rgb': [112, 128, 144], 'fg': 'white'},
  \ {'name': 'SlateGrey', 'rgb': [112, 128, 144], 'fg': 'white'},
  \ {'name': 'light slate gray', 'rgb': [119, 136, 153], 'fg': 'white'},
  \ {'name': 'LightSlateGray', 'rgb': [119, 136, 153], 'fg': 'white'},
  \ {'name': 'light slate grey', 'rgb': [119, 136, 153], 'fg': 'white'},
  \ {'name': 'LightSlateGrey', 'rgb': [119, 136, 153], 'fg': 'white'},
  \ {'name': 'gray', 'rgb': [190, 190, 190], 'fg': 'black'},
  \ {'name': 'grey', 'rgb': [190, 190, 190], 'fg': 'black'},
  \ {'name': 'light grey', 'rgb': [211, 211, 211], 'fg': 'black'},
  \ {'name': 'LightGrey', 'rgb': [211, 211, 211], 'fg': 'black'},
  \ {'name': 'light gray', 'rgb': [211, 211, 211], 'fg': 'black'},
  \ {'name': 'LightGray', 'rgb': [211, 211, 211], 'fg': 'black'},
  \ {'name': 'midnight blue', 'rgb': [25, 25, 112], 'fg': 'white'},
  \ {'name': 'MidnightBlue', 'rgb': [25, 25, 112], 'fg': 'white'},
  \ {'name': 'navy', 'rgb': [0, 0, 128], 'fg': 'white'},
  \ {'name': 'navy blue', 'rgb': [0, 0, 128], 'fg': 'white'},
  \ {'name': 'NavyBlue', 'rgb': [0, 0, 128], 'fg': 'white'},
  \ {'name': 'cornflower blue', 'rgb': [100, 149, 237], 'fg': 'white'},
  \ {'name': 'CornflowerBlue', 'rgb': [100, 149, 237], 'fg': 'white'},
  \ {'name': 'dark slate blue', 'rgb': [72, 61, 139], 'fg': 'white'},
  \ {'name': 'DarkSlateBlue', 'rgb': [72, 61, 139], 'fg': 'white'},
  \ {'name': 'slate blue', 'rgb': [106, 90, 205], 'fg': 'white'},
  \ {'name': 'SlateBlue', 'rgb': [106, 90, 205], 'fg': 'white'},
  \ {'name': 'medium slate blue', 'rgb': [123, 104, 238], 'fg': 'white'},
  \ {'name': 'MediumSlateBlue', 'rgb': [123, 104, 238], 'fg': 'white'},
  \ {'name': 'light slate blue', 'rgb': [132, 112, 255], 'fg': 'white'},
  \ {'name': 'LightSlateBlue', 'rgb': [132, 112, 255], 'fg': 'white'},
  \ {'name': 'medium blue', 'rgb': [0, 0, 205], 'fg': 'white'},
  \ {'name': 'MediumBlue', 'rgb': [0, 0, 205], 'fg': 'white'},
  \ {'name': 'royal blue', 'rgb': [65, 105, 225], 'fg': 'white'},
  \ {'name': 'RoyalBlue', 'rgb': [65, 105, 225], 'fg': 'white'},
  \ {'name': 'blue', 'rgb': [0, 0, 255], 'fg': 'white'},
  \ {'name': 'dodger blue', 'rgb': [30, 144, 255], 'fg': 'white'},
  \ {'name': 'DodgerBlue', 'rgb': [30, 144, 255], 'fg': 'white'},
  \ {'name': 'deep sky blue', 'rgb': [0, 191, 255], 'fg': 'white'},
  \ {'name': 'DeepSkyBlue', 'rgb': [0, 191, 255], 'fg': 'white'},
  \ {'name': 'sky blue', 'rgb': [135, 206, 235], 'fg': 'black'},
  \ {'name': 'SkyBlue', 'rgb': [135, 206, 235], 'fg': 'black'},
  \ {'name': 'light sky blue', 'rgb': [135, 206, 250], 'fg': 'black'},
  \ {'name': 'LightSkyBlue', 'rgb': [135, 206, 250], 'fg': 'black'},
  \ {'name': 'steel blue', 'rgb': [70, 130, 180], 'fg': 'white'},
  \ {'name': 'SteelBlue', 'rgb': [70, 130, 180], 'fg': 'white'},
  \ {'name': 'light steel blue', 'rgb': [176, 196, 222], 'fg': 'black'},
  \ {'name': 'LightSteelBlue', 'rgb': [176, 196, 222], 'fg': 'black'},
  \ {'name': 'light blue', 'rgb': [173, 216, 230], 'fg': 'black'},
  \ {'name': 'LightBlue', 'rgb': [173, 216, 230], 'fg': 'black'},
  \ {'name': 'powder blue', 'rgb': [176, 224, 230], 'fg': 'black'},
  \ {'name': 'PowderBlue', 'rgb': [176, 224, 230], 'fg': 'black'},
  \ {'name': 'pale turquoise', 'rgb': [175, 238, 238], 'fg': 'black'},
  \ {'name': 'PaleTurquoise', 'rgb': [175, 238, 238], 'fg': 'black'},
  \ {'name': 'dark turquoise', 'rgb': [0, 206, 209], 'fg': 'black'},
  \ {'name': 'DarkTurquoise', 'rgb': [0, 206, 209], 'fg': 'black'},
  \ {'name': 'medium turquoise', 'rgb': [72, 209, 204], 'fg': 'black'},
  \ {'name': 'MediumTurquoise', 'rgb': [72, 209, 204], 'fg': 'black'},
  \ {'name': 'turquoise', 'rgb': [64, 224, 208], 'fg': 'black'},
  \ {'name': 'cyan', 'rgb': [0, 255, 255], 'fg': 'black'},
  \ {'name': 'light cyan', 'rgb': [224, 255, 255], 'fg': 'black'},
  \ {'name': 'LightCyan', 'rgb': [224, 255, 255], 'fg': 'black'},
  \ {'name': 'cadet blue', 'rgb': [95, 158, 160], 'fg': 'white'},
  \ {'name': 'CadetBlue', 'rgb': [95, 158, 160], 'fg': 'white'},
  \ {'name': 'medium aquamarine', 'rgb': [102, 205, 170], 'fg': 'black'},
  \ {'name': 'MediumAquamarine', 'rgb': [102, 205, 170], 'fg': 'black'},
  \ {'name': 'aquamarine', 'rgb': [127, 255, 212], 'fg': 'black'},
  \ {'name': 'dark green', 'rgb': [0, 100, 0], 'fg': 'white'},
  \ {'name': 'DarkGreen', 'rgb': [0, 100, 0], 'fg': 'white'},
  \ {'name': 'dark olive green', 'rgb': [85, 107, 47], 'fg': 'white'},
  \ {'name': 'DarkOliveGreen', 'rgb': [85, 107, 47], 'fg': 'white'},
  \ {'name': 'dark sea green', 'rgb': [143, 188, 143], 'fg': 'black'},
  \ {'name': 'DarkSeaGreen', 'rgb': [143, 188, 143], 'fg': 'black'},
  \ {'name': 'sea green', 'rgb': [46, 139, 87], 'fg': 'white'},
  \ {'name': 'SeaGreen', 'rgb': [46, 139, 87], 'fg': 'white'},
  \ {'name': 'medium sea green', 'rgb': [60, 179, 113], 'fg': 'white'},
  \ {'name': 'MediumSeaGreen', 'rgb': [60, 179, 113], 'fg': 'white'},
  \ {'name': 'light sea green', 'rgb': [32, 178, 170], 'fg': 'white'},
  \ {'name': 'LightSeaGreen', 'rgb': [32, 178, 170], 'fg': 'white'},
  \ {'name': 'pale green', 'rgb': [152, 251, 152], 'fg': 'black'},
  \ {'name': 'PaleGreen', 'rgb': [152, 251, 152], 'fg': 'black'},
  \ {'name': 'spring green', 'rgb': [0, 255, 127], 'fg': 'black'},
  \ {'name': 'SpringGreen', 'rgb': [0, 255, 127], 'fg': 'black'},
  \ {'name': 'lawn green', 'rgb': [124, 252, 0], 'fg': 'black'},
  \ {'name': 'LawnGreen', 'rgb': [124, 252, 0], 'fg': 'black'},
  \ {'name': 'green', 'rgb': [0, 255, 0], 'fg': 'black'},
  \ {'name': 'chartreuse', 'rgb': [127, 255, 0], 'fg': 'black'},
  \ {'name': 'medium spring green', 'rgb': [0, 250, 154], 'fg': 'black'},
  \ {'name': 'MediumSpringGreen', 'rgb': [0, 250, 154], 'fg': 'black'},
  \ {'name': 'green yellow', 'rgb': [173, 255, 47], 'fg': 'black'},
  \ {'name': 'GreenYellow', 'rgb': [173, 255, 47], 'fg': 'black'},
  \ {'name': 'lime green', 'rgb': [50, 205, 50], 'fg': 'black'},
  \ {'name': 'LimeGreen', 'rgb': [50, 205, 50], 'fg': 'black'},
  \ {'name': 'yellow green', 'rgb': [154, 205, 50], 'fg': 'black'},
  \ {'name': 'YellowGreen', 'rgb': [154, 205, 50], 'fg': 'black'},
  \ {'name': 'forest green', 'rgb': [34, 139, 34], 'fg': 'white'},
  \ {'name': 'ForestGreen', 'rgb': [34, 139, 34], 'fg': 'white'},
  \ {'name': 'olive drab', 'rgb': [107, 142, 35], 'fg': 'white'},
  \ {'name': 'OliveDrab', 'rgb': [107, 142, 35], 'fg': 'white'},
  \ {'name': 'dark khaki', 'rgb': [189, 183, 107], 'fg': 'black'},
  \ {'name': 'DarkKhaki', 'rgb': [189, 183, 107], 'fg': 'black'},
  \ {'name': 'khaki', 'rgb': [240, 230, 140], 'fg': 'black'},
  \ {'name': 'pale goldenrod', 'rgb': [238, 232, 170], 'fg': 'black'},
  \ {'name': 'PaleGoldenrod', 'rgb': [238, 232, 170], 'fg': 'black'},
  \ {'name': 'light goldenrod yellow', 'rgb': [250, 250, 210], 'fg': 'black'},
  \ {'name': 'LightGoldenrodYellow', 'rgb': [250, 250, 210], 'fg': 'black'},
  \ {'name': 'light yellow', 'rgb': [255, 255, 224], 'fg': 'black'},
  \ {'name': 'LightYellow', 'rgb': [255, 255, 224], 'fg': 'black'},
  \ {'name': 'yellow', 'rgb': [255, 255, 0], 'fg': 'black'},
  \ {'name': 'gold', 'rgb': [255, 215, 0], 'fg': 'black'},
  \ {'name': 'light goldenrod', 'rgb': [238, 221, 130], 'fg': 'black'},
  \ {'name': 'LightGoldenrod', 'rgb': [238, 221, 130], 'fg': 'black'},
  \ {'name': 'goldenrod', 'rgb': [218, 165, 32], 'fg': 'black'},
  \ {'name': 'dark goldenrod', 'rgb': [184, 134, 11], 'fg': 'white'},
  \ {'name': 'DarkGoldenrod', 'rgb': [184, 134, 11], 'fg': 'white'},
  \ {'name': 'rosy brown', 'rgb': [188, 143, 143], 'fg': 'white'},
  \ {'name': 'RosyBrown', 'rgb': [188, 143, 143], 'fg': 'white'},
  \ {'name': 'indian red', 'rgb': [205, 92, 92], 'fg': 'white'},
  \ {'name': 'IndianRed', 'rgb': [205, 92, 92], 'fg': 'white'},
  \ {'name': 'saddle brown', 'rgb': [139, 69, 19], 'fg': 'white'},
  \ {'name': 'SaddleBrown', 'rgb': [139, 69, 19], 'fg': 'white'},
  \ {'name': 'sienna', 'rgb': [160, 82, 45], 'fg': 'white'},
  \ {'name': 'peru', 'rgb': [205, 133, 63], 'fg': 'white'},
  \ {'name': 'burlywood', 'rgb': [222, 184, 135], 'fg': 'black'},
  \ {'name': 'beige', 'rgb': [245, 245, 220], 'fg': 'black'},
  \ {'name': 'wheat', 'rgb': [245, 222, 179], 'fg': 'black'},
  \ {'name': 'sandy brown', 'rgb': [244, 164, 96], 'fg': 'black'},
  \ {'name': 'SandyBrown', 'rgb': [244, 164, 96], 'fg': 'black'},
  \ {'name': 'tan', 'rgb': [210, 180, 140], 'fg': 'black'},
  \ {'name': 'chocolate', 'rgb': [210, 105, 30], 'fg': 'white'},
  \ {'name': 'firebrick', 'rgb': [178, 34, 34], 'fg': 'white'},
  \ {'name': 'brown', 'rgb': [165, 42, 42], 'fg': 'white'},
  \ {'name': 'dark salmon', 'rgb': [233, 150, 122], 'fg': 'black'},
  \ {'name': 'DarkSalmon', 'rgb': [233, 150, 122], 'fg': 'black'},
  \ {'name': 'salmon', 'rgb': [250, 128, 114], 'fg': 'black'},
  \ {'name': 'light salmon', 'rgb': [255, 160, 122], 'fg': 'black'},
  \ {'name': 'LightSalmon', 'rgb': [255, 160, 122], 'fg': 'black'},
  \ {'name': 'orange', 'rgb': [255, 165, 0], 'fg': 'black'},
  \ {'name': 'dark orange', 'rgb': [255, 140, 0], 'fg': 'black'},
  \ {'name': 'DarkOrange', 'rgb': [255, 140, 0], 'fg': 'black'},
  \ {'name': 'coral', 'rgb': [255, 127, 80], 'fg': 'black'},
  \ {'name': 'light coral', 'rgb': [240, 128, 128], 'fg': 'black'},
  \ {'name': 'LightCoral', 'rgb': [240, 128, 128], 'fg': 'black'},
  \ {'name': 'tomato', 'rgb': [255, 99, 71], 'fg': 'white'},
  \ {'name': 'orange red', 'rgb': [255, 69, 0], 'fg': 'white'},
  \ {'name': 'OrangeRed', 'rgb': [255, 69, 0], 'fg': 'white'},
  \ {'name': 'red', 'rgb': [255, 0, 0], 'fg': 'white'},
  \ {'name': 'hot pink', 'rgb': [255, 105, 180], 'fg': 'black'},
  \ {'name': 'HotPink', 'rgb': [255, 105, 180], 'fg': 'black'},
  \ {'name': 'deep pink', 'rgb': [255, 20, 147], 'fg': 'black'},
  \ {'name': 'DeepPink', 'rgb': [255, 20, 147], 'fg': 'black'},
  \ {'name': 'pink', 'rgb': [255, 192, 203], 'fg': 'black'},
  \ {'name': 'light pink', 'rgb': [255, 182, 193], 'fg': 'black'},
  \ {'name': 'LightPink', 'rgb': [255, 182, 193], 'fg': 'black'},
  \ {'name': 'pale violet red', 'rgb': [219, 112, 147], 'fg': 'white'},
  \ {'name': 'PaleVioletRed', 'rgb': [219, 112, 147], 'fg': 'white'},
  \ {'name': 'maroon', 'rgb': [176, 48, 96], 'fg': 'white'},
  \ {'name': 'medium violet red', 'rgb': [199, 21, 133], 'fg': 'white'},
  \ {'name': 'MediumVioletRed', 'rgb': [199, 21, 133], 'fg': 'white'},
  \ {'name': 'violet red', 'rgb': [208, 32, 144], 'fg': 'white'},
  \ {'name': 'VioletRed', 'rgb': [208, 32, 144], 'fg': 'white'},
  \ {'name': 'magenta', 'rgb': [255, 0, 255], 'fg': 'black'},
  \ {'name': 'violet', 'rgb': [238, 130, 238], 'fg': 'black'},
  \ {'name': 'plum', 'rgb': [221, 160, 221], 'fg': 'black'},
  \ {'name': 'orchid', 'rgb': [218, 112, 214], 'fg': 'black'},
  \ {'name': 'medium orchid', 'rgb': [186, 85, 211], 'fg': 'white'},
  \ {'name': 'MediumOrchid', 'rgb': [186, 85, 211], 'fg': 'white'},
  \ {'name': 'dark orchid', 'rgb': [153, 50, 204], 'fg': 'white'},
  \ {'name': 'DarkOrchid', 'rgb': [153, 50, 204], 'fg': 'white'},
  \ {'name': 'dark violet', 'rgb': [148, 0, 211], 'fg': 'white'},
  \ {'name': 'DarkViolet', 'rgb': [148, 0, 211], 'fg': 'white'},
  \ {'name': 'blue violet', 'rgb': [138, 43, 226], 'fg': 'white'},
  \ {'name': 'BlueViolet', 'rgb': [138, 43, 226], 'fg': 'white'},
  \ {'name': 'purple', 'rgb': [160, 32, 240], 'fg': 'white'},
  \ {'name': 'medium purple', 'rgb': [147, 112, 219], 'fg': 'white'},
  \ {'name': 'MediumPurple', 'rgb': [147, 112, 219], 'fg': 'white'},
  \ {'name': 'thistle', 'rgb': [216, 191, 216], 'fg': 'black'},
  \ {'name': 'snow1', 'rgb': [255, 250, 250], 'fg': 'black'},
  \ {'name': 'snow2', 'rgb': [238, 233, 233], 'fg': 'black'},
  \ {'name': 'snow3', 'rgb': [205, 201, 201], 'fg': 'black'},
  \ {'name': 'snow4', 'rgb': [139, 137, 137], 'fg': 'white'},
  \ {'name': 'seashell1', 'rgb': [255, 245, 238], 'fg': 'black'},
  \ {'name': 'seashell2', 'rgb': [238, 229, 222], 'fg': 'black'},
  \ {'name': 'seashell3', 'rgb': [205, 197, 191], 'fg': 'black'},
  \ {'name': 'seashell4', 'rgb': [139, 134, 130], 'fg': 'white'},
  \ {'name': 'AntiqueWhite1', 'rgb': [255, 239, 219], 'fg': 'black'},
  \ {'name': 'AntiqueWhite2', 'rgb': [238, 223, 204], 'fg': 'black'},
  \ {'name': 'AntiqueWhite3', 'rgb': [205, 192, 176], 'fg': 'black'},
  \ {'name': 'AntiqueWhite4', 'rgb': [139, 131, 120], 'fg': 'white'},
  \ {'name': 'bisque1', 'rgb': [255, 228, 196], 'fg': 'black'},
  \ {'name': 'bisque2', 'rgb': [238, 213, 183], 'fg': 'black'},
  \ {'name': 'bisque3', 'rgb': [205, 183, 158], 'fg': 'black'},
  \ {'name': 'bisque4', 'rgb': [139, 125, 107], 'fg': 'white'},
  \ {'name': 'PeachPuff1', 'rgb': [255, 218, 185], 'fg': 'black'},
  \ {'name': 'PeachPuff2', 'rgb': [238, 203, 173], 'fg': 'black'},
  \ {'name': 'PeachPuff3', 'rgb': [205, 175, 149], 'fg': 'black'},
  \ {'name': 'PeachPuff4', 'rgb': [139, 119, 101], 'fg': 'white'},
  \ {'name': 'NavajoWhite1', 'rgb': [255, 222, 173], 'fg': 'black'},
  \ {'name': 'NavajoWhite2', 'rgb': [238, 207, 161], 'fg': 'black'},
  \ {'name': 'NavajoWhite3', 'rgb': [205, 179, 139], 'fg': 'black'},
  \ {'name': 'NavajoWhite4', 'rgb': [139, 121, 94], 'fg': 'white'},
  \ {'name': 'LemonChiffon1', 'rgb': [255, 250, 205], 'fg': 'black'},
  \ {'name': 'LemonChiffon2', 'rgb': [238, 233, 191], 'fg': 'black'},
  \ {'name': 'LemonChiffon3', 'rgb': [205, 201, 165], 'fg': 'black'},
  \ {'name': 'LemonChiffon4', 'rgb': [139, 137, 112], 'fg': 'white'},
  \ {'name': 'cornsilk1', 'rgb': [255, 248, 220], 'fg': 'black'},
  \ {'name': 'cornsilk2', 'rgb': [238, 232, 205], 'fg': 'black'},
  \ {'name': 'cornsilk3', 'rgb': [205, 200, 177], 'fg': 'black'},
  \ {'name': 'cornsilk4', 'rgb': [139, 136, 120], 'fg': 'white'},
  \ {'name': 'ivory1', 'rgb': [255, 255, 240], 'fg': 'black'},
  \ {'name': 'ivory2', 'rgb': [238, 238, 224], 'fg': 'black'},
  \ {'name': 'ivory3', 'rgb': [205, 205, 193], 'fg': 'black'},
  \ {'name': 'ivory4', 'rgb': [139, 139, 131], 'fg': 'white'},
  \ {'name': 'honeydew1', 'rgb': [240, 255, 240], 'fg': 'black'},
  \ {'name': 'honeydew2', 'rgb': [224, 238, 224], 'fg': 'black'},
  \ {'name': 'honeydew3', 'rgb': [193, 205, 193], 'fg': 'black'},
  \ {'name': 'honeydew4', 'rgb': [131, 139, 131], 'fg': 'white'},
  \ {'name': 'LavenderBlush1', 'rgb': [255, 240, 245], 'fg': 'black'},
  \ {'name': 'LavenderBlush2', 'rgb': [238, 224, 229], 'fg': 'black'},
  \ {'name': 'LavenderBlush3', 'rgb': [205, 193, 197], 'fg': 'black'},
  \ {'name': 'LavenderBlush4', 'rgb': [139, 131, 134], 'fg': 'white'},
  \ {'name': 'MistyRose1', 'rgb': [255, 228, 225], 'fg': 'black'},
  \ {'name': 'MistyRose2', 'rgb': [238, 213, 210], 'fg': 'black'},
  \ {'name': 'MistyRose3', 'rgb': [205, 183, 181], 'fg': 'black'},
  \ {'name': 'MistyRose4', 'rgb': [139, 125, 123], 'fg': 'white'},
  \ {'name': 'azure1', 'rgb': [240, 255, 255], 'fg': 'black'},
  \ {'name': 'azure2', 'rgb': [224, 238, 238], 'fg': 'black'},
  \ {'name': 'azure3', 'rgb': [193, 205, 205], 'fg': 'black'},
  \ {'name': 'azure4', 'rgb': [131, 139, 139], 'fg': 'white'},
  \ {'name': 'SlateBlue1', 'rgb': [131, 111, 255], 'fg': 'white'},
  \ {'name': 'SlateBlue2', 'rgb': [122, 103, 238], 'fg': 'white'},
  \ {'name': 'SlateBlue3', 'rgb': [105, 89, 205], 'fg': 'white'},
  \ {'name': 'SlateBlue4', 'rgb': [71, 60, 139], 'fg': 'white'},
  \ {'name': 'RoyalBlue1', 'rgb': [72, 118, 255], 'fg': 'white'},
  \ {'name': 'RoyalBlue2', 'rgb': [67, 110, 238], 'fg': 'white'},
  \ {'name': 'RoyalBlue3', 'rgb': [58, 95, 205], 'fg': 'white'},
  \ {'name': 'RoyalBlue4', 'rgb': [39, 64, 139], 'fg': 'white'},
  \ {'name': 'blue1', 'rgb': [0, 0, 255], 'fg': 'white'},
  \ {'name': 'blue2', 'rgb': [0, 0, 238], 'fg': 'white'},
  \ {'name': 'blue3', 'rgb': [0, 0, 205], 'fg': 'white'},
  \ {'name': 'blue4', 'rgb': [0, 0, 139], 'fg': 'white'},
  \ {'name': 'DodgerBlue1', 'rgb': [30, 144, 255], 'fg': 'white'},
  \ {'name': 'DodgerBlue2', 'rgb': [28, 134, 238], 'fg': 'white'},
  \ {'name': 'DodgerBlue3', 'rgb': [24, 116, 205], 'fg': 'white'},
  \ {'name': 'DodgerBlue4', 'rgb': [16, 78, 139], 'fg': 'white'},
  \ {'name': 'SteelBlue1', 'rgb': [99, 184, 255], 'fg': 'black'},
  \ {'name': 'SteelBlue2', 'rgb': [92, 172, 238], 'fg': 'black'},
  \ {'name': 'SteelBlue3', 'rgb': [79, 148, 205], 'fg': 'white'},
  \ {'name': 'SteelBlue4', 'rgb': [54, 100, 139], 'fg': 'white'},
  \ {'name': 'DeepSkyBlue1', 'rgb': [0, 191, 255], 'fg': 'black'},
  \ {'name': 'DeepSkyBlue2', 'rgb': [0, 178, 238], 'fg': 'black'},
  \ {'name': 'DeepSkyBlue3', 'rgb': [0, 154, 205], 'fg': 'white'},
  \ {'name': 'DeepSkyBlue4', 'rgb': [0, 104, 139], 'fg': 'white'},
  \ {'name': 'SkyBlue1', 'rgb': [135, 206, 255], 'fg': 'black'},
  \ {'name': 'SkyBlue2', 'rgb': [126, 192, 238], 'fg': 'black'},
  \ {'name': 'SkyBlue3', 'rgb': [108, 166, 205], 'fg': 'white'},
  \ {'name': 'SkyBlue4', 'rgb': [74, 112, 139], 'fg': 'white'},
  \ {'name': 'LightSkyBlue1', 'rgb': [176, 226, 255], 'fg': 'black'},
  \ {'name': 'LightSkyBlue2', 'rgb': [164, 211, 238], 'fg': 'black'},
  \ {'name': 'LightSkyBlue3', 'rgb': [141, 182, 205], 'fg': 'black'},
  \ {'name': 'LightSkyBlue4', 'rgb': [96, 123, 139], 'fg': 'white'},
  \ {'name': 'SlateGray1', 'rgb': [198, 226, 255], 'fg': 'black'},
  \ {'name': 'SlateGray2', 'rgb': [185, 211, 238], 'fg': 'black'},
  \ {'name': 'SlateGray3', 'rgb': [159, 182, 205], 'fg': 'black'},
  \ {'name': 'SlateGray4', 'rgb': [108, 123, 139], 'fg': 'white'},
  \ {'name': 'LightSteelBlue1', 'rgb': [202, 225, 255], 'fg': 'black'},
  \ {'name': 'LightSteelBlue2', 'rgb': [188, 210, 238], 'fg': 'black'},
  \ {'name': 'LightSteelBlue3', 'rgb': [162, 181, 205], 'fg': 'black'},
  \ {'name': 'LightSteelBlue4', 'rgb': [110, 123, 139], 'fg': 'white'},
  \ {'name': 'LightBlue1', 'rgb': [191, 239, 255], 'fg': 'black'},
  \ {'name': 'LightBlue2', 'rgb': [178, 223, 238], 'fg': 'black'},
  \ {'name': 'LightBlue3', 'rgb': [154, 192, 205], 'fg': 'black'},
  \ {'name': 'LightBlue4', 'rgb': [104, 131, 139], 'fg': 'white'},
  \ {'name': 'LightCyan1', 'rgb': [224, 255, 255], 'fg': 'black'},
  \ {'name': 'LightCyan2', 'rgb': [209, 238, 238], 'fg': 'black'},
  \ {'name': 'LightCyan3', 'rgb': [180, 205, 205], 'fg': 'black'},
  \ {'name': 'LightCyan4', 'rgb': [122, 139, 139], 'fg': 'white'},
  \ {'name': 'PaleTurquoise1', 'rgb': [187, 255, 255], 'fg': 'black'},
  \ {'name': 'PaleTurquoise2', 'rgb': [174, 238, 238], 'fg': 'black'},
  \ {'name': 'PaleTurquoise3', 'rgb': [150, 205, 205], 'fg': 'black'},
  \ {'name': 'PaleTurquoise4', 'rgb': [102, 139, 139], 'fg': 'white'},
  \ {'name': 'CadetBlue1', 'rgb': [152, 245, 255], 'fg': 'black'},
  \ {'name': 'CadetBlue2', 'rgb': [142, 229, 238], 'fg': 'black'},
  \ {'name': 'CadetBlue3', 'rgb': [122, 197, 205], 'fg': 'black'},
  \ {'name': 'CadetBlue4', 'rgb': [83, 134, 139], 'fg': 'white'},
  \ {'name': 'turquoise1', 'rgb': [0, 245, 255], 'fg': 'black'},
  \ {'name': 'turquoise2', 'rgb': [0, 229, 238], 'fg': 'black'},
  \ {'name': 'turquoise3', 'rgb': [0, 197, 205], 'fg': 'black'},
  \ {'name': 'turquoise4', 'rgb': [0, 134, 139], 'fg': 'white'},
  \ {'name': 'cyan1', 'rgb': [0, 255, 255], 'fg': 'black'},
  \ {'name': 'cyan2', 'rgb': [0, 238, 238], 'fg': 'black'},
  \ {'name': 'cyan3', 'rgb': [0, 205, 205], 'fg': 'black'},
  \ {'name': 'cyan4', 'rgb': [0, 139, 139], 'fg': 'white'},
  \ {'name': 'DarkSlateGray1', 'rgb': [151, 255, 255], 'fg': 'black'},
  \ {'name': 'DarkSlateGray2', 'rgb': [141, 238, 238], 'fg': 'black'},
  \ {'name': 'DarkSlateGray3', 'rgb': [121, 205, 205], 'fg': 'black'},
  \ {'name': 'DarkSlateGray4', 'rgb': [82, 139, 139], 'fg': 'white'},
  \ {'name': 'aquamarine1', 'rgb': [127, 255, 212], 'fg': 'black'},
  \ {'name': 'aquamarine2', 'rgb': [118, 238, 198], 'fg': 'black'},
  \ {'name': 'aquamarine3', 'rgb': [102, 205, 170], 'fg': 'black'},
  \ {'name': 'aquamarine4', 'rgb': [69, 139, 116], 'fg': 'white'},
  \ {'name': 'DarkSeaGreen1', 'rgb': [193, 255, 193], 'fg': 'black'},
  \ {'name': 'DarkSeaGreen2', 'rgb': [180, 238, 180], 'fg': 'black'},
  \ {'name': 'DarkSeaGreen3', 'rgb': [155, 205, 155], 'fg': 'black'},
  \ {'name': 'DarkSeaGreen4', 'rgb': [105, 139, 105], 'fg': 'white'},
  \ {'name': 'SeaGreen1', 'rgb': [84, 255, 159], 'fg': 'black'},
  \ {'name': 'SeaGreen2', 'rgb': [78, 238, 148], 'fg': 'black'},
  \ {'name': 'SeaGreen3', 'rgb': [67, 205, 128], 'fg': 'black'},
  \ {'name': 'SeaGreen4', 'rgb': [46, 139, 87], 'fg': 'white'},
  \ {'name': 'PaleGreen1', 'rgb': [154, 255, 154], 'fg': 'black'},
  \ {'name': 'PaleGreen2', 'rgb': [144, 238, 144], 'fg': 'black'},
  \ {'name': 'PaleGreen3', 'rgb': [124, 205, 124], 'fg': 'black'},
  \ {'name': 'PaleGreen4', 'rgb': [84, 139, 84], 'fg': 'white'},
  \ {'name': 'SpringGreen1', 'rgb': [0, 255, 127], 'fg': 'black'},
  \ {'name': 'SpringGreen2', 'rgb': [0, 238, 118], 'fg': 'black'},
  \ {'name': 'SpringGreen3', 'rgb': [0, 205, 102], 'fg': 'white'},
  \ {'name': 'SpringGreen4', 'rgb': [0, 139, 69], 'fg': 'white'},
  \ {'name': 'green1', 'rgb': [0, 255, 0], 'fg': 'black'},
  \ {'name': 'green2', 'rgb': [0, 238, 0], 'fg': 'black'},
  \ {'name': 'green3', 'rgb': [0, 205, 0], 'fg': 'white'},
  \ {'name': 'green4', 'rgb': [0, 139, 0], 'fg': 'white'},
  \ {'name': 'chartreuse1', 'rgb': [127, 255, 0], 'fg': 'black'},
  \ {'name': 'chartreuse2', 'rgb': [118, 238, 0], 'fg': 'black'},
  \ {'name': 'chartreuse3', 'rgb': [102, 205, 0], 'fg': 'black'},
  \ {'name': 'chartreuse4', 'rgb': [69, 139, 0], 'fg': 'white'},
  \ {'name': 'OliveDrab1', 'rgb': [192, 255, 62], 'fg': 'black'},
  \ {'name': 'OliveDrab2', 'rgb': [179, 238, 58], 'fg': 'black'},
  \ {'name': 'OliveDrab3', 'rgb': [154, 205, 50], 'fg': 'black'},
  \ {'name': 'OliveDrab4', 'rgb': [105, 139, 34], 'fg': 'white'},
  \ {'name': 'DarkOliveGreen1', 'rgb': [202, 255, 112], 'fg': 'black'},
  \ {'name': 'DarkOliveGreen2', 'rgb': [188, 238, 104], 'fg': 'black'},
  \ {'name': 'DarkOliveGreen3', 'rgb': [162, 205, 90], 'fg': 'black'},
  \ {'name': 'DarkOliveGreen4', 'rgb': [110, 139, 61], 'fg': 'white'},
  \ {'name': 'khaki1', 'rgb': [255, 246, 143], 'fg': 'black'},
  \ {'name': 'khaki2', 'rgb': [238, 230, 133], 'fg': 'black'},
  \ {'name': 'khaki3', 'rgb': [205, 198, 115], 'fg': 'black'},
  \ {'name': 'khaki4', 'rgb': [139, 134, 78], 'fg': 'white'},
  \ {'name': 'LightGoldenrod1', 'rgb': [255, 236, 139], 'fg': 'black'},
  \ {'name': 'LightGoldenrod2', 'rgb': [238, 220, 130], 'fg': 'black'},
  \ {'name': 'LightGoldenrod3', 'rgb': [205, 190, 112], 'fg': 'black'},
  \ {'name': 'LightGoldenrod4', 'rgb': [139, 129, 76], 'fg': 'white'},
  \ {'name': 'LightYellow1', 'rgb': [255, 255, 224], 'fg': 'black'},
  \ {'name': 'LightYellow2', 'rgb': [238, 238, 209], 'fg': 'black'},
  \ {'name': 'LightYellow3', 'rgb': [205, 205, 180], 'fg': 'black'},
  \ {'name': 'LightYellow4', 'rgb': [139, 139, 122], 'fg': 'white'},
  \ {'name': 'yellow1', 'rgb': [255, 255, 0], 'fg': 'black'},
  \ {'name': 'yellow2', 'rgb': [238, 238, 0], 'fg': 'black'},
  \ {'name': 'yellow3', 'rgb': [205, 205, 0], 'fg': 'black'},
  \ {'name': 'yellow4', 'rgb': [139, 139, 0], 'fg': 'white'},
  \ {'name': 'gold1', 'rgb': [255, 215, 0], 'fg': 'black'},
  \ {'name': 'gold2', 'rgb': [238, 201, 0], 'fg': 'black'},
  \ {'name': 'gold3', 'rgb': [205, 173, 0], 'fg': 'black'},
  \ {'name': 'gold4', 'rgb': [139, 117, 0], 'fg': 'white'},
  \ {'name': 'goldenrod1', 'rgb': [255, 193, 37], 'fg': 'black'},
  \ {'name': 'goldenrod2', 'rgb': [238, 180, 34], 'fg': 'black'},
  \ {'name': 'goldenrod3', 'rgb': [205, 155, 29], 'fg': 'black'},
  \ {'name': 'goldenrod4', 'rgb': [139, 105, 20], 'fg': 'white'},
  \ {'name': 'DarkGoldenrod1', 'rgb': [255, 185, 15], 'fg': 'black'},
  \ {'name': 'DarkGoldenrod2', 'rgb': [238, 173, 14], 'fg': 'black'},
  \ {'name': 'DarkGoldenrod3', 'rgb': [205, 149, 12], 'fg': 'black'},
  \ {'name': 'DarkGoldenrod4', 'rgb': [139, 101, 8], 'fg': 'white'},
  \ {'name': 'RosyBrown1', 'rgb': [255, 193, 193], 'fg': 'black'},
  \ {'name': 'RosyBrown2', 'rgb': [238, 180, 180], 'fg': 'black'},
  \ {'name': 'RosyBrown3', 'rgb': [205, 155, 155], 'fg': 'white'},
  \ {'name': 'RosyBrown4', 'rgb': [139, 105, 105], 'fg': 'white'},
  \ {'name': 'IndianRed1', 'rgb': [255, 106, 106], 'fg': 'white'},
  \ {'name': 'IndianRed2', 'rgb': [238, 99, 99], 'fg': 'white'},
  \ {'name': 'IndianRed3', 'rgb': [205, 85, 85], 'fg': 'white'},
  \ {'name': 'IndianRed4', 'rgb': [139, 58, 58], 'fg': 'white'},
  \ {'name': 'sienna1', 'rgb': [255, 130, 71], 'fg': 'white'},
  \ {'name': 'sienna2', 'rgb': [238, 121, 66], 'fg': 'white'},
  \ {'name': 'sienna3', 'rgb': [205, 104, 57], 'fg': 'white'},
  \ {'name': 'sienna4', 'rgb': [139, 71, 38], 'fg': 'white'},
  \ {'name': 'burlywood1', 'rgb': [255, 211, 155], 'fg': 'black'},
  \ {'name': 'burlywood2', 'rgb': [238, 197, 145], 'fg': 'black'},
  \ {'name': 'burlywood3', 'rgb': [205, 170, 125], 'fg': 'black'},
  \ {'name': 'burlywood4', 'rgb': [139, 115, 85], 'fg': 'white'},
  \ {'name': 'wheat1', 'rgb': [255, 231, 186], 'fg': 'black'},
  \ {'name': 'wheat2', 'rgb': [238, 216, 174], 'fg': 'black'},
  \ {'name': 'wheat3', 'rgb': [205, 186, 150], 'fg': 'black'},
  \ {'name': 'wheat4', 'rgb': [139, 126, 102], 'fg': 'white'},
  \ {'name': 'tan1', 'rgb': [255, 165, 79], 'fg': 'black'},
  \ {'name': 'tan2', 'rgb': [238, 154, 73], 'fg': 'black'},
  \ {'name': 'tan3', 'rgb': [205, 133, 63], 'fg': 'white'},
  \ {'name': 'tan4', 'rgb': [139, 90, 43], 'fg': 'white'},
  \ {'name': 'chocolate1', 'rgb': [255, 127, 36], 'fg': 'white'},
  \ {'name': 'chocolate2', 'rgb': [238, 118, 33], 'fg': 'white'},
  \ {'name': 'chocolate3', 'rgb': [205, 102, 29], 'fg': 'white'},
  \ {'name': 'chocolate4', 'rgb': [139, 69, 19], 'fg': 'white'},
  \ {'name': 'firebrick1', 'rgb': [255, 48, 48], 'fg': 'white'},
  \ {'name': 'firebrick2', 'rgb': [238, 44, 44], 'fg': 'white'},
  \ {'name': 'firebrick3', 'rgb': [205, 38, 38], 'fg': 'white'},
  \ {'name': 'firebrick4', 'rgb': [139, 26, 26], 'fg': 'white'},
  \ {'name': 'brown1', 'rgb': [255, 64, 64], 'fg': 'white'},
  \ {'name': 'brown2', 'rgb': [238, 59, 59], 'fg': 'white'},
  \ {'name': 'brown3', 'rgb': [205, 51, 51], 'fg': 'white'},
  \ {'name': 'brown4', 'rgb': [139, 35, 35], 'fg': 'white'},
  \ {'name': 'salmon1', 'rgb': [255, 140, 105], 'fg': 'black'},
  \ {'name': 'salmon2', 'rgb': [238, 130, 98], 'fg': 'black'},
  \ {'name': 'salmon3', 'rgb': [205, 112, 84], 'fg': 'white'},
  \ {'name': 'salmon4', 'rgb': [139, 76, 57], 'fg': 'white'},
  \ {'name': 'LightSalmon1', 'rgb': [255, 160, 122], 'fg': 'black'},
  \ {'name': 'LightSalmon2', 'rgb': [238, 149, 114], 'fg': 'black'},
  \ {'name': 'LightSalmon3', 'rgb': [205, 129, 98], 'fg': 'white'},
  \ {'name': 'LightSalmon4', 'rgb': [139, 87, 66], 'fg': 'white'},
  \ {'name': 'orange1', 'rgb': [255, 165, 0], 'fg': 'black'},
  \ {'name': 'orange2', 'rgb': [238, 154, 0], 'fg': 'black'},
  \ {'name': 'orange3', 'rgb': [205, 133, 0], 'fg': 'white'},
  \ {'name': 'orange4', 'rgb': [139, 90, 0], 'fg': 'white'},
  \ {'name': 'DarkOrange1', 'rgb': [255, 127, 0], 'fg': 'black'},
  \ {'name': 'DarkOrange2', 'rgb': [238, 118, 0], 'fg': 'black'},
  \ {'name': 'DarkOrange3', 'rgb': [205, 102, 0], 'fg': 'white'},
  \ {'name': 'DarkOrange4', 'rgb': [139, 69, 0], 'fg': 'white'},
  \ {'name': 'coral1', 'rgb': [255, 114, 86], 'fg': 'black'},
  \ {'name': 'coral2', 'rgb': [238, 106, 80], 'fg': 'black'},
  \ {'name': 'coral3', 'rgb': [205, 91, 69], 'fg': 'white'},
  \ {'name': 'coral4', 'rgb': [139, 62, 47], 'fg': 'white'},
  \ {'name': 'tomato1', 'rgb': [255, 99, 71], 'fg': 'white'},
  \ {'name': 'tomato2', 'rgb': [238, 92, 66], 'fg': 'white'},
  \ {'name': 'tomato3', 'rgb': [205, 79, 57], 'fg': 'white'},
  \ {'name': 'tomato4', 'rgb': [139, 54, 38], 'fg': 'white'},
  \ {'name': 'OrangeRed1', 'rgb': [255, 69, 0], 'fg': 'white'},
  \ {'name': 'OrangeRed2', 'rgb': [238, 64, 0], 'fg': 'white'},
  \ {'name': 'OrangeRed3', 'rgb': [205, 55, 0], 'fg': 'white'},
  \ {'name': 'OrangeRed4', 'rgb': [139, 37, 0], 'fg': 'white'},
  \ {'name': 'red1', 'rgb': [255, 0, 0], 'fg': 'white'},
  \ {'name': 'red2', 'rgb': [238, 0, 0], 'fg': 'white'},
  \ {'name': 'red3', 'rgb': [205, 0, 0], 'fg': 'white'},
  \ {'name': 'red4', 'rgb': [139, 0, 0], 'fg': 'white'},
  \ {'name': 'DeepPink1', 'rgb': [255, 20, 147], 'fg': 'white'},
  \ {'name': 'DeepPink2', 'rgb': [238, 18, 137], 'fg': 'white'},
  \ {'name': 'DeepPink3', 'rgb': [205, 16, 118], 'fg': 'white'},
  \ {'name': 'DeepPink4', 'rgb': [139, 10, 80], 'fg': 'white'},
  \ {'name': 'HotPink1', 'rgb': [255, 110, 180], 'fg': 'black'},
  \ {'name': 'HotPink2', 'rgb': [238, 106, 167], 'fg': 'black'},
  \ {'name': 'HotPink3', 'rgb': [205, 96, 144], 'fg': 'black'},
  \ {'name': 'HotPink4', 'rgb': [139, 58, 98], 'fg': 'white'},
  \ {'name': 'pink1', 'rgb': [255, 181, 197], 'fg': 'black'},
  \ {'name': 'pink2', 'rgb': [238, 169, 184], 'fg': 'black'},
  \ {'name': 'pink3', 'rgb': [205, 145, 158], 'fg': 'black'},
  \ {'name': 'pink4', 'rgb': [139, 99, 108], 'fg': 'white'},
  \ {'name': 'LightPink1', 'rgb': [255, 174, 185], 'fg': 'black'},
  \ {'name': 'LightPink2', 'rgb': [238, 162, 173], 'fg': 'black'},
  \ {'name': 'LightPink3', 'rgb': [205, 140, 149], 'fg': 'black'},
  \ {'name': 'LightPink4', 'rgb': [139, 95, 101], 'fg': 'white'},
  \ {'name': 'PaleVioletRed1', 'rgb': [255, 130, 171], 'fg': 'black'},
  \ {'name': 'PaleVioletRed2', 'rgb': [238, 121, 159], 'fg': 'black'},
  \ {'name': 'PaleVioletRed3', 'rgb': [205, 104, 137], 'fg': 'white'},
  \ {'name': 'PaleVioletRed4', 'rgb': [139, 71, 93], 'fg': 'white'},
  \ {'name': 'maroon1', 'rgb': [255, 52, 179], 'fg': 'black'},
  \ {'name': 'maroon2', 'rgb': [238, 48, 167], 'fg': 'black'},
  \ {'name': 'maroon3', 'rgb': [205, 41, 144], 'fg': 'white'},
  \ {'name': 'maroon4', 'rgb': [139, 28, 98], 'fg': 'white'},
  \ {'name': 'VioletRed1', 'rgb': [255, 62, 150], 'fg': 'black'},
  \ {'name': 'VioletRed2', 'rgb': [238, 58, 140], 'fg': 'black'},
  \ {'name': 'VioletRed3', 'rgb': [205, 50, 120], 'fg': 'white'},
  \ {'name': 'VioletRed4', 'rgb': [139, 34, 82], 'fg': 'white'},
  \ {'name': 'magenta1', 'rgb': [255, 0, 255], 'fg': 'black'},
  \ {'name': 'magenta2', 'rgb': [238, 0, 238], 'fg': 'black'},
  \ {'name': 'magenta3', 'rgb': [205, 0, 205], 'fg': 'white'},
  \ {'name': 'magenta4', 'rgb': [139, 0, 139], 'fg': 'white'},
  \ {'name': 'orchid1', 'rgb': [255, 131, 250], 'fg': 'black'},
  \ {'name': 'orchid2', 'rgb': [238, 122, 233], 'fg': 'black'},
  \ {'name': 'orchid3', 'rgb': [205, 105, 201], 'fg': 'white'},
  \ {'name': 'orchid4', 'rgb': [139, 71, 137], 'fg': 'white'},
  \ {'name': 'plum1', 'rgb': [255, 187, 255], 'fg': 'black'},
  \ {'name': 'plum2', 'rgb': [238, 174, 238], 'fg': 'black'},
  \ {'name': 'plum3', 'rgb': [205, 150, 205], 'fg': 'black'},
  \ {'name': 'plum4', 'rgb': [139, 102, 139], 'fg': 'white'},
  \ {'name': 'MediumOrchid1', 'rgb': [224, 102, 255], 'fg': 'black'},
  \ {'name': 'MediumOrchid2', 'rgb': [209, 95, 238], 'fg': 'black'},
  \ {'name': 'MediumOrchid3', 'rgb': [180, 82, 205], 'fg': 'white'},
  \ {'name': 'MediumOrchid4', 'rgb': [122, 55, 139], 'fg': 'white'},
  \ {'name': 'DarkOrchid1', 'rgb': [191, 62, 255], 'fg': 'white'},
  \ {'name': 'DarkOrchid2', 'rgb': [178, 58, 238], 'fg': 'white'},
  \ {'name': 'DarkOrchid3', 'rgb': [154, 50, 205], 'fg': 'white'},
  \ {'name': 'DarkOrchid4', 'rgb': [104, 34, 139], 'fg': 'white'},
  \ {'name': 'purple1', 'rgb': [155, 48, 255], 'fg': 'white'},
  \ {'name': 'purple2', 'rgb': [145, 44, 238], 'fg': 'white'},
  \ {'name': 'purple3', 'rgb': [125, 38, 205], 'fg': 'white'},
  \ {'name': 'purple4', 'rgb': [85, 26, 139], 'fg': 'white'},
  \ {'name': 'MediumPurple1', 'rgb': [171, 130, 255], 'fg': 'black'},
  \ {'name': 'MediumPurple2', 'rgb': [159, 121, 238], 'fg': 'black'},
  \ {'name': 'MediumPurple3', 'rgb': [137, 104, 205], 'fg': 'white'},
  \ {'name': 'MediumPurple4', 'rgb': [93, 71, 139], 'fg': 'white'},
  \ {'name': 'thistle1', 'rgb': [255, 225, 255], 'fg': 'black'},
  \ {'name': 'thistle2', 'rgb': [238, 210, 238], 'fg': 'black'},
  \ {'name': 'thistle3', 'rgb': [205, 181, 205], 'fg': 'black'},
  \ {'name': 'thistle4', 'rgb': [139, 123, 139], 'fg': 'white'},
  \ {'name': 'gray0', 'rgb': [0, 0, 0], 'fg': 'white'},
  \ {'name': 'grey0', 'rgb': [0, 0, 0], 'fg': 'white'},
  \ {'name': 'gray1', 'rgb': [3, 3, 3], 'fg': 'white'},
  \ {'name': 'grey1', 'rgb': [3, 3, 3], 'fg': 'white'},
  \ {'name': 'gray2', 'rgb': [5, 5, 5], 'fg': 'white'},
  \ {'name': 'grey2', 'rgb': [5, 5, 5], 'fg': 'white'},
  \ {'name': 'gray3', 'rgb': [8, 8, 8], 'fg': 'white'},
  \ {'name': 'grey3', 'rgb': [8, 8, 8], 'fg': 'white'},
  \ {'name': 'gray4', 'rgb': [10, 10, 10], 'fg': 'white'},
  \ {'name': 'grey4', 'rgb': [10, 10, 10], 'fg': 'white'},
  \ {'name': 'gray5', 'rgb': [13, 13, 13], 'fg': 'white'},
  \ {'name': 'grey5', 'rgb': [13, 13, 13], 'fg': 'white'},
  \ {'name': 'gray6', 'rgb': [15, 15, 15], 'fg': 'white'},
  \ {'name': 'grey6', 'rgb': [15, 15, 15], 'fg': 'white'},
  \ {'name': 'gray7', 'rgb': [18, 18, 18], 'fg': 'white'},
  \ {'name': 'grey7', 'rgb': [18, 18, 18], 'fg': 'white'},
  \ {'name': 'gray8', 'rgb': [20, 20, 20], 'fg': 'white'},
  \ {'name': 'grey8', 'rgb': [20, 20, 20], 'fg': 'white'},
  \ {'name': 'gray9', 'rgb': [23, 23, 23], 'fg': 'white'},
  \ {'name': 'grey9', 'rgb': [23, 23, 23], 'fg': 'white'},
  \ {'name': 'gray10', 'rgb': [26, 26, 26], 'fg': 'white'},
  \ {'name': 'grey10', 'rgb': [26, 26, 26], 'fg': 'white'},
  \ {'name': 'gray11', 'rgb': [28, 28, 28], 'fg': 'white'},
  \ {'name': 'grey11', 'rgb': [28, 28, 28], 'fg': 'white'},
  \ {'name': 'gray12', 'rgb': [31, 31, 31], 'fg': 'white'},
  \ {'name': 'grey12', 'rgb': [31, 31, 31], 'fg': 'white'},
  \ {'name': 'gray13', 'rgb': [33, 33, 33], 'fg': 'white'},
  \ {'name': 'grey13', 'rgb': [33, 33, 33], 'fg': 'white'},
  \ {'name': 'gray14', 'rgb': [36, 36, 36], 'fg': 'white'},
  \ {'name': 'grey14', 'rgb': [36, 36, 36], 'fg': 'white'},
  \ {'name': 'gray15', 'rgb': [38, 38, 38], 'fg': 'white'},
  \ {'name': 'grey15', 'rgb': [38, 38, 38], 'fg': 'white'},
  \ {'name': 'gray16', 'rgb': [41, 41, 41], 'fg': 'white'},
  \ {'name': 'grey16', 'rgb': [41, 41, 41], 'fg': 'white'},
  \ {'name': 'gray17', 'rgb': [43, 43, 43], 'fg': 'white'},
  \ {'name': 'grey17', 'rgb': [43, 43, 43], 'fg': 'white'},
  \ {'name': 'gray18', 'rgb': [46, 46, 46], 'fg': 'white'},
  \ {'name': 'grey18', 'rgb': [46, 46, 46], 'fg': 'white'},
  \ {'name': 'gray19', 'rgb': [48, 48, 48], 'fg': 'white'},
  \ {'name': 'grey19', 'rgb': [48, 48, 48], 'fg': 'white'},
  \ {'name': 'gray20', 'rgb': [51, 51, 51], 'fg': 'white'},
  \ {'name': 'grey20', 'rgb': [51, 51, 51], 'fg': 'white'},
  \ {'name': 'gray21', 'rgb': [54, 54, 54], 'fg': 'white'},
  \ {'name': 'grey21', 'rgb': [54, 54, 54], 'fg': 'white'},
  \ {'name': 'gray22', 'rgb': [56, 56, 56], 'fg': 'white'},
  \ {'name': 'grey22', 'rgb': [56, 56, 56], 'fg': 'white'},
  \ {'name': 'gray23', 'rgb': [59, 59, 59], 'fg': 'white'},
  \ {'name': 'grey23', 'rgb': [59, 59, 59], 'fg': 'white'},
  \ {'name': 'gray24', 'rgb': [61, 61, 61], 'fg': 'white'},
  \ {'name': 'grey24', 'rgb': [61, 61, 61], 'fg': 'white'},
  \ {'name': 'gray25', 'rgb': [64, 64, 64], 'fg': 'white'},
  \ {'name': 'grey25', 'rgb': [64, 64, 64], 'fg': 'white'},
  \ {'name': 'gray26', 'rgb': [66, 66, 66], 'fg': 'white'},
  \ {'name': 'grey26', 'rgb': [66, 66, 66], 'fg': 'white'},
  \ {'name': 'gray27', 'rgb': [69, 69, 69], 'fg': 'white'},
  \ {'name': 'grey27', 'rgb': [69, 69, 69], 'fg': 'white'},
  \ {'name': 'gray28', 'rgb': [71, 71, 71], 'fg': 'white'},
  \ {'name': 'grey28', 'rgb': [71, 71, 71], 'fg': 'white'},
  \ {'name': 'gray29', 'rgb': [74, 74, 74], 'fg': 'white'},
  \ {'name': 'grey29', 'rgb': [74, 74, 74], 'fg': 'white'},
  \ {'name': 'gray30', 'rgb': [77, 77, 77], 'fg': 'white'},
  \ {'name': 'grey30', 'rgb': [77, 77, 77], 'fg': 'white'},
  \ {'name': 'gray31', 'rgb': [79, 79, 79], 'fg': 'white'},
  \ {'name': 'grey31', 'rgb': [79, 79, 79], 'fg': 'white'},
  \ {'name': 'gray32', 'rgb': [82, 82, 82], 'fg': 'white'},
  \ {'name': 'grey32', 'rgb': [82, 82, 82], 'fg': 'white'},
  \ {'name': 'gray33', 'rgb': [84, 84, 84], 'fg': 'white'},
  \ {'name': 'grey33', 'rgb': [84, 84, 84], 'fg': 'white'},
  \ {'name': 'gray34', 'rgb': [87, 87, 87], 'fg': 'white'},
  \ {'name': 'grey34', 'rgb': [87, 87, 87], 'fg': 'white'},
  \ {'name': 'gray35', 'rgb': [89, 89, 89], 'fg': 'white'},
  \ {'name': 'grey35', 'rgb': [89, 89, 89], 'fg': 'white'},
  \ {'name': 'gray36', 'rgb': [92, 92, 92], 'fg': 'white'},
  \ {'name': 'grey36', 'rgb': [92, 92, 92], 'fg': 'white'},
  \ {'name': 'gray37', 'rgb': [94, 94, 94], 'fg': 'white'},
  \ {'name': 'grey37', 'rgb': [94, 94, 94], 'fg': 'white'},
  \ {'name': 'gray38', 'rgb': [97, 97, 97], 'fg': 'white'},
  \ {'name': 'grey38', 'rgb': [97, 97, 97], 'fg': 'white'},
  \ {'name': 'gray39', 'rgb': [99, 99, 99], 'fg': 'white'},
  \ {'name': 'grey39', 'rgb': [99, 99, 99], 'fg': 'white'},
  \ {'name': 'gray40', 'rgb': [102, 102, 102], 'fg': 'white'},
  \ {'name': 'grey40', 'rgb': [102, 102, 102], 'fg': 'white'},
  \ {'name': 'gray41', 'rgb': [105, 105, 105], 'fg': 'white'},
  \ {'name': 'grey41', 'rgb': [105, 105, 105], 'fg': 'white'},
  \ {'name': 'gray42', 'rgb': [107, 107, 107], 'fg': 'white'},
  \ {'name': 'grey42', 'rgb': [107, 107, 107], 'fg': 'white'},
  \ {'name': 'gray43', 'rgb': [110, 110, 110], 'fg': 'white'},
  \ {'name': 'grey43', 'rgb': [110, 110, 110], 'fg': 'white'},
  \ {'name': 'gray44', 'rgb': [112, 112, 112], 'fg': 'white'},
  \ {'name': 'grey44', 'rgb': [112, 112, 112], 'fg': 'white'},
  \ {'name': 'gray45', 'rgb': [115, 115, 115], 'fg': 'white'},
  \ {'name': 'grey45', 'rgb': [115, 115, 115], 'fg': 'white'},
  \ {'name': 'gray46', 'rgb': [117, 117, 117], 'fg': 'white'},
  \ {'name': 'grey46', 'rgb': [117, 117, 117], 'fg': 'white'},
  \ {'name': 'gray47', 'rgb': [120, 120, 120], 'fg': 'white'},
  \ {'name': 'grey47', 'rgb': [120, 120, 120], 'fg': 'white'},
  \ {'name': 'gray48', 'rgb': [122, 122, 122], 'fg': 'white'},
  \ {'name': 'grey48', 'rgb': [122, 122, 122], 'fg': 'white'},
  \ {'name': 'gray49', 'rgb': [125, 125, 125], 'fg': 'white'},
  \ {'name': 'grey49', 'rgb': [125, 125, 125], 'fg': 'white'},
  \ {'name': 'gray50', 'rgb': [127, 127, 127], 'fg': 'white'},
  \ {'name': 'grey50', 'rgb': [127, 127, 127], 'fg': 'white'},
  \ {'name': 'gray51', 'rgb': [130, 130, 130], 'fg': 'black'},
  \ {'name': 'grey51', 'rgb': [130, 130, 130], 'fg': 'black'},
  \ {'name': 'gray52', 'rgb': [133, 133, 133], 'fg': 'black'},
  \ {'name': 'grey52', 'rgb': [133, 133, 133], 'fg': 'black'},
  \ {'name': 'gray53', 'rgb': [135, 135, 135], 'fg': 'black'},
  \ {'name': 'grey53', 'rgb': [135, 135, 135], 'fg': 'black'},
  \ {'name': 'gray54', 'rgb': [138, 138, 138], 'fg': 'black'},
  \ {'name': 'grey54', 'rgb': [138, 138, 138], 'fg': 'black'},
  \ {'name': 'gray55', 'rgb': [140, 140, 140], 'fg': 'black'},
  \ {'name': 'grey55', 'rgb': [140, 140, 140], 'fg': 'black'},
  \ {'name': 'gray56', 'rgb': [143, 143, 143], 'fg': 'black'},
  \ {'name': 'grey56', 'rgb': [143, 143, 143], 'fg': 'black'},
  \ {'name': 'gray57', 'rgb': [145, 145, 145], 'fg': 'black'},
  \ {'name': 'grey57', 'rgb': [145, 145, 145], 'fg': 'black'},
  \ {'name': 'gray58', 'rgb': [148, 148, 148], 'fg': 'black'},
  \ {'name': 'grey58', 'rgb': [148, 148, 148], 'fg': 'black'},
  \ {'name': 'gray59', 'rgb': [150, 150, 150], 'fg': 'black'},
  \ {'name': 'grey59', 'rgb': [150, 150, 150], 'fg': 'black'},
  \ {'name': 'gray60', 'rgb': [153, 153, 153], 'fg': 'black'},
  \ {'name': 'grey60', 'rgb': [153, 153, 153], 'fg': 'black'},
  \ {'name': 'gray61', 'rgb': [156, 156, 156], 'fg': 'black'},
  \ {'name': 'grey61', 'rgb': [156, 156, 156], 'fg': 'black'},
  \ {'name': 'gray62', 'rgb': [158, 158, 158], 'fg': 'black'},
  \ {'name': 'grey62', 'rgb': [158, 158, 158], 'fg': 'black'},
  \ {'name': 'gray63', 'rgb': [161, 161, 161], 'fg': 'black'},
  \ {'name': 'grey63', 'rgb': [161, 161, 161], 'fg': 'black'},
  \ {'name': 'gray64', 'rgb': [163, 163, 163], 'fg': 'black'},
  \ {'name': 'grey64', 'rgb': [163, 163, 163], 'fg': 'black'},
  \ {'name': 'gray65', 'rgb': [166, 166, 166], 'fg': 'black'},
  \ {'name': 'grey65', 'rgb': [166, 166, 166], 'fg': 'black'},
  \ {'name': 'gray66', 'rgb': [168, 168, 168], 'fg': 'black'},
  \ {'name': 'grey66', 'rgb': [168, 168, 168], 'fg': 'black'},
  \ {'name': 'gray67', 'rgb': [171, 171, 171], 'fg': 'black'},
  \ {'name': 'grey67', 'rgb': [171, 171, 171], 'fg': 'black'},
  \ {'name': 'gray68', 'rgb': [173, 173, 173], 'fg': 'black'},
  \ {'name': 'grey68', 'rgb': [173, 173, 173], 'fg': 'black'},
  \ {'name': 'gray69', 'rgb': [176, 176, 176], 'fg': 'black'},
  \ {'name': 'grey69', 'rgb': [176, 176, 176], 'fg': 'black'},
  \ {'name': 'gray70', 'rgb': [179, 179, 179], 'fg': 'black'},
  \ {'name': 'grey70', 'rgb': [179, 179, 179], 'fg': 'black'},
  \ {'name': 'gray71', 'rgb': [181, 181, 181], 'fg': 'black'},
  \ {'name': 'grey71', 'rgb': [181, 181, 181], 'fg': 'black'},
  \ {'name': 'gray72', 'rgb': [184, 184, 184], 'fg': 'black'},
  \ {'name': 'grey72', 'rgb': [184, 184, 184], 'fg': 'black'},
  \ {'name': 'gray73', 'rgb': [186, 186, 186], 'fg': 'black'},
  \ {'name': 'grey73', 'rgb': [186, 186, 186], 'fg': 'black'},
  \ {'name': 'gray74', 'rgb': [189, 189, 189], 'fg': 'black'},
  \ {'name': 'grey74', 'rgb': [189, 189, 189], 'fg': 'black'},
  \ {'name': 'gray75', 'rgb': [191, 191, 191], 'fg': 'black'},
  \ {'name': 'grey75', 'rgb': [191, 191, 191], 'fg': 'black'},
  \ {'name': 'gray76', 'rgb': [194, 194, 194], 'fg': 'black'},
  \ {'name': 'grey76', 'rgb': [194, 194, 194], 'fg': 'black'},
  \ {'name': 'gray77', 'rgb': [196, 196, 196], 'fg': 'black'},
  \ {'name': 'grey77', 'rgb': [196, 196, 196], 'fg': 'black'},
  \ {'name': 'gray78', 'rgb': [199, 199, 199], 'fg': 'black'},
  \ {'name': 'grey78', 'rgb': [199, 199, 199], 'fg': 'black'},
  \ {'name': 'gray79', 'rgb': [201, 201, 201], 'fg': 'black'},
  \ {'name': 'grey79', 'rgb': [201, 201, 201], 'fg': 'black'},
  \ {'name': 'gray80', 'rgb': [204, 204, 204], 'fg': 'black'},
  \ {'name': 'grey80', 'rgb': [204, 204, 204], 'fg': 'black'},
  \ {'name': 'gray81', 'rgb': [207, 207, 207], 'fg': 'black'},
  \ {'name': 'grey81', 'rgb': [207, 207, 207], 'fg': 'black'},
  \ {'name': 'gray82', 'rgb': [209, 209, 209], 'fg': 'black'},
  \ {'name': 'grey82', 'rgb': [209, 209, 209], 'fg': 'black'},
  \ {'name': 'gray83', 'rgb': [212, 212, 212], 'fg': 'black'},
  \ {'name': 'grey83', 'rgb': [212, 212, 212], 'fg': 'black'},
  \ {'name': 'gray84', 'rgb': [214, 214, 214], 'fg': 'black'},
  \ {'name': 'grey84', 'rgb': [214, 214, 214], 'fg': 'black'},
  \ {'name': 'gray85', 'rgb': [217, 217, 217], 'fg': 'black'},
  \ {'name': 'grey85', 'rgb': [217, 217, 217], 'fg': 'black'},
  \ {'name': 'gray86', 'rgb': [219, 219, 219], 'fg': 'black'},
  \ {'name': 'grey86', 'rgb': [219, 219, 219], 'fg': 'black'},
  \ {'name': 'gray87', 'rgb': [222, 222, 222], 'fg': 'black'},
  \ {'name': 'grey87', 'rgb': [222, 222, 222], 'fg': 'black'},
  \ {'name': 'gray88', 'rgb': [224, 224, 224], 'fg': 'black'},
  \ {'name': 'grey88', 'rgb': [224, 224, 224], 'fg': 'black'},
  \ {'name': 'gray89', 'rgb': [227, 227, 227], 'fg': 'black'},
  \ {'name': 'grey89', 'rgb': [227, 227, 227], 'fg': 'black'},
  \ {'name': 'gray90', 'rgb': [229, 229, 229], 'fg': 'black'},
  \ {'name': 'grey90', 'rgb': [229, 229, 229], 'fg': 'black'},
  \ {'name': 'gray91', 'rgb': [232, 232, 232], 'fg': 'black'},
  \ {'name': 'grey91', 'rgb': [232, 232, 232], 'fg': 'black'},
  \ {'name': 'gray92', 'rgb': [235, 235, 235], 'fg': 'black'},
  \ {'name': 'grey92', 'rgb': [235, 235, 235], 'fg': 'black'},
  \ {'name': 'gray93', 'rgb': [237, 237, 237], 'fg': 'black'},
  \ {'name': 'grey93', 'rgb': [237, 237, 237], 'fg': 'black'},
  \ {'name': 'gray94', 'rgb': [240, 240, 240], 'fg': 'black'},
  \ {'name': 'grey94', 'rgb': [240, 240, 240], 'fg': 'black'},
  \ {'name': 'gray95', 'rgb': [242, 242, 242], 'fg': 'black'},
  \ {'name': 'grey95', 'rgb': [242, 242, 242], 'fg': 'black'},
  \ {'name': 'gray96', 'rgb': [245, 245, 245], 'fg': 'black'},
  \ {'name': 'grey96', 'rgb': [245, 245, 245], 'fg': 'black'},
  \ {'name': 'gray97', 'rgb': [247, 247, 247], 'fg': 'black'},
  \ {'name': 'grey97', 'rgb': [247, 247, 247], 'fg': 'black'},
  \ {'name': 'gray98', 'rgb': [250, 250, 250], 'fg': 'black'},
  \ {'name': 'grey98', 'rgb': [250, 250, 250], 'fg': 'black'},
  \ {'name': 'gray99', 'rgb': [252, 252, 252], 'fg': 'black'},
  \ {'name': 'grey99', 'rgb': [252, 252, 252], 'fg': 'black'},
  \ {'name': 'gray100', 'rgb': [255, 255, 255], 'fg': 'black'},
  \ {'name': 'grey100', 'rgb': [255, 255, 255], 'fg': 'black'},
  \ {'name': 'dark grey', 'rgb': [169, 169, 169], 'fg': 'black'},
  \ {'name': 'DarkGrey', 'rgb': [169, 169, 169], 'fg': 'black'},
  \ {'name': 'dark gray', 'rgb': [169, 169, 169], 'fg': 'black'},
  \ {'name': 'DarkGray', 'rgb': [169, 169, 169], 'fg': 'black'},
  \ {'name': 'dark blue', 'rgb': [0, 0, 139], 'fg': 'white'},
  \ {'name': 'DarkBlue', 'rgb': [0, 0, 139], 'fg': 'white'},
  \ {'name': 'dark cyan', 'rgb': [0, 139, 139], 'fg': 'white'},
  \ {'name': 'DarkCyan', 'rgb': [0, 139, 139], 'fg': 'white'},
  \ {'name': 'dark magenta', 'rgb': [139, 0, 139], 'fg': 'white'},
  \ {'name': 'DarkMagenta', 'rgb': [139, 0, 139], 'fg': 'white'},
  \ {'name': 'dark red', 'rgb': [139, 0, 0], 'fg': 'white'},
  \ {'name': 'DarkRed', 'rgb': [139, 0, 0], 'fg': 'white'},
  \ {'name': 'light green', 'rgb': [144, 238, 144], 'fg': 'black'},
  \ {'name': 'LightGreen', 'rgb': [144, 238, 144], 'fg': 'black'},
  \ ]
"}}}
let s:FORMATS = {'hex': '#%02x%02x%02x', 'rgb': 'rgb(%d,%d,%d)'}

"=============================================================================
"Main
let s:source = {'name': 'gvimrgb', 'syntax': 'uniteSource__gvimrgb', 'hooks': {}, 'action_table': {}}
function! s:source.gather_candidates(args, context) "{{{
  let candidates = []
  let idx = 0
  for color in s:RGBS
    let _ = {'word': color.name, 'kind': 'word', 'source__rgbs_idx': idx}
    let _['abbr'] = printf('%-24s (%s)  RGB(%3d,%3d,%3d)', color.name, call('s:_rgb2hex', color.rgb), color.rgb[0], color.rgb[1], color.rgb[2])
    call add(candidates, _)
    let idx += 1
  endfor
  return get(a:args, 0, '')==?'sort' ? sort(candidates, 's:_sort_candidates_alphabetical') : candidates
endfunction
"}}}
function! s:source.hooks.on_syntax(args, context) "{{{
  for color in s:RGBS
    let pindex = call('s:_get_palette_index', color.rgb)
    let name = substitute(substitute(color.name, '\s', '', 'g'), '.*', '\L\0', '')
    let group = 'uniteSource__gvimrgb_'. name
    let pattern = '/\s*\<'. color.name. '\>\s\+(#.*/'
    execute 'syntax match' group pattern 'contained containedin=uniteSource__gvimrgb'
    execute 'highlight default '. group. ' guibg='. name ' guifg='. color.fg ' ctermfg='. color.fg ' ctermbg='. pindex
  endfor
endfunction
"}}}

let s:source.action_table.yank_hex = {'description' : 'yank HEX value "#rrggbb"'}
function! s:source.action_table.yank_hex.func(candidate) "{{{
  call s:_yank_format(s:FORMATS.hex, a:candidate)
endfunction
"}}}
let s:source.action_table.yank_rgb = {'description': 'yank RGB value "rgb(r,g,b)"'}
function! s:source.action_table.yank_rgb.func(candidate) "{{{
  call s:_yank_format(s:FORMATS.rgb, a:candidate)
endfunction
"}}}
let s:source.action_table.insert_hex = {'description' : 'insert HEX value "#rrggbb"'}
function! s:source.action_table.insert_hex.func(candidate) "{{{
  call s:_insert_format(s:FORMATS.hex, a:candidate)
endfunction
"}}}
let s:source.action_table.insert_rgb = {'description' : 'insert RGB value "rgb(r,g,b)"'}
function! s:source.action_table.insert_rgb.func(candidate) "{{{
  call s:_insert_format(s:FORMATS.rgb, a:candidate)
endfunction
"}}}

function! unite#sources#gvimrgb#define()
  return s:source
endfunction


"=============================================================================
function! s:_rgb2hex(r, g, b) "{{{
  return printf("#%02x%02x%02x", a:r, a:g, a:b)
endfunction
"}}}
"s:source.gather_candidates()
function! s:_sort_candidates_alphabetical(lhs, rhs) "{{{
  return a:lhs.word ==? a:rhs.word ? 0 : a:lhs.word >? a:rhs.word ? 1 : -1
endfunction
"}}}
"s:source.hooks.on_syntax()
function! s:_get_palette_index(r, g, b) "{{{
  " get the closest grey
  let l:gx = s:__grey_level2number(a:r)
  let l:gy = s:__grey_level2number(a:g)
  let l:gz = s:__grey_level2number(a:b)

  " get the closest color
  let l:x = s:__rgb_level2number(a:r)
  let l:y = s:__rgb_level2number(a:g)
  let l:z = s:__rgb_level2number(a:b)

  if l:gx == l:gy && l:gy == l:gz
    " there are two possibilities
    let l:dgr = s:__grey_number2level(l:gx) - a:r
    let l:dgg = s:__grey_number2level(l:gy) - a:g
    let l:dgb = s:__grey_number2level(l:gz) - a:b
    let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
    let l:dr = s:__rgb_number2level(l:gx) - a:r
    let l:dg = s:__rgb_number2level(l:gy) - a:g
    let l:db = s:__rgb_number2level(l:gz) - a:b
    let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
    if l:dgrey < l:drgb
      " use the grey
      return s:__grey_color2index(l:gx)
    else
      " use the color
      return s:__rgb_color2index(l:x, l:y, l:z)
    endif
  else
    " only one possibility
    return s:__rgb_color2index(l:x, l:y, l:z)
  endif
endfunction
"}}}
function! s:__grey_level2number(x) "{{{
  if &t_Co == 88
    if a:x < 23
      return 0
    elseif a:x < 69
      return 1
    elseif a:x < 103
      return 2
    elseif a:x < 127
      return 3
    elseif a:x < 150
      return 4
    elseif a:x < 173
      return 5
    elseif a:x < 196
      return 6
    elseif a:x < 219
      return 7
    elseif a:x < 243
      return 8
    else
      return 9
    endif
  else
    if a:x < 14
      return 0
    else
      let l:n = (a:x - 8) / 10
      let l:m = (a:x - 8) % 10
      if l:m < 5
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfunction
"}}}
function! s:__rgb_level2number(x) "{{{
  if &t_Co == 88
    if a:x < 69
      return 0
    elseif a:x < 172
      return 1
    elseif a:x < 230
      return 2
    else
      return 3
    endif
  else
    if a:x < 75
      return 0
    else
      let l:n = (a:x - 55) / 40
      let l:m = (a:x - 55) % 40
      if l:m < 20
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfunction
"}}}
function! s:__grey_number2level(n) "{{{
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 46
    elseif a:n == 2
      return 92
    elseif a:n == 3
      return 115
    elseif a:n == 4
      return 139
    elseif a:n == 5
      return 162
    elseif a:n == 6
      return 185
    elseif a:n == 7
      return 208
    elseif a:n == 8
      return 231
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 8 + (a:n * 10)
    endif
  endif
endfunction
"}}}
function! s:__rgb_number2level(n) "{{{
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 139
    elseif a:n == 2
      return 205
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 55 + (a:n * 40)
    endif
  endif
endfunction
"}}}
function! s:__grey_color2index(n) "{{{
  if &t_Co == 88
    if a:n == 0
      return 16
    elseif a:n == 9
      return 79
    else
      return 79 + a:n
    endif
  else
    if a:n == 0
      return 16
    elseif a:n == 25
      return 231
    else
      return 231 + a:n
    endif
  endif
endfunction
"}}}
function! s:__rgb_color2index(x, y, z) "{{{
  if &t_Co == 88
    return 16 + (a:x * 16) + (a:y * 4) + a:z
  else
    return 16 + (a:x * 36) + (a:y * 6) + a:z
  endif
endfunction
"}}}
"--------------------------------------
"s:source.action_table
function! s:_yank_format(format, candidate) "{{{
  let color = s:RGBS[a:candidate.source__rgbs_idx]
  let @" = printf(a:format, color.rgb[0], color.rgb[1], color.rgb[2])
endfunction
"}}}
function! s:_insert_format(format, candidate) "{{{
  let color = s:RGBS[a:candidate.source__rgbs_idx]
  let value = printf(a:format, color.rgb[0], color.rgb[1], color.rgb[2])

  let context = unite#get_current_unite().context

  if !context.complete
    " Paste.
    let old_reg = @"
    let @" = value
    normal! ""p
    let @" = old_reg

    return
  endif

  let cur_text = matchstr(getline('.'), '^.*\%'
        \ . (context.col-1) . 'c.')

  let next_line = getline('.')[context.col :]
  call setline(line('.'),
        \ split(cur_text . value . next_line,
        \            '\n\|\r\n'))
  let next_col = len(cur_text)+len(value)+1
  call cursor('', next_col)

  if next_col < col('$')
    startinsert
  else
    startinsert!
  endif
endfunction
"}}}

"=============================================================================
"END "{{{1
let &cpo = s:save_cpo| unlet s:save_cpo
