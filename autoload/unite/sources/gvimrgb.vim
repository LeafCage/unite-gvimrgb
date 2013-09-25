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
let s:COLORS = {} "{{{
let s:COLORS['snow'] = {'rgb': [255, 250, 250], 'fg': 'black'}
let s:COLORS['ghost white'] = {'rgb': [248, 248, 255], 'fg': 'black'}
let s:COLORS['GhostWhite'] = {'rgb': [248, 248, 255], 'fg': 'black'}
let s:COLORS['white smoke'] = {'rgb': [245, 245, 245], 'fg': 'black'}
let s:COLORS['WhiteSmoke'] = {'rgb': [245, 245, 245], 'fg': 'black'}
let s:COLORS['gainsboro'] = {'rgb': [220, 220, 220], 'fg': 'black'}
let s:COLORS['floral white'] = {'rgb': [255, 250, 240], 'fg': 'black'}
let s:COLORS['FloralWhite'] = {'rgb': [255, 250, 240], 'fg': 'black'}
let s:COLORS['old lace'] = {'rgb': [253, 245, 230], 'fg': 'black'}
let s:COLORS['OldLace'] = {'rgb': [253, 245, 230], 'fg': 'black'}
let s:COLORS['linen'] = {'rgb': [250, 240, 230], 'fg': 'black'}
let s:COLORS['antique white'] = {'rgb': [250, 235, 215], 'fg': 'black'}
let s:COLORS['AntiqueWhite'] = {'rgb': [250, 235, 215], 'fg': 'black'}
let s:COLORS['papaya whip'] = {'rgb': [255, 239, 213], 'fg': 'black'}
let s:COLORS['PapayaWhip'] = {'rgb': [255, 239, 213], 'fg': 'black'}
let s:COLORS['blanched almond'] = {'rgb': [255, 235, 205], 'fg': 'black'}
let s:COLORS['BlanchedAlmond'] = {'rgb': [255, 235, 205], 'fg': 'black'}
let s:COLORS['bisque'] = {'rgb': [255, 228, 196], 'fg': 'black'}
let s:COLORS['peach puff'] = {'rgb': [255, 218, 185], 'fg': 'black'}
let s:COLORS['PeachPuff'] = {'rgb': [255, 218, 185], 'fg': 'black'}
let s:COLORS['navajo white'] = {'rgb': [255, 222, 173], 'fg': 'black'}
let s:COLORS['NavajoWhite'] = {'rgb': [255, 222, 173], 'fg': 'black'}
let s:COLORS['moccasin'] = {'rgb': [255, 228, 181], 'fg': 'black'}
let s:COLORS['cornsilk'] = {'rgb': [255, 248, 220], 'fg': 'black'}
let s:COLORS['ivory'] = {'rgb': [255, 255, 240], 'fg': 'black'}
let s:COLORS['lemon chiffon'] = {'rgb': [255, 250, 205], 'fg': 'black'}
let s:COLORS['LemonChiffon'] = {'rgb': [255, 250, 205], 'fg': 'black'}
let s:COLORS['seashell'] = {'rgb': [255, 245, 238], 'fg': 'black'}
let s:COLORS['honeydew'] = {'rgb': [240, 255, 240], 'fg': 'black'}
let s:COLORS['mint cream'] = {'rgb': [245, 255, 250], 'fg': 'black'}
let s:COLORS['MintCream'] = {'rgb': [245, 255, 250], 'fg': 'black'}
let s:COLORS['azure'] = {'rgb': [240, 255, 255], 'fg': 'black'}
let s:COLORS['alice blue'] = {'rgb': [240, 248, 255], 'fg': 'black'}
let s:COLORS['AliceBlue'] = {'rgb': [240, 248, 255], 'fg': 'black'}
let s:COLORS['lavender'] = {'rgb': [230, 230, 250], 'fg': 'black'}
let s:COLORS['lavender blush'] = {'rgb': [255, 240, 245], 'fg': 'black'}
let s:COLORS['LavenderBlush'] = {'rgb': [255, 240, 245], 'fg': 'black'}
let s:COLORS['misty rose'] = {'rgb': [255, 228, 225], 'fg': 'black'}
let s:COLORS['MistyRose'] = {'rgb': [255, 228, 225], 'fg': 'black'}
let s:COLORS['white'] = {'rgb': [255, 255, 255], 'fg': 'black'}
let s:COLORS['black'] = {'rgb': [0, 0, 0], 'fg': 'white'}
let s:COLORS['dark slate gray'] = {'rgb': [47, 79, 79], 'fg': 'white'}
let s:COLORS['DarkSlateGray'] = {'rgb': [47, 79, 79], 'fg': 'white'}
let s:COLORS['dark slate grey'] = {'rgb': [47, 79, 79], 'fg': 'white'}
let s:COLORS['DarkSlateGrey'] = {'rgb': [47, 79, 79], 'fg': 'white'}
let s:COLORS['dim gray'] = {'rgb': [105, 105, 105], 'fg': 'white'}
let s:COLORS['DimGray'] = {'rgb': [105, 105, 105], 'fg': 'white'}
let s:COLORS['dim grey'] = {'rgb': [105, 105, 105], 'fg': 'white'}
let s:COLORS['DimGrey'] = {'rgb': [105, 105, 105], 'fg': 'white'}
let s:COLORS['slate gray'] = {'rgb': [112, 128, 144], 'fg': 'white'}
let s:COLORS['SlateGray'] = {'rgb': [112, 128, 144], 'fg': 'white'}
let s:COLORS['slate grey'] = {'rgb': [112, 128, 144], 'fg': 'white'}
let s:COLORS['SlateGrey'] = {'rgb': [112, 128, 144], 'fg': 'white'}
let s:COLORS['light slate gray'] = {'rgb': [119, 136, 153], 'fg': 'white'}
let s:COLORS['LightSlateGray'] = {'rgb': [119, 136, 153], 'fg': 'white'}
let s:COLORS['light slate grey'] = {'rgb': [119, 136, 153], 'fg': 'white'}
let s:COLORS['LightSlateGrey'] = {'rgb': [119, 136, 153], 'fg': 'white'}
let s:COLORS['gray'] = {'rgb': [190, 190, 190], 'fg': 'black'}
let s:COLORS['grey'] = {'rgb': [190, 190, 190], 'fg': 'black'}
let s:COLORS['light grey'] = {'rgb': [211, 211, 211], 'fg': 'black'}
let s:COLORS['LightGrey'] = {'rgb': [211, 211, 211], 'fg': 'black'}
let s:COLORS['light gray'] = {'rgb': [211, 211, 211], 'fg': 'black'}
let s:COLORS['LightGray'] = {'rgb': [211, 211, 211], 'fg': 'black'}
let s:COLORS['midnight blue'] = {'rgb': [25, 25, 112], 'fg': 'white'}
let s:COLORS['MidnightBlue'] = {'rgb': [25, 25, 112], 'fg': 'white'}
let s:COLORS['navy'] = {'rgb': [0, 0, 128], 'fg': 'white'}
let s:COLORS['navy blue'] = {'rgb': [0, 0, 128], 'fg': 'white'}
let s:COLORS['NavyBlue'] = {'rgb': [0, 0, 128], 'fg': 'white'}
let s:COLORS['cornflower blue'] = {'rgb': [100, 149, 237], 'fg': 'white'}
let s:COLORS['CornflowerBlue'] = {'rgb': [100, 149, 237], 'fg': 'white'}
let s:COLORS['dark slate blue'] = {'rgb': [72, 61, 139], 'fg': 'white'}
let s:COLORS['DarkSlateBlue'] = {'rgb': [72, 61, 139], 'fg': 'white'}
let s:COLORS['slate blue'] = {'rgb': [106, 90, 205], 'fg': 'white'}
let s:COLORS['SlateBlue'] = {'rgb': [106, 90, 205], 'fg': 'white'}
let s:COLORS['medium slate blue'] = {'rgb': [123, 104, 238], 'fg': 'white'}
let s:COLORS['MediumSlateBlue'] = {'rgb': [123, 104, 238], 'fg': 'white'}
let s:COLORS['light slate blue'] = {'rgb': [132, 112, 255], 'fg': 'white'}
let s:COLORS['LightSlateBlue'] = {'rgb': [132, 112, 255], 'fg': 'white'}
let s:COLORS['medium blue'] = {'rgb': [0, 0, 205], 'fg': 'white'}
let s:COLORS['MediumBlue'] = {'rgb': [0, 0, 205], 'fg': 'white'}
let s:COLORS['royal blue'] = {'rgb': [65, 105, 225], 'fg': 'white'}
let s:COLORS['RoyalBlue'] = {'rgb': [65, 105, 225], 'fg': 'white'}
let s:COLORS['blue'] = {'rgb': [0, 0, 255], 'fg': 'white'}
let s:COLORS['dodger blue'] = {'rgb': [30, 144, 255], 'fg': 'white'}
let s:COLORS['DodgerBlue'] = {'rgb': [30, 144, 255], 'fg': 'white'}
let s:COLORS['deep sky blue'] = {'rgb': [0, 191, 255], 'fg': 'black'}
let s:COLORS['DeepSkyBlue'] = {'rgb': [0, 191, 255], 'fg': 'black'}
let s:COLORS['sky blue'] = {'rgb': [135, 206, 235], 'fg': 'black'}
let s:COLORS['SkyBlue'] = {'rgb': [135, 206, 235], 'fg': 'black'}
let s:COLORS['light sky blue'] = {'rgb': [135, 206, 250], 'fg': 'black'}
let s:COLORS['LightSkyBlue'] = {'rgb': [135, 206, 250], 'fg': 'black'}
let s:COLORS['steel blue'] = {'rgb': [70, 130, 180], 'fg': 'white'}
let s:COLORS['SteelBlue'] = {'rgb': [70, 130, 180], 'fg': 'white'}
let s:COLORS['light steel blue'] = {'rgb': [176, 196, 222], 'fg': 'black'}
let s:COLORS['LightSteelBlue'] = {'rgb': [176, 196, 222], 'fg': 'black'}
let s:COLORS['light blue'] = {'rgb': [173, 216, 230], 'fg': 'black'}
let s:COLORS['LightBlue'] = {'rgb': [173, 216, 230], 'fg': 'black'}
let s:COLORS['powder blue'] = {'rgb': [176, 224, 230], 'fg': 'black'}
let s:COLORS['PowderBlue'] = {'rgb': [176, 224, 230], 'fg': 'black'}
let s:COLORS['pale turquoise'] = {'rgb': [175, 238, 238], 'fg': 'black'}
let s:COLORS['PaleTurquoise'] = {'rgb': [175, 238, 238], 'fg': 'black'}
let s:COLORS['dark turquoise'] = {'rgb': [0, 206, 209], 'fg': 'black'}
let s:COLORS['DarkTurquoise'] = {'rgb': [0, 206, 209], 'fg': 'black'}
let s:COLORS['medium turquoise'] = {'rgb': [72, 209, 204], 'fg': 'black'}
let s:COLORS['MediumTurquoise'] = {'rgb': [72, 209, 204], 'fg': 'black'}
let s:COLORS['turquoise'] = {'rgb': [64, 224, 208], 'fg': 'black'}
let s:COLORS['cyan'] = {'rgb': [0, 255, 255], 'fg': 'black'}
let s:COLORS['light cyan'] = {'rgb': [224, 255, 255], 'fg': 'black'}
let s:COLORS['LightCyan'] = {'rgb': [224, 255, 255], 'fg': 'black'}
let s:COLORS['cadet blue'] = {'rgb': [95, 158, 160], 'fg': 'white'}
let s:COLORS['CadetBlue'] = {'rgb': [95, 158, 160], 'fg': 'white'}
let s:COLORS['medium aquamarine'] = {'rgb': [102, 205, 170], 'fg': 'black'}
let s:COLORS['MediumAquamarine'] = {'rgb': [102, 205, 170], 'fg': 'black'}
let s:COLORS['aquamarine'] = {'rgb': [127, 255, 212], 'fg': 'black'}
let s:COLORS['dark green'] = {'rgb': [0, 100, 0], 'fg': 'white'}
let s:COLORS['DarkGreen'] = {'rgb': [0, 100, 0], 'fg': 'white'}
let s:COLORS['dark olive green'] = {'rgb': [85, 107, 47], 'fg': 'white'}
let s:COLORS['DarkOliveGreen'] = {'rgb': [85, 107, 47], 'fg': 'white'}
let s:COLORS['dark sea green'] = {'rgb': [143, 188, 143], 'fg': 'black'}
let s:COLORS['DarkSeaGreen'] = {'rgb': [143, 188, 143], 'fg': 'black'}
let s:COLORS['sea green'] = {'rgb': [46, 139, 87], 'fg': 'white'}
let s:COLORS['SeaGreen'] = {'rgb': [46, 139, 87], 'fg': 'white'}
let s:COLORS['medium sea green'] = {'rgb': [60, 179, 113], 'fg': 'white'}
let s:COLORS['MediumSeaGreen'] = {'rgb': [60, 179, 113], 'fg': 'white'}
let s:COLORS['light sea green'] = {'rgb': [32, 178, 170], 'fg': 'white'}
let s:COLORS['LightSeaGreen'] = {'rgb': [32, 178, 170], 'fg': 'white'}
let s:COLORS['pale green'] = {'rgb': [152, 251, 152], 'fg': 'black'}
let s:COLORS['PaleGreen'] = {'rgb': [152, 251, 152], 'fg': 'black'}
let s:COLORS['spring green'] = {'rgb': [0, 255, 127], 'fg': 'black'}
let s:COLORS['SpringGreen'] = {'rgb': [0, 255, 127], 'fg': 'black'}
let s:COLORS['lawn green'] = {'rgb': [124, 252, 0], 'fg': 'black'}
let s:COLORS['LawnGreen'] = {'rgb': [124, 252, 0], 'fg': 'black'}
let s:COLORS['green'] = {'rgb': [0, 255, 0], 'fg': 'black'}
let s:COLORS['chartreuse'] = {'rgb': [127, 255, 0], 'fg': 'black'}
let s:COLORS['medium spring green'] = {'rgb': [0, 250, 154], 'fg': 'black'}
let s:COLORS['MediumSpringGreen'] = {'rgb': [0, 250, 154], 'fg': 'black'}
let s:COLORS['green yellow'] = {'rgb': [173, 255, 47], 'fg': 'black'}
let s:COLORS['GreenYellow'] = {'rgb': [173, 255, 47], 'fg': 'black'}
let s:COLORS['lime green'] = {'rgb': [50, 205, 50], 'fg': 'black'}
let s:COLORS['LimeGreen'] = {'rgb': [50, 205, 50], 'fg': 'black'}
let s:COLORS['yellow green'] = {'rgb': [154, 205, 50], 'fg': 'black'}
let s:COLORS['YellowGreen'] = {'rgb': [154, 205, 50], 'fg': 'black'}
let s:COLORS['forest green'] = {'rgb': [34, 139, 34], 'fg': 'white'}
let s:COLORS['ForestGreen'] = {'rgb': [34, 139, 34], 'fg': 'white'}
let s:COLORS['olive drab'] = {'rgb': [107, 142, 35], 'fg': 'white'}
let s:COLORS['OliveDrab'] = {'rgb': [107, 142, 35], 'fg': 'white'}
let s:COLORS['dark khaki'] = {'rgb': [189, 183, 107], 'fg': 'black'}
let s:COLORS['DarkKhaki'] = {'rgb': [189, 183, 107], 'fg': 'black'}
let s:COLORS['khaki'] = {'rgb': [240, 230, 140], 'fg': 'black'}
let s:COLORS['pale goldenrod'] = {'rgb': [238, 232, 170], 'fg': 'black'}
let s:COLORS['PaleGoldenrod'] = {'rgb': [238, 232, 170], 'fg': 'black'}
let s:COLORS['light goldenrod yellow'] = {'rgb': [250, 250, 210], 'fg': 'black'}
let s:COLORS['LightGoldenrodYellow'] = {'rgb': [250, 250, 210], 'fg': 'black'}
let s:COLORS['light yellow'] = {'rgb': [255, 255, 224], 'fg': 'black'}
let s:COLORS['LightYellow'] = {'rgb': [255, 255, 224], 'fg': 'black'}
let s:COLORS['yellow'] = {'rgb': [255, 255, 0], 'fg': 'black'}
let s:COLORS['gold'] = {'rgb': [255, 215, 0], 'fg': 'black'}
let s:COLORS['light goldenrod'] = {'rgb': [238, 221, 130], 'fg': 'black'}
let s:COLORS['LightGoldenrod'] = {'rgb': [238, 221, 130], 'fg': 'black'}
let s:COLORS['goldenrod'] = {'rgb': [218, 165, 32], 'fg': 'black'}
let s:COLORS['dark goldenrod'] = {'rgb': [184, 134, 11], 'fg': 'white'}
let s:COLORS['DarkGoldenrod'] = {'rgb': [184, 134, 11], 'fg': 'white'}
let s:COLORS['rosy brown'] = {'rgb': [188, 143, 143], 'fg': 'white'}
let s:COLORS['RosyBrown'] = {'rgb': [188, 143, 143], 'fg': 'white'}
let s:COLORS['indian red'] = {'rgb': [205, 92, 92], 'fg': 'white'}
let s:COLORS['IndianRed'] = {'rgb': [205, 92, 92], 'fg': 'white'}
let s:COLORS['saddle brown'] = {'rgb': [139, 69, 19], 'fg': 'white'}
let s:COLORS['SaddleBrown'] = {'rgb': [139, 69, 19], 'fg': 'white'}
let s:COLORS['sienna'] = {'rgb': [160, 82, 45], 'fg': 'white'}
let s:COLORS['peru'] = {'rgb': [205, 133, 63], 'fg': 'white'}
let s:COLORS['burlywood'] = {'rgb': [222, 184, 135], 'fg': 'black'}
let s:COLORS['beige'] = {'rgb': [245, 245, 220], 'fg': 'black'}
let s:COLORS['wheat'] = {'rgb': [245, 222, 179], 'fg': 'black'}
let s:COLORS['sandy brown'] = {'rgb': [244, 164, 96], 'fg': 'black'}
let s:COLORS['SandyBrown'] = {'rgb': [244, 164, 96], 'fg': 'black'}
let s:COLORS['tan'] = {'rgb': [210, 180, 140], 'fg': 'black'}
let s:COLORS['chocolate'] = {'rgb': [210, 105, 30], 'fg': 'white'}
let s:COLORS['firebrick'] = {'rgb': [178, 34, 34], 'fg': 'white'}
let s:COLORS['brown'] = {'rgb': [165, 42, 42], 'fg': 'white'}
let s:COLORS['dark salmon'] = {'rgb': [233, 150, 122], 'fg': 'black'}
let s:COLORS['DarkSalmon'] = {'rgb': [233, 150, 122], 'fg': 'black'}
let s:COLORS['salmon'] = {'rgb': [250, 128, 114], 'fg': 'black'}
let s:COLORS['light salmon'] = {'rgb': [255, 160, 122], 'fg': 'black'}
let s:COLORS['LightSalmon'] = {'rgb': [255, 160, 122], 'fg': 'black'}
let s:COLORS['orange'] = {'rgb': [255, 165, 0], 'fg': 'black'}
let s:COLORS['dark orange'] = {'rgb': [255, 140, 0], 'fg': 'black'}
let s:COLORS['DarkOrange'] = {'rgb': [255, 140, 0], 'fg': 'black'}
let s:COLORS['coral'] = {'rgb': [255, 127, 80], 'fg': 'black'}
let s:COLORS['light coral'] = {'rgb': [240, 128, 128], 'fg': 'black'}
let s:COLORS['LightCoral'] = {'rgb': [240, 128, 128], 'fg': 'black'}
let s:COLORS['tomato'] = {'rgb': [255, 99, 71], 'fg': 'white'}
let s:COLORS['orange red'] = {'rgb': [255, 69, 0], 'fg': 'white'}
let s:COLORS['OrangeRed'] = {'rgb': [255, 69, 0], 'fg': 'white'}
let s:COLORS['red'] = {'rgb': [255, 0, 0], 'fg': 'white'}
let s:COLORS['hot pink'] = {'rgb': [255, 105, 180], 'fg': 'black'}
let s:COLORS['HotPink'] = {'rgb': [255, 105, 180], 'fg': 'black'}
let s:COLORS['deep pink'] = {'rgb': [255, 20, 147], 'fg': 'black'}
let s:COLORS['DeepPink'] = {'rgb': [255, 20, 147], 'fg': 'black'}
let s:COLORS['pink'] = {'rgb': [255, 192, 203], 'fg': 'black'}
let s:COLORS['light pink'] = {'rgb': [255, 182, 193], 'fg': 'black'}
let s:COLORS['LightPink'] = {'rgb': [255, 182, 193], 'fg': 'black'}
let s:COLORS['pale violet red'] = {'rgb': [219, 112, 147], 'fg': 'white'}
let s:COLORS['PaleVioletRed'] = {'rgb': [219, 112, 147], 'fg': 'white'}
let s:COLORS['maroon'] = {'rgb': [176, 48, 96], 'fg': 'white'}
let s:COLORS['medium violet red'] = {'rgb': [199, 21, 133], 'fg': 'white'}
let s:COLORS['MediumVioletRed'] = {'rgb': [199, 21, 133], 'fg': 'white'}
let s:COLORS['violet red'] = {'rgb': [208, 32, 144], 'fg': 'white'}
let s:COLORS['VioletRed'] = {'rgb': [208, 32, 144], 'fg': 'white'}
let s:COLORS['magenta'] = {'rgb': [255, 0, 255], 'fg': 'black'}
let s:COLORS['violet'] = {'rgb': [238, 130, 238], 'fg': 'black'}
let s:COLORS['plum'] = {'rgb': [221, 160, 221], 'fg': 'black'}
let s:COLORS['orchid'] = {'rgb': [218, 112, 214], 'fg': 'black'}
let s:COLORS['medium orchid'] = {'rgb': [186, 85, 211], 'fg': 'white'}
let s:COLORS['MediumOrchid'] = {'rgb': [186, 85, 211], 'fg': 'white'}
let s:COLORS['dark orchid'] = {'rgb': [153, 50, 204], 'fg': 'white'}
let s:COLORS['DarkOrchid'] = {'rgb': [153, 50, 204], 'fg': 'white'}
let s:COLORS['dark violet'] = {'rgb': [148, 0, 211], 'fg': 'white'}
let s:COLORS['DarkViolet'] = {'rgb': [148, 0, 211], 'fg': 'white'}
let s:COLORS['blue violet'] = {'rgb': [138, 43, 226], 'fg': 'white'}
let s:COLORS['BlueViolet'] = {'rgb': [138, 43, 226], 'fg': 'white'}
let s:COLORS['purple'] = {'rgb': [160, 32, 240], 'fg': 'white'}
let s:COLORS['medium purple'] = {'rgb': [147, 112, 219], 'fg': 'white'}
let s:COLORS['MediumPurple'] = {'rgb': [147, 112, 219], 'fg': 'white'}
let s:COLORS['thistle'] = {'rgb': [216, 191, 216], 'fg': 'black'}
let s:COLORS['snow1'] = {'rgb': [255, 250, 250], 'fg': 'black'}
let s:COLORS['snow2'] = {'rgb': [238, 233, 233], 'fg': 'black'}
let s:COLORS['snow3'] = {'rgb': [205, 201, 201], 'fg': 'black'}
let s:COLORS['snow4'] = {'rgb': [139, 137, 137], 'fg': 'white'}
let s:COLORS['seashell1'] = {'rgb': [255, 245, 238], 'fg': 'black'}
let s:COLORS['seashell2'] = {'rgb': [238, 229, 222], 'fg': 'black'}
let s:COLORS['seashell3'] = {'rgb': [205, 197, 191], 'fg': 'black'}
let s:COLORS['seashell4'] = {'rgb': [139, 134, 130], 'fg': 'white'}
let s:COLORS['AntiqueWhite1'] = {'rgb': [255, 239, 219], 'fg': 'black'}
let s:COLORS['AntiqueWhite2'] = {'rgb': [238, 223, 204], 'fg': 'black'}
let s:COLORS['AntiqueWhite3'] = {'rgb': [205, 192, 176], 'fg': 'black'}
let s:COLORS['AntiqueWhite4'] = {'rgb': [139, 131, 120], 'fg': 'white'}
let s:COLORS['bisque1'] = {'rgb': [255, 228, 196], 'fg': 'black'}
let s:COLORS['bisque2'] = {'rgb': [238, 213, 183], 'fg': 'black'}
let s:COLORS['bisque3'] = {'rgb': [205, 183, 158], 'fg': 'black'}
let s:COLORS['bisque4'] = {'rgb': [139, 125, 107], 'fg': 'white'}
let s:COLORS['PeachPuff1'] = {'rgb': [255, 218, 185], 'fg': 'black'}
let s:COLORS['PeachPuff2'] = {'rgb': [238, 203, 173], 'fg': 'black'}
let s:COLORS['PeachPuff3'] = {'rgb': [205, 175, 149], 'fg': 'black'}
let s:COLORS['PeachPuff4'] = {'rgb': [139, 119, 101], 'fg': 'white'}
let s:COLORS['NavajoWhite1'] = {'rgb': [255, 222, 173], 'fg': 'black'}
let s:COLORS['NavajoWhite2'] = {'rgb': [238, 207, 161], 'fg': 'black'}
let s:COLORS['NavajoWhite3'] = {'rgb': [205, 179, 139], 'fg': 'black'}
let s:COLORS['NavajoWhite4'] = {'rgb': [139, 121, 94], 'fg': 'white'}
let s:COLORS['LemonChiffon1'] = {'rgb': [255, 250, 205], 'fg': 'black'}
let s:COLORS['LemonChiffon2'] = {'rgb': [238, 233, 191], 'fg': 'black'}
let s:COLORS['LemonChiffon3'] = {'rgb': [205, 201, 165], 'fg': 'black'}
let s:COLORS['LemonChiffon4'] = {'rgb': [139, 137, 112], 'fg': 'white'}
let s:COLORS['cornsilk1'] = {'rgb': [255, 248, 220], 'fg': 'black'}
let s:COLORS['cornsilk2'] = {'rgb': [238, 232, 205], 'fg': 'black'}
let s:COLORS['cornsilk3'] = {'rgb': [205, 200, 177], 'fg': 'black'}
let s:COLORS['cornsilk4'] = {'rgb': [139, 136, 120], 'fg': 'white'}
let s:COLORS['ivory1'] = {'rgb': [255, 255, 240], 'fg': 'black'}
let s:COLORS['ivory2'] = {'rgb': [238, 238, 224], 'fg': 'black'}
let s:COLORS['ivory3'] = {'rgb': [205, 205, 193], 'fg': 'black'}
let s:COLORS['ivory4'] = {'rgb': [139, 139, 131], 'fg': 'white'}
let s:COLORS['honeydew1'] = {'rgb': [240, 255, 240], 'fg': 'black'}
let s:COLORS['honeydew2'] = {'rgb': [224, 238, 224], 'fg': 'black'}
let s:COLORS['honeydew3'] = {'rgb': [193, 205, 193], 'fg': 'black'}
let s:COLORS['honeydew4'] = {'rgb': [131, 139, 131], 'fg': 'white'}
let s:COLORS['LavenderBlush1'] = {'rgb': [255, 240, 245], 'fg': 'black'}
let s:COLORS['LavenderBlush2'] = {'rgb': [238, 224, 229], 'fg': 'black'}
let s:COLORS['LavenderBlush3'] = {'rgb': [205, 193, 197], 'fg': 'black'}
let s:COLORS['LavenderBlush4'] = {'rgb': [139, 131, 134], 'fg': 'white'}
let s:COLORS['MistyRose1'] = {'rgb': [255, 228, 225], 'fg': 'black'}
let s:COLORS['MistyRose2'] = {'rgb': [238, 213, 210], 'fg': 'black'}
let s:COLORS['MistyRose3'] = {'rgb': [205, 183, 181], 'fg': 'black'}
let s:COLORS['MistyRose4'] = {'rgb': [139, 125, 123], 'fg': 'white'}
let s:COLORS['azure1'] = {'rgb': [240, 255, 255], 'fg': 'black'}
let s:COLORS['azure2'] = {'rgb': [224, 238, 238], 'fg': 'black'}
let s:COLORS['azure3'] = {'rgb': [193, 205, 205], 'fg': 'black'}
let s:COLORS['azure4'] = {'rgb': [131, 139, 139], 'fg': 'white'}
let s:COLORS['SlateBlue1'] = {'rgb': [131, 111, 255], 'fg': 'white'}
let s:COLORS['SlateBlue2'] = {'rgb': [122, 103, 238], 'fg': 'white'}
let s:COLORS['SlateBlue3'] = {'rgb': [105, 89, 205], 'fg': 'white'}
let s:COLORS['SlateBlue4'] = {'rgb': [71, 60, 139], 'fg': 'white'}
let s:COLORS['RoyalBlue1'] = {'rgb': [72, 118, 255], 'fg': 'white'}
let s:COLORS['RoyalBlue2'] = {'rgb': [67, 110, 238], 'fg': 'white'}
let s:COLORS['RoyalBlue3'] = {'rgb': [58, 95, 205], 'fg': 'white'}
let s:COLORS['RoyalBlue4'] = {'rgb': [39, 64, 139], 'fg': 'white'}
let s:COLORS['blue1'] = {'rgb': [0, 0, 255], 'fg': 'white'}
let s:COLORS['blue2'] = {'rgb': [0, 0, 238], 'fg': 'white'}
let s:COLORS['blue3'] = {'rgb': [0, 0, 205], 'fg': 'white'}
let s:COLORS['blue4'] = {'rgb': [0, 0, 139], 'fg': 'white'}
let s:COLORS['DodgerBlue1'] = {'rgb': [30, 144, 255], 'fg': 'white'}
let s:COLORS['DodgerBlue2'] = {'rgb': [28, 134, 238], 'fg': 'white'}
let s:COLORS['DodgerBlue3'] = {'rgb': [24, 116, 205], 'fg': 'white'}
let s:COLORS['DodgerBlue4'] = {'rgb': [16, 78, 139], 'fg': 'white'}
let s:COLORS['SteelBlue1'] = {'rgb': [99, 184, 255], 'fg': 'black'}
let s:COLORS['SteelBlue2'] = {'rgb': [92, 172, 238], 'fg': 'black'}
let s:COLORS['SteelBlue3'] = {'rgb': [79, 148, 205], 'fg': 'white'}
let s:COLORS['SteelBlue4'] = {'rgb': [54, 100, 139], 'fg': 'white'}
let s:COLORS['DeepSkyBlue1'] = {'rgb': [0, 191, 255], 'fg': 'black'}
let s:COLORS['DeepSkyBlue2'] = {'rgb': [0, 178, 238], 'fg': 'black'}
let s:COLORS['DeepSkyBlue3'] = {'rgb': [0, 154, 205], 'fg': 'white'}
let s:COLORS['DeepSkyBlue4'] = {'rgb': [0, 104, 139], 'fg': 'white'}
let s:COLORS['SkyBlue1'] = {'rgb': [135, 206, 255], 'fg': 'black'}
let s:COLORS['SkyBlue2'] = {'rgb': [126, 192, 238], 'fg': 'black'}
let s:COLORS['SkyBlue3'] = {'rgb': [108, 166, 205], 'fg': 'white'}
let s:COLORS['SkyBlue4'] = {'rgb': [74, 112, 139], 'fg': 'white'}
let s:COLORS['LightSkyBlue1'] = {'rgb': [176, 226, 255], 'fg': 'black'}
let s:COLORS['LightSkyBlue2'] = {'rgb': [164, 211, 238], 'fg': 'black'}
let s:COLORS['LightSkyBlue3'] = {'rgb': [141, 182, 205], 'fg': 'black'}
let s:COLORS['LightSkyBlue4'] = {'rgb': [96, 123, 139], 'fg': 'white'}
let s:COLORS['SlateGray1'] = {'rgb': [198, 226, 255], 'fg': 'black'}
let s:COLORS['SlateGray2'] = {'rgb': [185, 211, 238], 'fg': 'black'}
let s:COLORS['SlateGray3'] = {'rgb': [159, 182, 205], 'fg': 'black'}
let s:COLORS['SlateGray4'] = {'rgb': [108, 123, 139], 'fg': 'white'}
let s:COLORS['LightSteelBlue1'] = {'rgb': [202, 225, 255], 'fg': 'black'}
let s:COLORS['LightSteelBlue2'] = {'rgb': [188, 210, 238], 'fg': 'black'}
let s:COLORS['LightSteelBlue3'] = {'rgb': [162, 181, 205], 'fg': 'black'}
let s:COLORS['LightSteelBlue4'] = {'rgb': [110, 123, 139], 'fg': 'white'}
let s:COLORS['LightBlue1'] = {'rgb': [191, 239, 255], 'fg': 'black'}
let s:COLORS['LightBlue2'] = {'rgb': [178, 223, 238], 'fg': 'black'}
let s:COLORS['LightBlue3'] = {'rgb': [154, 192, 205], 'fg': 'black'}
let s:COLORS['LightBlue4'] = {'rgb': [104, 131, 139], 'fg': 'white'}
let s:COLORS['LightCyan1'] = {'rgb': [224, 255, 255], 'fg': 'black'}
let s:COLORS['LightCyan2'] = {'rgb': [209, 238, 238], 'fg': 'black'}
let s:COLORS['LightCyan3'] = {'rgb': [180, 205, 205], 'fg': 'black'}
let s:COLORS['LightCyan4'] = {'rgb': [122, 139, 139], 'fg': 'white'}
let s:COLORS['PaleTurquoise1'] = {'rgb': [187, 255, 255], 'fg': 'black'}
let s:COLORS['PaleTurquoise2'] = {'rgb': [174, 238, 238], 'fg': 'black'}
let s:COLORS['PaleTurquoise3'] = {'rgb': [150, 205, 205], 'fg': 'black'}
let s:COLORS['PaleTurquoise4'] = {'rgb': [102, 139, 139], 'fg': 'white'}
let s:COLORS['CadetBlue1'] = {'rgb': [152, 245, 255], 'fg': 'black'}
let s:COLORS['CadetBlue2'] = {'rgb': [142, 229, 238], 'fg': 'black'}
let s:COLORS['CadetBlue3'] = {'rgb': [122, 197, 205], 'fg': 'black'}
let s:COLORS['CadetBlue4'] = {'rgb': [83, 134, 139], 'fg': 'white'}
let s:COLORS['turquoise1'] = {'rgb': [0, 245, 255], 'fg': 'black'}
let s:COLORS['turquoise2'] = {'rgb': [0, 229, 238], 'fg': 'black'}
let s:COLORS['turquoise3'] = {'rgb': [0, 197, 205], 'fg': 'black'}
let s:COLORS['turquoise4'] = {'rgb': [0, 134, 139], 'fg': 'white'}
let s:COLORS['cyan1'] = {'rgb': [0, 255, 255], 'fg': 'black'}
let s:COLORS['cyan2'] = {'rgb': [0, 238, 238], 'fg': 'black'}
let s:COLORS['cyan3'] = {'rgb': [0, 205, 205], 'fg': 'black'}
let s:COLORS['cyan4'] = {'rgb': [0, 139, 139], 'fg': 'white'}
let s:COLORS['DarkSlateGray1'] = {'rgb': [151, 255, 255], 'fg': 'black'}
let s:COLORS['DarkSlateGray2'] = {'rgb': [141, 238, 238], 'fg': 'black'}
let s:COLORS['DarkSlateGray3'] = {'rgb': [121, 205, 205], 'fg': 'black'}
let s:COLORS['DarkSlateGray4'] = {'rgb': [82, 139, 139], 'fg': 'white'}
let s:COLORS['aquamarine1'] = {'rgb': [127, 255, 212], 'fg': 'black'}
let s:COLORS['aquamarine2'] = {'rgb': [118, 238, 198], 'fg': 'black'}
let s:COLORS['aquamarine3'] = {'rgb': [102, 205, 170], 'fg': 'black'}
let s:COLORS['aquamarine4'] = {'rgb': [69, 139, 116], 'fg': 'white'}
let s:COLORS['DarkSeaGreen1'] = {'rgb': [193, 255, 193], 'fg': 'black'}
let s:COLORS['DarkSeaGreen2'] = {'rgb': [180, 238, 180], 'fg': 'black'}
let s:COLORS['DarkSeaGreen3'] = {'rgb': [155, 205, 155], 'fg': 'black'}
let s:COLORS['DarkSeaGreen4'] = {'rgb': [105, 139, 105], 'fg': 'white'}
let s:COLORS['SeaGreen1'] = {'rgb': [84, 255, 159], 'fg': 'black'}
let s:COLORS['SeaGreen2'] = {'rgb': [78, 238, 148], 'fg': 'black'}
let s:COLORS['SeaGreen3'] = {'rgb': [67, 205, 128], 'fg': 'black'}
let s:COLORS['SeaGreen4'] = {'rgb': [46, 139, 87], 'fg': 'white'}
let s:COLORS['PaleGreen1'] = {'rgb': [154, 255, 154], 'fg': 'black'}
let s:COLORS['PaleGreen2'] = {'rgb': [144, 238, 144], 'fg': 'black'}
let s:COLORS['PaleGreen3'] = {'rgb': [124, 205, 124], 'fg': 'black'}
let s:COLORS['PaleGreen4'] = {'rgb': [84, 139, 84], 'fg': 'white'}
let s:COLORS['SpringGreen1'] = {'rgb': [0, 255, 127], 'fg': 'black'}
let s:COLORS['SpringGreen2'] = {'rgb': [0, 238, 118], 'fg': 'black'}
let s:COLORS['SpringGreen3'] = {'rgb': [0, 205, 102], 'fg': 'white'}
let s:COLORS['SpringGreen4'] = {'rgb': [0, 139, 69], 'fg': 'white'}
let s:COLORS['green1'] = {'rgb': [0, 255, 0], 'fg': 'black'}
let s:COLORS['green2'] = {'rgb': [0, 238, 0], 'fg': 'black'}
let s:COLORS['green3'] = {'rgb': [0, 205, 0], 'fg': 'white'}
let s:COLORS['green4'] = {'rgb': [0, 139, 0], 'fg': 'white'}
let s:COLORS['chartreuse1'] = {'rgb': [127, 255, 0], 'fg': 'black'}
let s:COLORS['chartreuse2'] = {'rgb': [118, 238, 0], 'fg': 'black'}
let s:COLORS['chartreuse3'] = {'rgb': [102, 205, 0], 'fg': 'black'}
let s:COLORS['chartreuse4'] = {'rgb': [69, 139, 0], 'fg': 'white'}
let s:COLORS['OliveDrab1'] = {'rgb': [192, 255, 62], 'fg': 'black'}
let s:COLORS['OliveDrab2'] = {'rgb': [179, 238, 58], 'fg': 'black'}
let s:COLORS['OliveDrab3'] = {'rgb': [154, 205, 50], 'fg': 'black'}
let s:COLORS['OliveDrab4'] = {'rgb': [105, 139, 34], 'fg': 'white'}
let s:COLORS['DarkOliveGreen1'] = {'rgb': [202, 255, 112], 'fg': 'black'}
let s:COLORS['DarkOliveGreen2'] = {'rgb': [188, 238, 104], 'fg': 'black'}
let s:COLORS['DarkOliveGreen3'] = {'rgb': [162, 205, 90], 'fg': 'black'}
let s:COLORS['DarkOliveGreen4'] = {'rgb': [110, 139, 61], 'fg': 'white'}
let s:COLORS['khaki1'] = {'rgb': [255, 246, 143], 'fg': 'black'}
let s:COLORS['khaki2'] = {'rgb': [238, 230, 133], 'fg': 'black'}
let s:COLORS['khaki3'] = {'rgb': [205, 198, 115], 'fg': 'black'}
let s:COLORS['khaki4'] = {'rgb': [139, 134, 78], 'fg': 'white'}
let s:COLORS['LightGoldenrod1'] = {'rgb': [255, 236, 139], 'fg': 'black'}
let s:COLORS['LightGoldenrod2'] = {'rgb': [238, 220, 130], 'fg': 'black'}
let s:COLORS['LightGoldenrod3'] = {'rgb': [205, 190, 112], 'fg': 'black'}
let s:COLORS['LightGoldenrod4'] = {'rgb': [139, 129, 76], 'fg': 'white'}
let s:COLORS['LightYellow1'] = {'rgb': [255, 255, 224], 'fg': 'black'}
let s:COLORS['LightYellow2'] = {'rgb': [238, 238, 209], 'fg': 'black'}
let s:COLORS['LightYellow3'] = {'rgb': [205, 205, 180], 'fg': 'black'}
let s:COLORS['LightYellow4'] = {'rgb': [139, 139, 122], 'fg': 'white'}
let s:COLORS['yellow1'] = {'rgb': [255, 255, 0], 'fg': 'black'}
let s:COLORS['yellow2'] = {'rgb': [238, 238, 0], 'fg': 'black'}
let s:COLORS['yellow3'] = {'rgb': [205, 205, 0], 'fg': 'black'}
let s:COLORS['yellow4'] = {'rgb': [139, 139, 0], 'fg': 'white'}
let s:COLORS['gold1'] = {'rgb': [255, 215, 0], 'fg': 'black'}
let s:COLORS['gold2'] = {'rgb': [238, 201, 0], 'fg': 'black'}
let s:COLORS['gold3'] = {'rgb': [205, 173, 0], 'fg': 'black'}
let s:COLORS['gold4'] = {'rgb': [139, 117, 0], 'fg': 'white'}
let s:COLORS['goldenrod1'] = {'rgb': [255, 193, 37], 'fg': 'black'}
let s:COLORS['goldenrod2'] = {'rgb': [238, 180, 34], 'fg': 'black'}
let s:COLORS['goldenrod3'] = {'rgb': [205, 155, 29], 'fg': 'black'}
let s:COLORS['goldenrod4'] = {'rgb': [139, 105, 20], 'fg': 'white'}
let s:COLORS['DarkGoldenrod1'] = {'rgb': [255, 185, 15], 'fg': 'black'}
let s:COLORS['DarkGoldenrod2'] = {'rgb': [238, 173, 14], 'fg': 'black'}
let s:COLORS['DarkGoldenrod3'] = {'rgb': [205, 149, 12], 'fg': 'black'}
let s:COLORS['DarkGoldenrod4'] = {'rgb': [139, 101, 8], 'fg': 'white'}
let s:COLORS['RosyBrown1'] = {'rgb': [255, 193, 193], 'fg': 'black'}
let s:COLORS['RosyBrown2'] = {'rgb': [238, 180, 180], 'fg': 'black'}
let s:COLORS['RosyBrown3'] = {'rgb': [205, 155, 155], 'fg': 'white'}
let s:COLORS['RosyBrown4'] = {'rgb': [139, 105, 105], 'fg': 'white'}
let s:COLORS['IndianRed1'] = {'rgb': [255, 106, 106], 'fg': 'white'}
let s:COLORS['IndianRed2'] = {'rgb': [238, 99, 99], 'fg': 'white'}
let s:COLORS['IndianRed3'] = {'rgb': [205, 85, 85], 'fg': 'white'}
let s:COLORS['IndianRed4'] = {'rgb': [139, 58, 58], 'fg': 'white'}
let s:COLORS['sienna1'] = {'rgb': [255, 130, 71], 'fg': 'white'}
let s:COLORS['sienna2'] = {'rgb': [238, 121, 66], 'fg': 'white'}
let s:COLORS['sienna3'] = {'rgb': [205, 104, 57], 'fg': 'white'}
let s:COLORS['sienna4'] = {'rgb': [139, 71, 38], 'fg': 'white'}
let s:COLORS['burlywood1'] = {'rgb': [255, 211, 155], 'fg': 'black'}
let s:COLORS['burlywood2'] = {'rgb': [238, 197, 145], 'fg': 'black'}
let s:COLORS['burlywood3'] = {'rgb': [205, 170, 125], 'fg': 'black'}
let s:COLORS['burlywood4'] = {'rgb': [139, 115, 85], 'fg': 'white'}
let s:COLORS['wheat1'] = {'rgb': [255, 231, 186], 'fg': 'black'}
let s:COLORS['wheat2'] = {'rgb': [238, 216, 174], 'fg': 'black'}
let s:COLORS['wheat3'] = {'rgb': [205, 186, 150], 'fg': 'black'}
let s:COLORS['wheat4'] = {'rgb': [139, 126, 102], 'fg': 'white'}
let s:COLORS['tan1'] = {'rgb': [255, 165, 79], 'fg': 'black'}
let s:COLORS['tan2'] = {'rgb': [238, 154, 73], 'fg': 'black'}
let s:COLORS['tan3'] = {'rgb': [205, 133, 63], 'fg': 'white'}
let s:COLORS['tan4'] = {'rgb': [139, 90, 43], 'fg': 'white'}
let s:COLORS['chocolate1'] = {'rgb': [255, 127, 36], 'fg': 'white'}
let s:COLORS['chocolate2'] = {'rgb': [238, 118, 33], 'fg': 'white'}
let s:COLORS['chocolate3'] = {'rgb': [205, 102, 29], 'fg': 'white'}
let s:COLORS['chocolate4'] = {'rgb': [139, 69, 19], 'fg': 'white'}
let s:COLORS['firebrick1'] = {'rgb': [255, 48, 48], 'fg': 'white'}
let s:COLORS['firebrick2'] = {'rgb': [238, 44, 44], 'fg': 'white'}
let s:COLORS['firebrick3'] = {'rgb': [205, 38, 38], 'fg': 'white'}
let s:COLORS['firebrick4'] = {'rgb': [139, 26, 26], 'fg': 'white'}
let s:COLORS['brown1'] = {'rgb': [255, 64, 64], 'fg': 'white'}
let s:COLORS['brown2'] = {'rgb': [238, 59, 59], 'fg': 'white'}
let s:COLORS['brown3'] = {'rgb': [205, 51, 51], 'fg': 'white'}
let s:COLORS['brown4'] = {'rgb': [139, 35, 35], 'fg': 'white'}
let s:COLORS['salmon1'] = {'rgb': [255, 140, 105], 'fg': 'black'}
let s:COLORS['salmon2'] = {'rgb': [238, 130, 98], 'fg': 'black'}
let s:COLORS['salmon3'] = {'rgb': [205, 112, 84], 'fg': 'white'}
let s:COLORS['salmon4'] = {'rgb': [139, 76, 57], 'fg': 'white'}
let s:COLORS['LightSalmon1'] = {'rgb': [255, 160, 122], 'fg': 'black'}
let s:COLORS['LightSalmon2'] = {'rgb': [238, 149, 114], 'fg': 'black'}
let s:COLORS['LightSalmon3'] = {'rgb': [205, 129, 98], 'fg': 'white'}
let s:COLORS['LightSalmon4'] = {'rgb': [139, 87, 66], 'fg': 'white'}
let s:COLORS['orange1'] = {'rgb': [255, 165, 0], 'fg': 'black'}
let s:COLORS['orange2'] = {'rgb': [238, 154, 0], 'fg': 'black'}
let s:COLORS['orange3'] = {'rgb': [205, 133, 0], 'fg': 'white'}
let s:COLORS['orange4'] = {'rgb': [139, 90, 0], 'fg': 'white'}
let s:COLORS['DarkOrange1'] = {'rgb': [255, 127, 0], 'fg': 'black'}
let s:COLORS['DarkOrange2'] = {'rgb': [238, 118, 0], 'fg': 'black'}
let s:COLORS['DarkOrange3'] = {'rgb': [205, 102, 0], 'fg': 'white'}
let s:COLORS['DarkOrange4'] = {'rgb': [139, 69, 0], 'fg': 'white'}
let s:COLORS['coral1'] = {'rgb': [255, 114, 86], 'fg': 'black'}
let s:COLORS['coral2'] = {'rgb': [238, 106, 80], 'fg': 'black'}
let s:COLORS['coral3'] = {'rgb': [205, 91, 69], 'fg': 'white'}
let s:COLORS['coral4'] = {'rgb': [139, 62, 47], 'fg': 'white'}
let s:COLORS['tomato1'] = {'rgb': [255, 99, 71], 'fg': 'white'}
let s:COLORS['tomato2'] = {'rgb': [238, 92, 66], 'fg': 'white'}
let s:COLORS['tomato3'] = {'rgb': [205, 79, 57], 'fg': 'white'}
let s:COLORS['tomato4'] = {'rgb': [139, 54, 38], 'fg': 'white'}
let s:COLORS['OrangeRed1'] = {'rgb': [255, 69, 0], 'fg': 'white'}
let s:COLORS['OrangeRed2'] = {'rgb': [238, 64, 0], 'fg': 'white'}
let s:COLORS['OrangeRed3'] = {'rgb': [205, 55, 0], 'fg': 'white'}
let s:COLORS['OrangeRed4'] = {'rgb': [139, 37, 0], 'fg': 'white'}
let s:COLORS['red1'] = {'rgb': [255, 0, 0], 'fg': 'white'}
let s:COLORS['red2'] = {'rgb': [238, 0, 0], 'fg': 'white'}
let s:COLORS['red3'] = {'rgb': [205, 0, 0], 'fg': 'white'}
let s:COLORS['red4'] = {'rgb': [139, 0, 0], 'fg': 'white'}
let s:COLORS['DeepPink1'] = {'rgb': [255, 20, 147], 'fg': 'white'}
let s:COLORS['DeepPink2'] = {'rgb': [238, 18, 137], 'fg': 'white'}
let s:COLORS['DeepPink3'] = {'rgb': [205, 16, 118], 'fg': 'white'}
let s:COLORS['DeepPink4'] = {'rgb': [139, 10, 80], 'fg': 'white'}
let s:COLORS['HotPink1'] = {'rgb': [255, 110, 180], 'fg': 'black'}
let s:COLORS['HotPink2'] = {'rgb': [238, 106, 167], 'fg': 'black'}
let s:COLORS['HotPink3'] = {'rgb': [205, 96, 144], 'fg': 'black'}
let s:COLORS['HotPink4'] = {'rgb': [139, 58, 98], 'fg': 'white'}
let s:COLORS['pink1'] = {'rgb': [255, 181, 197], 'fg': 'black'}
let s:COLORS['pink2'] = {'rgb': [238, 169, 184], 'fg': 'black'}
let s:COLORS['pink3'] = {'rgb': [205, 145, 158], 'fg': 'black'}
let s:COLORS['pink4'] = {'rgb': [139, 99, 108], 'fg': 'white'}
let s:COLORS['LightPink1'] = {'rgb': [255, 174, 185], 'fg': 'black'}
let s:COLORS['LightPink2'] = {'rgb': [238, 162, 173], 'fg': 'black'}
let s:COLORS['LightPink3'] = {'rgb': [205, 140, 149], 'fg': 'black'}
let s:COLORS['LightPink4'] = {'rgb': [139, 95, 101], 'fg': 'white'}
let s:COLORS['PaleVioletRed1'] = {'rgb': [255, 130, 171], 'fg': 'black'}
let s:COLORS['PaleVioletRed2'] = {'rgb': [238, 121, 159], 'fg': 'black'}
let s:COLORS['PaleVioletRed3'] = {'rgb': [205, 104, 137], 'fg': 'white'}
let s:COLORS['PaleVioletRed4'] = {'rgb': [139, 71, 93], 'fg': 'white'}
let s:COLORS['maroon1'] = {'rgb': [255, 52, 179], 'fg': 'black'}
let s:COLORS['maroon2'] = {'rgb': [238, 48, 167], 'fg': 'black'}
let s:COLORS['maroon3'] = {'rgb': [205, 41, 144], 'fg': 'white'}
let s:COLORS['maroon4'] = {'rgb': [139, 28, 98], 'fg': 'white'}
let s:COLORS['VioletRed1'] = {'rgb': [255, 62, 150], 'fg': 'black'}
let s:COLORS['VioletRed2'] = {'rgb': [238, 58, 140], 'fg': 'black'}
let s:COLORS['VioletRed3'] = {'rgb': [205, 50, 120], 'fg': 'white'}
let s:COLORS['VioletRed4'] = {'rgb': [139, 34, 82], 'fg': 'white'}
let s:COLORS['magenta1'] = {'rgb': [255, 0, 255], 'fg': 'black'}
let s:COLORS['magenta2'] = {'rgb': [238, 0, 238], 'fg': 'black'}
let s:COLORS['magenta3'] = {'rgb': [205, 0, 205], 'fg': 'white'}
let s:COLORS['magenta4'] = {'rgb': [139, 0, 139], 'fg': 'white'}
let s:COLORS['orchid1'] = {'rgb': [255, 131, 250], 'fg': 'black'}
let s:COLORS['orchid2'] = {'rgb': [238, 122, 233], 'fg': 'black'}
let s:COLORS['orchid3'] = {'rgb': [205, 105, 201], 'fg': 'white'}
let s:COLORS['orchid4'] = {'rgb': [139, 71, 137], 'fg': 'white'}
let s:COLORS['plum1'] = {'rgb': [255, 187, 255], 'fg': 'black'}
let s:COLORS['plum2'] = {'rgb': [238, 174, 238], 'fg': 'black'}
let s:COLORS['plum3'] = {'rgb': [205, 150, 205], 'fg': 'black'}
let s:COLORS['plum4'] = {'rgb': [139, 102, 139], 'fg': 'white'}
let s:COLORS['MediumOrchid1'] = {'rgb': [224, 102, 255], 'fg': 'black'}
let s:COLORS['MediumOrchid2'] = {'rgb': [209, 95, 238], 'fg': 'black'}
let s:COLORS['MediumOrchid3'] = {'rgb': [180, 82, 205], 'fg': 'white'}
let s:COLORS['MediumOrchid4'] = {'rgb': [122, 55, 139], 'fg': 'white'}
let s:COLORS['DarkOrchid1'] = {'rgb': [191, 62, 255], 'fg': 'white'}
let s:COLORS['DarkOrchid2'] = {'rgb': [178, 58, 238], 'fg': 'white'}
let s:COLORS['DarkOrchid3'] = {'rgb': [154, 50, 205], 'fg': 'white'}
let s:COLORS['DarkOrchid4'] = {'rgb': [104, 34, 139], 'fg': 'white'}
let s:COLORS['purple1'] = {'rgb': [155, 48, 255], 'fg': 'white'}
let s:COLORS['purple2'] = {'rgb': [145, 44, 238], 'fg': 'white'}
let s:COLORS['purple3'] = {'rgb': [125, 38, 205], 'fg': 'white'}
let s:COLORS['purple4'] = {'rgb': [85, 26, 139], 'fg': 'white'}
let s:COLORS['MediumPurple1'] = {'rgb': [171, 130, 255], 'fg': 'black'}
let s:COLORS['MediumPurple2'] = {'rgb': [159, 121, 238], 'fg': 'black'}
let s:COLORS['MediumPurple3'] = {'rgb': [137, 104, 205], 'fg': 'white'}
let s:COLORS['MediumPurple4'] = {'rgb': [93, 71, 139], 'fg': 'white'}
let s:COLORS['thistle1'] = {'rgb': [255, 225, 255], 'fg': 'black'}
let s:COLORS['thistle2'] = {'rgb': [238, 210, 238], 'fg': 'black'}
let s:COLORS['thistle3'] = {'rgb': [205, 181, 205], 'fg': 'black'}
let s:COLORS['thistle4'] = {'rgb': [139, 123, 139], 'fg': 'white'}
let s:COLORS['gray0'] = {'rgb': [0, 0, 0], 'fg': 'white'}
let s:COLORS['grey0'] = {'rgb': [0, 0, 0], 'fg': 'white'}
let s:COLORS['gray1'] = {'rgb': [3, 3, 3], 'fg': 'white'}
let s:COLORS['grey1'] = {'rgb': [3, 3, 3], 'fg': 'white'}
let s:COLORS['gray2'] = {'rgb': [5, 5, 5], 'fg': 'white'}
let s:COLORS['grey2'] = {'rgb': [5, 5, 5], 'fg': 'white'}
let s:COLORS['gray3'] = {'rgb': [8, 8, 8], 'fg': 'white'}
let s:COLORS['grey3'] = {'rgb': [8, 8, 8], 'fg': 'white'}
let s:COLORS['gray4'] = {'rgb': [10, 10, 10], 'fg': 'white'}
let s:COLORS['grey4'] = {'rgb': [10, 10, 10], 'fg': 'white'}
let s:COLORS['gray5'] = {'rgb': [13, 13, 13], 'fg': 'white'}
let s:COLORS['grey5'] = {'rgb': [13, 13, 13], 'fg': 'white'}
let s:COLORS['gray6'] = {'rgb': [15, 15, 15], 'fg': 'white'}
let s:COLORS['grey6'] = {'rgb': [15, 15, 15], 'fg': 'white'}
let s:COLORS['gray7'] = {'rgb': [18, 18, 18], 'fg': 'white'}
let s:COLORS['grey7'] = {'rgb': [18, 18, 18], 'fg': 'white'}
let s:COLORS['gray8'] = {'rgb': [20, 20, 20], 'fg': 'white'}
let s:COLORS['grey8'] = {'rgb': [20, 20, 20], 'fg': 'white'}
let s:COLORS['gray9'] = {'rgb': [23, 23, 23], 'fg': 'white'}
let s:COLORS['grey9'] = {'rgb': [23, 23, 23], 'fg': 'white'}
let s:COLORS['gray10'] = {'rgb': [26, 26, 26], 'fg': 'white'}
let s:COLORS['grey10'] = {'rgb': [26, 26, 26], 'fg': 'white'}
let s:COLORS['gray11'] = {'rgb': [28, 28, 28], 'fg': 'white'}
let s:COLORS['grey11'] = {'rgb': [28, 28, 28], 'fg': 'white'}
let s:COLORS['gray12'] = {'rgb': [31, 31, 31], 'fg': 'white'}
let s:COLORS['grey12'] = {'rgb': [31, 31, 31], 'fg': 'white'}
let s:COLORS['gray13'] = {'rgb': [33, 33, 33], 'fg': 'white'}
let s:COLORS['grey13'] = {'rgb': [33, 33, 33], 'fg': 'white'}
let s:COLORS['gray14'] = {'rgb': [36, 36, 36], 'fg': 'white'}
let s:COLORS['grey14'] = {'rgb': [36, 36, 36], 'fg': 'white'}
let s:COLORS['gray15'] = {'rgb': [38, 38, 38], 'fg': 'white'}
let s:COLORS['grey15'] = {'rgb': [38, 38, 38], 'fg': 'white'}
let s:COLORS['gray16'] = {'rgb': [41, 41, 41], 'fg': 'white'}
let s:COLORS['grey16'] = {'rgb': [41, 41, 41], 'fg': 'white'}
let s:COLORS['gray17'] = {'rgb': [43, 43, 43], 'fg': 'white'}
let s:COLORS['grey17'] = {'rgb': [43, 43, 43], 'fg': 'white'}
let s:COLORS['gray18'] = {'rgb': [46, 46, 46], 'fg': 'white'}
let s:COLORS['grey18'] = {'rgb': [46, 46, 46], 'fg': 'white'}
let s:COLORS['gray19'] = {'rgb': [48, 48, 48], 'fg': 'white'}
let s:COLORS['grey19'] = {'rgb': [48, 48, 48], 'fg': 'white'}
let s:COLORS['gray20'] = {'rgb': [51, 51, 51], 'fg': 'white'}
let s:COLORS['grey20'] = {'rgb': [51, 51, 51], 'fg': 'white'}
let s:COLORS['gray21'] = {'rgb': [54, 54, 54], 'fg': 'white'}
let s:COLORS['grey21'] = {'rgb': [54, 54, 54], 'fg': 'white'}
let s:COLORS['gray22'] = {'rgb': [56, 56, 56], 'fg': 'white'}
let s:COLORS['grey22'] = {'rgb': [56, 56, 56], 'fg': 'white'}
let s:COLORS['gray23'] = {'rgb': [59, 59, 59], 'fg': 'white'}
let s:COLORS['grey23'] = {'rgb': [59, 59, 59], 'fg': 'white'}
let s:COLORS['gray24'] = {'rgb': [61, 61, 61], 'fg': 'white'}
let s:COLORS['grey24'] = {'rgb': [61, 61, 61], 'fg': 'white'}
let s:COLORS['gray25'] = {'rgb': [64, 64, 64], 'fg': 'white'}
let s:COLORS['grey25'] = {'rgb': [64, 64, 64], 'fg': 'white'}
let s:COLORS['gray26'] = {'rgb': [66, 66, 66], 'fg': 'white'}
let s:COLORS['grey26'] = {'rgb': [66, 66, 66], 'fg': 'white'}
let s:COLORS['gray27'] = {'rgb': [69, 69, 69], 'fg': 'white'}
let s:COLORS['grey27'] = {'rgb': [69, 69, 69], 'fg': 'white'}
let s:COLORS['gray28'] = {'rgb': [71, 71, 71], 'fg': 'white'}
let s:COLORS['grey28'] = {'rgb': [71, 71, 71], 'fg': 'white'}
let s:COLORS['gray29'] = {'rgb': [74, 74, 74], 'fg': 'white'}
let s:COLORS['grey29'] = {'rgb': [74, 74, 74], 'fg': 'white'}
let s:COLORS['gray30'] = {'rgb': [77, 77, 77], 'fg': 'white'}
let s:COLORS['grey30'] = {'rgb': [77, 77, 77], 'fg': 'white'}
let s:COLORS['gray31'] = {'rgb': [79, 79, 79], 'fg': 'white'}
let s:COLORS['grey31'] = {'rgb': [79, 79, 79], 'fg': 'white'}
let s:COLORS['gray32'] = {'rgb': [82, 82, 82], 'fg': 'white'}
let s:COLORS['grey32'] = {'rgb': [82, 82, 82], 'fg': 'white'}
let s:COLORS['gray33'] = {'rgb': [84, 84, 84], 'fg': 'white'}
let s:COLORS['grey33'] = {'rgb': [84, 84, 84], 'fg': 'white'}
let s:COLORS['gray34'] = {'rgb': [87, 87, 87], 'fg': 'white'}
let s:COLORS['grey34'] = {'rgb': [87, 87, 87], 'fg': 'white'}
let s:COLORS['gray35'] = {'rgb': [89, 89, 89], 'fg': 'white'}
let s:COLORS['grey35'] = {'rgb': [89, 89, 89], 'fg': 'white'}
let s:COLORS['gray36'] = {'rgb': [92, 92, 92], 'fg': 'white'}
let s:COLORS['grey36'] = {'rgb': [92, 92, 92], 'fg': 'white'}
let s:COLORS['gray37'] = {'rgb': [94, 94, 94], 'fg': 'white'}
let s:COLORS['grey37'] = {'rgb': [94, 94, 94], 'fg': 'white'}
let s:COLORS['gray38'] = {'rgb': [97, 97, 97], 'fg': 'white'}
let s:COLORS['grey38'] = {'rgb': [97, 97, 97], 'fg': 'white'}
let s:COLORS['gray39'] = {'rgb': [99, 99, 99], 'fg': 'white'}
let s:COLORS['grey39'] = {'rgb': [99, 99, 99], 'fg': 'white'}
let s:COLORS['gray40'] = {'rgb': [102, 102, 102], 'fg': 'white'}
let s:COLORS['grey40'] = {'rgb': [102, 102, 102], 'fg': 'white'}
let s:COLORS['gray41'] = {'rgb': [105, 105, 105], 'fg': 'white'}
let s:COLORS['grey41'] = {'rgb': [105, 105, 105], 'fg': 'white'}
let s:COLORS['gray42'] = {'rgb': [107, 107, 107], 'fg': 'white'}
let s:COLORS['grey42'] = {'rgb': [107, 107, 107], 'fg': 'white'}
let s:COLORS['gray43'] = {'rgb': [110, 110, 110], 'fg': 'white'}
let s:COLORS['grey43'] = {'rgb': [110, 110, 110], 'fg': 'white'}
let s:COLORS['gray44'] = {'rgb': [112, 112, 112], 'fg': 'white'}
let s:COLORS['grey44'] = {'rgb': [112, 112, 112], 'fg': 'white'}
let s:COLORS['gray45'] = {'rgb': [115, 115, 115], 'fg': 'white'}
let s:COLORS['grey45'] = {'rgb': [115, 115, 115], 'fg': 'white'}
let s:COLORS['gray46'] = {'rgb': [117, 117, 117], 'fg': 'white'}
let s:COLORS['grey46'] = {'rgb': [117, 117, 117], 'fg': 'white'}
let s:COLORS['gray47'] = {'rgb': [120, 120, 120], 'fg': 'white'}
let s:COLORS['grey47'] = {'rgb': [120, 120, 120], 'fg': 'white'}
let s:COLORS['gray48'] = {'rgb': [122, 122, 122], 'fg': 'white'}
let s:COLORS['grey48'] = {'rgb': [122, 122, 122], 'fg': 'white'}
let s:COLORS['gray49'] = {'rgb': [125, 125, 125], 'fg': 'white'}
let s:COLORS['grey49'] = {'rgb': [125, 125, 125], 'fg': 'white'}
let s:COLORS['gray50'] = {'rgb': [127, 127, 127], 'fg': 'white'}
let s:COLORS['grey50'] = {'rgb': [127, 127, 127], 'fg': 'white'}
let s:COLORS['gray51'] = {'rgb': [130, 130, 130], 'fg': 'black'}
let s:COLORS['grey51'] = {'rgb': [130, 130, 130], 'fg': 'black'}
let s:COLORS['gray52'] = {'rgb': [133, 133, 133], 'fg': 'black'}
let s:COLORS['grey52'] = {'rgb': [133, 133, 133], 'fg': 'black'}
let s:COLORS['gray53'] = {'rgb': [135, 135, 135], 'fg': 'black'}
let s:COLORS['grey53'] = {'rgb': [135, 135, 135], 'fg': 'black'}
let s:COLORS['gray54'] = {'rgb': [138, 138, 138], 'fg': 'black'}
let s:COLORS['grey54'] = {'rgb': [138, 138, 138], 'fg': 'black'}
let s:COLORS['gray55'] = {'rgb': [140, 140, 140], 'fg': 'black'}
let s:COLORS['grey55'] = {'rgb': [140, 140, 140], 'fg': 'black'}
let s:COLORS['gray56'] = {'rgb': [143, 143, 143], 'fg': 'black'}
let s:COLORS['grey56'] = {'rgb': [143, 143, 143], 'fg': 'black'}
let s:COLORS['gray57'] = {'rgb': [145, 145, 145], 'fg': 'black'}
let s:COLORS['grey57'] = {'rgb': [145, 145, 145], 'fg': 'black'}
let s:COLORS['gray58'] = {'rgb': [148, 148, 148], 'fg': 'black'}
let s:COLORS['grey58'] = {'rgb': [148, 148, 148], 'fg': 'black'}
let s:COLORS['gray59'] = {'rgb': [150, 150, 150], 'fg': 'black'}
let s:COLORS['grey59'] = {'rgb': [150, 150, 150], 'fg': 'black'}
let s:COLORS['gray60'] = {'rgb': [153, 153, 153], 'fg': 'black'}
let s:COLORS['grey60'] = {'rgb': [153, 153, 153], 'fg': 'black'}
let s:COLORS['gray61'] = {'rgb': [156, 156, 156], 'fg': 'black'}
let s:COLORS['grey61'] = {'rgb': [156, 156, 156], 'fg': 'black'}
let s:COLORS['gray62'] = {'rgb': [158, 158, 158], 'fg': 'black'}
let s:COLORS['grey62'] = {'rgb': [158, 158, 158], 'fg': 'black'}
let s:COLORS['gray63'] = {'rgb': [161, 161, 161], 'fg': 'black'}
let s:COLORS['grey63'] = {'rgb': [161, 161, 161], 'fg': 'black'}
let s:COLORS['gray64'] = {'rgb': [163, 163, 163], 'fg': 'black'}
let s:COLORS['grey64'] = {'rgb': [163, 163, 163], 'fg': 'black'}
let s:COLORS['gray65'] = {'rgb': [166, 166, 166], 'fg': 'black'}
let s:COLORS['grey65'] = {'rgb': [166, 166, 166], 'fg': 'black'}
let s:COLORS['gray66'] = {'rgb': [168, 168, 168], 'fg': 'black'}
let s:COLORS['grey66'] = {'rgb': [168, 168, 168], 'fg': 'black'}
let s:COLORS['gray67'] = {'rgb': [171, 171, 171], 'fg': 'black'}
let s:COLORS['grey67'] = {'rgb': [171, 171, 171], 'fg': 'black'}
let s:COLORS['gray68'] = {'rgb': [173, 173, 173], 'fg': 'black'}
let s:COLORS['grey68'] = {'rgb': [173, 173, 173], 'fg': 'black'}
let s:COLORS['gray69'] = {'rgb': [176, 176, 176], 'fg': 'black'}
let s:COLORS['grey69'] = {'rgb': [176, 176, 176], 'fg': 'black'}
let s:COLORS['gray70'] = {'rgb': [179, 179, 179], 'fg': 'black'}
let s:COLORS['grey70'] = {'rgb': [179, 179, 179], 'fg': 'black'}
let s:COLORS['gray71'] = {'rgb': [181, 181, 181], 'fg': 'black'}
let s:COLORS['grey71'] = {'rgb': [181, 181, 181], 'fg': 'black'}
let s:COLORS['gray72'] = {'rgb': [184, 184, 184], 'fg': 'black'}
let s:COLORS['grey72'] = {'rgb': [184, 184, 184], 'fg': 'black'}
let s:COLORS['gray73'] = {'rgb': [186, 186, 186], 'fg': 'black'}
let s:COLORS['grey73'] = {'rgb': [186, 186, 186], 'fg': 'black'}
let s:COLORS['gray74'] = {'rgb': [189, 189, 189], 'fg': 'black'}
let s:COLORS['grey74'] = {'rgb': [189, 189, 189], 'fg': 'black'}
let s:COLORS['gray75'] = {'rgb': [191, 191, 191], 'fg': 'black'}
let s:COLORS['grey75'] = {'rgb': [191, 191, 191], 'fg': 'black'}
let s:COLORS['gray76'] = {'rgb': [194, 194, 194], 'fg': 'black'}
let s:COLORS['grey76'] = {'rgb': [194, 194, 194], 'fg': 'black'}
let s:COLORS['gray77'] = {'rgb': [196, 196, 196], 'fg': 'black'}
let s:COLORS['grey77'] = {'rgb': [196, 196, 196], 'fg': 'black'}
let s:COLORS['gray78'] = {'rgb': [199, 199, 199], 'fg': 'black'}
let s:COLORS['grey78'] = {'rgb': [199, 199, 199], 'fg': 'black'}
let s:COLORS['gray79'] = {'rgb': [201, 201, 201], 'fg': 'black'}
let s:COLORS['grey79'] = {'rgb': [201, 201, 201], 'fg': 'black'}
let s:COLORS['gray80'] = {'rgb': [204, 204, 204], 'fg': 'black'}
let s:COLORS['grey80'] = {'rgb': [204, 204, 204], 'fg': 'black'}
let s:COLORS['gray81'] = {'rgb': [207, 207, 207], 'fg': 'black'}
let s:COLORS['grey81'] = {'rgb': [207, 207, 207], 'fg': 'black'}
let s:COLORS['gray82'] = {'rgb': [209, 209, 209], 'fg': 'black'}
let s:COLORS['grey82'] = {'rgb': [209, 209, 209], 'fg': 'black'}
let s:COLORS['gray83'] = {'rgb': [212, 212, 212], 'fg': 'black'}
let s:COLORS['grey83'] = {'rgb': [212, 212, 212], 'fg': 'black'}
let s:COLORS['gray84'] = {'rgb': [214, 214, 214], 'fg': 'black'}
let s:COLORS['grey84'] = {'rgb': [214, 214, 214], 'fg': 'black'}
let s:COLORS['gray85'] = {'rgb': [217, 217, 217], 'fg': 'black'}
let s:COLORS['grey85'] = {'rgb': [217, 217, 217], 'fg': 'black'}
let s:COLORS['gray86'] = {'rgb': [219, 219, 219], 'fg': 'black'}
let s:COLORS['grey86'] = {'rgb': [219, 219, 219], 'fg': 'black'}
let s:COLORS['gray87'] = {'rgb': [222, 222, 222], 'fg': 'black'}
let s:COLORS['grey87'] = {'rgb': [222, 222, 222], 'fg': 'black'}
let s:COLORS['gray88'] = {'rgb': [224, 224, 224], 'fg': 'black'}
let s:COLORS['grey88'] = {'rgb': [224, 224, 224], 'fg': 'black'}
let s:COLORS['gray89'] = {'rgb': [227, 227, 227], 'fg': 'black'}
let s:COLORS['grey89'] = {'rgb': [227, 227, 227], 'fg': 'black'}
let s:COLORS['gray90'] = {'rgb': [229, 229, 229], 'fg': 'black'}
let s:COLORS['grey90'] = {'rgb': [229, 229, 229], 'fg': 'black'}
let s:COLORS['gray91'] = {'rgb': [232, 232, 232], 'fg': 'black'}
let s:COLORS['grey91'] = {'rgb': [232, 232, 232], 'fg': 'black'}
let s:COLORS['gray92'] = {'rgb': [235, 235, 235], 'fg': 'black'}
let s:COLORS['grey92'] = {'rgb': [235, 235, 235], 'fg': 'black'}
let s:COLORS['gray93'] = {'rgb': [237, 237, 237], 'fg': 'black'}
let s:COLORS['grey93'] = {'rgb': [237, 237, 237], 'fg': 'black'}
let s:COLORS['gray94'] = {'rgb': [240, 240, 240], 'fg': 'black'}
let s:COLORS['grey94'] = {'rgb': [240, 240, 240], 'fg': 'black'}
let s:COLORS['gray95'] = {'rgb': [242, 242, 242], 'fg': 'black'}
let s:COLORS['grey95'] = {'rgb': [242, 242, 242], 'fg': 'black'}
let s:COLORS['gray96'] = {'rgb': [245, 245, 245], 'fg': 'black'}
let s:COLORS['grey96'] = {'rgb': [245, 245, 245], 'fg': 'black'}
let s:COLORS['gray97'] = {'rgb': [247, 247, 247], 'fg': 'black'}
let s:COLORS['grey97'] = {'rgb': [247, 247, 247], 'fg': 'black'}
let s:COLORS['gray98'] = {'rgb': [250, 250, 250], 'fg': 'black'}
let s:COLORS['grey98'] = {'rgb': [250, 250, 250], 'fg': 'black'}
let s:COLORS['gray99'] = {'rgb': [252, 252, 252], 'fg': 'black'}
let s:COLORS['grey99'] = {'rgb': [252, 252, 252], 'fg': 'black'}
let s:COLORS['gray100'] = {'rgb': [255, 255, 255], 'fg': 'black'}
let s:COLORS['grey100'] = {'rgb': [255, 255, 255], 'fg': 'black'}
let s:COLORS['dark grey'] = {'rgb': [169, 169, 169], 'fg': 'black'}
let s:COLORS['DarkGrey'] = {'rgb': [169, 169, 169], 'fg': 'black'}
let s:COLORS['dark gray'] = {'rgb': [169, 169, 169], 'fg': 'black'}
let s:COLORS['DarkGray'] = {'rgb': [169, 169, 169], 'fg': 'black'}
let s:COLORS['dark blue'] = {'rgb': [0, 0, 139], 'fg': 'white'}
let s:COLORS['DarkBlue'] = {'rgb': [0, 0, 139], 'fg': 'white'}
let s:COLORS['dark cyan'] = {'rgb': [0, 139, 139], 'fg': 'white'}
let s:COLORS['DarkCyan'] = {'rgb': [0, 139, 139], 'fg': 'white'}
let s:COLORS['dark magenta'] = {'rgb': [139, 0, 139], 'fg': 'white'}
let s:COLORS['DarkMagenta'] = {'rgb': [139, 0, 139], 'fg': 'white'}
let s:COLORS['dark red'] = {'rgb': [139, 0, 0], 'fg': 'white'}
let s:COLORS['DarkRed'] = {'rgb': [139, 0, 0], 'fg': 'white'}
let s:COLORS['light green'] = {'rgb': [144, 238, 144], 'fg': 'black'}
let s:COLORS['LightGreen'] = {'rgb': [144, 238, 144], 'fg': 'black'}
let s:COLORS['LightMagenta'] = {'rgb': [255, 160, 255], 'fg': 'black'}
let s:COLORS['DarkYellow'] = {'rgb': [187, 187, 0], 'fg': 'black'}
"}}}
"s:COLORS_ORDER "{{{
let s:COLORS_ORDER = ['snow', 'ghost white', 'GhostWhite', 'white smoke', 'WhiteSmoke', 'gainsboro', 'floral white',
  \ 'FloralWhite', 'old lace', 'OldLace', 'linen', 'antique white', 'AntiqueWhite', 'papaya whip', 'PapayaWhip',
  \ 'blanched almond', 'BlanchedAlmond', 'bisque', 'peach puff', 'PeachPuff', 'navajo white', 'NavajoWhite', 'moccasin',
  \ 'cornsilk', 'ivory', 'lemon chiffon', 'LemonChiffon', 'seashell', 'honeydew', 'mint cream', 'MintCream', 'azure',
  \ 'alice blue', 'AliceBlue', 'lavender', 'lavender blush', 'LavenderBlush', 'misty rose', 'MistyRose', 'white', 'black',
  \ 'dark slate gray', 'DarkSlateGray', 'dark slate grey', 'DarkSlateGrey', 'dim gray', 'DimGray', 'dim grey', 'DimGrey',
  \ 'slate gray', 'SlateGray', 'slate grey', 'SlateGrey', 'light slate gray', 'LightSlateGray', 'light slate grey',
  \ 'LightSlateGrey', 'gray', 'grey', 'light grey', 'LightGrey', 'light gray', 'LightGray', 'midnight blue', 'MidnightBlue',
  \ 'navy', 'navy blue', 'NavyBlue', 'cornflower blue', 'CornflowerBlue', 'dark slate blue', 'DarkSlateBlue', 'slate blue',
  \ 'SlateBlue', 'medium slate blue', 'MediumSlateBlue', 'light slate blue', 'LightSlateBlue', 'medium blue', 'MediumBlue',
  \ 'royal blue', 'RoyalBlue', 'blue', 'dodger blue', 'DodgerBlue', 'deep sky blue', 'DeepSkyBlue', 'sky blue', 'SkyBlue',
  \ 'light sky blue', 'LightSkyBlue', 'steel blue', 'SteelBlue', 'light steel blue', 'LightSteelBlue', 'light blue',
  \ 'LightBlue', 'powder blue', 'PowderBlue', 'pale turquoise', 'PaleTurquoise', 'dark turquoise', 'DarkTurquoise',
  \ 'medium turquoise', 'MediumTurquoise', 'turquoise', 'cyan', 'light cyan', 'LightCyan', 'cadet blue', 'CadetBlue',
  \ 'medium aquamarine', 'MediumAquamarine', 'aquamarine', 'dark green', 'DarkGreen', 'dark olive green', 'DarkOliveGreen',
  \ 'dark sea green', 'DarkSeaGreen', 'sea green', 'SeaGreen', 'medium sea green', 'MediumSeaGreen', 'light sea green',
  \ 'LightSeaGreen', 'pale green', 'PaleGreen', 'spring green', 'SpringGreen', 'lawn green', 'LawnGreen', 'green',
  \ 'chartreuse', 'medium spring green', 'MediumSpringGreen', 'green yellow', 'GreenYellow', 'lime green', 'LimeGreen',
  \ 'yellow green', 'YellowGreen', 'forest green', 'ForestGreen', 'olive drab', 'OliveDrab', 'dark khaki', 'DarkKhaki',
  \ 'khaki', 'pale goldenrod', 'PaleGoldenrod', 'light goldenrod yellow', 'LightGoldenrodYellow', 'light yellow',
  \ 'LightYellow', 'yellow', 'gold', 'light goldenrod', 'LightGoldenrod', 'goldenrod', 'dark goldenrod', 'DarkGoldenrod',
  \ 'rosy brown', 'RosyBrown', 'indian red', 'IndianRed', 'saddle brown', 'SaddleBrown', 'sienna', 'peru', 'burlywood',
  \ 'beige', 'wheat', 'sandy brown', 'SandyBrown', 'tan', 'chocolate', 'firebrick', 'brown', 'dark salmon', 'DarkSalmon',
  \ 'salmon', 'light salmon', 'LightSalmon', 'orange', 'dark orange', 'DarkOrange', 'coral', 'light coral', 'LightCoral',
  \ 'tomato', 'orange red', 'OrangeRed', 'red', 'hot pink', 'HotPink', 'deep pink', 'DeepPink', 'pink', 'light pink',
  \ 'LightPink', 'pale violet red', 'PaleVioletRed', 'maroon', 'medium violet red', 'MediumVioletRed', 'violet red',
  \ 'VioletRed', 'magenta', 'violet', 'plum', 'orchid', 'medium orchid', 'MediumOrchid', 'dark orchid', 'DarkOrchid',
  \ 'dark violet', 'DarkViolet', 'blue violet', 'BlueViolet', 'purple', 'medium purple', 'MediumPurple', 'thistle',
  \ 'snow1', 'snow2', 'snow3', 'snow4', 'seashell1', 'seashell2', 'seashell3', 'seashell4', 'AntiqueWhite1', 'AntiqueWhite2',
  \ 'AntiqueWhite3', 'AntiqueWhite4', 'bisque1', 'bisque2', 'bisque3', 'bisque4', 'PeachPuff1', 'PeachPuff2', 'PeachPuff3',
  \ 'PeachPuff4', 'NavajoWhite1', 'NavajoWhite2', 'NavajoWhite3', 'NavajoWhite4', 'LemonChiffon1', 'LemonChiffon2',
  \ 'LemonChiffon3', 'LemonChiffon4', 'cornsilk1', 'cornsilk2', 'cornsilk3', 'cornsilk4', 'ivory1', 'ivory2', 'ivory3',
  \ 'ivory4', 'honeydew1', 'honeydew2', 'honeydew3', 'honeydew4', 'LavenderBlush1', 'LavenderBlush2', 'LavenderBlush3',
  \ 'LavenderBlush4', 'MistyRose1', 'MistyRose2', 'MistyRose3', 'MistyRose4', 'azure1', 'azure2', 'azure3', 'azure4',
  \ 'SlateBlue1', 'SlateBlue2', 'SlateBlue3', 'SlateBlue4', 'RoyalBlue1', 'RoyalBlue2', 'RoyalBlue3', 'RoyalBlue4', 'blue1',
  \ 'blue2', 'blue3', 'blue4', 'DodgerBlue1', 'DodgerBlue2', 'DodgerBlue3', 'DodgerBlue4', 'SteelBlue1', 'SteelBlue2',
  \ 'SteelBlue3', 'SteelBlue4', 'DeepSkyBlue1', 'DeepSkyBlue2', 'DeepSkyBlue3', 'DeepSkyBlue4', 'SkyBlue1', 'SkyBlue2',
  \ 'SkyBlue3', 'SkyBlue4', 'LightSkyBlue1', 'LightSkyBlue2', 'LightSkyBlue3', 'LightSkyBlue4', 'SlateGray1', 'SlateGray2',
  \ 'SlateGray3', 'SlateGray4', 'LightSteelBlue1', 'LightSteelBlue2', 'LightSteelBlue3', 'LightSteelBlue4', 'LightBlue1',
  \ 'LightBlue2', 'LightBlue3', 'LightBlue4', 'LightCyan1', 'LightCyan2', 'LightCyan3', 'LightCyan4', 'PaleTurquoise1',
  \ 'PaleTurquoise2', 'PaleTurquoise3', 'PaleTurquoise4', 'CadetBlue1', 'CadetBlue2', 'CadetBlue3', 'CadetBlue4',
  \ 'turquoise1', 'turquoise2', 'turquoise3', 'turquoise4', 'cyan1', 'cyan2', 'cyan3', 'cyan4', 'DarkSlateGray1',
  \ 'DarkSlateGray2', 'DarkSlateGray3', 'DarkSlateGray4', 'aquamarine1', 'aquamarine2', 'aquamarine3', 'aquamarine4',
  \ 'DarkSeaGreen1', 'DarkSeaGreen2', 'DarkSeaGreen3', 'DarkSeaGreen4', 'SeaGreen1', 'SeaGreen2', 'SeaGreen3', 'SeaGreen4',
  \ 'PaleGreen1', 'PaleGreen2', 'PaleGreen3', 'PaleGreen4', 'SpringGreen1', 'SpringGreen2', 'SpringGreen3', 'SpringGreen4',
  \ 'green1', 'green2', 'green3', 'green4', 'chartreuse1', 'chartreuse2', 'chartreuse3', 'chartreuse4', 'OliveDrab1',
  \ 'OliveDrab2', 'OliveDrab3', 'OliveDrab4', 'DarkOliveGreen1', 'DarkOliveGreen2', 'DarkOliveGreen3', 'DarkOliveGreen4',
  \ 'khaki1', 'khaki2', 'khaki3', 'khaki4', 'LightGoldenrod1', 'LightGoldenrod2', 'LightGoldenrod3', 'LightGoldenrod4',
  \ 'LightYellow1', 'LightYellow2', 'LightYellow3', 'LightYellow4', 'yellow1', 'yellow2', 'yellow3', 'yellow4', 'gold1',
  \ 'gold2', 'gold3', 'gold4', 'goldenrod1', 'goldenrod2', 'goldenrod3', 'goldenrod4', 'DarkGoldenrod1', 'DarkGoldenrod2',
  \ 'DarkGoldenrod3', 'DarkGoldenrod4', 'RosyBrown1', 'RosyBrown2', 'RosyBrown3', 'RosyBrown4', 'IndianRed1', 'IndianRed2',
  \ 'IndianRed3', 'IndianRed4', 'sienna1', 'sienna2', 'sienna3', 'sienna4', 'burlywood1', 'burlywood2', 'burlywood3',
  \ 'burlywood4', 'wheat1', 'wheat2', 'wheat3', 'wheat4', 'tan1', 'tan2', 'tan3', 'tan4', 'chocolate1', 'chocolate2',
  \ 'chocolate3', 'chocolate4', 'firebrick1', 'firebrick2', 'firebrick3', 'firebrick4', 'brown1', 'brown2', 'brown3',
  \ 'brown4', 'salmon1', 'salmon2', 'salmon3', 'salmon4', 'LightSalmon1', 'LightSalmon2', 'LightSalmon3', 'LightSalmon4',
  \ 'orange1', 'orange2', 'orange3', 'orange4', 'DarkOrange1', 'DarkOrange2', 'DarkOrange3', 'DarkOrange4', 'coral1',
  \ 'coral2', 'coral3', 'coral4', 'tomato1', 'tomato2', 'tomato3', 'tomato4', 'OrangeRed1', 'OrangeRed2', 'OrangeRed3',
  \ 'OrangeRed4', 'red1', 'red2', 'red3', 'red4', 'DeepPink1', 'DeepPink2', 'DeepPink3', 'DeepPink4', 'HotPink1',
  \ 'HotPink2', 'HotPink3', 'HotPink4', 'pink1', 'pink2', 'pink3', 'pink4', 'LightPink1', 'LightPink2', 'LightPink3',
  \ 'LightPink4', 'PaleVioletRed1', 'PaleVioletRed2', 'PaleVioletRed3', 'PaleVioletRed4', 'maroon1', 'maroon2', 'maroon3',
  \ 'maroon4', 'VioletRed1', 'VioletRed2', 'VioletRed3', 'VioletRed4', 'magenta1', 'magenta2', 'magenta3', 'magenta4',
  \ 'orchid1', 'orchid2', 'orchid3', 'orchid4', 'plum1', 'plum2', 'plum3', 'plum4', 'MediumOrchid1', 'MediumOrchid2',
  \ 'MediumOrchid3', 'MediumOrchid4', 'DarkOrchid1', 'DarkOrchid2', 'DarkOrchid3', 'DarkOrchid4', 'purple1', 'purple2',
  \ 'purple3', 'purple4', 'MediumPurple1', 'MediumPurple2', 'MediumPurple3', 'MediumPurple4', 'thistle1', 'thistle2',
  \ 'thistle3', 'thistle4', 'gray0', 'grey0', 'gray1', 'grey1', 'gray2', 'grey2', 'gray3', 'grey3', 'gray4', 'grey4',
  \ 'gray5', 'grey5', 'gray6', 'grey6', 'gray7', 'grey7', 'gray8', 'grey8', 'gray9', 'grey9', 'gray10', 'grey10', 'gray11',
  \ 'grey11', 'gray12', 'grey12', 'gray13', 'grey13', 'gray14', 'grey14', 'gray15', 'grey15', 'gray16', 'grey16', 'gray17',
  \ 'grey17', 'gray18', 'grey18', 'gray19', 'grey19', 'gray20', 'grey20', 'gray21', 'grey21', 'gray22', 'grey22', 'gray23',
  \ 'grey23', 'gray24', 'grey24', 'gray25', 'grey25', 'gray26', 'grey26', 'gray27', 'grey27', 'gray28', 'grey28', 'gray29',
  \ 'grey29', 'gray30', 'grey30', 'gray31', 'grey31', 'gray32', 'grey32', 'gray33', 'grey33', 'gray34', 'grey34', 'gray35',
  \ 'grey35', 'gray36', 'grey36', 'gray37', 'grey37', 'gray38', 'grey38', 'gray39', 'grey39', 'gray40', 'grey40', 'gray41',
  \ 'grey41', 'gray42', 'grey42', 'gray43', 'grey43', 'gray44', 'grey44', 'gray45', 'grey45', 'gray46', 'grey46', 'gray47',
  \ 'grey47', 'gray48', 'grey48', 'gray49', 'grey49', 'gray50', 'grey50', 'gray51', 'grey51', 'gray52', 'grey52', 'gray53',
  \ 'grey53', 'gray54', 'grey54', 'gray55', 'grey55', 'gray56', 'grey56', 'gray57', 'grey57', 'gray58', 'grey58', 'gray59',
  \ 'grey59', 'gray60', 'grey60', 'gray61', 'grey61', 'gray62', 'grey62', 'gray63', 'grey63', 'gray64', 'grey64', 'gray65',
  \ 'grey65', 'gray66', 'grey66', 'gray67', 'grey67', 'gray68', 'grey68', 'gray69', 'grey69', 'gray70', 'grey70', 'gray71',
  \ 'grey71', 'gray72', 'grey72', 'gray73', 'grey73', 'gray74', 'grey74', 'gray75', 'grey75', 'gray76', 'grey76', 'gray77',
  \ 'grey77', 'gray78', 'grey78', 'gray79', 'grey79', 'gray80', 'grey80', 'gray81', 'grey81', 'gray82', 'grey82', 'gray83',
  \ 'grey83', 'gray84', 'grey84', 'gray85', 'grey85', 'gray86', 'grey86', 'gray87', 'grey87', 'gray88', 'grey88', 'gray89',
  \ 'grey89', 'gray90', 'grey90', 'gray91', 'grey91', 'gray92', 'grey92', 'gray93', 'grey93', 'gray94', 'grey94', 'gray95',
  \ 'grey95', 'gray96', 'grey96', 'gray97', 'grey97', 'gray98', 'grey98', 'gray99', 'grey99', 'gray100', 'grey100',
  \ 'dark grey', 'DarkGrey', 'dark gray', 'DarkGray', 'dark blue', 'DarkBlue', 'dark cyan', 'DarkCyan', 'dark magenta',
  \ 'DarkMagenta', 'dark red', 'DarkRed', 'light green', 'LightGreen', 'LightMagenta', 'DarkYellow', ]
"}}}
let s:FORMATS = {'hex': '#%02x%02x%02x', 'rgb': 'rgb(%d,%d,%d)'}

"=============================================================================
"Main
let s:source = {'name': 'gvimrgb', 'syntax': 'uniteSource__gvimrgb', 'hooks': {}, 'action_table': {}}
function! s:source.gather_candidates(args, context) "{{{
  let candidates = []
  for color in get(a:args, 0, '')==?'sort' ? sort(copy(s:COLORS_ORDER)) : s:COLORS_ORDER
    let _ = {'word': color, 'kind': 'word'}
    let _['abbr'] = printf('%-24s (%s)  RGB(%3d,%3d,%3d)', color, call('s:_rgb2hex', s:COLORS[color].rgb), s:COLORS[color].rgb[0], s:COLORS[color].rgb[1], s:COLORS[color].rgb[2])
    call add(candidates, _)
  endfor
  return candidates
endfunction
"}}}
function! s:source.hooks.on_syntax(args, context) "{{{
  for color in s:COLORS_ORDER
    let pindex = call('s:_get_palette_index', s:COLORS[color].rgb)
    let name = substitute(substitute(color, '\s', '', 'g'), '.*', '\L\0', '')
    let group = 'uniteSource__gvimrgb_'. name
    let pattern = '/\s*\<'. color. '\>\s\+(#.*/'
    execute 'syntax match' group pattern 'contained containedin=uniteSource__gvimrgb'
    execute 'highlight default '. group. ' guibg='. name ' guifg='. s:COLORS[color].fg ' ctermfg='. s:COLORS[color].fg ' ctermbg='. pindex
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
  let color = s:COLORS[a:candidate.word]
  let @" = printf(a:format, color.rgb[0], color.rgb[1], color.rgb[2])
endfunction
"}}}
function! s:_insert_format(format, candidate) "{{{
  let color = s:COLORS[a:candidate.word]
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
