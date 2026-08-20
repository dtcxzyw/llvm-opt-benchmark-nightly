inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Font = type { i32, i32, i32, %struct.Texture, ptr, ptr }
%struct.Texture = type { i32, i32, i32, i32, i32 }
%struct.Image = type { ptr, i32, i32, i32, i32 }
%struct.Rectangle = type { float, float, float, float }
%struct.stbtt__buf = type { ptr, i32, i32 }
%struct.stbtt_fontinfo = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.GlyphInfo = type { i32, i32, i32, i32, %struct.Image }
%struct.stbtt__csctx = type { i32, i32, float, float, float, float, i32, i32, i32, i32, ptr, i32 }
%struct.stbtt__edge = type { float, float, float, float, i32 }

@defaultFont = internal unnamed_addr global %struct.Font zeroinitializer, align 8
@__const.LoadFontDefault.defaultFontData = private unnamed_addr constant <{ [438 x i32], [74 x i32] }> <{ [438 x i32] [i32 0, i32 0, i32 0, i32 0, i32 2097184, i32 110592, i32 0, i32 0, i32 -1896274656, i32 133632, i32 2109636608, i32 528348255, i32 1244394144, i32 139594014, i32 1092763648, i32 268702800, i32 774447136, i32 136448018, i32 1092755456, i32 268702800, i32 284762144, i32 1056573516, i32 2099384380, i32 276690910, i32 -392093664, i32 136448050, i32 86116352, i32 272958480, i32 -1532760064, i32 139593778, i32 86115328, i32 272958480, i32 -486989792, i32 133214, i32 2101215873, i32 276689951, i32 2097152, i32 -2147373056, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1073737794, i32 -67641329, i32 1606385277, i32 5291752, i32 1141377186, i32 169095144, i32 1350632069, i32 5283912, i32 1239689378, i32 169093160, i32 1082196612, i32 4759624, i32 268570558, i32 167242671, i32 -660652412, i32 4694095, i32 165972002, i32 169093793, i32 1350632068, i32 4759624, i32 67643426, i32 169095072, i32 1350632069, i32 5284424, i32 36798, i32 -67887071, i32 1602322045, i32 131112168, i32 32768, i32 4064, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 786816, i32 -541113726, i32 201062383, i32 1116013829, i32 4719807, i32 1352745670, i32 138417192, i32 1116022021, i32 11012256, i32 1352746666, i32 138417192, i32 1116022021, i32 528528, i32 1604405906, i32 138672104, i32 2121868549, i32 532616, i32 1084314242, i32 138543400, i32 1082467465, i32 540804, i32 1084318338, i32 138543658, i32 1082467409, i32 557186, i32 -1061207422, i32 -129764305, i32 2122710049, i32 1040777407, i32 0, i32 4, i32 0, i32 786816, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67109890, i32 1095245824, i32 0, i32 2048, i32 67109892, i32 1090527292, i32 0, i32 2048, i32 -136348176, i32 1363931013, i32 -1090785346, i32 72432623, i32 339821824, i32 1229596805, i32 -1568003926, i32 72419360, i32 -197048848, i32 1196042397, i32 -1568003926, i32 72420320, i32 339821840, i32 1229596804, i32 -1568003926, i32 43059712, i32 -136348176, i32 -783667323, i32 -1090787158, i32 18840544, i32 0, i32 4196356, i32 537395200, i32 0, i32 0, i32 6295428, i32 537395200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1409286144, i32 3841, i32 0, i32 0, i32 603979776, i32 3841, i32 0, i32 100663296, i32 603979776, i32 3841, i32 0, i32 152076288, i32 620374178, i32 3841, i32 0, i32 20840448, i32 574760234, i32 3922, i32 0, i32 59408384, i32 606216746, i32 3881, i32 0, i32 17465344, i32 605168938, i32 3841, i32 0, i32 17465344, i32 620488894, i32 3841, i32 0, i32 247365632, i32 -1409155072, i32 3841, i32 0, i32 294912, i32 253952, i32 3840, i32 0, i32 32768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 -2075936754, i32 2112003, i32 46047360, i32 -268435424, i32 -1001250678, i32 69217026, i32 -134049502, i32 133169211, i32 -464832370, i32 35666434, i32 136219164, i32 68282666, i32 -196998176, i32 19169794, i32 -401341420, i32 97584314, i32 -406603648, i32 8993290, i32 675024412, i32 72354050, i32 -1002438528, i32 4489218, i32 -400522206, i32 72351746, i32 -2143289344, i32 85983234, i32 138317312, i32 68157442, i32 -2143288352, i32 117440578, i32 -134183936, i32 133169155, i32 -2143289344, i32 67108898, i32 0, i32 0, i32 -2143289344, i32 67108866, i32 0, i32 0, i32 0, i32 0, i32 8390402, i32 407412930, i32 -2080309248, i32 43125025, i32 17049154, i32 20769, i32 1107443583, i32 2691074, i32 -272624606, i32 2130574327, i32 -270556919, i32 62634999, i32 675548946, i32 1116015124, i32 541098249, i32 17895440, i32 675546120, i32 1116015124, i32 541098367, i32 17895440, i32 -272137724, i32 2130574327, i32 -405831415, i32 17895923, i32 676374834, i32 1116015124, i32 541106441, i32 17895440, i32 676378688, i32 1116015124, i32 -270549127, i32 62634999, i32 2072608, i32 0, i32 4096, i32 0, i32 8304, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134359040, i32 74371, i32 37947394, i32 16842753, i32 -2080107396, i32 536871236, i32 -2147187708, i32 8535816, i32 -541113724, i32 2114189295, i32 338186401, i32 8458, i32 1352746628, i32 1384780840, i32 338186401, i32 66036090, i32 1352747678, i32 1381110824, i32 338186401, i32 34086730, i32 1352749700, i32 1243747368, i32 -198684511, i32 66036043, i32 1352753796, i32 1246893096, i32 69750945, i32 36217210, i32 -541113732, i32 2123102191, i32 -135274561, i32 66043147, i32 0, i32 67108864, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2098440, i32 8651776, i32 289767714, i32 82448, i32 5325460, i32 1363281920, i32 547498644, i32 5285128, i32 2097152, i32 0, i32 327680, i32 134217728, i32 -17043522, i32 -68174085, i32 -68447980, i32 16510910, i32 545392672, i32 -1977048566, i32 -1977052908, i32 1049241762, i32 -17043522, i32 -68174325, i32 -1977052908, i32 9054370, i32 579479714, i32 136348168, i32 -1977052908, i32 143272098, i32 -17043522, i32 -68174085, i32 -97545964, i32 16510910, i32 0, i32 64, i32 0, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2162944, i32 4, i32 0, i32 0, i32 340820480, i32 5122, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i32 -1568003906, i32 8744, i32 0, i32 0, i32 -1568003926, i32 8936, i32 0, i32 0, i32 -1568003926, i32 8872, i32 0, i32 0, i32 -1568003926, i32 8936, i32 0, i32 0, i32 -1090785346, i32 15919, i32 0, i32 0, i32 4, i32 8232, i32 0, i32 0, i32 -2147483648, i32 15887], [74 x i32] zeroinitializer }>, align 16
@__const.LoadFontDefault.charsWidth = private unnamed_addr constant [224 x i32] [i32 3, i32 1, i32 4, i32 6, i32 5, i32 7, i32 6, i32 2, i32 3, i32 3, i32 5, i32 5, i32 2, i32 4, i32 1, i32 7, i32 5, i32 2, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 1, i32 1, i32 3, i32 4, i32 3, i32 6, i32 7, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 3, i32 5, i32 6, i32 5, i32 7, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 6, i32 7, i32 7, i32 6, i32 6, i32 6, i32 2, i32 7, i32 2, i32 3, i32 5, i32 2, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4, i32 5, i32 5, i32 1, i32 2, i32 5, i32 2, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 3, i32 1, i32 3, i32 4, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 7, i32 1, i32 5, i32 3, i32 7, i32 3, i32 5, i32 4, i32 1, i32 7, i32 4, i32 3, i32 5, i32 3, i32 3, i32 2, i32 5, i32 6, i32 1, i32 2, i32 2, i32 3, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 6, i32 6, i32 6, i32 6, i32 6, i32 3, i32 3, i32 3, i32 3, i32 7, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 4, i32 6, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 9, i32 5, i32 5, i32 5, i32 5, i32 5, i32 2, i32 2, i32 3, i32 3, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 3, i32 5], align 16
@.str = private unnamed_addr constant [51 x i8] c"FONT: Default font loaded successfully (%i glyphs)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".ttf\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".otf\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".fnt\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"FONT: [%s] Failed to load font texture -> Using default font\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"FONT: Data loaded successfully (%i pixel size | %i glyphs)\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"FONT: [0x%04x] Glyph height is bigger than requested font size: %i > %i\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"FONT: Requested codepoints glyphs found: [%i/%i]\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"FONT: Failed to process TTF font data\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"FONT: Provided glyphs info not valid, returning empty image atlas\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"FONT: Updating atlas size to fit all characters\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"FONT: Failed to package glyph (0x%02x)\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"FONT: Unloaded font data from RAM and VRAM\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"Font export as code: Font image format is not GRAY+ALPHA!\00", align 1
@.str.14 = private unnamed_addr constant [90 x i8] c"////////////////////////////////////////////////////////////////////////////////////////\0A\00", align 1
@.str.15 = private unnamed_addr constant [90 x i8] c"//                                                                                    //\0A\00", align 1
@.str.16 = private unnamed_addr constant [90 x i8] c"// FontAsCode exporter v1.0 - Font data exported as an array of bytes                 //\0A\00", align 1
@.str.17 = private unnamed_addr constant [90 x i8] c"// more info and bugs-report:  github.com/raysan5/raylib                              //\0A\00", align 1
@.str.18 = private unnamed_addr constant [90 x i8] c"// feedback and support:       ray[at]raylib.com                                      //\0A\00", align 1
@.str.19 = private unnamed_addr constant [90 x i8] c"// Copyright (c) 2018-2026 Ramon Santamaria (@raysan5)                                //\0A\00", align 1
@.str.20 = private unnamed_addr constant [90 x i8] c"// ---------------------------------------------------------------------------------- //\0A\00", align 1
@.str.21 = private unnamed_addr constant [90 x i8] c"// TODO: Fill the information and license of the exported font here:                  //\0A\00", align 1
@.str.22 = private unnamed_addr constant [90 x i8] c"// Font name:    ....                                                                 //\0A\00", align 1
@.str.23 = private unnamed_addr constant [90 x i8] c"// Font creator: ....                                                                 //\0A\00", align 1
@.str.24 = private unnamed_addr constant [90 x i8] c"// Font LICENSE: ....                                                                 //\0A\00", align 1
@.str.25 = private unnamed_addr constant [91 x i8] c"////////////////////////////////////////////////////////////////////////////////////////\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"#define COMPRESSED_DATA_SIZE_FONT_%s %i\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"// Font image pixels data compressed (DEFLATE)\0A\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"// NOTE: Original pixel data simplified to GRAYSCALE\0A\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"static unsigned char fontData_%s[COMPRESSED_DATA_SIZE_FONT_%s] = { \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"0x%02x,\0A    \00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"0x%02x };\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"// Font characters rectangles data\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"static Rectangle fontRecs_%s[%i] = {\0A\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"    { %1.0f, %1.0f, %1.0f , %1.0f },\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"// Font glyphs info data\0A\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"// NOTE: No glyphs.image data provided\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"static GlyphInfo fontGlyphs_%s[%i] = {\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"    { %i, %i, %i, %i, { 0 }},\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"// Font loading function: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"static Font LoadFont_%s(void)\0A{\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"    Font font = { 0 };\0A\0A\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"    font.baseSize = %i;\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"    font.glyphCount = %i;\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"    font.glyphPadding = %i;\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"    // Custom font loading\0A\00", align 1
@.str.48 = private unnamed_addr constant [90 x i8] c"    // NOTE: Compressed font image data (DEFLATE), it requires DecompressData() function\0A\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"    int fontDataSize_%s = 0;\0A\00", align 1
@.str.50 = private unnamed_addr constant [104 x i8] c"    unsigned char *data = DecompressData(fontData_%s, COMPRESSED_DATA_SIZE_FONT_%s, &fontDataSize_%s);\0A\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"    Image imFont = { data, %i, %i, 1, %i };\0A\0A\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"    // Load texture from image\0A\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"    font.texture = LoadTextureFromImage(imFont);\0A\00", align 1
@.str.54 = private unnamed_addr constant [77 x i8] c"    UnloadImage(imFont);  // Uncompressed data can be unloaded from memory\0A\0A\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"    // Assign glyph recs and info data directly\0A\00", align 1
@.str.56 = private unnamed_addr constant [53 x i8] c"    // WARNING: This font data must not be unloaded\0A\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"    font.recs = fontRecs_%s;\0A\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"    font.glyphs = fontGlyphs_%s;\0A\0A\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"    return font;\0A\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"FILEIO: [%s] Font as code exported successfully\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"FILEIO: [%s] Failed to export font as code\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"%2i FPS\00", align 1
@textLineSpacing = internal unnamed_addr global i32 2, align 4
@TextFormat.buffers = internal global [4 x [1024 x i8]] zeroinitializer, align 16
@TextFormat.index = internal unnamed_addr global i32 0, align 4
@TextSubtext.buffer = internal global [1024 x i8] zeroinitializer, align 16
@TextRemoveSpaces.buffer = internal global [1024 x i8] zeroinitializer, align 16
@GetTextBetween.buffer = internal global [1024 x i8] zeroinitializer, align 16
@TextReplace.buffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [77 x i8] c"Text with replacement is longer than internal buffer, use TextReplaceAlloc()\00", align 1
@TextReplaceBetween.buffer = internal global [1024 x i8] zeroinitializer, align 16
@TextInsert.buffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.67 = private unnamed_addr constant [77 x i8] c"Text with inserted string is longer than internal buffer, use TextInserExt()\00", align 1
@TextJoin.buffer = internal global [1024 x i8] zeroinitializer, align 16
@TextSplit.buffers = internal global [128 x ptr] zeroinitializer, align 16
@TextSplit.buffer = internal global [1024 x i8] zeroinitializer, align 16
@TextToUpper.buffer = internal global [1024 x i8] zeroinitializer, align 16
@TextToLower.buffer = internal global [1024 x i8] zeroinitializer, align 16
@TextToPascal.buffer = internal global [1024 x i8] zeroinitializer, align 16
@TextToSnake.buffer = internal global [1024 x i8] zeroinitializer, align 16
@TextToCamel.buffer = internal global [1024 x i8] zeroinitializer, align 16
@CodepointToUTF8.utf8 = internal global [6 x i8] zeroinitializer, align 4
@.str.78 = private unnamed_addr constant [11 x i8] c"lineHeight\00", align 1
@.str.79 = private unnamed_addr constant [51 x i8] c"lineHeight=%i base=%i scaleW=%i scaleH=%i pages=%i\00", align 1
@.str.80 = private unnamed_addr constant [57 x i8] c"FONT: [%s] Font defines more pages than supported: %i/%i\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"file=\22%128[^\22]\22\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"count=%i\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.86 = private unnamed_addr constant [82 x i8] c"char id=%i x=%i y=%i width=%i height=%i xoffset=%i yoffset=%i xadvance=%i page=%i\00", align 1
@.str.87 = private unnamed_addr constant [55 x i8] c"FONT: [%s] Some characters data not correctly provided\00", align 1
@.str.88 = private unnamed_addr constant [60 x i8] c"FONT: [%s] Failed to load texture, reverted to default font\00", align 1
@.str.89 = private unnamed_addr constant [48 x i8] c"FONT: [%s] Font loaded successfully (%i glyphs)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @stbrp_setup_heuristic(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @stbrp_setup_allow_out_of_mem(ptr nofree noundef captures(none) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = add i32 %i.a, -1
  %i.e = add i32 %i.d, %i.c
  %i.f = sdiv i32 %i.e, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.f, %bb.b ], [ 1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @stbrp_init_target(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = add i32 %4, -1                           ; 3 uses
  %i.b = icmp sgt i32 %4, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = add nsw i32 %4, -2
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.g, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.3
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.epil
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.epil
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !3

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %i.t = zext nneg i32 %i.a to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %i.t, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0.lcssa
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8
  store i32 %1, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %i.ac, align 4
  %i.ad = add i32 %i.a, %1
  %i.ae = sdiv i32 %i.ad, %4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ae, ptr %i.af, align 8
  store i32 0, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ah, ptr %i.ai, align 8
  store i32 %1, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 1073741824, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.ak, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @stbrp_pack_rects(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge61.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %2, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.e, ptr %i.d, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.h, ptr %i.g, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.k, ptr %i.j, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.n, ptr %i.m, align 4
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.q, ptr %i.p, align 4
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.t, ptr %i.s, align 4
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.w = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.w, ptr %i.v, align 4
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.z, ptr %i.y, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph60.unr-lcssa, label %.lr.ph

._crit_edge61.thread:                             ; preds = %bb.a
  %i.aa = sext i32 %2 to i64                      ; 2 uses
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 24, ptr noundef nonnull @rect_height_compare) #39
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 24, ptr noundef nonnull @rect_original_order) #39
  br label %._crit_edge66

.lr.ph60.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph60, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph60.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph60.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.ad, ptr %i.ac, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph60, label %.lr.ph.epil, !llvm.loop !5

.lr.ph60:                                         ; preds = %.lr.ph.epil, %.lr.ph60.unr-lcssa
  %i.ae = zext nneg i32 %2 to i64                 ; 2 uses
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 24, ptr noundef nonnull @rect_height_compare) #39
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %wide.trip.count72 = zext nneg i32 %2 to i64    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph60, %bb.an
  %indvars.iv69 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next70, %bb.an ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv69 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4            ; 3 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i32, ptr %i.ao, align 4            ; 5 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.as, align 4
  br label %bb.an

bb.e:                                             ; preds = %bb.c
  %i.at = load i32, ptr %i.af, align 8            ; 2 uses
  %i.au = add i32 %i.am, -1
  %i.av = add i32 %i.au, %i.at                    ; 2 uses
  %i.aw = srem i32 %i.av, %i.at
  %i.ax = sub nsw i32 %i.av, %i.aw                ; 13 uses
  %i.ay = load i32, ptr %0, align 8               ; 5 uses
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.am, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.ag, align 4            ; 4 uses
  %i.bb = icmp sgt i32 %i.ap, %i.ba
  br i1 %i.bb, label %bb.am, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.ah, align 8            ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 8            ; 6 uses
  %i.be = add nsw i32 %i.bd, %i.ax                ; 2 uses
  %.not127.i.i = icmp sgt i32 %i.be, %i.ay
  br i1 %.not127.i.i, label %.._crit_edge.thread.i_crit_edge.i, label %.lr.ph.i.i

.._crit_edge.thread.i_crit_edge.i:                ; preds = %bb.g
  %.pre61.i = load i32, ptr %i.ai, align 8
  br label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bf = icmp sgt i32 %i.ax, 0
  %i.bg = load i32, ptr %i.ai, align 8            ; 4 uses
  %i.bh = icmp eq i32 %i.bg, 0                    ; 2 uses
  br i1 %i.bf, label %.lr.ph.i.preheader.us.i.i, label %.lr.ph.split.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.i.i, %bb.r
  %i.bi = phi i32 [ %i.cq, %bb.r ], [ %i.be, %.lr.ph.i.i ]
  %i.bj = phi i32 [ %i.cp, %bb.r ], [ %i.bd, %.lr.ph.i.i ] ; 3 uses
  %.0132.us.i.i = phi ptr [ %.1.us.i.i, %bb.r ], [ null, %.lr.ph.i.i ] ; 3 uses
  %.074131.us.i.i = phi ptr [ %i.co, %bb.r ], [ %i.bc, %.lr.ph.i.i ] ; 2 uses
  %.077130.us.i.i = phi ptr [ %i.cn, %bb.r ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %.080129.us.i.i = phi i32 [ %.181.us.i.i, %bb.r ], [ 1073741824, %.lr.ph.i.i ] ; 6 uses
  %.088128.us.i.i = phi i32 [ %.189.us.i.i, %bb.r ], [ 1073741824, %.lr.ph.i.i ] ; 4 uses
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %bb.l, %.lr.ph.i.preheader.us.i.i
  %i.bk = phi i32 [ %i.cf, %bb.l ], [ %i.bj, %.lr.ph.i.preheader.us.i.i ] ; 3 uses
  %.0364.i.us.i.i = phi i32 [ %.1.i.us.i.i, %bb.l ], [ 0, %.lr.ph.i.preheader.us.i.i ]
  %.0373.i.us.i.i = phi i32 [ %.138.i.us.i.i, %bb.l ], [ 0, %.lr.ph.i.preheader.us.i.i ] ; 4 uses
  %.0392.i.us.i.i = phi i32 [ %.140.i.us.i.i, %bb.l ], [ 0, %.lr.ph.i.preheader.us.i.i ] ; 4 uses
  %.0411.i.us.i.i = phi ptr [ %i.cg, %bb.l ], [ %.074131.us.i.i, %.lr.ph.i.preheader.us.i.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4            ; 5 uses
  %i.bn = icmp sgt i32 %i.bm, %.0392.i.us.i.i
  br i1 %i.bn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.us.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.br = sub nsw i32 %i.bq, %i.bk                ; 2 uses
  %i.bs = add nsw i32 %i.br, %.0373.i.us.i.i
  %i.bt = icmp sgt i32 %i.bs, %i.ax
  %i.bu = sub nsw i32 %i.ax, %.0373.i.us.i.i
  %spec.select.i.us.i.i = select i1 %i.bt, i32 %i.bu, i32 %i.br ; 2 uses
  %i.bv = sub nsw i32 %.0392.i.us.i.i, %i.bm
  %i.bw = mul nsw i32 %spec.select.i.us.i.i, %i.bv
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph.i.us.i.i
  %i.bx = sub nsw i32 %i.bm, %.0392.i.us.i.i
  %i.by = mul nsw i32 %i.bx, %.0373.i.us.i.i      ; 2 uses
  %i.bz = icmp slt i32 %i.bk, %i.bj
  %i.ca = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8            ; 4 uses
  br i1 %i.bz, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = sub nsw i32 %i.cc, %i.bk
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ce = sub nsw i32 %i.cc, %i.bj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.cf = phi i32 [ %i.cc, %bb.k ], [ %i.cc, %bb.j ], [ %i.bq, %bb.h ] ; 2 uses
  %i.cg = phi ptr [ %i.cb, %bb.k ], [ %i.cb, %bb.j ], [ %i.bp, %bb.h ]
  %.140.i.us.i.i = phi i32 [ %i.bm, %bb.k ], [ %i.bm, %bb.j ], [ %.0392.i.us.i.i, %bb.h ] ; 7 uses
  %.pn.i.us.i.i = phi i32 [ %i.ce, %bb.k ], [ %i.cd, %bb.j ], [ %spec.select.i.us.i.i, %bb.h ]
  %.pn46.i.us.i.i = phi i32 [ %i.by, %bb.k ], [ %i.by, %bb.j ], [ %i.bw, %bb.h ]
  %.1.i.us.i.i = add nsw i32 %.pn46.i.us.i.i, %.0364.i.us.i.i ; 3 uses
  %.138.i.us.i.i = add nsw i32 %.pn.i.us.i.i, %.0373.i.us.i.i
  %i.ch = icmp slt i32 %i.cf, %i.bi
  br i1 %i.ch, label %.lr.ph.i.us.i.i, label %stbrp__skyline_find_min_y.exit.loopexit.us.i.i

bb.m:                                             ; preds = %stbrp__skyline_find_min_y.exit.loopexit.us.i.i
  %i.ci = add nsw i32 %.140.i.us.i.i, %i.ap
  %.not103.us.i.i = icmp sgt i32 %i.ci, %i.ba
  br i1 %.not103.us.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp slt i32 %.140.i.us.i.i, %.080129.us.i.i
  br i1 %i.cj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = icmp eq i32 %.140.i.us.i.i, %.080129.us.i.i
  %i.cl = icmp slt i32 %.1.i.us.i.i, %.088128.us.i.i
  %or.cond.us.i.i = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond.us.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.r

bb.q:                                             ; preds = %stbrp__skyline_find_min_y.exit.loopexit.us.i.i
  %i.cm = icmp slt i32 %.140.i.us.i.i, %.080129.us.i.i
  %spec.select.us.i.i = tail call i32 @llvm.smin.i32(i32 %.140.i.us.i.i, i32 %.080129.us.i.i)
  %spec.select104.us.i.i = select i1 %i.cm, ptr %.077130.us.i.i, ptr %.0132.us.i.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.189.us.i.i = phi i32 [ %.088128.us.i.i, %bb.m ], [ %.088128.us.i.i, %bb.o ], [ %.1.i.us.i.i, %bb.p ], [ %.088128.us.i.i, %bb.q ] ; 3 uses
  %.181.us.i.i = phi i32 [ %.080129.us.i.i, %bb.m ], [ %.080129.us.i.i, %bb.o ], [ %.140.i.us.i.i, %bb.p ], [ %spec.select.us.i.i, %bb.q ] ; 3 uses
  %.1.us.i.i = phi ptr [ %.0132.us.i.i, %bb.m ], [ %.0132.us.i.i, %bb.o ], [ %.077130.us.i.i, %bb.p ], [ %spec.select104.us.i.i, %bb.q ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.074131.us.i.i, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8            ; 2 uses
  %i.cq = add nsw i32 %i.cp, %i.ax                ; 2 uses
  %.not.us.i.i = icmp sgt i32 %i.cq, %i.ay
  br i1 %.not.us.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us.i.i

stbrp__skyline_find_min_y.exit.loopexit.us.i.i:   ; preds = %bb.l
  br i1 %i.bh, label %bb.q, label %bb.m

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %i.bh, label %stbrp__skyline_find_min_y.exit.us137.i.i, label %stbrp__skyline_find_min_y.exit.i.i

stbrp__skyline_find_min_y.exit.us137.i.i:         ; preds = %.lr.ph.split.i.i, %stbrp__skyline_find_min_y.exit.us137.i.i
  %.074131.us139.i.i = phi ptr [ %i.cs, %stbrp__skyline_find_min_y.exit.us137.i.i ], [ %i.bc, %.lr.ph.split.i.i ]
end_hunk_0
begin_hunk_1_@stbrp_pack_rects:bb.a
  %.039.lcssa.i108.i.i = phi i32 [ 0, %bb.t ], [ %.140.i116.i.i, %bb.y ] ; 4 uses
  %.036.lcssa.i109.i.i = phi i32 [ 0, %bb.t ], [ %.1.i119.i.i, %bb.y ] ; 3 uses
  %i.eo = add nsw i32 %.039.lcssa.i108.i.i, %i.ap
  %.not101.i.i = icmp sgt i32 %i.eo, %i.ba
  %.not102.i.i = icmp sgt i32 %.039.lcssa.i108.i.i, %.282176.i.i
  %or.cond106.i.i = select i1 %.not101.i.i, i1 true, i1 %.not102.i.i
  br i1 %or.cond106.i.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %stbrp__skyline_find_min_y.exit121.i.i
  %i.ep = icmp slt i32 %.039.lcssa.i108.i.i, %.282176.i.i
  %i.eq = icmp slt i32 %.036.lcssa.i109.i.i, %.290174.i.i
  %or.cond125.i.i = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond125.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = icmp eq i32 %.036.lcssa.i109.i.i, %.290174.i.i
  %i.es = icmp slt i32 %i.dk, %.085175.i.i
  %or.cond107.i.i = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond107.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %stbrp__skyline_find_min_y.exit121.i.i
  %.391.i.i = phi i32 [ %.036.lcssa.i109.i.i, %bb.ab ], [ %.290174.i.i, %stbrp__skyline_find_min_y.exit121.i.i ], [ %.290174.i.i, %bb.aa ]
  %.186.i.i = phi i32 [ %i.dk, %bb.ab ], [ %.085175.i.i, %stbrp__skyline_find_min_y.exit121.i.i ], [ %.085175.i.i, %bb.aa ] ; 2 uses
  %.383.i.i = phi i32 [ %.039.lcssa.i108.i.i, %bb.ab ], [ %.282176.i.i, %stbrp__skyline_find_min_y.exit121.i.i ], [ %.282176.i.i, %bb.aa ] ; 2 uses
  %.3.i.i = phi ptr [ %.279.i.i, %bb.ab ], [ %.2180.i.i, %stbrp__skyline_find_min_y.exit121.i.i ], [ %.2180.i.i, %bb.aa ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.173179.i.i, i64 8
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not99.i.i = icmp eq ptr %i.eu, null
  br i1 %.not99.i.i, label %stbrp__skyline_find_best_pos.exit.i, label %.preheader.i.i

stbrp__skyline_find_best_pos.exit.i:              ; preds = %bb.ac, %._crit_edge.thread.i.i
  %.287.i.i = phi i32 [ %i.dc, %._crit_edge.thread.i.i ], [ %.186.i.i, %bb.ac ] ; 2 uses
  %.484.i.i = phi i32 [ %.080.lcssa209.i.i, %._crit_edge.thread.i.i ], [ %.383.i.i, %bb.ac ] ; 2 uses
  %.4.i.i = phi ptr [ %.0.lcssa210.i.i, %._crit_edge.thread.i.i ], [ %.3.i.i, %bb.ac ] ; 2 uses
  %i.ev = zext nneg i32 %.484.i.i to i64
  %i.ew = shl nuw nsw i64 %i.ev, 32
  %i.ex = zext i32 %.287.i.i to i64
  %i.ey = or disjoint i64 %i.ew, %i.ex
  %i.ez = icmp eq ptr %.4.i.i, null
  br i1 %i.ez, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %stbrp__skyline_find_best_pos.exit.i, %stbrp__skyline_find_best_pos.exit.thread88.i
  %.pn56 = phi i64 [ %i.cv, %stbrp__skyline_find_best_pos.exit.thread88.i ], [ %i.ey, %stbrp__skyline_find_best_pos.exit.i ]
  %.4.i96.i = phi ptr [ %i.ah, %stbrp__skyline_find_best_pos.exit.thread88.i ], [ %.4.i.i, %stbrp__skyline_find_best_pos.exit.i ] ; 2 uses
  %.484.i95.i = phi i32 [ 0, %stbrp__skyline_find_best_pos.exit.thread88.i ], [ %.484.i.i, %stbrp__skyline_find_best_pos.exit.i ]
  %.287.i94.i = phi i32 [ %i.bd, %stbrp__skyline_find_best_pos.exit.thread88.i ], [ %.287.i.i, %stbrp__skyline_find_best_pos.exit.i ] ; 3 uses
  %i.fa = add nsw i32 %.484.i95.i, %i.ap          ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, %i.ba
  br i1 %i.fb, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fc = load ptr, ptr %i.aj, align 8            ; 6 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %.287.i94.i, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 %i.fa, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8
  store ptr %i.fg, ptr %i.aj, align 8
  %i.fh = load ptr, ptr %.4.i96.i, align 8        ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 8
  %i.fj = icmp slt i32 %i.fi, %.287.i94.i
  br i1 %i.fj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  store ptr %i.fc, ptr %i.fk, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store ptr %i.fc, ptr %.4.i96.i, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i = phi ptr [ %i.fl, %bb.ag ], [ %i.fh, %bb.ah ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %.not55.i = icmp eq ptr %i.fn, null
  %.pre62.i = add nsw i32 %.287.i94.i, %i.am      ; 3 uses
  br i1 %.not55.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %bb.aj
  %i.fo = phi ptr [ %i.ft, %bb.aj ], [ %i.fn, %bb.ai ] ; 4 uses
  %i.fp = phi ptr [ %i.fs, %bb.aj ], [ %i.fm, %bb.ai ]
  %.156.i = phi ptr [ %i.fo, %bb.aj ], [ %.0.i, %bb.ai ] ; 2 uses
  %i.fq = load i32, ptr %i.fo, align 8
  %.not44.i = icmp sgt i32 %i.fq, %.pre62.i
  br i1 %.not44.i, label %.critedge.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %i.fr = load ptr, ptr %i.aj, align 8
  store ptr %i.fr, ptr %i.fp, align 8
  store ptr %.156.i, ptr %i.aj, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ft, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %bb.aj, %.lr.ph.i, %bb.ai
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.ai ], [ %.156.i, %.lr.ph.i ], [ %i.fo, %bb.aj ] ; 3 uses
  store ptr %.1.lcssa.i, ptr %i.ff, align 8
  %i.fu = load i32, ptr %.1.lcssa.i, align 8
  %i.fv = icmp slt i32 %i.fu, %.pre62.i
  br i1 %i.fv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge.i
  store i32 %.pre62.i, ptr %.1.lcssa.i, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i64 %.pn56, ptr %i.fw, align 4
  br label %bb.an

bb.am:                                            ; preds = %stbrp__skyline_find_best_pos.exit.i, %bb.ae, %bb.ad, %bb.f, %bb.e
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 2147483647, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 2147483647, ptr %i.fy, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.d
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge61, label %bb.b

._crit_edge61:                                    ; preds = %bb.an
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 24, ptr noundef nonnull @rect_original_order) #39
  %xtraiter108 = and i64 %wide.trip.count72, 1
  %i.fz = icmp eq i32 %2, 1
  br i1 %i.fz, label %.lr.ph65.epil.preheader, label %._crit_edge61.new

._crit_edge61.new:                                ; preds = %._crit_edge61
  %unroll_iter113 = and i64 %wide.trip.count72, 2147483646
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.as, %._crit_edge61.new
  %indvars.iv74 = phi i64 [ 0, %._crit_edge61.new ], [ %indvars.iv.next75.1, %bb.as ] ; 3 uses
  %.063 = phi i32 [ 1, %._crit_edge61.new ], [ %i.gv, %bb.as ]
  %niter114 = phi i64 [ 0, %._crit_edge61.new ], [ %niter114.next.1, %bb.as ]
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv74 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = icmp eq i32 %i.gc, 2147483647
  br i1 %i.gd, label %bb.ao, label %.thread

.thread:                                          ; preds = %.lr.ph65
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  store i32 1, ptr %i.ge, align 4
  br label %bb.ap

bb.ao:                                            ; preds = %.lr.ph65
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gg = load i32, ptr %i.gf, align 4
  %.fr = freeze i32 %i.gg
  %i.gh = icmp ne i32 %.fr, 2147483647            ; 2 uses
  %i.gi = zext i1 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  store i32 %i.gi, ptr %i.gj, align 4
  br i1 %i.gh, label %bb.ap, label %.lr.ph65.1

bb.ap:                                            ; preds = %.thread, %bb.ao
  br label %.lr.ph65.1

.lr.ph65.1:                                       ; preds = %bb.ao, %bb.ap
  %i.gk = phi i32 [ %.063, %bb.ap ], [ 0, %bb.ao ]
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv74 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 36
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = icmp eq i32 %i.gn, 2147483647
  br i1 %i.go, label %bb.aq, label %.thread.1

.thread.1:                                        ; preds = %.lr.ph65.1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 44
  store i32 1, ptr %i.gp, align 4
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph65.1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gr = load i32, ptr %i.gq, align 4
  %.fr.1 = freeze i32 %i.gr
  %i.gs = icmp ne i32 %.fr.1, 2147483647          ; 2 uses
  %i.gt = zext i1 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 44
  store i32 %i.gt, ptr %i.gu, align 4
  br i1 %i.gs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.thread.1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gv = phi i32 [ %i.gk, %bb.ar ], [ 0, %bb.aq ] ; 3 uses
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %niter114.next.1 = add nuw i64 %niter114, 2     ; 2 uses
  %niter114.ncmp.1 = icmp eq i64 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %._crit_edge66.loopexit.unr-lcssa, label %.lr.ph65

._crit_edge66.loopexit.unr-lcssa:                 ; preds = %bb.as
  %lcmp.mod110.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %._crit_edge66, label %.lr.ph65.epil.preheader

.lr.ph65.epil.preheader:                          ; preds = %._crit_edge66.loopexit.unr-lcssa, %._crit_edge61
  %indvars.iv74.epil.init = phi i64 [ 0, %._crit_edge61 ], [ %indvars.iv.next75.1, %._crit_edge66.loopexit.unr-lcssa ]
  %.063.epil.init = phi i32 [ 1, %._crit_edge61 ], [ %i.gv, %._crit_edge66.loopexit.unr-lcssa ]
  %lcmp.mod112 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv74.epil.init ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = icmp eq i32 %i.gy, 2147483647
  br i1 %i.gz, label %bb.at, label %.thread.epil

.thread.epil:                                     ; preds = %.lr.ph65.epil.preheader
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  store i32 1, ptr %i.ha, align 4
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph65.epil.preheader
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hc = load i32, ptr %i.hb, align 4
  %.fr.epil = freeze i32 %i.hc
  %i.hd = icmp ne i32 %.fr.epil, 2147483647       ; 2 uses
  %i.he = zext i1 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  store i32 %i.he, ptr %i.hf, align 4
  br i1 %i.hd, label %bb.au, label %._crit_edge66

bb.au:                                            ; preds = %bb.at, %.thread.epil
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %._crit_edge66.loopexit.unr-lcssa, %bb.au, %bb.at, %._crit_edge61.thread
  %.0.lcssa = phi i32 [ 1, %._crit_edge61.thread ], [ %i.gv, %._crit_edge66.loopexit.unr-lcssa ], [ %.063.epil.init, %bb.au ], [ 0, %bb.at ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @rect_height_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, %i.d
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @llvm.scmp.i32.i32(i32 %i.j, i32 %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @rect_original_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define hidden void @LoadFontDefault() local_unnamed_addr #6 {
bb.a:
  %0 = alloca %struct.Image, align 8              ; 8 uses
  %1 = alloca %struct.Texture, align 4            ; 4 uses
  %2 = alloca %struct.Image, align 8              ; 4 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  store i32 224, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 8), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #39
  %i.b = tail call noalias dereferenceable_or_null(32768) ptr @calloc(i64 noundef 16384, i64 noundef 2) #40 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 128, i32 128, i32 1, i32 2>, ptr %i.c, align 8
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.d
  %indvars.iv71 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next72, %bb.d ] ; 3 uses
  %indvars.iv69 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next70, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @__const.LoadFontDefault.defaultFontData, i64 %indvars.iv69
  %i.e = load i32, ptr %i.d, align 4
  %invariant.gep = getelementptr [2 x i8], ptr %i.b, i64 %indvars.iv71
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %1, ptr noundef nonnull byval(%struct.Image) align 8 %0) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @defaultFont, i64 12), ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  %.not60 = icmp eq ptr %i.f, null
  br i1 %.not60, label %bb.j, label %bb.i

bb.d:                                             ; preds = %bb.h
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 32
  %exitcond.not = icmp eq i64 %indvars.iv.next70, 512
  br i1 %exitcond.not, label %bb.c, label %.preheader

bb.e:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 31, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = shl nuw i32 1, %i.g
  %i.i = and i32 %i.e, %i.h
  %.not61 = icmp eq i32 %i.i, 0
  br i1 %.not61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 -1, ptr %gep, align 2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = add nuw nsw i64 %indvars.iv, %indvars.iv71
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k ; 2 uses
  store i8 -1, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 0, ptr %i.m, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not79 = icmp eq i64 %indvars.iv, 0
  br i1 %.not79, label %bb.d, label %bb.e

bb.i:                                             ; preds = %bb.c
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %0) #39
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %i.o = sext i32 %i.n to i64
  %i.p = call noalias ptr @calloc(i64 noundef %i.o, i64 noundef 40) #40
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %i.r = sext i32 %i.q to i64
  %i.s = call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 16) #40
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 32), align 8
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.j
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %0) #39
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 32), align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load float, ptr %i.w, align 4
  %i.y = fptosi float %i.x to i32
  store i32 %i.y, ptr @defaultFont, align 8
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %i.z) #39
  br label %bb.m

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %bb.l ], [ 0, %bb.j ] ; 5 uses
  %.05166 = phi i32 [ %.1, %bb.l ], [ 1, %bb.j ]  ; 2 uses
  %.05465 = phi i32 [ %.155, %bb.l ], [ 0, %bb.j ] ; 3 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %indvars.iv76 ; 5 uses
  %i.ac = trunc i64 %indvars.iv76 to i32
  %i.ad = add i32 %i.ac, 32
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 32), align 8
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv76 ; 6 uses
  %i.ag = mul nsw i32 %.05465, 11
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = insertelement <2 x i32> poison, i32 %.05166, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.ah, i64 1
  %i.ak = sitofp <2 x i32> %i.aj to <2 x float>
  store <2 x float> %i.ak, ptr %i.af, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @__const.LoadFontDefault.charsWidth, i64 %indvars.iv76
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = sitofp i32 %i.am to float               ; 2 uses
end_hunk_1
begin_hunk_2_@LoadFontData:bb.a

bb.br:                                            ; preds = %stbtt__buf_get8.exit.i.1.i217.i.i
  %.not.i.i220.i.i = icmp slt i32 %i.jw, %i.gs
  br i1 %.not.i.i220.i.i, label %bb.bs, label %stbtt__buf_get8.exit.i221.i.i

bb.bs:                                            ; preds = %bb.br
  %i.jx = load ptr, ptr %7, align 8
  %i.jy = add nsw i32 %i.jw, 1
  %i.jz = sext i32 %i.jw to i64
  %i.ka = getelementptr inbounds i8, ptr %i.jx, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = zext i8 %i.kb to i32
  br label %stbtt__buf_get8.exit.i221.i.i

stbtt__buf_get8.exit.i221.i.i:                    ; preds = %bb.bs, %bb.br
  %.promoted390.i.i = phi i32 [ %i.jy, %bb.bs ], [ %i.jw, %bb.br ]
  %.0.i.i222.i.i = phi i32 [ %i.kc, %bb.bs ], [ 0, %bb.br ] ; 6 uses
  %i.kd = mul nuw nsw i32 %.0.i.i222.i.i, %.0.i.i.1.i218.i.i
  %i.ke = add nsw i32 %i.kd, %.promoted390.i.i    ; 2 uses
  %i.kf = icmp slt i32 %i.ke, 0
  %i.kg = tail call i32 @llvm.smin.i32(i32 %i.ke, i32 %i.gs)
  %..i.i.i223.i.i = select i1 %i.kf, i32 %i.gs, i32 %i.kg ; 3 uses
  %.not.i13.i224.i.i = icmp eq i32 %.0.i.i222.i.i, 0
  br i1 %.not.i13.i224.i.i, label %stbtt__buf_get.exit21.i233.i.i, label %.lr.ph.i.i225.preheader.i.i

.lr.ph.i.i225.preheader.i.i:                      ; preds = %stbtt__buf_get8.exit.i221.i.i
  %i.kh = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter769 = and i32 %.0.i.i222.i.i, 1
  %i.ki = icmp eq i32 %.0.i.i222.i.i, 1
  br i1 %i.ki, label %.lr.ph.i.i225.i.i.epil.preheader, label %.lr.ph.i.i225.preheader.i.i.new

.lr.ph.i.i225.preheader.i.i.new:                  ; preds = %.lr.ph.i.i225.preheader.i.i
  %unroll_iter776 = and i32 %.0.i.i222.i.i, 254
  br label %.lr.ph.i.i225.i.i

.lr.ph.i.i225.i.i:                                ; preds = %stbtt__buf_get8.exit.i18.i229.i.i.1, %.lr.ph.i.i225.preheader.i.i.new
  %i.kj = phi i32 [ %..i.i.i223.i.i, %.lr.ph.i.i225.preheader.i.i.new ], [ %i.kz, %stbtt__buf_get8.exit.i18.i229.i.i.1 ] ; 4 uses
  %.056.i16.i227.i.i = phi i32 [ 0, %.lr.ph.i.i225.preheader.i.i.new ], [ %.0.i.i19.i230.i.i.1, %stbtt__buf_get8.exit.i18.i229.i.i.1 ]
  %niter777 = phi i32 [ 0, %.lr.ph.i.i225.preheader.i.i.new ], [ %niter777.next.1, %stbtt__buf_get8.exit.i18.i229.i.i.1 ]
  %i.kk = shl i32 %.056.i16.i227.i.i, 8           ; 2 uses
  %.not.i.i17.i228.i.i = icmp slt i32 %i.kj, %i.gs
  br i1 %.not.i.i17.i228.i.i, label %bb.bt, label %stbtt__buf_get8.exit.i18.i229.i.i

bb.bt:                                            ; preds = %.lr.ph.i.i225.i.i
  %i.kl = add nsw i32 %i.kj, 1
  %i.km = sext i32 %i.kj to i64
  %i.kn = getelementptr inbounds i8, ptr %i.kh, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = zext i8 %i.ko to i32
  %i.kq = or disjoint i32 %i.kk, %i.kp
  br label %stbtt__buf_get8.exit.i18.i229.i.i

stbtt__buf_get8.exit.i18.i229.i.i:                ; preds = %bb.bt, %.lr.ph.i.i225.i.i
  %i.kr = phi i32 [ %i.kl, %bb.bt ], [ %i.kj, %.lr.ph.i.i225.i.i ] ; 4 uses
  %.0.i.i19.i230.i.i = phi i32 [ %i.kq, %bb.bt ], [ %i.kk, %.lr.ph.i.i225.i.i ]
  %i.ks = shl i32 %.0.i.i19.i230.i.i, 8           ; 2 uses
  %.not.i.i17.i228.i.i.1 = icmp slt i32 %i.kr, %i.gs
  br i1 %.not.i.i17.i228.i.i.1, label %bb.bu, label %stbtt__buf_get8.exit.i18.i229.i.i.1

bb.bu:                                            ; preds = %stbtt__buf_get8.exit.i18.i229.i.i
  %i.kt = add nsw i32 %i.kr, 1
  %i.ku = sext i32 %i.kr to i64
  %i.kv = getelementptr inbounds i8, ptr %i.kh, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = zext i8 %i.kw to i32
  %i.ky = or disjoint i32 %i.ks, %i.kx
  br label %stbtt__buf_get8.exit.i18.i229.i.i.1

stbtt__buf_get8.exit.i18.i229.i.i.1:              ; preds = %bb.bu, %stbtt__buf_get8.exit.i18.i229.i.i
  %i.kz = phi i32 [ %i.kt, %bb.bu ], [ %i.kr, %stbtt__buf_get8.exit.i18.i229.i.i ] ; 3 uses
  %.0.i.i19.i230.i.i.1 = phi i32 [ %i.ky, %bb.bu ], [ %i.ks, %stbtt__buf_get8.exit.i18.i229.i.i ] ; 3 uses
  %niter777.next.1 = add nuw nsw i32 %niter777, 2 ; 2 uses
  %niter777.ncmp.1 = icmp eq i32 %niter777.next.1, %unroll_iter776
  br i1 %niter777.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa, label %.lr.ph.i.i225.i.i

stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa: ; preds = %stbtt__buf_get8.exit.i18.i229.i.i.1
  %lcmp.mod772.not = icmp eq i32 %xtraiter769, 0
  br i1 %lcmp.mod772.not, label %stbtt__buf_get.exit21.loopexit.i232.i.i, label %.lr.ph.i.i225.i.i.epil.preheader

.lr.ph.i.i225.i.i.epil.preheader:                 ; preds = %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa, %.lr.ph.i.i225.preheader.i.i
  %.epil.init771 = phi i32 [ %..i.i.i223.i.i, %.lr.ph.i.i225.preheader.i.i ], [ %i.kz, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i227.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i225.preheader.i.i ], [ %.0.i.i19.i230.i.i.1, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa ]
  %lcmp.mod775 = trunc i32 %.0.i.i222.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod775)
  %i.la = shl i32 %.056.i16.i227.i.i.epil.init, 8 ; 2 uses
  %.not.i.i17.i228.i.i.epil = icmp slt i32 %.epil.init771, %i.gs
  br i1 %.not.i.i17.i228.i.i.epil, label %bb.bv, label %stbtt__buf_get.exit21.loopexit.i232.i.i

bb.bv:                                            ; preds = %.lr.ph.i.i225.i.i.epil.preheader
  %i.lb = add nsw i32 %.epil.init771, 1
  %i.lc = sext i32 %.epil.init771 to i64
  %i.ld = getelementptr inbounds i8, ptr %i.kh, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i32
  %i.lg = or disjoint i32 %i.la, %i.lf
  br label %stbtt__buf_get.exit21.loopexit.i232.i.i

stbtt__buf_get.exit21.loopexit.i232.i.i:          ; preds = %.lr.ph.i.i225.i.i.epil.preheader, %bb.bv, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa
  %.lcssa746 = phi i32 [ %i.kz, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa ], [ %i.lb, %bb.bv ], [ %.epil.init771, %.lr.ph.i.i225.i.i.epil.preheader ]
  %.0.i.i19.i230.i.i.lcssa = phi i32 [ %.0.i.i19.i230.i.i.1, %stbtt__buf_get.exit21.loopexit.i232.i.i.unr-lcssa ], [ %i.lg, %bb.bv ], [ %i.la, %.lr.ph.i.i225.i.i.epil.preheader ]
  %i.lh = add i32 %.0.i.i19.i230.i.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i233.i.i

stbtt__buf_get.exit21.i233.i.i:                   ; preds = %stbtt__buf_get.exit21.loopexit.i232.i.i, %stbtt__buf_get8.exit.i221.i.i
  %i.li = phi i32 [ %..i.i.i223.i.i, %stbtt__buf_get8.exit.i221.i.i ], [ %.lcssa746, %stbtt__buf_get.exit21.loopexit.i232.i.i ]
  %.05.lcssa.i.i234.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i221.i.i ], [ %i.lh, %stbtt__buf_get.exit21.loopexit.i232.i.i ]
  %i.lj = add nsw i32 %.05.lcssa.i.i234.i.i, %i.li ; 2 uses
  %i.lk = icmp slt i32 %i.lj, 0
  %i.ll = tail call i32 @llvm.smin.i32(i32 %i.lj, i32 %i.gs)
  %..i.i22.i235.i.i = select i1 %i.lk, i32 %i.gs, i32 %i.ll ; 2 uses
  store i32 %..i.i22.i235.i.i, ptr %i.go, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %stbtt__buf_get.exit21.i233.i.i, %stbtt__buf_get8.exit.i.1.i217.i.i
  %i.lm = phi i32 [ %..i.i22.i235.i.i, %stbtt__buf_get.exit21.i233.i.i ], [ %i.jw, %stbtt__buf_get8.exit.i.1.i217.i.i ] ; 6 uses
  %i.ln = sub nsw i32 %i.lm, %i.jg                ; 14 uses
  %i.lo = or i32 %i.ln, %i.jg
  %or.cond.not.i.i236.i.i = icmp slt i32 %i.lo, 0
  %i.lp = icmp sgt i32 %i.lm, %i.gs
  %or.cond.i237.i.i = or i1 %i.lp, %or.cond.not.i.i236.i.i
  br i1 %or.cond.i237.i.i, label %stbtt__buf_get.exit28.i.i.i, label %stbtt__cff_get_index.exit242.i.i

stbtt__cff_get_index.exit242.i.i:                 ; preds = %bb.bw
  %i.lq = load ptr, ptr %7, align 8
  %i.lr = zext nneg i32 %i.jg to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lr ; 16 uses
  %.not.i.i.i243.not.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not.i.i.i243.not.i.i, label %stbtt__buf_get.exit28.i.i.i, label %stbtt__buf_get8.exit.i.i244.i.i

stbtt__buf_get8.exit.i.i244.i.i:                  ; preds = %stbtt__cff_get_index.exit242.i.i
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw nsw i32 %i.lu, 8                ; 2 uses
  %.not.i.i.1.i246.not.i.i = icmp eq i32 %i.ln, 1
  br i1 %.not.i.i.1.i246.not.i.i, label %stbtt__buf_get.exit28.i.i.i, label %stbtt__buf_get8.exit.i.1.i247.i.i

stbtt__buf_get8.exit.i.1.i247.i.i:                ; preds = %stbtt__buf_get8.exit.i.i244.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  %i.lx = load i8, ptr %i.lw, align 1
  %i.ly = zext i8 %i.lx to i32
  %i.lz = or disjoint i32 %i.lv, %i.ly            ; 5 uses
  %.not.i.i249.i.i = icmp samesign ugt i32 %i.ln, 2
  br i1 %.not.i.i249.i.i, label %stbtt__buf_get8.exit.i255.i.i, label %stbtt__buf_get.exit28.i.i.i

stbtt__buf_get8.exit.i255.i.i:                    ; preds = %stbtt__buf_get8.exit.i.1.i247.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.mb = load i8, ptr %i.ma, align 1             ; 4 uses
  %i.mc = zext i8 %i.mb to i32                    ; 8 uses
  %.not.i9.i.i.i = icmp eq i8 %i.mb, 0
  br i1 %.not.i9.i.i.i, label %stbtt__buf_get.exit28.i.i.i, label %.lr.ph.i.i257.i.i.preheader

.lr.ph.i.i257.i.i.preheader:                      ; preds = %stbtt__buf_get8.exit.i255.i.i
  %i.md = add nsw i32 %i.mc, -1                   ; 2 uses
  %xtraiter778 = and i32 %i.mc, 1
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %.lr.ph.i.i257.i.i.epil.preheader, label %.lr.ph.i.i257.i.i.preheader.new

.lr.ph.i.i257.i.i.preheader.new:                  ; preds = %.lr.ph.i.i257.i.i.preheader
  %unroll_iter785 = and i32 %i.mc, 254
  br label %.lr.ph.i.i257.i.i

.lr.ph.i.i257.i.i:                                ; preds = %stbtt__buf_get8.exit.i14.i.i.i.1, %.lr.ph.i.i257.i.i.preheader.new
  %.sroa.6.3.i.i.i = phi i32 [ 3, %.lr.ph.i.i257.i.i.preheader.new ], [ %.sroa.6.4.i.i.i.1, %stbtt__buf_get8.exit.i14.i.i.i.1 ]
  %i.mf = phi i32 [ 3, %.lr.ph.i.i257.i.i.preheader.new ], [ %i.mv, %stbtt__buf_get8.exit.i14.i.i.i.1 ] ; 4 uses
  %.056.i12.i.i.i = phi i32 [ 0, %.lr.ph.i.i257.i.i.preheader.new ], [ %.0.i.i15.i.i.i.1, %stbtt__buf_get8.exit.i14.i.i.i.1 ]
  %niter786 = phi i32 [ 0, %.lr.ph.i.i257.i.i.preheader.new ], [ %niter786.next.1, %stbtt__buf_get8.exit.i14.i.i.i.1 ]
  %i.mg = shl i32 %.056.i12.i.i.i, 8              ; 2 uses
  %.not.i.i13.i.i.i = icmp slt i32 %i.mf, %i.ln
  br i1 %.not.i.i13.i.i.i, label %bb.bx, label %stbtt__buf_get8.exit.i14.i.i.i

bb.bx:                                            ; preds = %.lr.ph.i.i257.i.i
  %i.mh = add nsw i32 %i.mf, 1                    ; 2 uses
  %i.mi = sext i32 %i.mf to i64
  %i.mj = getelementptr inbounds i8, ptr %i.ls, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = zext i8 %i.mk to i32
  %i.mm = or disjoint i32 %i.mg, %i.ml
  br label %stbtt__buf_get8.exit.i14.i.i.i

stbtt__buf_get8.exit.i14.i.i.i:                   ; preds = %bb.bx, %.lr.ph.i.i257.i.i
  %.sroa.6.4.i.i.i = phi i32 [ %i.mh, %bb.bx ], [ %.sroa.6.3.i.i.i, %.lr.ph.i.i257.i.i ]
  %i.mn = phi i32 [ %i.mh, %bb.bx ], [ %i.mf, %.lr.ph.i.i257.i.i ] ; 4 uses
  %.0.i.i15.i.i.i = phi i32 [ %i.mm, %bb.bx ], [ %i.mg, %.lr.ph.i.i257.i.i ]
  %i.mo = shl i32 %.0.i.i15.i.i.i, 8              ; 2 uses
  %.not.i.i13.i.i.i.1 = icmp slt i32 %i.mn, %i.ln
  br i1 %.not.i.i13.i.i.i.1, label %bb.by, label %stbtt__buf_get8.exit.i14.i.i.i.1

bb.by:                                            ; preds = %stbtt__buf_get8.exit.i14.i.i.i
  %i.mp = add nsw i32 %i.mn, 1                    ; 2 uses
  %i.mq = sext i32 %i.mn to i64
  %i.mr = getelementptr inbounds i8, ptr %i.ls, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1
  %i.mt = zext i8 %i.ms to i32
  %i.mu = or disjoint i32 %i.mo, %i.mt
  br label %stbtt__buf_get8.exit.i14.i.i.i.1

stbtt__buf_get8.exit.i14.i.i.i.1:                 ; preds = %bb.by, %stbtt__buf_get8.exit.i14.i.i.i
  %.sroa.6.4.i.i.i.1 = phi i32 [ %i.mp, %bb.by ], [ %.sroa.6.4.i.i.i, %stbtt__buf_get8.exit.i14.i.i.i ] ; 3 uses
  %i.mv = phi i32 [ %i.mp, %bb.by ], [ %i.mn, %stbtt__buf_get8.exit.i14.i.i.i ] ; 2 uses
  %.0.i.i15.i.i.i.1 = phi i32 [ %i.mu, %bb.by ], [ %i.mo, %stbtt__buf_get8.exit.i14.i.i.i ] ; 3 uses
  %niter786.next.1 = add nuw i32 %niter786, 2     ; 2 uses
  %niter786.ncmp.1 = icmp eq i32 %niter786.next.1, %unroll_iter785
  br i1 %niter786.ncmp.1, label %.lr.ph.i19.i.i.i.preheader.unr-lcssa, label %.lr.ph.i.i257.i.i

.lr.ph.i19.i.i.i.preheader.unr-lcssa:             ; preds = %stbtt__buf_get8.exit.i14.i.i.i.1
  %lcmp.mod781.not = icmp eq i32 %xtraiter778, 0
  br i1 %lcmp.mod781.not, label %.lr.ph.i19.i.i.i.preheader, label %.lr.ph.i.i257.i.i.epil.preheader

.lr.ph.i.i257.i.i.epil.preheader:                 ; preds = %.lr.ph.i19.i.i.i.preheader.unr-lcssa, %.lr.ph.i.i257.i.i.preheader
  %.sroa.6.3.i.i.i.epil.init = phi i32 [ 3, %.lr.ph.i.i257.i.i.preheader ], [ %.sroa.6.4.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ]
  %.epil.init780 = phi i32 [ 3, %.lr.ph.i.i257.i.i.preheader ], [ %i.mv, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i257.i.i.preheader ], [ %.0.i.i15.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ]
  %lcmp.mod784 = trunc i8 %i.mb to i1
  tail call void @llvm.assume(i1 %lcmp.mod784)
  %i.mw = shl i32 %.056.i12.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i13.i.i.i.epil = icmp slt i32 %.epil.init780, %i.ln
  br i1 %.not.i.i13.i.i.i.epil, label %bb.bz, label %.lr.ph.i19.i.i.i.preheader

bb.bz:                                            ; preds = %.lr.ph.i.i257.i.i.epil.preheader
  %i.mx = add nsw i32 %.epil.init780, 1
  %i.my = sext i32 %.epil.init780 to i64
  %i.mz = getelementptr inbounds i8, ptr %i.ls, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = zext i8 %i.na to i32
  %i.nc = or disjoint i32 %i.mw, %i.nb
  br label %.lr.ph.i19.i.i.i.preheader

.lr.ph.i19.i.i.i.preheader:                       ; preds = %.lr.ph.i.i257.i.i.epil.preheader, %bb.bz, %.lr.ph.i19.i.i.i.preheader.unr-lcssa
  %.sroa.6.4.i.i.i.lcssa = phi i32 [ %.sroa.6.4.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ], [ %i.mx, %bb.bz ], [ %.sroa.6.3.i.i.i.epil.init, %.lr.ph.i.i257.i.i.epil.preheader ] ; 2 uses
  %.0.i.i15.i.i.i.lcssa = phi i32 [ %.0.i.i15.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.unr-lcssa ], [ %i.nc, %bb.bz ], [ %i.mw, %.lr.ph.i.i257.i.i.epil.preheader ] ; 3 uses
  %xtraiter787 = and i32 %i.mc, 1
  %i.nd = icmp eq i32 %i.md, 0
  br i1 %i.nd, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter793 = and i32 %i.mc, 254
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %stbtt__buf_get8.exit.i24.i.i.i.1, %.lr.ph.i19.i.i.i.preheader.new
  %i.ne = phi i32 [ %.sroa.6.4.i.i.i.lcssa, %.lr.ph.i19.i.i.i.preheader.new ], [ %i.nu, %stbtt__buf_get8.exit.i24.i.i.i.1 ] ; 4 uses
  %.056.i22.i.i.i = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %.0.i.i25.i.i.i.1, %stbtt__buf_get8.exit.i24.i.i.i.1 ]
  %niter794 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter794.next.1, %stbtt__buf_get8.exit.i24.i.i.i.1 ]
  %i.nf = shl i32 %.056.i22.i.i.i, 8              ; 2 uses
  %.not.i.i23.i.i.i = icmp slt i32 %i.ne, %i.ln
  br i1 %.not.i.i23.i.i.i, label %bb.ca, label %stbtt__buf_get8.exit.i24.i.i.i

bb.ca:                                            ; preds = %.lr.ph.i19.i.i.i
  %i.ng = add nsw i32 %i.ne, 1
  %i.nh = sext i32 %i.ne to i64
  %i.ni = getelementptr inbounds i8, ptr %i.ls, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1
  %i.nk = zext i8 %i.nj to i32
  %i.nl = or disjoint i32 %i.nf, %i.nk
  br label %stbtt__buf_get8.exit.i24.i.i.i

stbtt__buf_get8.exit.i24.i.i.i:                   ; preds = %bb.ca, %.lr.ph.i19.i.i.i
  %i.nm = phi i32 [ %i.ng, %bb.ca ], [ %i.ne, %.lr.ph.i19.i.i.i ] ; 4 uses
  %.0.i.i25.i.i.i = phi i32 [ %i.nl, %bb.ca ], [ %i.nf, %.lr.ph.i19.i.i.i ]
  %i.nn = shl i32 %.0.i.i25.i.i.i, 8              ; 2 uses
  %.not.i.i23.i.i.i.1 = icmp slt i32 %i.nm, %i.ln
  br i1 %.not.i.i23.i.i.i.1, label %bb.cb, label %stbtt__buf_get8.exit.i24.i.i.i.1

bb.cb:                                            ; preds = %stbtt__buf_get8.exit.i24.i.i.i
  %i.no = add nsw i32 %i.nm, 1
  %i.np = sext i32 %i.nm to i64
  %i.nq = getelementptr inbounds i8, ptr %i.ls, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = zext i8 %i.nr to i32
  %i.nt = or disjoint i32 %i.nn, %i.ns
  br label %stbtt__buf_get8.exit.i24.i.i.i.1

stbtt__buf_get8.exit.i24.i.i.i.1:                 ; preds = %bb.cb, %stbtt__buf_get8.exit.i24.i.i.i
  %i.nu = phi i32 [ %i.no, %bb.cb ], [ %i.nm, %stbtt__buf_get8.exit.i24.i.i.i ] ; 2 uses
  %.0.i.i25.i.i.i.1 = phi i32 [ %i.nt, %bb.cb ], [ %i.nn, %stbtt__buf_get8.exit.i24.i.i.i ] ; 3 uses
  %niter794.next.1 = add nuw i32 %niter794, 2     ; 2 uses
  %niter794.ncmp.1 = icmp eq i32 %niter794.next.1, %unroll_iter793
  br i1 %niter794.ncmp.1, label %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i

stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa:   ; preds = %stbtt__buf_get8.exit.i24.i.i.i.1
  %lcmp.mod790.not = icmp eq i32 %xtraiter787, 0
  br i1 %lcmp.mod790.not, label %stbtt__buf_get.exit28.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %.epil.init789 = phi i32 [ %.sroa.6.4.i.i.i.lcssa, %.lr.ph.i19.i.i.i.preheader ], [ %i.nu, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader ], [ %.0.i.i25.i.i.i.1, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod792 = trunc i8 %i.mb to i1
  tail call void @llvm.assume(i1 %lcmp.mod792)
  %i.nv = shl i32 %.056.i22.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i23.i.i.i.epil = icmp slt i32 %.epil.init789, %i.ln
  br i1 %.not.i.i23.i.i.i.epil, label %bb.cc, label %stbtt__buf_get.exit28.i.i.i

bb.cc:                                            ; preds = %.lr.ph.i19.i.i.i.epil.preheader
  %i.nw = sext i32 %.epil.init789 to i64
  %i.nx = getelementptr inbounds i8, ptr %i.ls, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = zext i8 %i.ny to i32
  %i.oa = or disjoint i32 %i.nv, %i.nz
  br label %stbtt__buf_get.exit28.i.i.i

stbtt__buf_get.exit28.i.i.i:                      ; preds = %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa, %bb.cc, %.lr.ph.i19.i.i.i.epil.preheader, %stbtt__buf_get8.exit.i255.i.i, %stbtt__buf_get8.exit.i.1.i247.i.i, %stbtt__buf_get8.exit.i.i244.i.i, %stbtt__cff_get_index.exit242.i.i, %bb.bw
  %.0.i.i.1.i248359.i.i = phi i32 [ %i.lz, %stbtt__buf_get8.exit.i255.i.i ], [ %i.lz, %stbtt__buf_get8.exit.i.1.i247.i.i ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ %i.lv, %stbtt__buf_get8.exit.i.i244.i.i ], [ %i.lz, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.lz, %bb.cc ], [ %i.lz, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ]
  %.sroa.18.8.extract.trunc.i344350358.i.i = phi i32 [ %i.ln, %stbtt__buf_get8.exit.i255.i.i ], [ 2, %stbtt__buf_get8.exit.i.1.i247.i.i ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ 1, %stbtt__buf_get8.exit.i.i244.i.i ], [ %i.ln, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.ln, %bb.cc ], [ %i.ln, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.0.i.i238343351357.i.i = phi ptr [ %i.ls, %stbtt__buf_get8.exit.i255.i.i ], [ %i.ls, %stbtt__buf_get8.exit.i.1.i247.i.i ], [ null, %bb.bw ], [ %i.ls, %stbtt__cff_get_index.exit242.i.i ], [ %i.ls, %stbtt__buf_get8.exit.i.i244.i.i ], [ %i.ls, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.ls, %bb.cc ], [ %i.ls, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ]
  %.0.i55.i.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i255.i.i ], [ 0, %stbtt__buf_get8.exit.i.1.i247.i.i ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ 0, %stbtt__buf_get8.exit.i.i244.i.i ], [ %i.mc, %.lr.ph.i19.i.i.i.epil.preheader ], [ %i.mc, %bb.cc ], [ %i.mc, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ]
  %.05.lcssa.i42.i.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i255.i.i ], [ 0, %stbtt__buf_get8.exit.i.1.i247.i.i ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ 0, %stbtt__buf_get8.exit.i.i244.i.i ], [ %.0.i.i15.i.i.i.lcssa, %.lr.ph.i19.i.i.i.epil.preheader ], [ %.0.i.i15.i.i.i.lcssa, %bb.cc ], [ %.0.i.i15.i.i.i.lcssa, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27.i.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i255.i.i ], [ 0, %stbtt__buf_get8.exit.i.1.i247.i.i ], [ 0, %bb.bw ], [ 0, %stbtt__cff_get_index.exit242.i.i ], [ 0, %stbtt__buf_get8.exit.i.i244.i.i ], [ %.0.i.i25.i.i.i.1, %stbtt__buf_get.exit28.i.i.i.loopexit.unr-lcssa ], [ %i.oa, %bb.cc ], [ %i.nv, %.lr.ph.i19.i.i.i.epil.preheader ]
  %i.ob = add nuw nsw i32 %.0.i.i.1.i248359.i.i, 1
  %i.oc = mul nuw nsw i32 %.0.i55.i.i.i, %i.ob
  %i.od = add nuw nsw i32 %i.oc, 2
  %i.oe = add nsw i32 %i.od, %.05.lcssa.i42.i.i.i ; 4 uses
  %i.of = sub nsw i32 %.05.lcssa.i27.i.i.i, %.05.lcssa.i42.i.i.i ; 3 uses
  %i.og = or i32 %i.of, %i.oe
  %or.cond.not.i.i250.i.i = icmp sgt i32 %i.og, -1
  br i1 %or.cond.not.i.i250.i.i, label %bb.cd, label %stbtt__cff_index_get.exit.i.i

bb.cd:                                            ; preds = %stbtt__buf_get.exit28.i.i.i
  %i.oh = icmp sgt i32 %i.oe, %.sroa.18.8.extract.trunc.i344350358.i.i
  %i.oi = sub nsw i32 %.sroa.18.8.extract.trunc.i344350358.i.i, %i.oe
  %i.oj = icmp sgt i32 %i.of, %i.oi
  %or.cond.i.i.i.i = select i1 %i.oh, i1 true, i1 %i.oj
  br i1 %or.cond.i.i.i.i, label %stbtt__cff_index_get.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ok = zext nneg i32 %i.oe to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i238343351357.i.i, i64 %i.ok
  %i.om = zext nneg i32 %i.of to i64
  %i.on = shl nuw nsw i64 %i.om, 32
  br label %stbtt__cff_index_get.exit.i.i

stbtt__cff_index_get.exit.i.i:                    ; preds = %bb.ce, %bb.cd, %stbtt__buf_get.exit28.i.i.i
  %.sroa.0.0.i.i251.i.i = phi ptr [ null, %stbtt__buf_get.exit28.i.i.i ], [ null, %bb.cd ], [ %i.ol, %bb.ce ]
  %.sroa.5.0.i.i252.i.i = phi i64 [ 0, %stbtt__buf_get.exit28.i.i.i ], [ 0, %bb.cd ], [ %i.on, %bb.ce ]
  store ptr %.sroa.0.0.i.i251.i.i, ptr %8, align 8
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %.sroa.5.0.i.i252.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8
  %.not.i.i.i258.i.i = icmp slt i32 %i.lm, %i.gs
  br i1 %.not.i.i.i258.i.i, label %bb.cf, label %stbtt__buf_get8.exit.i.i259.i.i

bb.cf:                                            ; preds = %stbtt__cff_index_get.exit.i.i
  %i.oo = load ptr, ptr %7, align 8
  %i.op = add nsw i32 %i.lm, 1                    ; 2 uses
  store i32 %i.op, ptr %i.go, align 8
  %i.oq = sext i32 %i.lm to i64
  %i.or = getelementptr inbounds i8, ptr %i.oo, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1
  %i.ot = zext i8 %i.os to i32
  %i.ou = shl nuw nsw i32 %i.ot, 8
  br label %stbtt__buf_get8.exit.i.i259.i.i

stbtt__buf_get8.exit.i.i259.i.i:                  ; preds = %bb.cf, %stbtt__cff_index_get.exit.i.i
  %i.ov = phi i32 [ %i.op, %bb.cf ], [ %i.lm, %stbtt__cff_index_get.exit.i.i ] ; 4 uses
  %.0.i.i.i260.i.i = phi i32 [ %i.ou, %bb.cf ], [ 0, %stbtt__cff_index_get.exit.i.i ] ; 2 uses
  %.not.i.i.1.i261.i.i = icmp slt i32 %i.ov, %i.gs
  br i1 %.not.i.i.1.i261.i.i, label %bb.cg, label %stbtt__buf_get8.exit.i.1.i262.i.i

bb.cg:                                            ; preds = %stbtt__buf_get8.exit.i.i259.i.i
  %i.ow = load ptr, ptr %7, align 8
  %i.ox = add nsw i32 %i.ov, 1                    ; 2 uses
  store i32 %i.ox, ptr %i.go, align 8
  %i.oy = sext i32 %i.ov to i64
  %i.oz = getelementptr inbounds i8, ptr %i.ow, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = zext i8 %i.pa to i32
  %i.pc = or disjoint i32 %.0.i.i.i260.i.i, %i.pb
  br label %stbtt__buf_get8.exit.i.1.i262.i.i

stbtt__buf_get8.exit.i.1.i262.i.i:                ; preds = %bb.cg, %stbtt__buf_get8.exit.i.i259.i.i
  %i.pd = phi i32 [ %i.ox, %bb.cg ], [ %i.ov, %stbtt__buf_get8.exit.i.i259.i.i ] ; 5 uses
  %.0.i.i.1.i263.i.i = phi i32 [ %i.pc, %bb.cg ], [ %.0.i.i.i260.i.i, %stbtt__buf_get8.exit.i.i259.i.i ] ; 2 uses
  %.not.i264.i.i = icmp eq i32 %.0.i.i.1.i263.i.i, 0
  br i1 %.not.i264.i.i, label %stbtt__cff_get_index.exit287.i.i, label %bb.ch

bb.ch:                                            ; preds = %stbtt__buf_get8.exit.i.1.i262.i.i
  %.not.i.i265.i.i = icmp slt i32 %i.pd, %i.gs
  br i1 %.not.i.i265.i.i, label %bb.ci, label %stbtt__buf_get8.exit.i266.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.pe = load ptr, ptr %7, align 8
  %i.pf = add nsw i32 %i.pd, 1
  %i.pg = sext i32 %i.pd to i64
  %i.ph = getelementptr inbounds i8, ptr %i.pe, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1
  %i.pj = zext i8 %i.pi to i32
  br label %stbtt__buf_get8.exit.i266.i.i

stbtt__buf_get8.exit.i266.i.i:                    ; preds = %bb.ci, %bb.ch
  %.promoted392.i.i = phi i32 [ %i.pf, %bb.ci ], [ %i.pd, %bb.ch ]
  %.0.i.i267.i.i = phi i32 [ %i.pj, %bb.ci ], [ 0, %bb.ch ] ; 6 uses
  %i.pk = mul nuw nsw i32 %.0.i.i267.i.i, %.0.i.i.1.i263.i.i
  %i.pl = add nsw i32 %i.pk, %.promoted392.i.i    ; 2 uses
  %i.pm = icmp slt i32 %i.pl, 0
  %i.pn = tail call i32 @llvm.smin.i32(i32 %i.pl, i32 %i.gs)
  %..i.i.i268.i.i = select i1 %i.pm, i32 %i.gs, i32 %i.pn ; 3 uses
  %.not.i13.i269.i.i = icmp eq i32 %.0.i.i267.i.i, 0
  br i1 %.not.i13.i269.i.i, label %stbtt__buf_get.exit21.i278.i.i, label %.lr.ph.i.i270.preheader.i.i

.lr.ph.i.i270.preheader.i.i:                      ; preds = %stbtt__buf_get8.exit.i266.i.i
  %i.po = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter795 = and i32 %.0.i.i267.i.i, 1
  %i.pp = icmp eq i32 %.0.i.i267.i.i, 1
  br i1 %i.pp, label %.lr.ph.i.i270.i.i.epil.preheader, label %.lr.ph.i.i270.preheader.i.i.new

.lr.ph.i.i270.preheader.i.i.new:                  ; preds = %.lr.ph.i.i270.preheader.i.i
  %unroll_iter802 = and i32 %.0.i.i267.i.i, 254
  br label %.lr.ph.i.i270.i.i

.lr.ph.i.i270.i.i:                                ; preds = %stbtt__buf_get8.exit.i18.i274.i.i.1, %.lr.ph.i.i270.preheader.i.i.new
  %i.pq = phi i32 [ %..i.i.i268.i.i, %.lr.ph.i.i270.preheader.i.i.new ], [ %i.qg, %stbtt__buf_get8.exit.i18.i274.i.i.1 ] ; 4 uses
  %.056.i16.i272.i.i = phi i32 [ 0, %.lr.ph.i.i270.preheader.i.i.new ], [ %.0.i.i19.i275.i.i.1, %stbtt__buf_get8.exit.i18.i274.i.i.1 ]
  %niter803 = phi i32 [ 0, %.lr.ph.i.i270.preheader.i.i.new ], [ %niter803.next.1, %stbtt__buf_get8.exit.i18.i274.i.i.1 ]
  %i.pr = shl i32 %.056.i16.i272.i.i, 8           ; 2 uses
  %.not.i.i17.i273.i.i = icmp slt i32 %i.pq, %i.gs
  br i1 %.not.i.i17.i273.i.i, label %bb.cj, label %stbtt__buf_get8.exit.i18.i274.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i270.i.i
  %i.ps = add nsw i32 %i.pq, 1
  %i.pt = sext i32 %i.pq to i64
  %i.pu = getelementptr inbounds i8, ptr %i.po, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1
  %i.pw = zext i8 %i.pv to i32
  %i.px = or disjoint i32 %i.pr, %i.pw
  br label %stbtt__buf_get8.exit.i18.i274.i.i

stbtt__buf_get8.exit.i18.i274.i.i:                ; preds = %bb.cj, %.lr.ph.i.i270.i.i
  %i.py = phi i32 [ %i.ps, %bb.cj ], [ %i.pq, %.lr.ph.i.i270.i.i ] ; 4 uses
  %.0.i.i19.i275.i.i = phi i32 [ %i.px, %bb.cj ], [ %i.pr, %.lr.ph.i.i270.i.i ]
  %i.pz = shl i32 %.0.i.i19.i275.i.i, 8           ; 2 uses
  %.not.i.i17.i273.i.i.1 = icmp slt i32 %i.py, %i.gs
  br i1 %.not.i.i17.i273.i.i.1, label %bb.ck, label %stbtt__buf_get8.exit.i18.i274.i.i.1

bb.ck:                                            ; preds = %stbtt__buf_get8.exit.i18.i274.i.i
  %i.qa = add nsw i32 %i.py, 1
  %i.qb = sext i32 %i.py to i64
  %i.qc = getelementptr inbounds i8, ptr %i.po, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1
  %i.qe = zext i8 %i.qd to i32
  %i.qf = or disjoint i32 %i.pz, %i.qe
  br label %stbtt__buf_get8.exit.i18.i274.i.i.1

stbtt__buf_get8.exit.i18.i274.i.i.1:              ; preds = %bb.ck, %stbtt__buf_get8.exit.i18.i274.i.i
  %i.qg = phi i32 [ %i.qa, %bb.ck ], [ %i.py, %stbtt__buf_get8.exit.i18.i274.i.i ] ; 3 uses
  %.0.i.i19.i275.i.i.1 = phi i32 [ %i.qf, %bb.ck ], [ %i.pz, %stbtt__buf_get8.exit.i18.i274.i.i ] ; 3 uses
  %niter803.next.1 = add nuw nsw i32 %niter803, 2 ; 2 uses
  %niter803.ncmp.1 = icmp eq i32 %niter803.next.1, %unroll_iter802
  br i1 %niter803.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa, label %.lr.ph.i.i270.i.i

stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa: ; preds = %stbtt__buf_get8.exit.i18.i274.i.i.1
  %lcmp.mod798.not = icmp eq i32 %xtraiter795, 0
  br i1 %lcmp.mod798.not, label %stbtt__buf_get.exit21.loopexit.i277.i.i, label %.lr.ph.i.i270.i.i.epil.preheader

.lr.ph.i.i270.i.i.epil.preheader:                 ; preds = %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa, %.lr.ph.i.i270.preheader.i.i
  %.epil.init797 = phi i32 [ %..i.i.i268.i.i, %.lr.ph.i.i270.preheader.i.i ], [ %i.qg, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i272.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i270.preheader.i.i ], [ %.0.i.i19.i275.i.i.1, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa ]
  %lcmp.mod801 = trunc i32 %.0.i.i267.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod801)
  %i.qh = shl i32 %.056.i16.i272.i.i.epil.init, 8 ; 2 uses
  %.not.i.i17.i273.i.i.epil = icmp slt i32 %.epil.init797, %i.gs
  br i1 %.not.i.i17.i273.i.i.epil, label %bb.cl, label %stbtt__buf_get.exit21.loopexit.i277.i.i

bb.cl:                                            ; preds = %.lr.ph.i.i270.i.i.epil.preheader
  %i.qi = add nsw i32 %.epil.init797, 1
  %i.qj = sext i32 %.epil.init797 to i64
  %i.qk = getelementptr inbounds i8, ptr %i.po, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1
  %i.qm = zext i8 %i.ql to i32
  %i.qn = or disjoint i32 %i.qh, %i.qm
  br label %stbtt__buf_get.exit21.loopexit.i277.i.i

stbtt__buf_get.exit21.loopexit.i277.i.i:          ; preds = %.lr.ph.i.i270.i.i.epil.preheader, %bb.cl, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa
  %.lcssa745 = phi i32 [ %i.qg, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa ], [ %i.qi, %bb.cl ], [ %.epil.init797, %.lr.ph.i.i270.i.i.epil.preheader ]
  %.0.i.i19.i275.i.i.lcssa = phi i32 [ %.0.i.i19.i275.i.i.1, %stbtt__buf_get.exit21.loopexit.i277.i.i.unr-lcssa ], [ %i.qn, %bb.cl ], [ %i.qh, %.lr.ph.i.i270.i.i.epil.preheader ]
  %i.qo = add i32 %.0.i.i19.i275.i.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i278.i.i

stbtt__buf_get.exit21.i278.i.i:                   ; preds = %stbtt__buf_get.exit21.loopexit.i277.i.i, %stbtt__buf_get8.exit.i266.i.i
end_hunk_2
begin_hunk_3_@LoadFontData:bb.a
  %i.ss = load i8, ptr %i.sr, align 1
  %i.st = zext i8 %i.ss to i32
  %i.su = or disjoint i32 %i.so, %i.st
  br label %stbtt__buf_get.exit21.loopexit.i307.i.i

stbtt__buf_get.exit21.loopexit.i307.i.i:          ; preds = %.lr.ph.i.i300.i.i.epil.preheader, %bb.cs, %stbtt__buf_get.exit21.loopexit.i307.i.i.unr-lcssa
  %.lcssa744 = phi i32 [ %i.sn, %stbtt__buf_get.exit21.loopexit.i307.i.i.unr-lcssa ], [ %i.sp, %bb.cs ], [ %.epil.init806, %.lr.ph.i.i300.i.i.epil.preheader ]
  %.0.i.i19.i305.i.i.lcssa = phi i32 [ %.0.i.i19.i305.i.i.1, %stbtt__buf_get.exit21.loopexit.i307.i.i.unr-lcssa ], [ %i.su, %bb.cs ], [ %i.so, %.lr.ph.i.i300.i.i.epil.preheader ]
  %i.sv = add i32 %.0.i.i19.i305.i.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i308.i.i

stbtt__buf_get.exit21.i308.i.i:                   ; preds = %stbtt__buf_get.exit21.loopexit.i307.i.i, %stbtt__buf_get8.exit.i296.i.i
  %i.sw = phi i32 [ %..i.i.i298.i.i, %stbtt__buf_get8.exit.i296.i.i ], [ %.lcssa744, %stbtt__buf_get.exit21.loopexit.i307.i.i ]
  %.05.lcssa.i.i309.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i296.i.i ], [ %i.sv, %stbtt__buf_get.exit21.loopexit.i307.i.i ]
  %i.sx = add nsw i32 %.05.lcssa.i.i309.i.i, %i.sw ; 2 uses
  %i.sy = icmp slt i32 %i.sx, 0
  %i.sz = tail call i32 @llvm.smin.i32(i32 %i.sx, i32 %i.gs)
  %..i.i22.i310.i.i = select i1 %i.sy, i32 %i.gs, i32 %i.sz ; 2 uses
  store i32 %..i.i22.i310.i.i, ptr %i.go, align 8
  br label %stbtt__cff_get_index.exit317.i.i

stbtt__cff_get_index.exit317.i.i:                 ; preds = %stbtt__buf_get.exit21.i308.i.i, %stbtt__buf_get8.exit.i.1.i292.i.i
  %i.ta = phi i32 [ %..i.i22.i310.i.i, %stbtt__buf_get.exit21.i308.i.i ], [ %i.rk, %stbtt__buf_get8.exit.i.1.i292.i.i ] ; 2 uses
  %i.tb = sub nsw i32 %i.ta, %i.qt                ; 2 uses
  %i.tc = or i32 %i.tb, %i.qt
  %or.cond.not.i.i311.i.i = icmp slt i32 %i.tc, 0
  %i.td = icmp sgt i32 %i.ta, %i.gs
  %or.cond.i312.i.i = or i1 %i.td, %or.cond.not.i.i311.i.i ; 2 uses
  %i.te = load ptr, ptr %7, align 8               ; 2 uses
  %i.tf = zext nneg i32 %i.qt to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.tf
  %i.th = zext nneg i32 %i.tb to i64
  %i.ti = shl nuw nsw i64 %i.th, 32
  %.sroa.0.0.i.i313.i.i = select i1 %or.cond.i312.i.i, ptr null, ptr %i.tg
  %.sroa.5.0.i.i314.i.i = select i1 %or.cond.i312.i.i, i64 0, i64 %i.ti
  store ptr %.sroa.0.0.i.i313.i.i, ptr %i.qu, align 8
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %.sroa.5.0.i.i314.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8
  call fastcc void @stbtt__dict_get_ints(ptr noundef %8, i32 noundef 17, i32 noundef 1, ptr noundef %i.o)
  call fastcc void @stbtt__dict_get_ints(ptr noundef %8, i32 noundef 262, i32 noundef 1, ptr noundef %i.n)
  call fastcc void @stbtt__dict_get_ints(ptr noundef %8, i32 noundef 292, i32 noundef 1, ptr noundef %i.p)
  call fastcc void @stbtt__dict_get_ints(ptr noundef %8, i32 noundef 293, i32 noundef 1, ptr noundef %i.q)
  %i.tj = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.tk = load i64, ptr %i.go, align 8            ; 2 uses
  %i.tl = load ptr, ptr %8, align 8
  %i.tm = load i64, ptr %.sroa.414.0..sroa_idx.i.i, align 8
  %i.tn = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %i.te, i64 %i.tk, ptr %i.tl, i64 %i.tm) ; 2 uses
  %i.to = extractvalue { ptr, i64 } %i.tn, 0
  %i.tp = extractvalue { ptr, i64 } %i.tn, 1
  store ptr %i.to, ptr %i.tj, align 8
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i64 %i.tp, ptr %.sroa.49.0..sroa_idx.i.i, align 8
  %i.tq = load i32, ptr %i.n, align 4
  %.not116.i.i = icmp ne i32 %i.tq, 2
  %i.tr = load i32, ptr %i.o, align 4             ; 3 uses
  %i.ts = icmp eq i32 %i.tr, 0
  %or.cond.i.i = select i1 %.not116.i.i, i1 true, i1 %i.ts
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.ct

bb.ct:                                            ; preds = %stbtt__cff_get_index.exit317.i.i
  %i.tt = lshr i64 %i.tk, 32
  %i.tu = trunc nuw i64 %i.tt to i32
  %i.tv = load i32, ptr %i.p, align 4             ; 3 uses
  %.not117.i.i = icmp eq i32 %i.tv, 0
  br i1 %.not117.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tw = load i32, ptr %i.q, align 4             ; 5 uses
  %.not118.i.i = icmp eq i32 %i.tw, 0
  br i1 %.not118.i.i, label %.critedge.i.i, label %stbtt__buf_range.exit.i.i

stbtt__buf_range.exit.i.i:                        ; preds = %bb.cu
  %i.tx = icmp slt i32 %i.tv, 0
  %i.ty = tail call i32 @llvm.smin.i32(i32 %i.tv, i32 %i.gs)
  %..i.i.i = select i1 %i.tx, i32 %i.gs, i32 %i.ty
  store i32 %..i.i.i, ptr %i.go, align 8
  %i.tz = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %7) ; 2 uses
  %i.ua = extractvalue { ptr, i64 } %i.tz, 0
  %i.ub = extractvalue { ptr, i64 } %i.tz, 1
  store ptr %i.ua, ptr %i.gk, align 8
  store i64 %i.ub, ptr %.sroa.424.0..sroa_idx.i.i, align 8
  %i.uc = load i32, ptr %i.gr, align 4            ; 3 uses
  %i.ud = sub i32 %i.uc, %i.tw                    ; 2 uses
  %i.ue = or i32 %i.ud, %i.tw
  %or.cond.not.i.i.i = icmp slt i32 %i.ue, 0
  %i.uf = icmp sgt i32 %i.tw, %i.uc
  %or.cond365.i.i = or i1 %i.uf, %or.cond.not.i.i.i ; 2 uses
  %i.ug = load ptr, ptr %7, align 8
  %i.uh = zext nneg i32 %i.tw to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uh
  %i.uj = zext nneg i32 %i.ud to i64
  %i.uk = shl nuw nsw i64 %i.uj, 32
  %.sroa.0.0.i.i.i = select i1 %or.cond365.i.i, ptr null, ptr %i.ui
  %.sroa.5.0.i.i.i = select i1 %or.cond365.i.i, i64 0, i64 %i.uk
  store ptr %.sroa.0.0.i.i.i, ptr %i.gl, align 8
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.422.0..sroa_idx.i.i, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %stbtt__buf_range.exit.i.i, %bb.ct
  %i.ul = phi i32 [ %i.uc, %stbtt__buf_range.exit.i.i ], [ %i.tu, %bb.ct ] ; 2 uses
  %i.um = icmp slt i32 %i.tr, 0
  %i.un = tail call i32 @llvm.smin.i32(i32 %i.tr, i32 %i.ul)
  %..i321.i.i = select i1 %i.um, i32 %i.ul, i32 %i.un
  store i32 %..i321.i.i, ptr %i.go, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.up = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %7) ; 2 uses
  %i.uq = extractvalue { ptr, i64 } %i.up, 0
  %i.ur = extractvalue { ptr, i64 } %i.up, 1
  store ptr %i.uq, ptr %i.uo, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 %i.ur, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.az
  br i1 %.not.i.i.i, label %stbtt__find_table.exit331.thread.i.i, label %.lr.ph.i325.i.i

.lr.ph.i325.i.i:                                  ; preds = %bb.cw
  %wide.trip.count.i326.i.i = zext nneg i32 %i.y to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.db, %.lr.ph.i325.i.i
  %indvars.iv.i327.i.i = phi i64 [ 0, %.lr.ph.i325.i.i ], [ %indvars.iv.next.i328.i.i, %bb.db ] ; 2 uses
  %i.us = shl nuw nsw i64 %indvars.iv.i327.i.i, 4
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 %i.us ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 12
  %i.uv = load i8, ptr %i.uu, align 1
  %i.uw = icmp eq i8 %i.uv, 109
  br i1 %i.uw, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 13
  %i.uy = load i8, ptr %i.ux, align 1
  %i.uz = icmp eq i8 %i.uy, 97
  br i1 %i.uz, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.va = getelementptr inbounds nuw i8, ptr %i.ut, i64 14
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = icmp eq i8 %i.vb, 120
  br i1 %i.vc, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ut, i64 15
  %i.ve = load i8, ptr %i.vd, align 1
  %i.vf = icmp eq i8 %i.ve, 112
  br i1 %i.vf, label %stbtt__find_table.exit331.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx
  %indvars.iv.next.i328.i.i = add nuw nsw i64 %indvars.iv.i327.i.i, 1 ; 2 uses
  %exitcond.not.i329.i.i = icmp eq i64 %indvars.iv.next.i328.i.i, %wide.trip.count.i326.i.i
  br i1 %exitcond.not.i329.i.i, label %stbtt__find_table.exit331.thread.i.i, label %bb.cx

stbtt__find_table.exit331.i.i:                    ; preds = %bb.da
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ut, i64 20
  %i.vh = load i32, ptr %i.vg, align 1            ; 2 uses
  %.not120.i.i = icmp eq i32 %i.vh, 0
  br i1 %.not120.i.i, label %stbtt__find_table.exit331.thread.i.i, label %bb.dc

bb.dc:                                            ; preds = %stbtt__find_table.exit331.i.i
  %i.vi = tail call i32 @llvm.bswap.i32(i32 %i.vh)
  %i.vj = zext i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 %i.vj ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %.val129.i.i = load i8, ptr %i.vl, align 1
  %i.vm = getelementptr i8, ptr %i.vk, i64 5
  %.val130.i.i = load i8, ptr %i.vm, align 1
  %i.vn = zext i8 %.val129.i.i to i32
  %i.vo = shl nuw nsw i32 %i.vn, 8
  %i.vp = zext i8 %.val130.i.i to i32
  %i.vq = or disjoint i32 %i.vo, %i.vp
  br label %stbtt__find_table.exit331.thread.i.i

stbtt__find_table.exit331.thread.i.i:             ; preds = %bb.db, %bb.dc, %stbtt__find_table.exit331.i.i, %bb.cw
  %.sink.i.i = phi i32 [ %i.vq, %bb.dc ], [ 65535, %stbtt__find_table.exit331.i.i ], [ 65535, %bb.cw ], [ 65535, %bb.db ]
  %i.vr = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %.sink.i.i, ptr %i.vr, align 4
  %i.vs = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i32 -1, ptr %i.vs, align 4
  %i.vt = zext i32 %.2.i333.i.i189194198208218234 to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 %i.vt ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  %.val127.i.i = load i8, ptr %i.vv, align 1
  %i.vw = getelementptr i8, ptr %i.vu, i64 3
  %.val128.i.i = load i8, ptr %i.vw, align 1
  %i.vx = zext i8 %.val127.i.i to i32
  %i.vy = shl nuw nsw i32 %i.vx, 8
  %i.vz = zext i8 %.val128.i.i to i32
  %i.wa = or disjoint i32 %i.vy, %i.vz            ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %.not397.i.i = icmp eq i32 %i.wa, 0
  br i1 %.not397.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %stbtt__find_table.exit331.thread.i.i
  %i.wc = add i32 %.2.i333.i.i189194198208218234, 4
  %10 = zext i32 %i.wc to i64
  %wide.trip.count.i.i = zext nneg i32 %i.wa to i64
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %10
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %.lr.ph.i.i
  %i.wd = phi i32 [ 0, %.lr.ph.i.i ], [ %.val148, %bb.df ] ; 2 uses
  %i.we = phi i32 [ 0, %.lr.ph.i.i ], [ %i.wv, %bb.df ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.df ] ; 2 uses
  %11 = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.wf = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %11 ; 5 uses
  %.val125.i.i = load i8, ptr %i.wf, align 1
  %i.wg = getelementptr i8, ptr %i.wf, i64 1
  %.val126.i.i = load i8, ptr %i.wg, align 1
  %i.wh = zext i8 %.val125.i.i to i16
  %i.wi = shl nuw i16 %i.wh, 8
  %i.wj = zext i8 %.val126.i.i to i16
  %i.wk = or disjoint i16 %i.wi, %i.wj
  switch i16 %i.wk, label %bb.df [
    i16 3, label %bb.de
    i16 0, label %.sink.split.i.i
  ]

bb.de:                                            ; preds = %bb.dd
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wf, i64 2
  %.val123.i.i = load i8, ptr %i.wl, align 1
  %i.wm = getelementptr i8, ptr %i.wf, i64 3
  %.val124.i.i = load i8, ptr %i.wm, align 1
  %i.wn = zext i8 %.val123.i.i to i16
  %i.wo = shl nuw i16 %i.wn, 8
  %i.wp = zext i8 %.val124.i.i to i16
  %i.wq = or disjoint i16 %i.wo, %i.wp
  switch i16 %i.wq, label %bb.df [
    i16 1, label %.sink.split.i.i
    i16 10, label %.sink.split.i.i
  ]

.sink.split.i.i:                                  ; preds = %bb.de, %bb.de, %bb.dd
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.ws = load i32, ptr %i.wr, align 1
  %i.wt = tail call i32 @llvm.bswap.i32(i32 %i.ws)
  %i.wu = add i32 %i.wt, %.2.i333.i.i189194198208218234 ; 2 uses
  br label %bb.df

bb.df:                                            ; preds = %.sink.split.i.i, %bb.de, %bb.dd
  %.val148 = phi i32 [ %i.wd, %bb.de ], [ %i.wd, %bb.dd ], [ %i.wu, %.sink.split.i.i ] ; 3 uses
  %i.wv = phi i32 [ %i.we, %bb.de ], [ %i.we, %bb.dd ], [ %i.wu, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.dd

._crit_edge.i.i:                                  ; preds = %bb.df
  store i32 %.val148, ptr %i.wb, align 8
  %i.ww = icmp eq i32 %i.wv, 0
  br i1 %i.ww, label %.thread, label %bb.dg

.critedge.i.i:                                    ; preds = %bb.bf, %bb.cu, %stbtt__cff_get_index.exit317.i.i, %stbtt__find_table.exit210.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.thread

bb.dg:                                            ; preds = %._crit_edge.i.i
  %i.wx = sext i32 %i.fq to i64
  %i.wy = getelementptr inbounds i8, ptr %0, i64 %i.wx ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 50
  %.val.i.i = load i8, ptr %i.wz, align 1
  %i.xa = getelementptr i8, ptr %i.wy, i64 51
  %.val122.i.i = load i8, ptr %i.xa, align 1
  %i.xb = zext i8 %.val.i.i to i32
  %i.xc = shl nuw nsw i32 %i.xb, 8
  %i.xd = zext i8 %.val122.i.i to i32
  %i.xe = or disjoint i32 %i.xc, %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %9, i64 60
  store i32 %i.xe, ptr %i.xf, align 4
  %i.xg = sitofp i32 %2 to float
  %i.xh = sext i32 %.val144 to i64
  %i.xi = getelementptr inbounds i8, ptr %0, i64 %i.xh ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  %.val6.i = load i8, ptr %i.xj, align 1
  %i.xk = getelementptr i8, ptr %i.xi, i64 5
  %.val7.i = load i8, ptr %i.xk, align 1
  %i.xl = zext i8 %.val6.i to i16
  %i.xm = shl nuw i16 %i.xl, 8
  %i.xn = zext i8 %.val7.i to i16
  %i.xo = or disjoint i16 %i.xm, %i.xn            ; 2 uses
  %i.xp = sext i16 %i.xo to i32
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xi, i64 6
  %.val.i = load i8, ptr %i.xq, align 1
  %i.xr = getelementptr i8, ptr %i.xi, i64 7
  %.val5.i = load i8, ptr %i.xr, align 1
  %i.xs = zext i8 %.val.i to i16
  %i.xt = shl nuw i16 %i.xs, 8
  %i.xu = zext i8 %.val5.i to i16
  %i.xv = or disjoint i16 %i.xt, %i.xu
  %i.xw = sext i16 %i.xv to i32
  %i.xx = sub nsw i32 %i.xp, %i.xw
  %i.xy = sitofp i32 %i.xx to float
  %i.xz = fdiv float %i.xg, %i.xy                 ; 23 uses
  %i.ya = icmp sgt i32 %4, 0
  %i.yb = select i1 %i.ya, i32 %4, i32 95         ; 4 uses
  %i.yc = icmp eq ptr %3, null                    ; 3 uses
  %i.yd = zext nneg i32 %i.yb to i64              ; 6 uses
  br i1 %i.yc, label %bb.dh, label %.loopexit250

bb.dh:                                            ; preds = %bb.dg
  %i.ye = shl nuw nsw i64 %i.yd, 2
  %i.yf = tail call noalias ptr @malloc(i64 noundef %i.ye) #42 ; 4 uses
  %min.iters.check = icmp samesign ult i32 %i.yb, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.dh
  %n.vec = and i64 %i.yd, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %index ; 2 uses
  %i.yh = add <4 x i32> %vec.ind, splat (i32 32)
  %i.yi = add <4 x i32> %vec.ind, splat (i32 36)
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  store <4 x i32> %i.yh, ptr %i.yg, align 4
  store <4 x i32> %i.yi, ptr %i.yj, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.yk = icmp eq i64 %index.next, %n.vec
  br i1 %i.yk, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.yd
  br i1 %cmp.n, label %.loopexit250, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.dh, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.dh ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv
  %i.ym = trunc i64 %indvars.iv to i32
  %i.yn = add i32 %i.ym, 32
  store i32 %i.yn, ptr %i.yl, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.yd
  br i1 %exitcond.not, label %.loopexit250, label %scalar.ph, !llvm.loop !25

.loopexit250:                                     ; preds = %scalar.ph, %middle.block, %bb.dg
  %.0125 = phi ptr [ %3, %bb.dg ], [ %i.yf, %middle.block ], [ %i.yf, %scalar.ph ] ; 3 uses
  br label %bb.dj

bb.di:                                            ; preds = %bb.dj
  %i.yo = zext nneg i32 %spec.select to i64
  %i.yp = tail call noalias ptr @calloc(i64 noundef %i.yo, i64 noundef 40) #40 ; 4 uses
  %i.yq = fcmp oeq float %i.xz, 0.000000e+00
  %i.yr = fneg float %i.xz                        ; 7 uses
  %i.ys = fcmp une float %i.xz, 0.000000e+00
  %i.yt = fdiv float 3.500000e-01, %i.xz          ; 2 uses
  %i.yu = fmul float %i.yt, %i.yt                 ; 4 uses
  %.not143 = icmp ne i32 %5, 2
  %i.yv = sitofp i16 %i.xo to float
  %i.yw = fmul float %i.xz, %i.yv
  %i.yx = fptosi float %i.yw to i32
  %i.yy = icmp eq i32 %5, 1
  %i.yz = insertelement <2 x float> poison, float %i.xz, i64 0
  %i.za = insertelement <2 x float> %i.yz, float %i.yr, i64 1 ; 3 uses
  %i.zb = insertelement <4 x float> poison, float %i.xz, i64 0
  %i.zc = insertelement <4 x float> %i.zb, float %i.yr, i64 1
  %i.zd = shufflevector <4 x float> %i.zc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %bb.dl

bb.dj:                                            ; preds = %.loopexit250, %bb.dj
  %indvars.iv320 = phi i64 [ 0, %.loopexit250 ], [ %indvars.iv.next321, %bb.dj ] ; 2 uses
  %.0129281 = phi i32 [ 0, %.loopexit250 ], [ %spec.select, %bb.dj ]
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %indvars.iv320
  %i.zf = load i32, ptr %i.ze, align 4
  %i.zg = tail call fastcc i32 @stbtt_FindGlyphIndex(ptr nonnull %0, i32 %.val148, i32 noundef %i.zf)
  %i.zh = icmp sgt i32 %i.zg, 0
  %i.zi = zext i1 %i.zh to i32
  %spec.select = add nuw nsw i32 %.0129281, %i.zi ; 2 uses
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %i.yd
  br i1 %exitcond324.not, label %bb.di, label %bb.dj

bb.dk:                                            ; preds = %bb.po
  %i.zj = icmp slt i32 %.3, %i.yb
  br i1 %i.zj, label %.split, label %bb.pp

bb.dl:                                            ; preds = %bb.di, %bb.po
  %indvars.iv330 = phi i64 [ 0, %bb.di ], [ %indvars.iv.next331, %bb.po ] ; 2 uses
  %.0122285 = phi i32 [ 0, %bb.di ], [ %.1, %bb.po ] ; 3 uses
  %.2284 = phi i32 [ 0, %bb.di ], [ %.3, %bb.po ] ; 2 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %indvars.iv330
  %i.zl = load i32, ptr %i.zk, align 4            ; 7 uses
  %.val145 = load ptr, ptr %i.r, align 8
  %.val146 = load i32, ptr %i.wb, align 8
  %i.zm = call fastcc i32 @stbtt_FindGlyphIndex(ptr %.val145, i32 %.val146, i32 noundef %i.zl) ; 5 uses
  %i.zn = icmp sgt i32 %i.zm, 0
  br i1 %i.zn, label %bb.dm, label %bb.po

bb.dm:                                            ; preds = %bb.dl
  %i.zo = sext i32 %.0122285 to i64
  %i.zp = getelementptr inbounds [40 x i8], ptr %i.yp, i64 %i.zo ; 18 uses
  store i32 %i.zl, ptr %i.zp, align 8
  switch i32 %5, label %bb.pg [
    i32 0, label %bb.dn
    i32 1, label %bb.dn
    i32 2, label %bb.my
end_hunk_3
begin_hunk_4_@LoadFontData:bb.a
bb.md:                                            ; preds = %bb.mc
  %i.bpd = load float, ptr %i.avg, align 4
  %i.bpe = fsub float %.0.i446.i.i.i.i.i.i.i, %.054.i444.i.i.i.i.i.i.i
  %i.bpf = fmul float %i.bpe, %i.bpd
  %i.bpg = fsub float %.055.i443.i.i.i.i.i.i.i, %i.avk
  %i.bph = fsub float %.053.i445.i.i.i.i.i.i.i, %i.avk
  %i.bpi = fadd float %i.bpg, %i.bph
  %i.bpj = fmul float %i.bpi, 5.000000e-01
  %i.bpk = fsub float 1.000000e+00, %i.bpj
  %i.bpl = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i94.i.i.i.i.i ; 2 uses
  %i.bpm = load float, ptr %i.bpl, align 4
  %i.bpn = call float @llvm.fmuladd.f32(float %i.bpf, float %i.bpk, float %i.bpm)
  store float %i.bpn, ptr %i.bpl, align 4
  br label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i: ; preds = %bb.md, %bb.mc, %bb.mb, %bb.lv, %bb.lu, %bb.lt
  %i.bpo = fcmp oeq float %i.avs, %i.aix
  br i1 %i.bpo, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.me

bb.me:                                            ; preds = %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i
  %i.bpp = load float, ptr %i.aqt, align 4        ; 4 uses
  %i.bpq = fcmp ogt float %i.avs, %i.bpp
  br i1 %i.bpq, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bpr = load float, ptr %i.aqs, align 8        ; 4 uses
  %i.bps = fcmp olt float %i.aix, %i.bpr
  br i1 %i.bps, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bpt = fcmp olt float %i.avs, %i.bpr
  br i1 %i.bpt, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.bpu = fsub float %i.aqp, %i.avj
  %i.bpv = fsub float %i.bpr, %i.avs
  %i.bpw = fmul float %i.bpu, %i.bpv
  %i.bpx = fsub float %i.aix, %i.avs
  %i.bpy = fdiv float %i.bpw, %i.bpx
  %i.bpz = fadd float %i.bpy, %i.avj
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %.055.i450.i.i.i.i.i.i.i = phi float [ %i.bpz, %bb.mh ], [ %i.avj, %bb.mg ] ; 4 uses
  %.054.i451.i.i.i.i.i.i.i = phi float [ %i.bpr, %bb.mh ], [ %i.avs, %bb.mg ] ; 3 uses
  %i.bqa = fcmp ogt float %i.aix, %i.bpp
  br i1 %i.bqa, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.bqb = fsub float %i.aqp, %.055.i450.i.i.i.i.i.i.i
  %i.bqc = fsub float %i.bpp, %i.aix
  %i.bqd = fmul float %i.bqc, %i.bqb
  %i.bqe = fsub float %i.aix, %.054.i451.i.i.i.i.i.i.i
  %i.bqf = fdiv float %i.bqd, %i.bqe
  %i.bqg = fadd float %i.aqp, %i.bqf
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi
  %.053.i452.i.i.i.i.i.i.i = phi float [ %i.bqg, %bb.mj ], [ %i.aqp, %bb.mi ] ; 3 uses
  %.0.i453.i.i.i.i.i.i.i = phi float [ %i.bpp, %bb.mj ], [ %i.aix, %bb.mi ] ; 2 uses
  %i.bqh = fcmp ugt float %.055.i450.i.i.i.i.i.i.i, %i.avk
  %i.bqi = fcmp ugt float %.053.i452.i.i.i.i.i.i.i, %i.avk
  %or.cond.i454.i.i.i.i.i.i.i = select i1 %i.bqh, i1 true, i1 %i.bqi
  br i1 %or.cond.i454.i.i.i.i.i.i.i, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bqj = load float, ptr %i.avg, align 4
  %i.bqk = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bql = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i94.i.i.i.i.i ; 2 uses
  %i.bqm = load float, ptr %i.bql, align 4
  %i.bqn = call float @llvm.fmuladd.f32(float %i.bqj, float %i.bqk, float %i.bqm)
  store float %i.bqn, ptr %i.bql, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mm:                                            ; preds = %bb.mk
  %i.bqo = fcmp ult float %.055.i450.i.i.i.i.i.i.i, %i.avj
  %i.bqp = fcmp ult float %.053.i452.i.i.i.i.i.i.i, %i.avj
  %or.cond62.i455.i.i.i.i.i.i.i = select i1 %i.bqo, i1 true, i1 %i.bqp
  br i1 %or.cond62.i455.i.i.i.i.i.i.i, label %bb.mn, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mn:                                            ; preds = %bb.mm
  %i.bqq = load float, ptr %i.avg, align 4
  %i.bqr = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bqs = fmul float %i.bqr, %i.bqq
  %i.bqt = fsub float %.055.i450.i.i.i.i.i.i.i, %i.avk
  %i.bqu = fsub float %.053.i452.i.i.i.i.i.i.i, %i.avk
  %i.bqv = fadd float %i.bqt, %i.bqu
  %i.bqw = fmul float %i.bqv, 5.000000e-01
  %i.bqx = fsub float 1.000000e+00, %i.bqw
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i94.i.i.i.i.i ; 2 uses
  %i.bqz = load float, ptr %i.bqy, align 4
  %i.bra = call float @llvm.fmuladd.f32(float %i.bqs, float %i.bqx, float %i.bqz)
  store float %i.bra, ptr %i.bqy, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mo:                                            ; preds = %bb.ls
  br i1 %i.ale, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.brb = load float, ptr %i.aqt, align 4        ; 4 uses
  %i.brc = fcmp olt float %i.brb, %i.aiw
  br i1 %i.brc, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.brd = load float, ptr %i.aqs, align 8        ; 4 uses
  %i.bre = fcmp olt float %i.aix, %i.brd
  br i1 %i.bre, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.brf = fcmp ogt float %i.brd, %i.aiw          ; 2 uses
  %i.brg = fsub float %i.brd, %i.aiw
  %i.brh = fmul float %i.avf, %i.brg
  %i.bri = fdiv float %i.brh, %i.alf
  %i.brj = fadd float %i.alm, %i.bri
  %.055.i457.i.i.i.i.i.i.i = select i1 %i.brf, float %i.brj, float %i.alm ; 4 uses
  %.054.i458.i.i.i.i.i.i.i = select i1 %i.brf, float %i.brd, float %i.aiw ; 3 uses
  %i.brk = fcmp ogt float %i.aix, %i.brb
  br i1 %i.brk, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.brl = fsub float %i.aqp, %.055.i457.i.i.i.i.i.i.i
  %i.brm = fsub float %i.brb, %i.aix
  %i.brn = fmul float %i.brm, %i.brl
  %i.bro = fsub float %i.aix, %.054.i458.i.i.i.i.i.i.i
  %i.brp = fdiv float %i.brn, %i.bro
  %i.brq = fadd float %i.aqp, %i.brp
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %.053.i459.i.i.i.i.i.i.i = phi float [ %i.brq, %bb.ms ], [ %i.aqp, %bb.mr ] ; 3 uses
  %.0.i460.i.i.i.i.i.i.i = phi float [ %i.brb, %bb.ms ], [ %i.aix, %bb.mr ] ; 2 uses
  %i.brr = fcmp ugt float %.055.i457.i.i.i.i.i.i.i, %i.avk
  %i.brs = fcmp ugt float %.053.i459.i.i.i.i.i.i.i, %i.avk
  %or.cond.i461.i.i.i.i.i.i.i = select i1 %i.brr, i1 true, i1 %i.brs
  br i1 %or.cond.i461.i.i.i.i.i.i.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.brt = load float, ptr %i.avg, align 4
  %i.bru = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i94.i.i.i.i.i ; 2 uses
  %i.brw = load float, ptr %i.brv, align 4
  %i.brx = call float @llvm.fmuladd.f32(float %i.brt, float %i.bru, float %i.brw)
  store float %i.brx, ptr %i.brv, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mv:                                            ; preds = %bb.mt
  %i.bry = fcmp ult float %.055.i457.i.i.i.i.i.i.i, %i.avj
  %i.brz = fcmp ult float %.053.i459.i.i.i.i.i.i.i, %i.avj
  %or.cond62.i462.i.i.i.i.i.i.i = select i1 %i.bry, i1 true, i1 %i.brz
  br i1 %or.cond62.i462.i.i.i.i.i.i.i, label %bb.mw, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mw:                                            ; preds = %bb.mv
  %i.bsa = load float, ptr %i.avg, align 4
  %i.bsb = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.bsc = fmul float %i.bsb, %i.bsa
  %i.bsd = fsub float %.055.i457.i.i.i.i.i.i.i, %i.avk
  %i.bse = fsub float %.053.i459.i.i.i.i.i.i.i, %i.avk
  %i.bsf = fadd float %i.bsd, %i.bse
  %i.bsg = fmul float %i.bsf, 5.000000e-01
  %i.bsh = fsub float 1.000000e+00, %i.bsg
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i94.i.i.i.i.i ; 2 uses
  %i.bsj = load float, ptr %i.bsi, align 4
  %i.bsk = call float @llvm.fmuladd.f32(float %i.bsc, float %i.bsh, float %i.bsj)
  store float %i.bsk, ptr %i.bsi, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i: ; preds = %bb.mw, %bb.mv, %bb.mu, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mf, %bb.me, %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, %bb.lr, %bb.lq, %bb.lp, %bb.lj, %bb.li, %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, %bb.kv, %bb.ku, %bb.kt, %bb.kn, %bb.km, %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, %bb.jz, %bb.jy, %bb.jx, %bb.jr, %bb.jq, %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, %bb.jd, %bb.jc, %bb.jb, %bb.iv, %bb.iu, %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, %bb.hx, %bb.hw, %bb.hv, %bb.hp, %bb.ho, %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %exitcond.not.i.i96.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i95.i.i.i.i.i, %wide.trip.count.i.i91.i.i.i.i.i
  br i1 %exitcond.not.i.i96.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gs

stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i: ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %bb.gr, %._crit_edge.i.i.i.i.i.i.i, %bb.gn, %bb.gj, %bb.gi, %bb.gh, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fq, %bb.fp, %bb.fe, %bb.fc
  %i.bsl = load ptr, ptr %.0293468.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i92.i.i.i.i.i = icmp eq ptr %i.bsl, null
  br i1 %.not.i.i92.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fb

stbtt__fill_active_edges_new.exit.i.i.i.i.i.i:    ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br i1 %i.aiu, label %.lr.ph22.i.i.i.preheader.i.i.i, label %.preheader.i.i.i.i.i.i

.lr.ph22.i.i.i.preheader.i.i.i:                   ; preds = %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  %i.bsm = mul nuw nsw i32 %.07630.i.i.i.i.i.i, %i.zv
  br label %.lr.ph22.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph22.i.i.i.i.i.i, %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i:                             ; preds = %.lr.ph22.i.i.i.i.i.i, %.lr.ph22.i.i.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph22.i.i.i.i.i.i ], [ 0, %.lr.ph22.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07721.i.i.i.i.i.i = phi float [ %i.bsp, %.lr.ph22.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph22.i.i.i.preheader.i.i.i ]
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.i.i.i.i.i.i
  %i.bso = load float, ptr %i.bsn, align 4
  %i.bsp = fadd float %.07721.i.i.i.i.i.i, %i.bso ; 2 uses
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bsr = load float, ptr %i.bsq, align 4
  %i.bss = fadd float %i.bsr, %i.bsp
  %i.bst = call float @llvm.fabs.f32(float %i.bss)
  %i.bsu = call float @llvm.fmuladd.f32(float %i.bst, float 2.550000e+02, float 5.000000e-01)
  %i.bsv = fptosi float %i.bsu to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.bsv, i32 255)
  %i.bsw = trunc i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bsx = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.bsy = add nuw nsw i32 %i.bsm, %i.bsx
  %i.bsz = sext i32 %i.bsy to i64
  %i.bta = getelementptr inbounds i8, ptr %i.aad, i64 %i.bsz
  store i8 %i.bsw, ptr %i.bta, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aif
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph25.i.i.i.i.i.i
  %i.btb = phi ptr [ %i.bti, %.lr.ph25.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.224.i.i.i.i.i.i = phi ptr [ %i.bth, %.lr.ph25.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 12
  %i.btd = load float, ptr %i.btc, align 4
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btb, i64 8 ; 2 uses
  %i.btf = load float, ptr %i.bte, align 8
  %i.btg = fadd float %i.btd, %i.btf
  store float %i.btg, ptr %i.bte, align 8
  %i.bth = load ptr, ptr %.224.i.i.i.i.i.i, align 8 ; 2 uses
  %i.bti = load ptr, ptr %i.bth, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.bti, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

._crit_edge26.i.i.i.i.i.i:                        ; preds = %.lr.ph25.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.btj = add nsw i32 %.07531.i.i.i.i.i.i, 1
  %i.btk = add nuw nsw i32 %.07630.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.btk, %i.zy
  br i1 %exitcond61.not.i.i.i, label %._crit_edge35.i.i.i.i.i.i, label %bb.eo

._crit_edge35.i.i.i.i.i.i:                        ; preds = %._crit_edge26.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge35.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.btl, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i ] ; 2 uses
  %i.btl = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.btl, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.mx, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @free(ptr noundef %i.agk) #39
  br label %stbtt__rasterize.exit.i.i.i.i

stbtt__rasterize.exit.i.i.i.i:                    ; preds = %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, %._crit_edge.i27.i.i.i.i
  call void @free(ptr noundef %i.acc) #39
  call void @free(ptr noundef %i.adz) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_GetCodepointBitmap.exit:                    ; preds = %bb.do, %bb.dp, %stbtt_FlattenCurves.exit.thread.i.i.i.i, %stbtt__rasterize.exit.i.i.i.i, %bb.dn
  %.1185 = phi i32 [ 0, %bb.dn ], [ %i.zv, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zv, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zv, %bb.dp ], [ %i.zv, %bb.do ]
  %.1182 = phi i32 [ 0, %bb.dn ], [ %i.zy, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zy, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zy, %bb.dp ], [ %i.zy, %bb.do ]
  %.0.i.i.i151 = phi ptr [ null, %bb.dn ], [ %i.aad, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aad, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ null, %bb.dp ], [ null, %bb.do ]
  %i.btm = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.btm) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.my:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %i.zl, 32
  br i1 %.not141, label %bb.pg, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.btn = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %i.bto = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %i.yq, label %stbtt_GetCodepointSDF.exit, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zm, float noundef %i.xz, float noundef %i.xz, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.btp = load i32, ptr %i.a, align 4            ; 4 uses
  %i.btq = load i32, ptr %i.c, align 4            ; 9 uses
  %i.btr = icmp eq i32 %i.btp, %i.btq
  br i1 %i.btr, label %stbtt_GetCodepointSDF.exit, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.bts = load i32, ptr %i.b, align 4            ; 2 uses
  %i.btt = load i32, ptr %i.d, align 4            ; 2 uses
  %i.btu = icmp eq i32 %i.bts, %i.btt
  br i1 %i.btu, label %stbtt_GetCodepointSDF.exit, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.btv = add i32 %i.btp, -4                     ; 4 uses
  %i.btw = add nsw i32 %i.bts, -4                 ; 7 uses
  %i.btx = add i32 %i.btq, 4                      ; 6 uses
  %i.bty = add i32 %i.btt, 4                      ; 4 uses
  %i.btz = sub i32 %i.btx, %i.btv                 ; 7 uses
  %i.bua = sub nsw i32 %i.bty, %i.btw             ; 2 uses
  store i32 %i.btv, ptr %i.btn, align 4
  store i32 %i.btw, ptr %i.bto, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.bub = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zm, ptr noundef %i.e) ; 5 uses
  %i.buc = mul nsw i32 %i.bua, %i.btz
  %i.bud = sext i32 %i.buc to i64
  %i.bue = call noalias ptr @malloc(i64 noundef %i.bud) #42 ; 23 uses
  %i.buf = sext i32 %i.bub to i64
  %i.bug = shl nsw i64 %i.buf, 2
  %i.buh = call noalias ptr @malloc(i64 noundef %i.bug) #42 ; 4 uses
  %i.bui = icmp sgt i32 %i.bub, 0                 ; 2 uses
  %.pre.pre.i.i = load ptr, ptr %i.e, align 8     ; 6 uses
  br i1 %i.bui, label %.lr.ph.i.i157, label %.preheader485.i.i

.lr.ph.i.i157:                                    ; preds = %bb.nc
  %i.buj = add nsw i32 %i.bub, -1
  %wide.trip.count.i.i158 = zext nneg i32 %i.bub to i64
  %i.buk = zext nneg i32 %i.buj to i64
  br label %bb.pb

.preheader485.i.i:                                ; preds = %bb.pf, %bb.nc
  %i.bul = icmp slt i32 %i.btw, %i.bty
  br i1 %i.bul, label %.preheader.lr.ph.i.i, label %._crit_edge495.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader485.i.i
  %i.bum = icmp slt i32 %i.btv, %i.btx
  %wide.trip.count.i.i.i156 = zext i32 %i.bub to i64 ; 2 uses
  br i1 %i.bum, label %.preheader.preheader.i.i, label %._crit_edge495.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bun = zext i32 %i.btv to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.btp              ; 2 uses
  br i1 %i.bui, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.buo = add i32 %i.btq, 7
  %i.bup = sub i32 %i.buo, %i.btp                 ; 9 uses
  %i.buq = zext i32 %i.bup to i64
  %i.bur = add nuw nsw i64 %i.buq, 1              ; 15 uses
  %i.bus = add i32 %i.btq, 3
  %i.but = add i32 %i.btq, 3
  %i.buu = add i32 %i.btq, 3
  %min.iters.check672 = icmp ult i32 %i.bup, 7    ; 2 uses
  %min.iters.check700 = icmp ult i32 %i.bup, 31
  %i.buv = and i64 %i.bur, 24
  %n.vec702 = and i64 %i.bur, 8589934560          ; 4 uses
  %i.buw = add nuw nsw i64 %n.vec702, %i.bun
  %cmp.n707 = icmp eq i64 %i.bur, %n.vec702
  %min.epilog.iters.check713 = icmp eq i64 %i.buv, 0
  %n.vec715 = and i64 %i.bur, 8589934584          ; 3 uses
  %i.bux = add nuw nsw i64 %n.vec715, %i.bun
  %cmp.n720 = icmp eq i64 %i.bur, %n.vec715
  %min.iters.check674 = icmp ult i32 %i.bup, 31
  %i.buy = and i64 %i.bur, 24
  %n.vec676 = and i64 %i.bur, 8589934560          ; 4 uses
  %i.buz = add nuw nsw i64 %n.vec676, %i.bun
  %cmp.n681 = icmp eq i64 %i.bur, %n.vec676
  %min.epilog.iters.check687 = icmp eq i64 %i.buy, 0
  %n.vec689 = and i64 %i.bur, 8589934584          ; 3 uses
  %i.bva = add nuw nsw i64 %n.vec689, %i.bun
  %cmp.n694 = icmp eq i64 %i.bur, %n.vec689
  %min.iters.check646 = icmp ult i32 %i.bup, 7
  %min.iters.check648 = icmp ult i32 %i.bup, 31
  %i.bvb = and i64 %i.bur, 24
  %n.vec650 = and i64 %i.bur, 8589934560          ; 4 uses
  %i.bvc = add nuw nsw i64 %n.vec650, %i.bun
  %cmp.n655 = icmp eq i64 %i.bur, %n.vec650
  %min.epilog.iters.check661 = icmp eq i64 %i.bvb, 0
  %n.vec663 = and i64 %i.bur, 8589934584          ; 3 uses
  %i.bvd = add nuw nsw i64 %n.vec663, %i.bun
  %cmp.n668 = icmp eq i64 %i.bur, %n.vec663
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge493.i.split.us.us.i
  %.0435494.i.us.i = phi i32 [ %i.cnc, %._crit_edge493.i.split.us.us.i ], [ %i.btw, %.preheader.preheader.i.i ] ; 3 uses
  %i.bve = sitofp i32 %.0435494.i.us.i to float
  %i.bvf = fadd float %i.bve, 5.000000e-01        ; 8 uses
  %i.bvg = fdiv float %i.bvf, %i.yr               ; 4 uses
  %i.bvh = fpext float %i.bvg to double
  %i.bvi = fadd float %i.bvg, f0xBC23D70A
  %i.bvj = fadd float %i.bvg, f0x3C23D70A
  %i.bvk = sub nuw nsw i32 %.0435494.i.us.i, %i.btw
  %i.bvl = mul nsw i32 %i.bvk, %i.btz
  %.reass.i.us.i = add i32 %i.bvl, %reass.sub.i.i
  br label %bb.nd

bb.nd:                                            ; preds = %bb.pa, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.bun, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.pa ] ; 2 uses
  %i.bvm = trunc i64 %indvars.iv502.i.us.us.i to i32 ; 2 uses
  %i.bvn = sitofp i32 %i.bvm to float
  %i.bvo = fadd float %i.bvn, 5.000000e-01        ; 8 uses
  %i.bvp = fdiv float %i.bvo, %i.xz               ; 7 uses
  %i.bvq = call double @fmod(double noundef %i.bvh, double noundef 1.000000e+00) #39 ; 2 uses
  %i.bvr = fcmp olt double %i.bvq, f0x3F847AE130000000
  br i1 %i.bvr, label %.lr.ph.i.i.us.us.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bvs = fcmp ogt double %i.bvq, f0x3FEFAE1490000000
  br i1 %i.bvs, label %bb.nf, label %.lr.ph.i.i.us.us.i

bb.nf:                                            ; preds = %bb.ne
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %bb.nf, %bb.ne, %bb.nd
  %.0150.i.i.us.us.i = phi float [ %i.bvg, %bb.ne ], [ %i.bvi, %bb.nf ], [ %i.bvj, %bb.nd ] ; 10 uses
  %i.bvt = fmul float %i.bvp, 0.000000e+00
  %i.bvu = fmul float %.0150.i.i.us.us.i, 0.000000e+00
  %i.bvv = fadd float %i.bvp, %i.bvu
  %i.bvw = fsub float %i.bvt, %.0150.i.i.us.us.i
  br label %bb.ng

bb.ng:                                            ; preds = %.thread.i.i.us.us.i, %.lr.ph.i.i.us.us.i
  %indvars.iv.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next.i.i.us.us.i, %.thread.i.i.us.us.i ] ; 2 uses
  %.0197.i.i.us.us.i = phi i32 [ 0, %.lr.ph.i.i.us.us.i ], [ %.9.i.fr.i.us.us.i, %.thread.i.i.us.us.i ] ; 11 uses
  %i.bvx = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i.us.us.i ; 11 uses
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bvx, i64 12
  %i.bvz = load i8, ptr %i.bvy, align 2
  switch i8 %i.bvz, label %.thread.i.i.us.us.i [
    i8 2, label %bb.nv
    i8 3, label %bb.nh
  ]

bb.nh:                                            ; preds = %bb.ng
  %i.bwa = getelementptr i8, ptr %i.bvx, i64 -14  ; 2 uses
  %i.bwb = getelementptr i8, ptr %i.bvx, i64 -12
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bvx, i64 4
  %i.bwd = load i16, ptr %i.bwc, align 2          ; 2 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvx, i64 6
  %i.bwf = load i16, ptr %i.bwe, align 2          ; 3 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bvx, i64 2
  %i.bwh = load i16, ptr %i.bwb, align 2          ; 6 uses
  %i.bwi = load i16, ptr %i.bwa, align 2          ; 2 uses
  %i.bwj = sext i16 %i.bwh to i32
  %i.bwk = load i16, ptr %i.bwg, align 2          ; 6 uses
  %i.bwl = load i16, ptr %i.bvx, align 2          ; 2 uses
  %i.bwm = call i16 @llvm.smin.i16(i16 %i.bwd, i16 %i.bwl)
  %..i.i.us.us.i = call i16 @llvm.smin.i16(i16 %i.bwm, i16 %i.bwi)
  %i.bwn = call i16 @llvm.smin.i16(i16 %i.bwf, i16 %i.bwk)
  %i.bwo = call i16 @llvm.smin.i16(i16 %i.bwh, i16 %i.bwn)
  %i.bwp = call i16 @llvm.smax.i16(i16 %i.bwf, i16 %i.bwk)
  %i.bwq = call i16 @llvm.smax.i16(i16 %i.bwh, i16 %i.bwp)
  %i.bwr = sitofp i16 %i.bwo to float
  %i.bws = fcmp ogt float %.0150.i.i.us.us.i, %i.bwr
  %i.bwt = sitofp i16 %i.bwq to float
  %i.bwu = fcmp olt float %.0150.i.i.us.us.i, %i.bwt
  %or.cond162.i.i.us.us.i = and i1 %i.bws, %i.bwu
  %i.bwv = sitofp i16 %..i.i.us.us.i to float
  %i.bww = fcmp ogt float %i.bvp, %i.bwv
  %or.cond164.i.i.us.us.i = select i1 %or.cond162.i.i.us.us.i, i1 %i.bww, i1 false
  br i1 %or.cond164.i.i.us.us.i, label %bb.ni, label %.thread.i.i.us.us.i

bb.ni:                                            ; preds = %bb.nh
  %i.bwx = load <2 x i16>, ptr %i.bvx, align 2    ; 2 uses
  %i.bwy = load <2 x i16>, ptr %i.bwa, align 2    ; 2 uses
  %i.bwz = shufflevector <2 x i16> %i.bwx, <2 x i16> %i.bwy, <2 x i32> <i32 0, i32 2>
  %i.bxa = sitofp <2 x i16> %i.bwz to <2 x float> ; 3 uses
  %i.bxb = shufflevector <2 x i16> %i.bwx, <2 x i16> %i.bwy, <2 x i32> <i32 1, i32 3>
  %i.bxc = sitofp <2 x i16> %i.bxb to <2 x float> ; 3 uses
  %i.bxd = sitofp i16 %i.bwd to float             ; 4 uses
  %i.bxe = sitofp i16 %i.bwf to float             ; 4 uses
  %i.bxf = extractelement <2 x float> %i.bxa, i64 1 ; 3 uses
  %i.bxg = fcmp une float %i.bxf, %i.bxd
  %i.bxh = extractelement <2 x float> %i.bxc, i64 1 ; 3 uses
  %i.bxi = fcmp une float %i.bxh, %i.bxe
  %narrow.i.not.i.i.us.us.i = or i1 %i.bxg, %i.bxi
  br i1 %narrow.i.not.i.i.us.us.i, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.bxj = extractelement <2 x float> %i.bxa, i64 0 ; 2 uses
  %i.bxk = fcmp une float %i.bxj, %i.bxd
  %i.bxl = extractelement <2 x float> %i.bxc, i64 0 ; 2 uses
  %i.bxm = fcmp une float %i.bxl, %i.bxe
  %narrow.i182.not.i.i.us.us.i = or i1 %i.bxk, %i.bxm
  br i1 %narrow.i182.not.i.i.us.us.i, label %bb.no, label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.bxn = sext i16 %i.bwi to i32                 ; 2 uses
  %i.bxo = sext i16 %i.bwl to i32                 ; 2 uses
  %i.bxp = sext i16 %i.bwk to i32
  %i.bxq = icmp slt i16 %i.bwh, %i.bwk
  %i.bxr = call i16 @llvm.smin.i16(i16 %i.bwh, i16 %i.bwk)
  %i.bxs = sitofp i16 %i.bxr to float
  %i.bxt = fcmp ogt float %.0150.i.i.us.us.i, %i.bxs
  br i1 %i.bxt, label %bb.nl, label %.thread.i.i.us.us.i

bb.nl:                                            ; preds = %bb.nk
  %i.bxu = call i16 @llvm.smax.i16(i16 %i.bwh, i16 %i.bwk)
  %i.bxv = sitofp i16 %i.bxu to float
  %i.bxw = fcmp olt float %.0150.i.i.us.us.i, %i.bxv
  br i1 %i.bxw, label %bb.nm, label %.thread.i.i.us.us.i

bb.nm:                                            ; preds = %bb.nl
  %i.bxx = call i32 @llvm.smin.i32(i32 %i.bxn, i32 %i.bxo)
  %i.bxy = sitofp i32 %i.bxx to float
  %i.bxz = fcmp ogt float %i.bvp, %i.bxy
  br i1 %i.bxz, label %bb.nn, label %.thread.i.i.us.us.i

bb.nn:                                            ; preds = %bb.nm
  %i.bya = fsub float %.0150.i.i.us.us.i, %i.bxh
  %i.byb = sub nsw i32 %i.bxp, %i.bwj
  %i.byc = sitofp i32 %i.byb to float
  %i.byd = fdiv float %i.bya, %i.byc
  %i.bye = sub nsw i32 %i.bxo, %i.bxn
  %i.byf = sitofp i32 %i.bye to float
  %i.byg = call float @llvm.fmuladd.f32(float %i.byd, float %i.byf, float %i.bxf)
  %i.byh = fcmp olt float %i.byg, %i.bvp
  %i.byi = select i1 %i.bxq, i32 1, i32 -1
  %i.byj = select i1 %i.byh, i32 %i.byi, i32 0
  %.4.i.i.us.us.i = add nsw i32 %i.byj, %.0197.i.i.us.us.i
  br label %.thread.i.i.us.us.i

bb.no:                                            ; preds = %bb.nj
  %i.byk = fneg float %i.bxf
  %i.byl = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byk)
  %i.bym = fadd float %i.byl, %i.bxh              ; 3 uses
  %i.byn = fneg float %i.bxd
  %i.byo = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byn)
  %i.byp = fadd float %i.byo, %i.bxe              ; 2 uses
  %i.byq = fneg float %i.bxj
  %i.byr = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byq)
  %i.bys = fadd float %i.byr, %i.bxl
  %i.byt = call float @llvm.fmuladd.f32(float %i.byp, float -2.000000e+00, float %i.bym)
  %i.byu = fadd float %i.byt, %i.bys              ; 5 uses
  %i.byv = fsub float %i.byp, %i.bym              ; 7 uses
  %i.byw = fadd float %i.bvw, %i.bym              ; 2 uses
  %i.byx = fcmp une float %i.byu, 0.000000e+00
  br i1 %i.byx, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.byy = fmul float %i.byv, -2.000000e+00
  %i.byz = fdiv float %i.byw, %i.byy              ; 3 uses
  %i.bza = fcmp ult float %i.byz, 0.000000e+00
  %i.bzb = fcmp ugt float %i.byz, 1.000000e+00
  %or.cond119.i.i.i.us.us.i = or i1 %i.bza, %i.bzb
  br i1 %or.cond119.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i, label %.thread21.i.i.i.us.us.i

bb.nq:                                            ; preds = %bb.no
  %i.bzc = fneg float %i.byw
  %i.bzd = fmul float %i.byu, %i.bzc
  %i.bze = call float @llvm.fmuladd.f32(float %i.byv, float %i.byv, float %i.bzd) ; 2 uses
  %i.bzf = fcmp ogt float %i.bze, 0.000000e+00
  br i1 %i.bzf, label %bb.nr, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

bb.nr:                                            ; preds = %bb.nq
  %i.bzg = fdiv float -1.000000e+00, %i.byu       ; 2 uses
  %sqrtf.i.i.i.us.us.i = call float @sqrtf(float noundef %i.bze) #39 ; 3 uses
  %i.bzh = fadd float %i.byv, %sqrtf.i.i.i.us.us.i
  %i.bzi = fmul float %i.bzg, %i.bzh              ; 4 uses
  %i.bzj = fsub float %i.byv, %sqrtf.i.i.i.us.us.i
  %i.bzk = fmul float %i.bzg, %i.bzj              ; 5 uses
  %i.bzl = fcmp oge float %i.bzi, 0.000000e+00
  %i.bzm = fcmp ole float %i.bzi, 1.000000e+00
  %or.cond.not.not.not.i.i.i.us.us.i = and i1 %i.bzl, %i.bzm ; 3 uses
  %i.bzn = fcmp ule float %sqrtf.i.i.i.us.us.i, 0.000000e+00
  %i.bzo = fcmp ult float %i.bzk, 0.000000e+00
  %i.bzp = fcmp ugt float %i.bzk, 1.000000e+00
  %i.bzq = or i1 %i.bzo, %i.bzp
  %or.cond118.i.i.i.us.us.i = select i1 %i.bzn, i1 true, i1 %i.bzq
  br i1 %or.cond118.i.i.i.us.us.i, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %.0107.i.i.i.us.us.i = select i1 %or.cond.not.not.not.i.i.i.us.us.i, float %i.bzi, float %i.bzk
  br label %.thread21.i.i.i.us.us.i

bb.nt:                                            ; preds = %bb.nr
  br i1 %or.cond.not.not.not.i.i.i.us.us.i, label %.thread21.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

.thread21.i.i.i.us.us.i:                          ; preds = %bb.nt, %bb.ns, %bb.np
  %.327.i.i.i.us.us.i = phi i1 [ false, %bb.nt ], [ %or.cond.not.not.not.i.i.i.us.us.i, %bb.ns ], [ false, %bb.np ]
  %.110626.i.i.i.us.us.i = phi float [ %i.bzk, %bb.nt ], [ %i.bzk, %bb.ns ], [ 0.000000e+00, %bb.np ] ; 5 uses
  %.311025.i.i.i.us.us.i = phi float [ %i.bzi, %bb.nt ], [ %.0107.i.i.i.us.us.i, %bb.ns ], [ %i.byz, %bb.np ] ; 5 uses
  %i.bzr = call <2 x float> @llvm.copysign.v2f32(<2 x float> zeroinitializer, <2 x float> %i.bxc)
  %i.bzs = call float @llvm.copysign.f32(float 0.000000e+00, float %i.bxe)
  %i.bzt = fadd float %i.bzs, %i.bxd
  %i.bzu = fadd <2 x float> %i.bzr, %i.bxa        ; 2 uses
  %i.bzv = extractelement <2 x float> %i.bzu, i64 1 ; 3 uses
  %i.bzw = fsub float %i.bzt, %i.bzv              ; 2 uses
  %i.bzx = extractelement <2 x float> %i.bzu, i64 0
  %i.bzy = fsub float %i.bzx, %i.bzv              ; 2 uses
  %i.bzz = fsub float %i.bzv, %i.bvv              ; 2 uses
  %i.caa = call float @llvm.fmuladd.f32(float %.311025.i.i.i.us.us.i, float -2.000000e+00, float 2.000000e+00)
  %i.cab = fmul float %.311025.i.i.i.us.us.i, %i.caa
end_hunk_4
begin_hunk_5_@LoadFontData:bb.a
  %i.ckn = fsub float 1.000000e+00, %.sroa.11.0.i.us.us.i ; 3 uses
  %i.cko = fmul float %i.ckn, %i.ckn              ; 2 uses
  %i.ckp = fmul nnan float %.sroa.11.0.i.us.us.i, 2.000000e+00
  %i.ckq = fmul float %i.ckp, %i.ckn              ; 2 uses
  %i.ckr = fmul float %i.cdp, %i.ckq
  %i.cks = call float @llvm.fmuladd.f32(float %i.cko, float %i.cdo, float %i.ckr)
  %i.ckt = fmul nnan float %.sroa.11.0.i.us.us.i, %.sroa.11.0.i.us.us.i ; 2 uses
  %i.cku = call float @llvm.fmuladd.f32(float %i.ckt, float %i.cdv, float %i.cks)
  %i.ckv = fmul float %i.cds, %i.ckq
  %i.ckw = call float @llvm.fmuladd.f32(float %i.cko, float %i.cdr, float %i.ckv)
  %i.ckx = call float @llvm.fmuladd.f32(float %i.ckt, float %i.cdy, float %i.ckw)
  %i.cky = fsub float %i.cku, %i.bvo              ; 2 uses
  %i.ckz = fsub float %i.ckx, %i.bvf              ; 2 uses
  %i.cla = fmul float %i.ckz, %i.ckz
  %i.clb = call float @llvm.fmuladd.f32(float %i.cky, float %i.cky, float %i.cla) ; 2 uses
  %i.clc = fmul float %.6.i.us.us.i, %.6.i.us.us.i
  %i.cld = fcmp olt float %i.clb, %i.clc
  br i1 %i.cld, label %bb.ou, label %.thread.i.us.us.i

bb.ou:                                            ; preds = %bb.ot
  %sqrt484.i.us.us.i = call float @llvm.sqrt.f32(float %i.clb)
  br label %.thread.i.us.us.i

bb.ov:                                            ; preds = %.lr.ph490.i.us.us.i
  %i.cle = getelementptr inbounds nuw [4 x i8], ptr %i.buh, i64 %indvars.iv497.i.us.us.i
  %i.clf = load float, ptr %i.cle, align 4        ; 2 uses
  %i.clg = fcmp une float %i.clf, 0.000000e+00
  br i1 %i.clg, label %bb.ow, label %.thread.i.us.us.i

bb.ow:                                            ; preds = %bb.ov
  %i.clh = getelementptr i8, ptr %i.ccd, i64 -14
  %i.cli = load <2 x i16>, ptr %i.clh, align 2
  %i.clj = sitofp <2 x i16> %i.cli to <2 x float> ; 2 uses
  %i.clk = extractelement <2 x float> %i.clj, i64 0
  %i.cll = fmul float %i.xz, %i.clk
  %i.clm = extractelement <2 x float> %i.clj, i64 1
  %i.cln = fmul float %i.clm, %i.yr
  %i.clo = fmul float %.0428489.i.us.us.i, %.0428489.i.us.us.i
  %i.clp = shufflevector <2 x float> %i.ccg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.clq = insertelement <2 x float> %i.clp, float %i.cln, i64 1
  %i.clr = insertelement <2 x float> %i.ccg, float %i.bvf, i64 0
  %i.cls = fsub <2 x float> %i.clq, %i.clr        ; 5 uses
  %i.clt = insertelement <2 x float> %i.ccg, float %i.cll, i64 1
  %i.clu = shufflevector <2 x float> %i.ccg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.clv = insertelement <2 x float> %i.clu, float %i.bvo, i64 0
  %i.clw = fsub <2 x float> %i.clt, %i.clv        ; 5 uses
  %i.clx = fneg <2 x float> %i.clw
  %i.cly = shufflevector <2 x float> %i.cls, <2 x float> %i.clx, <2 x i32> <i32 0, i32 2>
  %i.clz = fmul <2 x float> %i.cls, %i.cly
  %i.cma = shufflevector <2 x float> %i.clw, <2 x float> %i.cls, <2 x i32> <i32 0, i32 2>
  %i.cmb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clw, <2 x float> %i.cma, <2 x float> %i.clz) ; 2 uses
  %i.cmc = extractelement <2 x float> %i.cmb, i64 0 ; 2 uses
  %i.cmd = fcmp olt float %i.cmc, %i.clo
  %sqrt480.i.us.us.i = call float @llvm.sqrt.f32(float %i.cmc)
  %.1429.i.us.us.i = select i1 %i.cmd, float %sqrt480.i.us.us.i, float %.0428489.i.us.us.i ; 3 uses
  %i.cme = extractelement <2 x float> %i.cmb, i64 1
  %i.cmf = call float @llvm.fabs.f32(float %i.cme)
  %i.cmg = fmul float %i.clf, %i.cmf              ; 2 uses
  %i.cmh = fcmp olt float %i.cmg, %.1429.i.us.us.i
  br i1 %i.cmh, label %bb.ox, label %.thread.i.us.us.i

bb.ox:                                            ; preds = %bb.ow
  %i.cmi = shufflevector <2 x float> %i.cls, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cmj = fmul <2 x float> %i.cmi, %i.cls
  %i.cmk = shufflevector <2 x float> %i.clw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cml = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cmk, <2 x float> %i.clw, <2 x float> %i.cmj) ; 2 uses
  %i.cmm = extractelement <2 x float> %i.cml, i64 0
  %i.cmn = fneg float %i.cmm
  %i.cmo = extractelement <2 x float> %i.cml, i64 1
  %i.cmp = fdiv float %i.cmn, %i.cmo              ; 2 uses
  %i.cmq = fcmp oge float %i.cmp, 0.000000e+00
  %i.cmr = fcmp ole float %i.cmp, 1.000000e+00
  %or.cond.i.us.us.i = and i1 %i.cmq, %i.cmr
  %.2430.i.us.us.i = select i1 %or.cond.i.us.us.i, float %i.cmg, float %.1429.i.us.us.i
  br label %.thread.i.us.us.i

.thread.i.us.us.i:                                ; preds = %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.nz, %.lr.ph490.i.us.us.i
  %.9.i.us.us.i = phi float [ %.0428489.i.us.us.i, %.lr.ph490.i.us.us.i ], [ %.1429.i.us.us.i, %bb.ow ], [ %.2430.i.us.us.i, %bb.ox ], [ %.6.i.us.us.i, %bb.os ], [ %.0428489.i.us.us.i, %bb.nz ], [ %sqrt484.i.us.us.i, %bb.ou ], [ %.6.i.us.us.i, %bb.ot ], [ %.0428489.i.us.us.i, %bb.ov ] ; 3 uses
  %indvars.iv.next498.i.us.us.i = add nuw nsw i64 %indvars.iv497.i.us.us.i, 1 ; 2 uses
  %exitcond501.not.i.us.us.i = icmp eq i64 %indvars.iv.next498.i.us.us.i, %wide.trip.count.i.i.i156
  br i1 %exitcond501.not.i.us.us.i, label %._crit_edge.i.us.us.i, label %.lr.ph490.i.us.us.i

._crit_edge.i.us.us.i:                            ; preds = %.thread.i.us.us.i
  %i.cms = icmp eq i32 %.9.i.fr.i.us.us.i, 0
  %i.cmt = fneg float %.9.i.us.us.i
  %i.cmu = select i1 %i.cms, float %i.cmt, float %.9.i.us.us.i
  %i.cmv = call float @llvm.fmuladd.f32(float %i.cmu, float 6.400000e+01, float 1.280000e+02) ; 3 uses
  %i.cmw = fcmp olt float %i.cmv, 0.000000e+00
  br i1 %i.cmw, label %bb.pa, label %bb.oy

bb.oy:                                            ; preds = %._crit_edge.i.us.us.i
  %i.cmx = fcmp ogt float %i.cmv, 2.550000e+02
  br i1 %i.cmx, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy, %._crit_edge.i.us.us.i
  %.0431.i.us.us.i = phi float [ %i.cmv, %bb.oy ], [ 2.550000e+02, %bb.oz ], [ 0.000000e+00, %._crit_edge.i.us.us.i ]
  %i.cmy = fptoui float %.0431.i.us.us.i to i8
  %i.cmz = add i32 %.reass.i.us.i, %i.bvm
  %i.cna = sext i32 %i.cmz to i64
  %i.cnb = getelementptr inbounds i8, ptr %i.bue, i64 %i.cna
  store i8 %i.cmy, ptr %i.cnb, align 1
  %indvars.iv.next503.i.us.us.i = add nuw nsw i64 %indvars.iv502.i.us.us.i, 1 ; 2 uses
  %lftr.wideiv.i.us.us.i = trunc i64 %indvars.iv.next503.i.us.us.i to i32
  %exitcond505.not.i.us.us.i = icmp eq i32 %i.btx, %lftr.wideiv.i.us.us.i
  br i1 %exitcond505.not.i.us.us.i, label %._crit_edge493.i.split.us.us.i, label %bb.nd

._crit_edge493.i.split.us.us.i:                   ; preds = %bb.pa
  %i.cnc = add nsw i32 %.0435494.i.us.i, 1        ; 2 uses
  %exitcond506.not.i.us.i = icmp eq i32 %i.cnc, %i.bty
  br i1 %exitcond506.not.i.us.i, label %._crit_edge495.split.i.i, label %.preheader.i.us.i

bb.pb:                                            ; preds = %bb.pf, %.lr.ph.i.i157
  %indvars.iv.i.i159 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %indvars.iv.next.i.i161, %bb.pf ] ; 4 uses
  %.0432487.i.i = phi i64 [ %i.buk, %.lr.ph.i.i157 ], [ %indvars.iv.i.i159, %bb.pf ] ; 2 uses
  %i.cnd = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i159 ; 4 uses
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cnd, i64 12
  %i.cnf = load i8, ptr %i.cne, align 2
  switch i8 %i.cnf, label %bb.pf [
    i8 2, label %bb.pc
    i8 3, label %bb.pd
  ]

bb.pc:                                            ; preds = %bb.pb
  %i.cng = load i16, ptr %i.cnd, align 2
  %i.cnh = sitofp i16 %i.cng to float
  %i.cni = fmul float %i.xz, %i.cnh
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cnd, i64 2
  %i.cnk = load i16, ptr %i.cnj, align 2
  %i.cnl = sitofp i16 %i.cnk to float
  %i.cnm = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %.0432487.i.i ; 2 uses
  %i.cnn = load i16, ptr %i.cnm, align 2
  %i.cno = sitofp i16 %i.cnn to float
  %i.cnp = fmul float %i.xz, %i.cno
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnm, i64 2
  %i.cnr = load i16, ptr %i.cnq, align 2
  %i.cns = sitofp i16 %i.cnr to float
  %i.cnt = fsub float %i.cnp, %i.cni              ; 2 uses
  %i.cnu = fmul float %i.xz, %i.cnl
  %i.cnv = fmul float %i.xz, %i.cns
  %i.cnw = fsub float %i.cnu, %i.cnv              ; 2 uses
  %i.cnx = fmul float %i.cnw, %i.cnw
  %i.cny = call float @llvm.fmuladd.f32(float %i.cnt, float %i.cnt, float %i.cnx)
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.cny) ; 2 uses
  %i.cnz = fcmp olt float %sqrt.i.i, f0x3A800000
  %i.coa = fdiv float 1.000000e+00, %sqrt.i.i
  %i.cob = select i1 %i.cnz, float 0.000000e+00, float %i.coa
  br label %bb.pf

bb.pd:                                            ; preds = %bb.pb
  %i.coc = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %.0432487.i.i ; 2 uses
  %i.cod = load i16, ptr %i.coc, align 2
  %i.coe = sitofp i16 %i.cod to float
  %i.cof = fmul float %i.xz, %i.coe
  %i.cog = getelementptr inbounds nuw i8, ptr %i.coc, i64 2
  %i.coh = load i16, ptr %i.cog, align 2
  %i.coi = sitofp i16 %i.coh to float
  %i.coj = load <4 x i16>, ptr %i.cnd, align 2
  %i.cok = sitofp <4 x i16> %i.coj to <4 x float> ; 4 uses
  %i.col = extractelement <4 x float> %i.cok, i64 2
  %i.com = fmul float %i.xz, %i.col
  %i.con = extractelement <4 x float> %i.cok, i64 3
  %i.coo = fmul float %i.con, %i.yr
  %i.cop = extractelement <4 x float> %i.cok, i64 0
  %i.coq = fmul float %i.xz, %i.cop
  %i.cor = extractelement <4 x float> %i.cok, i64 1
  %i.cos = fmul float %i.cor, %i.yr
  %i.cot = call float @llvm.fmuladd.f32(float %i.com, float -2.000000e+00, float %i.coq)
  %i.cou = fadd float %i.cof, %i.cot              ; 2 uses
  %i.cov = call float @llvm.fmuladd.f32(float %i.coo, float -2.000000e+00, float %i.cos)
  %i.cow = fmul float %i.xz, %i.coi
  %i.cox = fsub float %i.cov, %i.cow              ; 2 uses
  %i.coy = fmul float %i.cox, %i.cox
  %i.coz = call float @llvm.fmuladd.f32(float %i.cou, float %i.cou, float %i.coy) ; 2 uses
  %i.cpa = fcmp ult float %i.coz, f0x35800000
  br i1 %i.cpa, label %bb.pf, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.cpb = fdiv float 1.000000e+00, %i.coz
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %bb.pc, %bb.pb
  %.sink.i.i160 = phi float [ %i.cpb, %bb.pe ], [ 0.000000e+00, %bb.pd ], [ %i.cob, %bb.pc ], [ 0.000000e+00, %bb.pb ]
  %i.cpc = getelementptr inbounds nuw [4 x i8], ptr %i.buh, i64 %indvars.iv.i.i159
  store float %.sink.i.i160, ptr %i.cpc, align 4
  %indvars.iv.next.i.i161 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 2 uses
  %exitcond.not.i.i162 = icmp eq i64 %indvars.iv.next.i.i161, %wide.trip.count.i.i158
  br i1 %exitcond.not.i.i162, label %.preheader485.i.i, label %bb.pb

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge493.i.split.i
  %indvar = phi i32 [ 0, %.preheader.i.i.preheader ], [ %indvar.next, %._crit_edge493.i.split.i ] ; 4 uses
  %.0435494.i.i = phi i32 [ %i.btw, %.preheader.i.i.preheader ], [ %i.ctn, %._crit_edge493.i.split.i ] ; 3 uses
  %i.cpd = mul i32 %i.btz, %indvar                ; 2 uses
  %i.cpe = mul i32 %i.btz, %indvar                ; 2 uses
  %i.cpf = sitofp i32 %.0435494.i.i to float
  %i.cpg = fadd float %i.cpf, 5.000000e-01
  %i.cph = fdiv float %i.cpg, %i.yr
  %i.cpi = fpext float %i.cph to double
  %i.cpj = sub nuw nsw i32 %.0435494.i.i, %i.btw
  %i.cpk = mul nsw i32 %i.cpj, %i.btz             ; 7 uses
  %.reass.i.i = add i32 %i.cpk, %reass.sub.i.i    ; 15 uses
  %i.cpl = call double @fmod(double noundef %i.cpi, double noundef 1.000000e+00) #39 ; 2 uses
  %i.cpm = fcmp olt double %i.cpl, f0x3F847AE130000000
  br i1 %i.cpm, label %iter.check658, label %.preheader.i.split.split.i

iter.check658:                                    ; preds = %.preheader.i.i
  %i.cpn = mul i32 %i.btz, %indvar                ; 2 uses
  %i.cpo = add i32 %i.cpn, %i.bup
  %i.cpp = icmp slt i32 %i.cpo, %i.cpn
  %or.cond723 = select i1 %min.iters.check646, i1 true, i1 %i.cpp
  br i1 %or.cond723, label %._crit_edge.thread.i.us12.i.preheader, label %vector.main.loop.iter.check647

vector.main.loop.iter.check647:                   ; preds = %iter.check658
  br i1 %min.iters.check648, label %vec.epilog.ph662, label %vector.body651

vector.body651:                                   ; preds = %vector.main.loop.iter.check647, %vector.body651
  %index652 = phi i64 [ %index.next653, %vector.body651 ], [ 0, %vector.main.loop.iter.check647 ] ; 2 uses
  %i.cpq = trunc i64 %index652 to i32
  %i.cpr = add i32 %i.cpk, %i.cpq
  %i.cps = sext i32 %i.cpr to i64
  %i.cpt = getelementptr inbounds i8, ptr %i.bue, i64 %i.cps ; 2 uses
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 16
  store <16 x i8> zeroinitializer, ptr %i.cpt, align 1
  store <16 x i8> zeroinitializer, ptr %i.cpu, align 1
  %index.next653 = add nuw i64 %index652, 32      ; 2 uses
  %i.cpv = icmp eq i64 %index.next653, %n.vec650
  br i1 %i.cpv, label %middle.block654, label %vector.body651, !llvm.loop !30

middle.block654:                                  ; preds = %vector.body651
  br i1 %cmp.n655, label %._crit_edge493.i.split.i, label %vec.epilog.iter.check660

vec.epilog.iter.check660:                         ; preds = %middle.block654
  br i1 %min.epilog.iters.check661, label %._crit_edge.thread.i.us12.i.preheader, label %vec.epilog.ph662, !prof !31

vec.epilog.ph662:                                 ; preds = %vector.main.loop.iter.check647, %vec.epilog.iter.check660
  %vec.epilog.resume.val656 = phi i64 [ %n.vec650, %vec.epilog.iter.check660 ], [ 0, %vector.main.loop.iter.check647 ]
  br label %vec.epilog.vector.body664

vec.epilog.vector.body664:                        ; preds = %vec.epilog.vector.body664, %vec.epilog.ph662
  %index665 = phi i64 [ %vec.epilog.resume.val656, %vec.epilog.ph662 ], [ %index.next666, %vec.epilog.vector.body664 ] ; 2 uses
  %i.cpw = trunc i64 %index665 to i32
  %i.cpx = add i32 %i.cpk, %i.cpw
  %i.cpy = sext i32 %i.cpx to i64
  %i.cpz = getelementptr inbounds i8, ptr %i.bue, i64 %i.cpy
  store <8 x i8> zeroinitializer, ptr %i.cpz, align 1
  %index.next666 = add nuw i64 %index665, 8       ; 2 uses
  %i.cqa = icmp eq i64 %index.next666, %n.vec663
  br i1 %i.cqa, label %vec.epilog.middle.block667, label %vec.epilog.vector.body664, !llvm.loop !32

vec.epilog.middle.block667:                       ; preds = %vec.epilog.vector.body664
  br i1 %cmp.n668, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i.preheader

._crit_edge.thread.i.us12.i.preheader:            ; preds = %iter.check658, %vec.epilog.iter.check660, %vec.epilog.middle.block667
  %indvars.iv502.i.us11.i.ph = phi i64 [ %i.bun, %iter.check658 ], [ %i.bvc, %vec.epilog.iter.check660 ], [ %i.bvd, %vec.epilog.middle.block667 ] ; 3 uses
  %i.cqb = trunc i64 %indvars.iv502.i.us11.i.ph to i32 ; 2 uses
  %i.cqc = sub i32 %i.btq, %i.cqb
  %i.cqd = sub i32 %i.buu, %i.cqb
  %xtraiter818 = and i32 %i.cqc, 3                ; 2 uses
  %lcmp.mod819.not = icmp eq i32 %xtraiter818, 0
  br i1 %lcmp.mod819.not, label %._crit_edge.thread.i.us12.i.prol.loopexit, label %._crit_edge.thread.i.us12.i.prol

._crit_edge.thread.i.us12.i.prol:                 ; preds = %._crit_edge.thread.i.us12.i.preheader, %._crit_edge.thread.i.us12.i.prol
  %indvars.iv502.i.us11.i.prol = phi i64 [ %indvars.iv.next503.i.us13.i.prol, %._crit_edge.thread.i.us12.i.prol ], [ %indvars.iv502.i.us11.i.ph, %._crit_edge.thread.i.us12.i.preheader ] ; 2 uses
  %prol.iter820 = phi i32 [ %prol.iter820.next, %._crit_edge.thread.i.us12.i.prol ], [ 0, %._crit_edge.thread.i.us12.i.preheader ]
  %i.cqe = trunc i64 %indvars.iv502.i.us11.i.prol to i32
  %i.cqf = add i32 %.reass.i.i, %i.cqe
  %i.cqg = sext i32 %i.cqf to i64
  %i.cqh = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqg
  store i8 0, ptr %i.cqh, align 1
  %indvars.iv.next503.i.us13.i.prol = add nuw nsw i64 %indvars.iv502.i.us11.i.prol, 1 ; 2 uses
  %prol.iter820.next = add i32 %prol.iter820, 1   ; 2 uses
  %prol.iter820.cmp.not = icmp eq i32 %prol.iter820.next, %xtraiter818
  br i1 %prol.iter820.cmp.not, label %._crit_edge.thread.i.us12.i.prol.loopexit, label %._crit_edge.thread.i.us12.i.prol, !llvm.loop !33

._crit_edge.thread.i.us12.i.prol.loopexit:        ; preds = %._crit_edge.thread.i.us12.i.prol, %._crit_edge.thread.i.us12.i.preheader
  %indvars.iv502.i.us11.i.unr = phi i64 [ %indvars.iv502.i.us11.i.ph, %._crit_edge.thread.i.us12.i.preheader ], [ %indvars.iv.next503.i.us13.i.prol, %._crit_edge.thread.i.us12.i.prol ]
  %i.cqi = icmp ult i32 %i.cqd, 3
  br i1 %i.cqi, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i.preheader.new

._crit_edge.thread.i.us12.i.preheader.new:        ; preds = %._crit_edge.thread.i.us12.i.prol.loopexit
  %invariant.op870 = add i32 1, %.reass.i.i
  %invariant.op872 = add i32 2, %.reass.i.i
  %invariant.op874 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.us12.i

._crit_edge.thread.i.us12.i:                      ; preds = %._crit_edge.thread.i.us12.i, %._crit_edge.thread.i.us12.i.preheader.new
  %indvars.iv502.i.us11.i = phi i64 [ %indvars.iv502.i.us11.i.unr, %._crit_edge.thread.i.us12.i.preheader.new ], [ %indvars.iv.next503.i.us13.i.3, %._crit_edge.thread.i.us12.i ] ; 5 uses
  %i.cqj = trunc i64 %indvars.iv502.i.us11.i to i32
  %i.cqk = add i32 %.reass.i.i, %i.cqj
  %i.cql = sext i32 %i.cqk to i64
  %i.cqm = getelementptr inbounds i8, ptr %i.bue, i64 %i.cql
  store i8 0, ptr %i.cqm, align 1
  %i.cqn = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass871 = add i32 %i.cqn, %invariant.op870
  %i.cqo = sext i32 %.reass871 to i64
  %i.cqp = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqo
  store i8 0, ptr %i.cqp, align 1
  %i.cqq = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass873 = add i32 %i.cqq, %invariant.op872
  %i.cqr = sext i32 %.reass873 to i64
  %i.cqs = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqr
  store i8 0, ptr %i.cqs, align 1
  %i.cqt = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass875 = add i32 %i.cqt, %invariant.op874
  %i.cqu = sext i32 %.reass875 to i64
  %i.cqv = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqu
  store i8 0, ptr %i.cqv, align 1
  %indvars.iv.next503.i.us13.i.3 = add nuw nsw i64 %indvars.iv502.i.us11.i, 4 ; 2 uses
  %lftr.wideiv.i.us14.i.3 = trunc i64 %indvars.iv.next503.i.us13.i.3 to i32
  %exitcond505.not.i.us15.i.3 = icmp eq i32 %i.btx, %lftr.wideiv.i.us14.i.3
  br i1 %exitcond505.not.i.us15.i.3, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i, !llvm.loop !34

.preheader.i.split.split.i:                       ; preds = %.preheader.i.i
  %i.cqw = fcmp ogt double %i.cpl, f0x3FEFAE1490000000
  br i1 %i.cqw, label %iter.check684, label %iter.check710

iter.check710:                                    ; preds = %.preheader.i.split.split.i
  %i.cqx = add i32 %i.cpd, %i.bup
  %i.cqy = icmp slt i32 %i.cqx, %i.cpd
  %or.cond725 = select i1 %min.iters.check672, i1 true, i1 %i.cqy
  br i1 %or.cond725, label %._crit_edge.thread.i.i.preheader, label %vector.main.loop.iter.check699

vector.main.loop.iter.check699:                   ; preds = %iter.check710
  br i1 %min.iters.check700, label %vec.epilog.ph714, label %vector.body703

vector.body703:                                   ; preds = %vector.main.loop.iter.check699, %vector.body703
  %index704 = phi i64 [ %index.next705, %vector.body703 ], [ 0, %vector.main.loop.iter.check699 ] ; 2 uses
  %i.cqz = trunc i64 %index704 to i32
  %i.cra = add i32 %i.cpk, %i.cqz
  %i.crb = sext i32 %i.cra to i64
  %i.crc = getelementptr inbounds i8, ptr %i.bue, i64 %i.crb ; 2 uses
  %i.crd = getelementptr inbounds nuw i8, ptr %i.crc, i64 16
  store <16 x i8> zeroinitializer, ptr %i.crc, align 1
  store <16 x i8> zeroinitializer, ptr %i.crd, align 1
  %index.next705 = add nuw i64 %index704, 32      ; 2 uses
  %i.cre = icmp eq i64 %index.next705, %n.vec702
  br i1 %i.cre, label %middle.block706, label %vector.body703, !llvm.loop !35

middle.block706:                                  ; preds = %vector.body703
  br i1 %cmp.n707, label %._crit_edge493.i.split.i, label %vec.epilog.iter.check712

vec.epilog.iter.check712:                         ; preds = %middle.block706
  br i1 %min.epilog.iters.check713, label %._crit_edge.thread.i.i.preheader, label %vec.epilog.ph714, !prof !31

vec.epilog.ph714:                                 ; preds = %vector.main.loop.iter.check699, %vec.epilog.iter.check712
  %vec.epilog.resume.val708 = phi i64 [ %n.vec702, %vec.epilog.iter.check712 ], [ 0, %vector.main.loop.iter.check699 ]
  br label %vec.epilog.vector.body716

vec.epilog.vector.body716:                        ; preds = %vec.epilog.vector.body716, %vec.epilog.ph714
  %index717 = phi i64 [ %vec.epilog.resume.val708, %vec.epilog.ph714 ], [ %index.next718, %vec.epilog.vector.body716 ] ; 2 uses
  %i.crf = trunc i64 %index717 to i32
  %i.crg = add i32 %i.cpk, %i.crf
  %i.crh = sext i32 %i.crg to i64
  %i.cri = getelementptr inbounds i8, ptr %i.bue, i64 %i.crh
  store <8 x i8> zeroinitializer, ptr %i.cri, align 1
  %index.next718 = add nuw i64 %index717, 8       ; 2 uses
  %i.crj = icmp eq i64 %index.next718, %n.vec715
  br i1 %i.crj, label %vec.epilog.middle.block719, label %vec.epilog.vector.body716, !llvm.loop !36

vec.epilog.middle.block719:                       ; preds = %vec.epilog.vector.body716
  br i1 %cmp.n720, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.i.preheader

._crit_edge.thread.i.i.preheader:                 ; preds = %iter.check710, %vec.epilog.iter.check712, %vec.epilog.middle.block719
  %indvars.iv502.i.i.ph = phi i64 [ %i.bun, %iter.check710 ], [ %i.buw, %vec.epilog.iter.check712 ], [ %i.bux, %vec.epilog.middle.block719 ] ; 3 uses
  %i.crk = trunc i64 %indvars.iv502.i.i.ph to i32 ; 2 uses
  %i.crl = sub i32 %i.btq, %i.crk
  %i.crm = sub i32 %i.bus, %i.crk
  %xtraiter813 = and i32 %i.crl, 3                ; 2 uses
  %lcmp.mod814.not = icmp eq i32 %xtraiter813, 0
  br i1 %lcmp.mod814.not, label %._crit_edge.thread.i.i.prol.loopexit, label %._crit_edge.thread.i.i.prol

._crit_edge.thread.i.i.prol:                      ; preds = %._crit_edge.thread.i.i.preheader, %._crit_edge.thread.i.i.prol
  %indvars.iv502.i.i.prol = phi i64 [ %indvars.iv.next503.i.i.prol, %._crit_edge.thread.i.i.prol ], [ %indvars.iv502.i.i.ph, %._crit_edge.thread.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %._crit_edge.thread.i.i.prol ], [ 0, %._crit_edge.thread.i.i.preheader ]
  %i.crn = trunc i64 %indvars.iv502.i.i.prol to i32
  %i.cro = add i32 %.reass.i.i, %i.crn
  %i.crp = sext i32 %i.cro to i64
  %i.crq = getelementptr inbounds i8, ptr %i.bue, i64 %i.crp
  store i8 0, ptr %i.crq, align 1
  %indvars.iv.next503.i.i.prol = add nuw nsw i64 %indvars.iv502.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter813
  br i1 %prol.iter.cmp.not, label %._crit_edge.thread.i.i.prol.loopexit, label %._crit_edge.thread.i.i.prol, !llvm.loop !37

._crit_edge.thread.i.i.prol.loopexit:             ; preds = %._crit_edge.thread.i.i.prol, %._crit_edge.thread.i.i.preheader
  %indvars.iv502.i.i.unr = phi i64 [ %indvars.iv502.i.i.ph, %._crit_edge.thread.i.i.preheader ], [ %indvars.iv.next503.i.i.prol, %._crit_edge.thread.i.i.prol ]
  %i.crr = icmp ult i32 %i.crm, 3
  br i1 %i.crr, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.i.preheader.new

._crit_edge.thread.i.i.preheader.new:             ; preds = %._crit_edge.thread.i.i.prol.loopexit
  %invariant.op = add i32 1, %.reass.i.i
  %invariant.op860 = add i32 2, %.reass.i.i
  %invariant.op862 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.i

iter.check684:                                    ; preds = %.preheader.i.split.split.i
  %i.crs = add i32 %i.cpe, %i.bup
  %i.crt = icmp slt i32 %i.crs, %i.cpe
  %or.cond727 = select i1 %min.iters.check672, i1 true, i1 %i.crt
end_hunk_5
begin_hunk_6_@LoadFontData:bb.a
  %vec.epilog.resume.val = phi i64 [ %n.vec605, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec612 = and i64 %wide.trip.count328, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index613 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next615, %vec.epilog.vector.body ] ; 2 uses
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwn, i64 %index613 ; 2 uses
  %wide.load614 = load <4 x i8>, ptr %i.cwy, align 1
  %i.cwz = icmp ugt <4 x i8> %wide.load614, splat (i8 79)
  %i.cxa = sext <4 x i1> %i.cwz to <4 x i8>
  store <4 x i8> %i.cxa, ptr %i.cwy, align 1
  %index.next615 = add nuw i64 %index613, 4       ; 2 uses
  %i.cxb = icmp eq i64 %index.next615, %n.vec612
  br i1 %i.cxb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n616 = icmp eq i64 %n.vec612, %wide.trip.count328
  br i1 %cmp.n616, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv325.ph = phi i64 [ 0, %iter.check ], [ %n.vec605, %vec.epilog.iter.check ], [ %n.vec612, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %vec.epilog.scalar.ph ], [ %indvars.iv325.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.cwn, i64 %indvars.iv325 ; 2 uses
  %i.cxd = load i8, ptr %i.cxc, align 1
  %i.cxe = icmp ugt i8 %i.cxd, 79
  %. = sext i1 %i.cxe to i8
  store i8 %., ptr %i.cxc, align 1
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !46

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block610, %vec.epilog.middle.block, %.preheader, %bb.pn
  %i.cxf = add nsw i32 %.0122285, 1
  %i.cxg = add nsw i32 %.2284, 1
  br label %bb.po

bb.po:                                            ; preds = %bb.dl, %.loopexit
  %.3 = phi i32 [ %i.cxg, %.loopexit ], [ %.2284, %bb.dl ] ; 5 uses
  %.1 = phi i32 [ %i.cxf, %.loopexit ], [ %.0122285, %bb.dl ] ; 2 uses
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %i.yd
  br i1 %exitcond334.not, label %bb.dk, label %bb.dl

.split:                                           ; preds = %bb.dk
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %.1, i32 noundef %i.yb) #39
  br i1 %i.yc, label %bb.pq, label %bb.pr

.thread:                                          ; preds = %stbtt__find_table.exit331.thread.i.i, %._crit_edge.i.i, %.critedge.i.i, %stbtt__find_table.exit200.i.i, %bb.az
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.8) #39
  br label %bb.pr

bb.pp:                                            ; preds = %bb.dk
  br i1 %i.yc, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %.split, %bb.pp
  call void @free(ptr noundef %.0125) #39
  br label %bb.pr

bb.pr:                                            ; preds = %.split, %.thread, %bb.pq, %bb.pp
  %.4243 = phi i32 [ 0, %.thread ], [ %.3, %bb.pq ], [ %.3, %bb.pp ], [ %.3, %.split ]
  %.0131242 = phi ptr [ null, %.thread ], [ %i.yp, %bb.pq ], [ %i.yp, %bb.pp ], [ %i.yp, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.a
  %.1132 = phi ptr [ %.0131242, %bb.pr ], [ null, %bb.a ]
  %.5 = phi i32 [ %.4243, %bb.pr ], [ 0, %bb.a ]
  store i32 %.5, ptr %6, align 4
  ret ptr %.1132
}

; Function Attrs: nounwind uwtable
define void @GenImageFontAtlas(ptr dead_on_unwind noalias nofree writable sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.9) #39
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8
  %i.b = icmp sgt i32 %3, 0
  %i.c = select i1 %i.b, i32 %3, i32 95           ; 10 uses
  %i.d = zext nneg i32 %i.c to i64                ; 9 uses
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #42 ; 3 uses
  %i.g = shl nsw i32 %5, 1                        ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.d, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi365 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  %i.x = load i32, ptr %i.p, align 8
  %i.y = load i32, ptr %i.q, align 8
  %i.z = load i32, ptr %i.r, align 8
  %i.aa = load i32, ptr %i.s, align 8
  %i.ab = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 1
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 2
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 3
  %i.af = load i32, ptr %i.t, align 8
  %i.ag = load i32, ptr %i.u, align 8
  %i.ah = load i32, ptr %i.v, align 8
  %i.ai = load i32, ptr %i.w, align 8
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = add <4 x i32> %vec.phi, %broadcast.splat
  %i.ao = add <4 x i32> %vec.phi365, %broadcast.splat
  %i.ap = add <4 x i32> %i.an, %i.ae              ; 2 uses
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %.loopexit388, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  %.0209252.ph = phi i32 [ 0, %bb.c ], [ %i.as, %middle.block ]
  br label %scalar.ph

.loopexit388:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa364 = phi i32 [ %i.as, %middle.block ], [ %i.bk, %scalar.ph ]
  %i.at = add nsw i32 %i.g, %4                    ; 2 uses
  %i.au = mul nsw i32 %.lcssa364, %i.at
  %i.av = sitofp i32 %i.au to float
  %i.aw = fmul nnan float %i.av, 1.200000e+00     ; 2 uses
  %i.ax = tail call float @sqrtf(float noundef %i.aw) #39
  %i.ay = tail call float @logf(float noundef %i.ax) #39
  %i.az = fdiv float %i.ay, f0x3F317218
  %i.ba = tail call float @llvm.ceil.f32(float %i.az)
  %exp2f = tail call float @exp2f(float %i.ba) #39
  %i.bb = fptosi float %exp2f to i32              ; 21 uses
  %i.bc = mul nsw i32 %i.bb, %i.bb                ; 2 uses
  %i.bd = lshr i32 %i.bc, 1
  %i.be = uitofp nneg i32 %i.bd to float
  %i.bf = fcmp olt float %i.aw, %i.be
  br i1 %i.bf, label %bb.d, label %bb.e

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0209252 = phi i32 [ %i.bk, %scalar.ph ], [ %.0209252.ph, %scalar.ph.preheader ]
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = add i32 %.0209252, %i.g
  %i.bk = add i32 %i.bj, %i.bi                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %.loopexit388, label %scalar.ph, !llvm.loop !48

bb.d:                                             ; preds = %.loopexit388
  %i.bl = sdiv i32 %i.bb, 2                       ; 2 uses
  %.pre335 = mul nsw i32 %i.bl, %i.bb
  br label %bb.e

bb.e:                                             ; preds = %.loopexit388, %bb.d
  %.pre-phi = phi i32 [ %.pre335, %bb.d ], [ %i.bc, %.loopexit388 ] ; 2 uses
  %.promoted = phi i32 [ %i.bl, %bb.d ], [ %i.bb, %.loopexit388 ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bb, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %.promoted, ptr %i.bn, align 4
  %i.bo = sext i32 %.pre-phi to i64
  %i.bp = tail call noalias ptr @calloc(i64 noundef %i.bo, i64 noundef 1) #40 ; 5 uses
  store ptr %i.bp, ptr %0, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 1, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.br, align 8
  switch i32 %6, label %bb.v [
    i32 0, label %.preheader245
    i32 1, label %bb.l
  ]

.preheader245:                                    ; preds = %bb.e
  %i.bs = add i32 %5, %4
  br label %bb.f

bb.f:                                             ; preds = %.preheader245, %._crit_edge267
  %indvars.iv315 = phi i64 [ 0, %.preheader245 ], [ %indvars.iv.next316, %._crit_edge267 ] ; 3 uses
  %.0211273 = phi i32 [ %5, %.preheader245 ], [ %.1, %._crit_edge267 ] ; 2 uses
  %.0212272 = phi i32 [ %5, %.preheader245 ], [ %i.dg, %._crit_edge267 ] ; 2 uses
  %.0214271 = phi i32 [ %.pre-phi, %.preheader245 ], [ %.1215, %._crit_edge267 ] ; 3 uses
  %i.bt = phi i32 [ %.promoted, %.preheader245 ], [ %.fr284, %._crit_edge267 ] ; 4 uses
  %i.bu = phi ptr [ %i.bp, %.preheader245 ], [ %i.cj, %._crit_edge267 ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv315 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8            ; 3 uses
  %i.bz = add i32 %i.g, %i.by
  %i.ca = sub i32 %i.bb, %i.bz
  %.not235 = icmp slt i32 %.0212272, %i.ca
  br i1 %.not235, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = add nsw i32 %.0211273, %i.at            ; 3 uses
  %i.cc = sub i32 %i.bt, %i.bs
  %i.cd = icmp sgt i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.10) #39
  %i.ce = shl nsw i32 %i.bt, 1                    ; 2 uses
  %i.cf = mul nsw i32 %i.ce, %i.bb                ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = tail call noalias ptr @calloc(i64 noundef %i.cg, i64 noundef 1) #40 ; 2 uses
  %i.ci = sext i32 %.0214271 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.bu, i64 %i.ci, i1 false)
  tail call void @free(ptr noundef %i.bu) #39
  %.pre331.pre = load i32, ptr %i.bx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.pre331 = phi i32 [ %.pre331.pre, %bb.h ], [ %i.by, %bb.g ], [ %i.by, %bb.f ] ; 4 uses
  %i.cj = phi ptr [ %i.ch, %bb.h ], [ %i.bu, %bb.g ], [ %i.bu, %bb.f ] ; 4 uses
  %i.ck = phi i32 [ %i.ce, %bb.h ], [ %i.bt, %bb.g ], [ %i.bt, %bb.f ]
  %.1215 = phi i32 [ %i.cf, %bb.h ], [ %.0214271, %bb.g ], [ %.0214271, %bb.f ]
  %.1213 = phi i32 [ %5, %bb.h ], [ %5, %bb.g ], [ %.0212272, %bb.f ] ; 3 uses
  %.1 = phi i32 [ %i.cb, %bb.h ], [ %i.cb, %bb.g ], [ %.0211273, %bb.f ] ; 3 uses
  %.fr284 = freeze i32 %i.ck                      ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 28 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4            ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  %i.co = icmp sgt i32 %.pre331, 0
  %or.cond358 = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond358, label %.preheader.preheader, label %._crit_edge267

.preheader.preheader:                             ; preds = %bb.i
  %7 = zext i32 %.1213 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge260
  %i.cp = phi i32 [ %i.dh, %._crit_edge260 ], [ %i.cm, %.preheader.preheader ] ; 2 uses
  %i.cq = phi i32 [ %i.di, %._crit_edge260 ], [ %.pre331, %.preheader.preheader ] ; 3 uses
  %i.cr = phi i32 [ %i.dj, %._crit_edge260 ], [ %.pre331, %.preheader.preheader ] ; 4 uses
  %.0208265 = phi i32 [ %i.dk, %._crit_edge260 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph, label %._crit_edge260

.lr.ph:                                           ; preds = %.preheader
  %i.ct = add nuw nsw i32 %.0208265, %.1
  %.fr283 = freeze i32 %i.ct                      ; 3 uses
  %i.cu = icmp sgt i32 %.fr283, -1
  %i.cv = icmp slt i32 %.fr283, %.fr284
  %i.cw = and i1 %i.cv, %i.cu
  br i1 %i.cw, label %.lr.ph.split261.preheader, label %._crit_edge260

.lr.ph.split261.preheader:                        ; preds = %.lr.ph
  %i.cx = mul nsw i32 %.fr283, %i.bb
  %8 = zext i32 %i.cx to i64
  %invariant.gep.a = getelementptr inbounds nuw i8, ptr %i.cj, i64 %8
  br label %.lr.ph.split261

._crit_edge267:                                   ; preds = %._crit_edge260, %bb.i
  %i.cy = phi i32 [ %.pre331, %bb.i ], [ %i.di, %._crit_edge260 ] ; 2 uses
  %.lcssa = phi i32 [ %i.cm, %bb.i ], [ %i.dh, %._crit_edge260 ]
  %i.cz = insertelement <4 x i32> poison, i32 %.1213, i64 0
  %i.da = insertelement <4 x i32> %i.cz, i32 %.1, i64 1
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cy, i64 2
  %i.dc = insertelement <4 x i32> %i.db, i32 %.lcssa, i64 3
  %i.dd = sitofp <4 x i32> %i.dc to <4 x float>
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv315
  store <4 x float> %i.dd, ptr %i.de, align 4
  %i.df = add i32 %.1213, %i.g
  %i.dg = add i32 %i.df, %i.cy
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next316, %i.d
  br i1 %exitcond319.not, label %.loopexit246, label %bb.f

._crit_edge260.loopexit:                          ; preds = %bb.k
  %.pre330 = load i32, ptr %i.cl, align 4
  br label %._crit_edge260

._crit_edge260:                                   ; preds = %.lr.ph, %._crit_edge260.loopexit, %.preheader
  %i.dh = phi i32 [ %i.cp, %.preheader ], [ %.pre330, %._crit_edge260.loopexit ], [ %i.cp, %.lr.ph ] ; 3 uses
  %i.di = phi i32 [ %i.cq, %.preheader ], [ %i.dy, %._crit_edge260.loopexit ], [ %i.cq, %.lr.ph ] ; 2 uses
  %i.dj = phi i32 [ %i.cr, %.preheader ], [ %i.dy, %._crit_edge260.loopexit ], [ %i.cr, %.lr.ph ]
  %i.dk = add nuw nsw i32 %.0208265, 1            ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %i.dh
  br i1 %i.dl, label %.preheader, label %._crit_edge267, !llvm.loop !49

.lr.ph.split261:                                  ; preds = %.lr.ph.split261.preheader, %bb.k
  %i.dm = phi i32 [ %i.cq, %.lr.ph.split261.preheader ], [ %i.dy, %bb.k ]
  %indvars.iv312 = phi i64 [ 0, %.lr.ph.split261.preheader ], [ %indvars.iv.next313, %bb.k ] ; 3 uses
  %i.dn = phi i32 [ %i.cr, %.lr.ph.split261.preheader ], [ %i.dy, %bb.k ]
  %i.do = add nuw nsw i64 %indvars.iv312, %7      ; 2 uses
  %9 = trunc nuw i64 %i.do to i32                 ; 2 uses
  %i.dp = icmp sgt i32 %9, -1
  %i.dq = icmp slt i32 %9, %i.bb
  %or.cond = and i1 %i.dp, %i.dq
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split261
  %i.dr = load ptr, ptr %i.bw, align 8
  %i.ds = mul nsw i32 %i.dn, %.0208265
  %i.dt = trunc nuw nsw i64 %indvars.iv312 to i32
  %i.du = add nsw i32 %i.ds, %i.dt
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %i.dr, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1
  %gep.a = getelementptr inbounds nuw i8, ptr %invariant.gep.a, i64 %i.do
  store i8 %i.dx, ptr %gep.a, align 1
  %.pre = load i32, ptr %i.bx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split261
  %i.dy = phi i32 [ %.pre, %bb.j ], [ %i.dm, %.lr.ph.split261 ] ; 5 uses
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = icmp slt i64 %indvars.iv.next313, %i.dz
  br i1 %i.ea, label %.lr.ph.split261, label %._crit_edge260.loopexit

bb.l:                                             ; preds = %bb.e
  %i.eb = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #42 ; 16 uses
  %i.ec = tail call noalias ptr @malloc(i64 noundef %i.e) #42 ; 13 uses
  %i.ed = add nsw i32 %i.c, -1                    ; 2 uses
  %i.ee = icmp samesign ugt i32 %i.c, 1
  br i1 %i.ee, label %.lr.ph.preheader.i, label %stbrp_init_target.exit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %wide.trip.count.i = zext nneg i32 %i.ed to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ef = add nsw i32 %i.c, -2
  %i.eg = icmp ult i32 %i.ef, 3
  br i1 %i.eg, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.next.i
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.eh, ptr %i.ej, align 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.next.i.1
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.next.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ek, ptr %i.em, align 8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.next.i.2
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.next.i.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.en, ptr %i.ep, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.next.i.3
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.next.i.2
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.eq, ptr %i.es, align 8
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %stbrp_init_target.exit.loopexit.unr-lcssa, label %.lr.ph.i

stbrp_init_target.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %lcmp.mod396 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod396)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.next.i.epil
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv.i.epil
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.et, ptr %i.ev, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil, !llvm.loop !51

stbrp_init_target.exit:                           ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.l
  %.0.lcssa.i = phi i64 [ 0, %bb.l ], [ %wide.trip.count.i, %.lr.ph.i.epil ], [ %wide.trip.count.i, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %.0.lcssa.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr null, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 1, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i32 0, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store ptr %i.ec, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eb, i64 40 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store ptr %i.fb, ptr %i.fc, align 8
  store i32 %i.bb, ptr %i.eb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 %.promoted, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i32 %i.c, ptr %i.fe, align 4
  %i.ff = add i32 %i.ed, %i.bb
  %i.fg = sdiv i32 %i.ff, %i.c
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i32 %i.fg, ptr %i.fh, align 8
  store i32 0, ptr %i.fb, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i32 0, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eb, i64 56 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  store ptr %i.fj, ptr %i.fk, align 8
  store i32 %i.bb, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eb, i64 60
  store i32 1073741824, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  store ptr null, ptr %i.fm, align 8
  %i.fn = mul nuw nsw i64 %i.d, 24
  %i.fo = tail call noalias ptr @malloc(i64 noundef %i.fn) #42 ; 6 uses
  %i.fp = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.fq = shufflevector <2 x i32> %i.fp, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %xtraiter397 = and i64 %i.d, 1
  %i.fr = icmp eq i32 %i.c, 1
  br i1 %i.fr, label %.epil.preheader, label %stbrp_init_target.exit.new

stbrp_init_target.exit.new:                       ; preds = %stbrp_init_target.exit
  %unroll_iter401 = and i64 %i.d, 2147483646
  br label %bb.n

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod399.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod399.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %stbrp_init_target.exit
  %indvars.iv292.epil.init = phi i64 [ 0, %stbrp_init_target.exit ], [ %indvars.iv.next293.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod400 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod400)
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %indvars.iv292.epil.init ; 2 uses
  %i.ft = trunc nuw nsw i64 %indvars.iv292.epil.init to i32
  store i32 %i.ft, ptr %i.fs, align 4
  %i.fu = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv292.epil.init
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fx = load <2 x i32>, ptr %i.fv, align 8
  %i.fy = add nsw <2 x i32> %i.fx, %i.fq
  store <2 x i32> %i.fy, ptr %i.fw, align 4
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.fz = tail call i32 @stbrp_pack_rects(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.fo, i32 noundef %i.c) ; 0 uses
  %i.ga = sitofp i32 %5 to float
  %i.gb = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.p

bb.n:                                             ; preds = %bb.n, %stbrp_init_target.exit.new
  %indvars.iv292 = phi i64 [ 0, %stbrp_init_target.exit.new ], [ %indvars.iv.next293.1, %bb.n ] ; 5 uses
  %niter402 = phi i64 [ 0, %stbrp_init_target.exit.new ], [ %niter402.next.1, %bb.n ]
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %indvars.iv292 ; 2 uses
  %i.ge = trunc nuw nsw i64 %indvars.iv292 to i32
  store i32 %i.ge, ptr %i.gd, align 4
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv292
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gi = load <2 x i32>, ptr %i.gg, align 8
  %i.gj = add nsw <2 x i32> %i.gi, %i.fq
  store <2 x i32> %i.gj, ptr %i.gh, align 4
  %indvars.iv.next293 = or disjoint i64 %indvars.iv292, 1 ; 3 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %indvars.iv.next293 ; 2 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv.next293 to i32
  store i32 %i.gl, ptr %i.gk, align 4
  %i.gm = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv.next293
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gp = load <2 x i32>, ptr %i.gn, align 8
  %i.gq = add nsw <2 x i32> %i.gp, %i.fq
  store <2 x i32> %i.gq, ptr %i.go, align 4
  %indvars.iv.next293.1 = add nuw nsw i64 %indvars.iv292, 2 ; 2 uses
  %niter402.next.1 = add nuw i64 %niter402, 2     ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %.unr-lcssa, label %bb.n

bb.o:                                             ; preds = %.loopexit249
  tail call void @free(ptr noundef %i.fo) #39
  tail call void @free(ptr noundef %i.ec) #39
  tail call void @free(ptr noundef %i.eb) #39
  br label %bb.v

bb.p:                                             ; preds = %bb.m, %.loopexit249
  %indvars.iv307 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next308, %.loopexit249 ] ; 4 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %indvars.iv307 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv307 ; 2 uses
  %i.gu = load <2 x i32>, ptr %i.gs, align 4      ; 3 uses
  %i.gv = sitofp <2 x i32> %i.gu to <2 x float>
  %i.gw = fadd <2 x float> %i.gc, %i.gv
  store <2 x float> %i.gw, ptr %i.gt, align 4
  %i.gx = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv307 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hb = load <2 x i32>, ptr %i.gz, align 8      ; 3 uses
  %i.hc = sitofp <2 x i32> %i.hb to <2 x float>
  store <2 x float> %i.hc, ptr %i.ha, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 20
  %i.he = load i32, ptr %i.hd, align 4
  %.not = icmp eq i32 %i.he, 0
  br i1 %.not, label %bb.u, label %.preheader248

.preheader248:                                    ; preds = %bb.p
  %i.hf = extractelement <2 x i32> %i.hb, i64 1   ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  %i.hh = extractelement <2 x i32> %i.hb, i64 0   ; 4 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  %or.cond359 = select i1 %i.hg, i1 %i.hi, i1 false
  br i1 %or.cond359, label %.preheader247.lr.ph.split, label %.loopexit249

.preheader247.lr.ph.split:                        ; preds = %.preheader248
  %i.hj = extractelement <2 x i32> %i.gu, i64 0
  %invariant.op = add i32 %5, %i.hj
  %i.hk = extractelement <2 x i32> %i.gu, i64 1
  %invariant.op256 = add i32 %5, %i.hk
  %10 = zext i32 %invariant.op to i64             ; 3 uses
  %i.hl = zext nneg i32 %i.hh to i64              ; 3 uses
  %wide.trip.count305 = zext nneg i32 %i.hf to i64
  %xtraiter403 = and i64 %i.hl, 1
  %i.hm = icmp eq i32 %i.hh, 1
  %unroll_iter407 = and i64 %i.hl, 2147483646
  %lcmp.mod405.not = icmp eq i64 %xtraiter403, 0
  %lcmp.mod406 = trunc i32 %i.hh to i1
  br label %.preheader247

.preheader247:                                    ; preds = %.preheader247.lr.ph.split, %._crit_edge
  %indvars.iv302 = phi i64 [ 0, %.preheader247.lr.ph.split ], [ %indvars.iv.next303, %._crit_edge ] ; 3 uses
  %i.hn = trunc i64 %indvars.iv302 to i32
  %.reass257 = add i32 %invariant.op256, %i.hn    ; 3 uses
  %i.ho = icmp sgt i32 %.reass257, -1
  %i.hp = icmp slt i32 %.reass257, %.promoted
  %i.hq = and i1 %i.ho, %i.hp
  %i.hr = mul nuw nsw i64 %indvars.iv302, %i.hl   ; 3 uses
  %.fr = freeze i1 %i.hq
  br i1 %.fr, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.preheader247
  %11 = mul nsw i32 %.reass257, %i.bb
  %12 = zext i32 %11 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.bp, i64 %12 ; 3 uses
  br i1 %i.hm, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  br i1 %lcmp.mod405.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv297.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next298.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod406)
  %13 = add nuw nsw i64 %indvars.iv297.epil.init, %10 ; 2 uses
  %14 = trunc nuw i64 %13 to i32                  ; 2 uses
  %i.hs = icmp sgt i32 %14, -1
  %i.ht = icmp slt i32 %14, %i.bb
  %or.cond282.epil = and i1 %i.hs, %i.ht
  br i1 %or.cond282.epil, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.hu = load ptr, ptr %i.gy, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hr
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %indvars.iv297.epil.init
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %13
  store i8 %i.hx, ptr %i.hy, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.lr.ph.split.epil.preheader, %.preheader247
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.loopexit249, label %.preheader247

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.t
  %indvars.iv297 = phi i64 [ %indvars.iv.next298.1, %bb.t ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %niter408 = phi i64 [ %niter408.next.1, %bb.t ], [ 0, %.lr.ph.split.preheader ]
  %15 = add nuw nsw i64 %indvars.iv297, %10       ; 2 uses
  %16 = trunc nuw i64 %15 to i32                  ; 2 uses
  %i.hz = icmp sgt i32 %16, -1
  %i.ia = icmp slt i32 %16, %i.bb
  %or.cond282 = and i1 %i.hz, %i.ia
  br i1 %or.cond282, label %bb.r, label %.lr.ph.split.1

bb.r:                                             ; preds = %.lr.ph.split
  %i.ib = load ptr, ptr %i.gy, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hr
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv297
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %15
  store i8 %i.ie, ptr %i.if, align 1
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.r, %.lr.ph.split
  %indvars.iv.next298 = or disjoint i64 %indvars.iv297, 1 ; 2 uses
  %17 = add nuw nsw i64 %indvars.iv.next298, %10  ; 2 uses
  %18 = trunc nuw i64 %17 to i32                  ; 2 uses
  %i.ig = icmp sgt i32 %18, -1
  %i.ih = icmp slt i32 %18, %i.bb
  %or.cond282.1 = and i1 %i.ig, %i.ih
  br i1 %or.cond282.1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.1
  %i.ii = load ptr, ptr %i.gy, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.hr
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv.next298
  %i.il = load i8, ptr %i.ik, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %17
  store i8 %i.il, ptr %i.im, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.1
  %indvars.iv.next298.1 = add nuw nsw i64 %indvars.iv297, 2 ; 2 uses
  %niter408.next.1 = add nuw i64 %niter408, 2     ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split

bb.u:                                             ; preds = %bb.p
  %i.in = load i32, ptr %i.gx, align 8
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %i.in) #39
  br label %.loopexit249

.loopexit249:                                     ; preds = %._crit_edge, %.preheader248, %bb.u
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %i.d
  br i1 %exitcond311.not, label %bb.o, label %bb.p

.loopexit246:                                     ; preds = %._crit_edge267
  store i32 %.fr284, ptr %i.bn, align 4
  store ptr %i.cj, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %.loopexit246, %bb.e, %bb.o
  %i.io = phi ptr [ %i.cj, %.loopexit246 ], [ %i.bp, %bb.e ], [ %i.bp, %bb.o ] ; 4 uses
  %i.ip = phi i32 [ %.fr284, %.loopexit246 ], [ %.promoted, %bb.e ], [ %.promoted, %bb.o ] ; 2 uses
  %i.iq = icmp sgt i32 %i.bb, 2
  %i.ir = icmp sgt i32 %i.ip, 2
  %or.cond6 = and i1 %i.iq, %i.ir
  %i.is = mul i32 %i.ip, %i.bb                    ; 6 uses
  br i1 %or.cond6, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.v
  %i.it = add nsw i32 %i.is, -1                   ; 2 uses
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.iu ; 3 uses
  store i8 -1, ptr %i.iv, align 1
  %i.iw = getelementptr i8, ptr %i.iv, i64 -1
  store i8 -1, ptr %i.iw, align 1
  %i.ix = getelementptr i8, ptr %i.iv, i64 -2
  store i8 -1, ptr %i.ix, align 1
  %i.iy = sub nsw i32 %i.it, %i.bb                ; 2 uses
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds i8, ptr %i.io, i64 %i.iz ; 3 uses
  store i8 -1, ptr %i.ja, align 1
  %i.jb = getelementptr i8, ptr %i.ja, i64 -1
  store i8 -1, ptr %i.jb, align 1
  %i.jc = getelementptr i8, ptr %i.ja, i64 -2
  store i8 -1, ptr %i.jc, align 1
  %i.jd = sub nsw i32 %i.iy, %i.bb
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %i.io, i64 %i.je ; 3 uses
  store i8 -1, ptr %i.jf, align 1
  %i.jg = getelementptr i8, ptr %i.jf, i64 -1
  store i8 -1, ptr %i.jg, align 1
  %i.jh = getelementptr i8, ptr %i.jf, i64 -2
  store i8 -1, ptr %i.jh, align 1
  %.pre332.pre = load ptr, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %.loopexit.loopexit
  %.pre332 = phi ptr [ %.pre332.pre, %.loopexit.loopexit ], [ %i.io, %bb.v ] ; 10 uses
  %i.ji = sext i32 %i.is to i64
  %i.jj = shl nsw i64 %i.ji, 1
  %i.jk = tail call noalias ptr @malloc(i64 noundef %i.jj) #42 ; 11 uses
  %i.jl = icmp sgt i32 %i.is, 0
  br i1 %i.jl, label %iter.check, label %._crit_edge281

iter.check:                                       ; preds = %.loopexit
  %wide.trip.count328 = zext nneg i32 %i.is to i64 ; 10 uses
  %min.iters.check368 = icmp ult i32 %i.is, 4
  br i1 %min.iters.check368, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jm = shl nuw nsw i64 %wide.trip.count328, 1
  %scevgep = getelementptr i8, ptr %i.jk, i64 %i.jm
  %scevgep366 = getelementptr i8, ptr %.pre332, i64 %wide.trip.count328
  %bound0 = icmp ult ptr %i.jk, %scevgep366
  %bound1 = icmp ult ptr %.pre332, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check369 = icmp ult i32 %i.is, 16
  br i1 %min.iters.check369, label %vec.epilog.ph, label %vector.ph370

vector.ph370:                                     ; preds = %vector.main.loop.iter.check
  %i.jn = and i64 %wide.trip.count328, 12
  %n.vec371 = and i64 %wide.trip.count328, 2147483632 ; 5 uses
  %i.jo = shl nuw nsw i64 %n.vec371, 1
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next376, %vector.body372 ] ; 3 uses
  %i.jp = shl nuw i64 %index373, 1                ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jp
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %.pre332, i64 %index373 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %wide.load = load <8 x i8>, ptr %i.jt, align 1, !alias.scope !52
  %wide.load374 = load <8 x i8>, ptr %i.ju, align 1, !alias.scope !52
  %interleaved.vec = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.jq, align 1, !alias.scope !55, !noalias !52
  %interleaved.vec375 = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load374, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec375, ptr %i.js, align 1, !alias.scope !55, !noalias !52
  %index.next376 = add nuw i64 %index373, 16      ; 2 uses
  %i.jv = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.jv, label %middle.block377, label %vector.body372, !llvm.loop !57

middle.block377:                                  ; preds = %vector.body372
  %cmp.n378 = icmp eq i64 %n.vec371, %wide.trip.count328
  br i1 %cmp.n378, label %._crit_edge281, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block377
  %min.epilog.iters.check = icmp eq i64 %i.jn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec371, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec380 = and i64 %wide.trip.count328, 2147483644 ; 4 uses
  %i.jw = shl nuw nsw i64 %n.vec380, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index381 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next384, %vec.epilog.vector.body ] ; 3 uses
  %i.jx = shl nuw i64 %index381, 1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %.pre332, i64 %index381
  %wide.load382 = load <4 x i8>, ptr %i.jz, align 1, !alias.scope !52
  %interleaved.vec383 = shufflevector <4 x i8> splat (i8 -1), <4 x i8> %wide.load382, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec383, ptr %i.jy, align 1, !alias.scope !55, !noalias !52
  %index.next384 = add nuw i64 %index381, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next384, %n.vec380
  br i1 %i.ka, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n385 = icmp eq i64 %n.vec380, %wide.trip.count328
  br i1 %cmp.n385, label %._crit_edge281, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv323.ph.a = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec371, %vec.epilog.iter.check ], [ %n.vec380, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv321.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.jo, %vec.epilog.iter.check ], [ %i.jw, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter409 = and i64 %wide.trip.count328, 3   ; 2 uses
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod410.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv323.prol.a = phi i64 [ %indvars.iv.next324.prol.a, %vec.epilog.scalar.ph.prol ], [ %indvars.iv323.ph.a, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv321.prol = phi i64 [ %indvars.iv.next322.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv321.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jk, i64 %indvars.iv321.prol ; 2 uses
  store i8 -1, ptr %i.kb, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %.pre332, i64 %indvars.iv323.prol.a
  %i.kd = load i8, ptr %i.kc, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 1
  store i8 %i.kd, ptr %i.ke, align 1
  %indvars.iv.next324.prol.a = add nuw nsw i64 %indvars.iv323.prol.a, 1 ; 2 uses
  %indvars.iv.next322.prol = add nuw nsw i64 %indvars.iv321.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter409
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !59

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv323.unr.a = phi i64 [ %indvars.iv323.ph.a, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next324.prol.a, %vec.epilog.scalar.ph.prol ]
  %indvars.iv321.unr = phi i64 [ %indvars.iv321.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next322.prol, %vec.epilog.scalar.ph.prol ]
  %i.kf = sub nsw i64 %indvars.iv323.ph.a, %wide.trip.count328
  %i.kg = icmp ugt i64 %i.kf, -4
  br i1 %i.kg, label %._crit_edge281, label %vec.epilog.scalar.ph

._crit_edge281:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block377, %vec.epilog.middle.block, %.loopexit
  tail call void @free(ptr noundef %.pre332) #39
  store ptr %i.jk, ptr %0, align 8
  store i32 2, ptr %i.bq, align 4
  store ptr %i.f, ptr %2, align 8
  br label %bb.w

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv323.a = phi i64 [ %indvars.iv.next324.3.a, %vec.epilog.scalar.ph ], [ %indvars.iv323.unr.a, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv321 = phi i64 [ %indvars.iv.next322.3, %vec.epilog.scalar.ph ], [ %indvars.iv321.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jk, i64 %indvars.iv321 ; 2 uses
  store i8 -1, ptr %i.kh, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre332, i64 %indvars.iv323.a
  %i.kj = load i8, ptr %i.ki, align 1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  store i8 %i.kj, ptr %i.kk, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %indvars.iv321 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  store i8 -1, ptr %i.km, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre332, i64 %indvars.iv323.a
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  %i.kp = load i8, ptr %i.ko, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 3
  store i8 %i.kp, ptr %i.kq, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jk, i64 %indvars.iv321 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i8 -1, ptr %i.ks, align 1
  %i.kt = getelementptr inbounds nuw i8, ptr %.pre332, i64 %indvars.iv323.a
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.kv = load i8, ptr %i.ku, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 5
  store i8 %i.kv, ptr %i.kw, align 1
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jk, i64 %indvars.iv321 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 6
  store i8 -1, ptr %i.ky, align 1
end_hunk_6
begin_hunk_7_@TextInsert:bb.a
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.prol
  store i8 %i.aa, ptr %i.ab, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !68

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.preheader45, label %.lr.ph

.preheader45:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader46
  %i.ae = icmp sgt i32 %.0.i41, 0
  br i1 %i.ae, label %iter.check89, label %.preheader

iter.check89:                                     ; preds = %.preheader45
  %i.af = add nsw i32 %.0.i41, %2
  %i.ag = sext i32 %2 to i64                      ; 10 uses
  %i.ah = sext i32 %i.af to i64                   ; 2 uses
  %i.ai = add nsw i64 %i.ag, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 %i.ah)
  %i.aj = sub i64 %smax, %i.ag                    ; 7 uses
  %min.iters.check75 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check75, label %.lr.ph49.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %iter.check89
  %i.ak = add i64 %i.ag, ptrtoaddr (ptr @TextInsert.buffer to i64)
  %i.al = sub i64 %i.a, %i.ak
  %diff.check74 = icmp ugt i64 %i.al, -32
  br i1 %diff.check74, label %.lr.ph49.preheader, label %vector.main.loop.iter.check76

vector.main.loop.iter.check76:                    ; preds = %vector.memcheck73
  %min.iters.check77 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check77, label %vec.epilog.ph93, label %vector.ph78

vector.ph78:                                      ; preds = %vector.main.loop.iter.check76
  %i.am = and i64 %i.aj, 24
  %n.vec79 = and i64 %i.aj, -32                   ; 4 uses
  %i.an = add i64 %n.vec79, %i.ag
  %invariant.gep = getelementptr i8, ptr @TextInsert.buffer, i64 %i.ag
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next84, %vector.body80 ] ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %index81 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load82 = load <16 x i8>, ptr %i.ao, align 1
  %wide.load83 = load <16 x i8>, ptr %i.ap, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index81 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load82, ptr %gep, align 1
  store <16 x i8> %wide.load83, ptr %i.aq, align 1
  %index.next84 = add nuw i64 %index81, 32        ; 2 uses
  %i.ar = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.ar, label %middle.block85, label %vector.body80, !llvm.loop !69

middle.block85:                                   ; preds = %vector.body80
  %cmp.n86 = icmp eq i64 %i.aj, %n.vec79
  br i1 %cmp.n86, label %.preheader, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block85
  %min.epilog.iters.check92 = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check92, label %.lr.ph49.preheader, label %vec.epilog.ph93, !prof !31

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check76, %vec.epilog.iter.check91
  %vec.epilog.resume.val87 = phi i64 [ %n.vec79, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check76 ]
  %n.vec94 = and i64 %i.aj, -8                    ; 3 uses
  %i.as = add i64 %n.vec94, %i.ag
  %invariant.gep134 = getelementptr i8, ptr @TextInsert.buffer, i64 %i.ag
  br label %vec.epilog.vector.body95

vec.epilog.vector.body95:                         ; preds = %vec.epilog.vector.body95, %vec.epilog.ph93
  %index96 = phi i64 [ %vec.epilog.resume.val87, %vec.epilog.ph93 ], [ %index.next98, %vec.epilog.vector.body95 ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %1, i64 %index96
  %wide.load97 = load <8 x i8>, ptr %i.at, align 1
  %gep135 = getelementptr i8, ptr %invariant.gep134, i64 %index96
  store <8 x i8> %wide.load97, ptr %gep135, align 1
  %index.next98 = add nuw i64 %index96, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.au, label %vec.epilog.middle.block99, label %vec.epilog.vector.body95, !llvm.loop !70

vec.epilog.middle.block99:                        ; preds = %vec.epilog.vector.body95
  %cmp.n100 = icmp eq i64 %i.aj, %n.vec94
  br i1 %cmp.n100, label %.preheader, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %vector.memcheck73, %iter.check89, %vec.epilog.iter.check91, %vec.epilog.middle.block99
  %indvars.iv53.ph = phi i64 [ %i.ag, %iter.check89 ], [ %i.ag, %vector.memcheck73 ], [ %i.an, %vec.epilog.iter.check91 ], [ %i.as, %vec.epilog.middle.block99 ]
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv
  store i8 %i.aw, ptr %i.ax, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next
  store i8 %i.az, ptr %i.ba, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next.1
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next.2
  store i8 %i.bf, ptr %i.bg, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader45, label %.lr.ph, !llvm.loop !71

.preheader:                                       ; preds = %.lr.ph49, %middle.block85, %vec.epilog.middle.block99, %.preheader45
  %i.bh = icmp slt i32 %2, %.0.i
  br i1 %i.bh, label %iter.check119, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.m to i64
  br label %._crit_edge

iter.check119:                                    ; preds = %.preheader
  %i.bi = sext i32 %indvars.iv57 to i64           ; 7 uses
  %i.bj = sext i32 %i.m to i64                    ; 5 uses
  %i.bk = add nsw i64 %i.bi, 1
  %smax104 = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 %i.bj)
  %i.bl = sub i64 %smax104, %i.bi                 ; 7 uses
  %min.iters.check105 = icmp ult i64 %i.bl, 8
  %i.bm = sub i64 add (i64 ptrtoaddr (ptr @TextInsert.buffer to i64), i64 -1), %i.b
  %diff.check103 = icmp ult i64 %i.bm, 31
  %or.cond133 = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond133, label %.lr.ph51.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %iter.check119
  %min.iters.check107 = icmp ult i64 %i.bl, 32
  br i1 %min.iters.check107, label %vec.epilog.ph123, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.bn = and i64 %i.bl, 24
  %n.vec109 = and i64 %i.bl, -32                  ; 4 uses
  %i.bo = add i64 %n.vec109, %i.bi
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.bp = add i64 %index111, %i.bi                ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load112 = load <16 x i8>, ptr %i.bq, align 1
  %wide.load113 = load <16 x i8>, ptr %i.br, align 1
  %i.bs = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %i.bp ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <16 x i8> %wide.load112, ptr %i.bs, align 1
  store <16 x i8> %wide.load113, ptr %i.bt, align 1
  %index.next114 = add nuw i64 %index111, 32      ; 2 uses
  %i.bu = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bu, label %middle.block115, label %vector.body110, !llvm.loop !72

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.bl, %n.vec109
  br i1 %cmp.n116, label %._crit_edge, label %vec.epilog.iter.check121

vec.epilog.iter.check121:                         ; preds = %middle.block115
  %min.epilog.iters.check122 = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check122, label %.lr.ph51.preheader, label %vec.epilog.ph123, !prof !31

vec.epilog.ph123:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check121
  %vec.epilog.resume.val117 = phi i64 [ %n.vec109, %vec.epilog.iter.check121 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec124 = and i64 %i.bl, -8                   ; 3 uses
  %i.bv = add i64 %n.vec124, %i.bi
  br label %vec.epilog.vector.body125

vec.epilog.vector.body125:                        ; preds = %vec.epilog.vector.body125, %vec.epilog.ph123
  %index126 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph123 ], [ %index.next128, %vec.epilog.vector.body125 ] ; 2 uses
  %i.bw = add i64 %index126, %i.bi                ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.bw
  %wide.load127 = load <8 x i8>, ptr %i.bx, align 1
  %i.by = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %i.bw
  store <8 x i8> %wide.load127, ptr %i.by, align 1
  %index.next128 = add nuw i64 %index126, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.bz, label %vec.epilog.middle.block129, label %vec.epilog.vector.body125, !llvm.loop !73

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body125
  %cmp.n130 = icmp eq i64 %i.bl, %n.vec124
  br i1 %cmp.n130, label %._crit_edge, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %iter.check119, %vec.epilog.iter.check121, %vec.epilog.middle.block129
  %indvars.iv59.ph = phi i64 [ %i.bi, %iter.check119 ], [ %i.bo, %vec.epilog.iter.check121 ], [ %i.bv, %vec.epilog.middle.block129 ]
  br label %.lr.ph51

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %.lr.ph49 ], [ %indvars.iv53.ph, %.lr.ph49.preheader ] ; 3 uses
  %i.ca = sub nuw nsw i64 %indvars.iv53, %i.ag
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %indvars.iv53
  store i8 %i.cc, ptr %i.cd, align 1
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.ce = icmp slt i64 %indvars.iv.next54, %i.ah
  br i1 %i.ce, label %.lr.ph49, label %.preheader, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph51, %middle.block115, %vec.epilog.middle.block129, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.bj, %middle.block115 ], [ %i.bj, %vec.epilog.middle.block129 ], [ %i.bj, %.lr.ph51 ]
  %i.cf = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %.pre-phi
  store i8 0, ptr %i.cf, align 1
  br label %bb.c

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.lr.ph51
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph51 ], [ %indvars.iv59.ph, %.lr.ph51.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %0, i64 %indvars.iv59
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %indvars.iv59
  store i8 %i.ch, ptr %i.ci, align 1
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.cj = icmp slt i64 %indvars.iv.next60, %i.bj
  br i1 %i.cj, label %.lr.ph51, label %._crit_edge, !llvm.loop !75

bb.b:                                             ; preds = %TextLength.exit44
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.67) #39
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret ptr @TextInsert.buffer
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @TextInsertAlloc(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.f, %.preheader.i ], [ 0, %bb.a ] ; 4 uses
  %i.c = zext i32 %.0.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %.not4.i = icmp eq i8 %i.e, 0
  %i.f = add i32 %.0.i, 1
  br i1 %.not4.i, label %.preheader.i46, label %.preheader.i

.preheader.i46:                                   ; preds = %.preheader.i, %.preheader.i46
  %.0.i47 = phi i32 [ %i.j, %.preheader.i46 ], [ 0, %.preheader.i ] ; 7 uses
  %i.g = zext i32 %.0.i47 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %.not4.i48 = icmp eq i8 %i.i, 0
  %i.j = add i32 %.0.i47, 1
  br i1 %.not4.i48, label %TextLength.exit50, label %.preheader.i46

TextLength.exit50:                                ; preds = %.preheader.i46
  %i.k = add nsw i32 %.0.i47, %.0.i               ; 3 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #42 ; 5 uses
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader51

.lr.ph.preheader:                                 ; preds = %TextLength.exit50
  %i.p = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %0, i64 %i.p, i1 false)
  br label %.preheader51

.preheader51:                                     ; preds = %.lr.ph.preheader, %TextLength.exit50
  %i.q = add i32 %.0.i47, %2                      ; 2 uses
  %i.r = icmp sgt i32 %.0.i47, 0
  br i1 %i.r, label %.lr.ph54.preheader, label %.preheader

.lr.ph54.preheader:                               ; preds = %.preheader51
  %i.s = sext i32 %2 to i64
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.s
  %i.t = xor i32 %2, -1
  %i.u = add i32 %2, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.u)
  %i.v = add i32 %smax, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.x, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph54.preheader, %.preheader51
  %i.y = icmp slt i32 %2, %.0.i
  br i1 %i.y, label %.lr.ph56.preheader, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %.preheader
  %i.z = sext i32 %i.q to i64                     ; 2 uses
  %scevgep59 = getelementptr i8, ptr %i.n, i64 %i.z
  %scevgep60 = getelementptr i8, ptr %0, i64 %i.z
  %i.aa = add nsw i32 %2, 1
  %i.ab = add i32 %.0.i47, %i.aa
  %smax61 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %i.ab)
  %i.ac = xor i32 %2, -1
  %i.ad = sub i32 %i.ac, %.0.i47
  %i.ae = add i32 %smax61, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep59, ptr noundef nonnull align 1 dereferenceable(1) %scevgep60, i64 %i.ag, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph56.preheader, %.preheader
  %i.ah = sext i32 %i.k to i64
  %i.ai = getelementptr inbounds i8, ptr %i.n, i64 %i.ah
  store i8 0, ptr %i.ai, align 1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.039 = phi ptr [ %i.n, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @TextJoin(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #23 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextJoin.buffer, i8 0, i64 1024, i1 false)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %TextLength.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.d, %.preheader.i ], [ 0, %bb.a ] ; 5 uses
  %i.a = zext i32 %.0.i to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %.not4.i = icmp eq i8 %i.c, 0
  %i.d = add i32 %.0.i, 1
  br i1 %.not4.i, label %TextLength.exit, label %.preheader.i

TextLength.exit:                                  ; preds = %.preheader.i
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

TextLength.exit.thread:                           ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %TextLength.exit
  %i.g = icmp sgt i32 %.0.i, 0
  %i.h = zext nneg i32 %.0.i to i64               ; 2 uses
  br i1 %i.g, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %TextLength.exit.thread, %.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.i = add nsw i32 %1, -1
  %i.j = zext nneg i32 %i.i to i64
  %wide.trip.count46 = zext nneg i32 %1 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.02539.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.1.us, %bb.c ] ; 2 uses
  %.02638.us = phi ptr [ @TextJoin.buffer, %.lr.ph.split.us.preheader ], [ %.127.us, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i32.us = icmp eq ptr %i.l, null
  br i1 %.not.i32.us, label %TextLength.exit37.us, label %.preheader.i33.us

.preheader.i33.us:                                ; preds = %.lr.ph.split.us, %.preheader.i33.us
  %.0.i34.us = phi i32 [ %i.p, %.preheader.i33.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.m = zext i32 %.0.i34.us to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %.not4.i35.us = icmp eq i8 %i.o, 0
  %i.p = add i32 %.0.i34.us, 1
  br i1 %.not4.i35.us, label %TextLength.exit37.us, label %.preheader.i33.us

TextLength.exit37.us:                             ; preds = %.preheader.i33.us, %.lr.ph.split.us
  %.1.i36.us = phi i32 [ 0, %.lr.ph.split.us ], [ %.0.i34.us, %.preheader.i33.us ] ; 2 uses
  %i.q = add nsw i32 %.1.i36.us, %.02539.us       ; 2 uses
  %i.r = icmp slt i32 %i.q, 1024
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %TextLength.exit37.us
  %i.s = sext i32 %.1.i36.us to i64               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02638.us, ptr align 1 %i.l, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds i8, ptr %.02638.us, i64 %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %TextLength.exit37.us
  %.127.us = phi ptr [ %i.t, %bb.b ], [ %.02638.us, %TextLength.exit37.us ]
  %.1.us = phi i32 [ %i.q, %bb.b ], [ %.02539.us, %TextLength.exit37.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.f, %bb.c, %TextLength.exit.thread, %TextLength.exit
  ret ptr @TextJoin.buffer

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.f
  %indvars.iv43 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next44, %bb.f ] ; 3 uses
  %.02539 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.1, %bb.f ] ; 2 uses
end_hunk_7
begin_hunk_8_@stbtt__cff_get_index:bb.a
  %i.aj = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 8
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ah, %i.an
  br label %stbtt__buf_get8.exit.i18

stbtt__buf_get8.exit.i18:                         ; preds = %bb.f, %.lr.ph.i
  %i.ap = phi i32 [ %i.aj, %bb.f ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  %.0.i.i19 = phi i32 [ %i.ao, %bb.f ], [ %i.ah, %.lr.ph.i ]
  %i.aq = shl i32 %.0.i.i19, 8                    ; 2 uses
  %.not.i.i17.1 = icmp slt i32 %i.ap, %i.d
  br i1 %.not.i.i17.1, label %bb.g, label %stbtt__buf_get8.exit.i18.1

bb.g:                                             ; preds = %stbtt__buf_get8.exit.i18
  %i.ar = load ptr, ptr %0, align 8
  %i.as = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.as, ptr %i.a, align 8
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.aq, %i.aw
  br label %stbtt__buf_get8.exit.i18.1

stbtt__buf_get8.exit.i18.1:                       ; preds = %bb.g, %stbtt__buf_get8.exit.i18
  %i.ay = phi i32 [ %i.as, %bb.g ], [ %i.ap, %stbtt__buf_get8.exit.i18 ] ; 3 uses
  %.0.i.i19.1 = phi i32 [ %i.ax, %bb.g ], [ %i.aq, %stbtt__buf_get8.exit.i18 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit21.loopexit.unr-lcssa, label %.lr.ph.i

stbtt__buf_get.exit21.loopexit.unr-lcssa:         ; preds = %stbtt__buf_get8.exit.i18.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit21.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbtt__buf_get.exit21.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.ay, %stbtt__buf_get.exit21.loopexit.unr-lcssa ] ; 4 uses
  %.056.i16.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i19.1, %stbtt__buf_get.exit21.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %.0.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.az = shl i32 %.056.i16.epil.init, 8          ; 2 uses
  %.not.i.i17.epil = icmp slt i32 %.epil.init, %i.d
  br i1 %.not.i.i17.epil, label %bb.h, label %stbtt__buf_get.exit21.loopexit

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.bb, ptr %i.a, align 8
  %i.bc = sext i32 %.epil.init to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.az, %i.bf
  br label %stbtt__buf_get.exit21.loopexit

stbtt__buf_get.exit21.loopexit:                   ; preds = %.lr.ph.i.epil.preheader, %bb.h, %stbtt__buf_get.exit21.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ay, %stbtt__buf_get.exit21.loopexit.unr-lcssa ], [ %i.bb, %bb.h ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %.0.i.i19.lcssa = phi i32 [ %.0.i.i19.1, %stbtt__buf_get.exit21.loopexit.unr-lcssa ], [ %i.bg, %bb.h ], [ %i.az, %.lr.ph.i.epil.preheader ]
  %i.bh = add i32 %.0.i.i19.lcssa, -1
  br label %stbtt__buf_get.exit21

stbtt__buf_get.exit21:                            ; preds = %stbtt__buf_get.exit21.loopexit, %stbtt__buf_get8.exit
  %i.bi = phi i32 [ %..i.i, %stbtt__buf_get8.exit ], [ %.lcssa, %stbtt__buf_get.exit21.loopexit ]
  %.05.lcssa.i = phi i32 [ -1, %stbtt__buf_get8.exit ], [ %i.bh, %stbtt__buf_get.exit21.loopexit ]
  %i.bj = add nsw i32 %.05.lcssa.i, %i.bi         ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.d)
  %..i.i22 = select i1 %i.bk, i32 %i.d, i32 %i.bl ; 2 uses
  store i32 %..i.i22, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %stbtt__buf_get.exit21, %stbtt__buf_get8.exit.i.1
  %i.bm = phi i32 [ %..i.i22, %stbtt__buf_get.exit21 ], [ %i.t, %stbtt__buf_get8.exit.i.1 ] ; 2 uses
  %i.bn = sub nsw i32 %i.bm, %i.b                 ; 2 uses
  %i.bo = or i32 %i.bn, %i.b
  %or.cond.not.i = icmp slt i32 %i.bo, 0
  %i.bp = icmp sgt i32 %i.bm, %i.d
  %or.cond = or i1 %or.cond.not.i, %i.bp
  br i1 %or.cond, label %stbtt__buf_range.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %0, align 8
  %i.br = zext nneg i32 %i.b to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = shl nuw nsw i64 %i.bt, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %bb.i, %bb.j
  %.sroa.0.0.i = phi ptr [ null, %bb.i ], [ %i.bs, %bb.j ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.i ], [ %i.bu, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %1, i32 noundef %2) unnamed_addr #16 {
bb.a:
  %.sroa.18.8.extract.shift = lshr i64 %1, 32
  %.sroa.18.8.extract.trunc = trunc nuw i64 %.sroa.18.8.extract.shift to i32 ; 14 uses
  %i.a = tail call i32 @llvm.smin.i32(i32 %.sroa.18.8.extract.trunc, i32 0) ; 2 uses
  %.not.i.i = icmp sgt i32 %.sroa.18.8.extract.trunc, 0
  br i1 %.not.i.i, label %bb.b, label %stbtt__buf_get8.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi i32 [ 1, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %.sroa.6.1, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i.1, label %bb.c, label %stbtt__buf_get8.exit.i.1

bb.c:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.g = add nsw i32 %.sroa.6.1, 1
  %i.h = sext i32 %.sroa.6.1 to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %.0.i.i, %i.k
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.c, %stbtt__buf_get8.exit.i
  %.sroa.6.1.1 = phi i32 [ %i.g, %bb.c ], [ %.sroa.6.1, %stbtt__buf_get8.exit.i ] ; 3 uses
  %.0.i.i.1 = phi i32 [ %i.l, %bb.c ], [ %.0.i.i, %stbtt__buf_get8.exit.i ]
  %.not.i = icmp slt i32 %.sroa.6.1.1, %.sroa.18.8.extract.trunc
  br i1 %.not.i, label %stbtt__buf_get8.exit, label %stbtt__buf_get.exit28

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_get8.exit.i.1
  %i.m = sext i32 %.sroa.6.1.1 to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1               ; 4 uses
  %i.p = zext i8 %i.o to i32                      ; 9 uses
  %.not.i9 = icmp eq i8 %i.o, 0
  br i1 %.not.i9, label %stbtt__buf_get.exit28, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %stbtt__buf_get8.exit
  %i.q = add nsw i32 %.sroa.6.1.1, 1
  %i.r = mul nsw i32 %2, %i.p
  %i.s = add nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.sroa.18.8.extract.trunc)
  %..i.i = select i1 %i.t, i32 %.sroa.18.8.extract.trunc, i32 %i.u ; 4 uses
  %i.v = add nsw i32 %i.p, -1                     ; 2 uses
  %xtraiter = and i32 %i.p, 1
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.p, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %stbtt__buf_get8.exit.i14.1, %.lr.ph.i.preheader.new
  %.sroa.6.3 = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %.sroa.6.4.1, %stbtt__buf_get8.exit.i14.1 ]
  %i.x = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.an, %stbtt__buf_get8.exit.i14.1 ] ; 4 uses
  %.056.i12 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i15.1, %stbtt__buf_get8.exit.i14.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i14.1 ]
  %i.y = shl i32 %.056.i12, 8                     ; 2 uses
  %.not.i.i13 = icmp slt i32 %i.x, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13, label %bb.d, label %stbtt__buf_get8.exit.i14

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = add nsw i32 %i.x, 1                      ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.y, %i.ad
  br label %stbtt__buf_get8.exit.i14

stbtt__buf_get8.exit.i14:                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.6.4 = phi i32 [ %i.z, %bb.d ], [ %.sroa.6.3, %.lr.ph.i ]
  %i.af = phi i32 [ %i.z, %bb.d ], [ %i.x, %.lr.ph.i ] ; 4 uses
  %.0.i.i15 = phi i32 [ %i.ae, %bb.d ], [ %i.y, %.lr.ph.i ]
  %i.ag = shl i32 %.0.i.i15, 8                    ; 2 uses
  %.not.i.i13.1 = icmp slt i32 %i.af, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13.1, label %bb.e, label %stbtt__buf_get8.exit.i14.1

bb.e:                                             ; preds = %stbtt__buf_get8.exit.i14
  %i.ah = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ag, %i.al
  br label %stbtt__buf_get8.exit.i14.1

stbtt__buf_get8.exit.i14.1:                       ; preds = %bb.e, %stbtt__buf_get8.exit.i14
  %.sroa.6.4.1 = phi i32 [ %i.ah, %bb.e ], [ %.sroa.6.4, %stbtt__buf_get8.exit.i14 ] ; 3 uses
  %i.an = phi i32 [ %i.ah, %bb.e ], [ %i.af, %stbtt__buf_get8.exit.i14 ] ; 2 uses
  %.0.i.i15.1 = phi i32 [ %i.am, %bb.e ], [ %i.ag, %stbtt__buf_get8.exit.i14 ] ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i19.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph.i19.preheader.unr-lcssa:                   ; preds = %stbtt__buf_get8.exit.i14.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i19.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i19.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.6.3.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %.sroa.6.4.1, %.lr.ph.i19.preheader.unr-lcssa ]
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i19.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i15.1, %.lr.ph.i19.preheader.unr-lcssa ]
  %lcmp.mod58 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ao = shl i32 %.056.i12.epil.init, 8          ; 2 uses
  %.not.i.i13.epil = icmp slt i32 %.epil.init, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13.epil, label %bb.f, label %.lr.ph.i19.preheader

bb.f:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ap = add nsw i32 %.epil.init, 1
  %i.aq = sext i32 %.epil.init to i64
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ao, %i.at
  br label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %.lr.ph.i.epil.preheader, %bb.f, %.lr.ph.i19.preheader.unr-lcssa
  %.sroa.6.4.lcssa = phi i32 [ %.sroa.6.4.1, %.lr.ph.i19.preheader.unr-lcssa ], [ %i.ap, %bb.f ], [ %.sroa.6.3.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0.i.i15.lcssa = phi i32 [ %.0.i.i15.1, %.lr.ph.i19.preheader.unr-lcssa ], [ %i.au, %bb.f ], [ %i.ao, %.lr.ph.i.epil.preheader ] ; 3 uses
  %xtraiter59 = and i32 %i.p, 1
  %i.av = icmp eq i32 %i.v, 0
  br i1 %i.av, label %.lr.ph.i19.epil.preheader, label %.lr.ph.i19.preheader.new

.lr.ph.i19.preheader.new:                         ; preds = %.lr.ph.i19.preheader
  %unroll_iter65 = and i32 %i.p, 254
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %stbtt__buf_get8.exit.i24.1, %.lr.ph.i19.preheader.new
  %i.aw = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i19.preheader.new ], [ %i.bm, %stbtt__buf_get8.exit.i24.1 ] ; 4 uses
  %.056.i22 = phi i32 [ 0, %.lr.ph.i19.preheader.new ], [ %.0.i.i25.1, %stbtt__buf_get8.exit.i24.1 ]
  %niter66 = phi i32 [ 0, %.lr.ph.i19.preheader.new ], [ %niter66.next.1, %stbtt__buf_get8.exit.i24.1 ]
  %i.ax = shl i32 %.056.i22, 8                    ; 2 uses
  %.not.i.i23 = icmp slt i32 %i.aw, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23, label %bb.g, label %stbtt__buf_get8.exit.i24

bb.g:                                             ; preds = %.lr.ph.i19
  %i.ay = add nsw i32 %i.aw, 1
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ax, %i.bc
  br label %stbtt__buf_get8.exit.i24

stbtt__buf_get8.exit.i24:                         ; preds = %bb.g, %.lr.ph.i19
  %i.be = phi i32 [ %i.ay, %bb.g ], [ %i.aw, %.lr.ph.i19 ] ; 4 uses
  %.0.i.i25 = phi i32 [ %i.bd, %bb.g ], [ %i.ax, %.lr.ph.i19 ]
  %i.bf = shl i32 %.0.i.i25, 8                    ; 2 uses
  %.not.i.i23.1 = icmp slt i32 %i.be, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23.1, label %bb.h, label %stbtt__buf_get8.exit.i24.1

bb.h:                                             ; preds = %stbtt__buf_get8.exit.i24
  %i.bg = add nsw i32 %i.be, 1
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bf, %i.bk
  br label %stbtt__buf_get8.exit.i24.1

stbtt__buf_get8.exit.i24.1:                       ; preds = %bb.h, %stbtt__buf_get8.exit.i24
  %i.bm = phi i32 [ %i.bg, %bb.h ], [ %i.be, %stbtt__buf_get8.exit.i24 ] ; 2 uses
  %.0.i.i25.1 = phi i32 [ %i.bl, %bb.h ], [ %i.bf, %stbtt__buf_get8.exit.i24 ] ; 3 uses
  %niter66.next.1 = add nuw i32 %niter66, 2       ; 2 uses
  %niter66.ncmp.1 = icmp eq i32 %niter66.next.1, %unroll_iter65
  br i1 %niter66.ncmp.1, label %stbtt__buf_get.exit28.loopexit.unr-lcssa, label %.lr.ph.i19

stbtt__buf_get.exit28.loopexit.unr-lcssa:         ; preds = %stbtt__buf_get8.exit.i24.1
  %lcmp.mod62.not = icmp eq i32 %xtraiter59, 0
  br i1 %lcmp.mod62.not, label %stbtt__buf_get.exit28, label %.lr.ph.i19.epil.preheader

.lr.ph.i19.epil.preheader:                        ; preds = %stbtt__buf_get.exit28.loopexit.unr-lcssa, %.lr.ph.i19.preheader
  %.epil.init61 = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i19.preheader ], [ %i.bm, %stbtt__buf_get.exit28.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.epil.init = phi i32 [ 0, %.lr.ph.i19.preheader ], [ %.0.i.i25.1, %stbtt__buf_get.exit28.loopexit.unr-lcssa ]
  %lcmp.mod64 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bn = shl i32 %.056.i22.epil.init, 8          ; 2 uses
  %.not.i.i23.epil = icmp slt i32 %.epil.init61, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23.epil, label %bb.i, label %stbtt__buf_get.exit28

bb.i:                                             ; preds = %.lr.ph.i19.epil.preheader
  %i.bo = sext i32 %.epil.init61 to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bn, %i.br
  br label %stbtt__buf_get.exit28

stbtt__buf_get.exit28:                            ; preds = %stbtt__buf_get.exit28.loopexit.unr-lcssa, %bb.i, %.lr.ph.i19.epil.preheader, %stbtt__buf_get8.exit.i.1, %stbtt__buf_get8.exit
  %.0.i55 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %i.p, %.lr.ph.i19.epil.preheader ], [ %i.p, %bb.i ], [ %i.p, %stbtt__buf_get.exit28.loopexit.unr-lcssa ]
  %.05.lcssa.i42 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %.0.i.i15.lcssa, %.lr.ph.i19.epil.preheader ], [ %.0.i.i15.lcssa, %bb.i ], [ %.0.i.i15.lcssa, %stbtt__buf_get.exit28.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %.0.i.i25.1, %stbtt__buf_get.exit28.loopexit.unr-lcssa ], [ %i.bs, %bb.i ], [ %i.bn, %.lr.ph.i19.epil.preheader ]
  %i.bt = add nuw nsw i32 %.0.i.i.1, 1
  %i.bu = mul nuw nsw i32 %.0.i55, %i.bt
  %i.bv = add nuw nsw i32 %i.bu, 2
  %i.bw = add nsw i32 %i.bv, %.05.lcssa.i42       ; 4 uses
  %i.bx = sub nsw i32 %.05.lcssa.i27, %.05.lcssa.i42 ; 3 uses
  %i.by = or i32 %i.bx, %i.bw
  %or.cond.not.i = icmp sgt i32 %i.by, -1
  br i1 %or.cond.not.i, label %bb.j, label %stbtt__buf_range.exit

bb.j:                                             ; preds = %stbtt__buf_get.exit28
  %i.bz = icmp sgt i32 %i.bw, %.sroa.18.8.extract.trunc
  %i.ca = sub nsw i32 %.sroa.18.8.extract.trunc, %i.bw
  %i.cb = icmp sgt i32 %i.bx, %i.ca
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %stbtt__buf_range.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = zext nneg i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = zext nneg i32 %i.bx to i64
  %i.cf = shl nuw nsw i64 %i.ce, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %stbtt__buf_get.exit28, %bb.j, %bb.k
  %.sroa.0.0.i = phi ptr [ null, %stbtt__buf_get.exit28 ], [ null, %bb.j ], [ %i.cd, %bb.k ]
  %.sroa.5.0.i = phi i64 [ 0, %stbtt__buf_get.exit28 ], [ 0, %bb.j ], [ %i.cf, %bb.k ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbtt__dict_get_ints(ptr nofree noundef nonnull captures(none) initializes((8, 12)) %0, i32 noundef range(i32 17, 294) %1, i32 noundef range(i32 1, 3) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #33 {
bb.a:
  %4 = alloca %struct.stbtt__buf, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 17 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i32 %i.c, ptr %i.d, align 8
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.preheader.i, label %._crit_edge

.preheader.i:                                     ; preds = %bb.a, %.thread38.i
  %.promoted5759.i = phi i32 [ %.promoted55.i, %.thread38.i ], [ %i.c, %bb.a ] ; 7 uses
  %.not.i52.i = icmp slt i32 %.promoted5759.i, %i.b
  br i1 %.not.i52.i, label %stbtt__buf_peek8.exit.lr.ph.i, label %.thread38.i

stbtt__buf_peek8.exit.lr.ph.i:                    ; preds = %.preheader.i
  %i.f = load ptr, ptr %0, align 8                ; 4 uses
  br label %stbtt__buf_peek8.exit.i

stbtt__buf_peek8.exit.i:                          ; preds = %stbtt__cff_skip_operand.exit.i, %stbtt__buf_peek8.exit.lr.ph.i
  %spec.select454853.i = phi i32 [ %.promoted5759.i, %stbtt__buf_peek8.exit.lr.ph.i ], [ %spec.select4549.i, %stbtt__cff_skip_operand.exit.i ] ; 11 uses
  %i.g = sext i32 %spec.select454853.i to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g ; 3 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp ugt i8 %i.i, 27
  br i1 %i.j, label %stbtt__buf_peek8.exit.i.i, label %stbtt__buf_get8.exit.i

stbtt__buf_peek8.exit.i.i:                        ; preds = %stbtt__buf_peek8.exit.i
  %i.k = icmp eq i8 %i.i, 30
  %i.l = add nsw i32 %spec.select454853.i, 1      ; 14 uses
  br i1 %i.k, label %bb.b, label %stbtt__buf_get8.exit.i34.i

bb.b:                                             ; preds = %stbtt__buf_peek8.exit.i.i
  %i.m = icmp slt i32 %spec.select454853.i, -1
  %..i.i.i.i = select i1 %i.m, i32 %i.b, i32 %i.l ; 4 uses
  store i32 %..i.i.i.i, ptr %i.d, align 8
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %..i.i.i.i, i32 %i.b)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  %exitcond.not.i.i53.not = icmp slt i32 %..i.i.i.i, %i.b
  br i1 %exitcond.not.i.i53.not, label %stbtt__buf_get8.exit.i.i.lr.ph, label %._crit_edge

stbtt__buf_get8.exit.i.i.lr.ph:                   ; preds = %bb.b
  %i.n = sext i32 %..i.i.i.i to i64
  br label %stbtt__buf_get8.exit.i.i

bb.c:                                             ; preds = %stbtt__buf_get8.exit.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge, label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %stbtt__buf_get8.exit.i.i.lr.ph, %bb.c
  %indvars.iv.i.i54 = phi i64 [ %i.n, %stbtt__buf_get8.exit.i.i.lr.ph ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i54, 1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %indvars.i, ptr %i.d, align 8
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i.i54
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = and i32 %i.q, 15
  %i.s = icmp eq i32 %i.r, 15
  %.mask.i.i = and i32 %i.q, 240
  %i.t = icmp eq i32 %.mask.i.i, 240
  %or.cond.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i, label %stbtt__cff_skip_operand.exit.i, label %bb.c

stbtt__buf_get8.exit.i34.i:                       ; preds = %stbtt__buf_peek8.exit.i.i
  store i32 %i.l, ptr %i.d, align 8
  %i.u = load i8, ptr %i.h, align 1               ; 4 uses
  %i.v = add i8 %i.u, -32
  %or.cond.i35.i = icmp ult i8 %i.v, -41
  br i1 %or.cond.i35.i, label %stbtt__cff_skip_operand.exit.i, label %bb.d

bb.d:                                             ; preds = %stbtt__buf_get8.exit.i34.i
  %or.cond3.i.i = icmp slt i8 %i.u, -5
  br i1 %or.cond3.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not.i22.i.i = icmp slt i32 %i.l, %i.b
  br i1 %.not.i22.i.i, label %bb.f, label %stbtt__cff_skip_operand.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %spec.select454853.i, 2
  br label %stbtt__cff_skip_operand.exit.sink.split.i

bb.g:                                             ; preds = %bb.d
  %or.cond5.i.i = icmp slt i8 %i.u, -1
  br i1 %or.cond5.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i25.i.i = icmp slt i32 %i.l, %i.b
  br i1 %.not.i25.i.i, label %bb.i, label %stbtt__cff_skip_operand.exit.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %spec.select454853.i, 2
  br label %stbtt__cff_skip_operand.exit.sink.split.i

bb.j:                                             ; preds = %bb.g
  switch i8 %i.u, label %stbtt__cff_skip_operand.exit.i [
    i8 28, label %stbtt__buf_get8.exit.i.i.i
    i8 29, label %stbtt__buf_get8.exit.i32.i.i
  ]

stbtt__buf_get8.exit.i.i.i:                       ; preds = %bb.j
  %.not.i.i.i.i = icmp slt i32 %i.l, %i.b         ; 2 uses
  %i.y = add nsw i32 %spec.select454853.i, 2
  %i.z = select i1 %.not.i.i.i.i, i32 %i.y, i32 %i.l ; 2 uses
  %.not.i.i.1.i.i = icmp slt i32 %i.z, %i.b       ; 2 uses
  %i.aa = or i1 %.not.i.i.i.i, %.not.i.i.1.i.i
  br i1 %i.aa, label %bb.k, label %stbtt__cff_skip_operand.exit.i

stbtt__buf_get8.exit.i32.i.i:                     ; preds = %bb.j
  %.not.i.i31.i.i = icmp slt i32 %i.l, %i.b       ; 2 uses
  %i.ab = add nsw i32 %spec.select454853.i, 2
  %i.ac = select i1 %.not.i.i31.i.i, i32 %i.ab, i32 %i.l ; 2 uses
  %.not.i.i31.1.i.i = icmp slt i32 %i.ac, %i.b    ; 2 uses
  %i.ad = zext i1 %.not.i.i31.1.i.i to i32
  %i.ae = add nsw i32 %i.ac, %i.ad                ; 2 uses
  %i.af = or i1 %.not.i.i31.i.i, %.not.i.i31.1.i.i
  %.not.i.i31.2.i.i = icmp slt i32 %i.ae, %i.b    ; 2 uses
  %i.ag = zext i1 %.not.i.i31.2.i.i to i32
  %spec.select.i = add nsw i32 %i.ae, %i.ag       ; 2 uses
  %i.ah = or i1 %i.af, %.not.i.i31.2.i.i
  %.not.i.i31.3.i.i = icmp slt i32 %spec.select.i, %i.b ; 2 uses
  %i.ai = or i1 %i.ah, %.not.i.i31.3.i.i
  br i1 %i.ai, label %bb.l, label %stbtt__cff_skip_operand.exit.i

bb.k:                                             ; preds = %stbtt__buf_get8.exit.i.i.i
  %i.aj = zext i1 %.not.i.i.1.i.i to i32
  %simplifycfg.merge.i = add nsw i32 %i.z, %i.aj
  br label %stbtt__cff_skip_operand.exit.sink.split.i

bb.l:                                             ; preds = %stbtt__buf_get8.exit.i32.i.i
  %i.ak = zext i1 %.not.i.i31.3.i.i to i32
  %spec.select45.i = add nsw i32 %spec.select.i, %i.ak
  br label %stbtt__cff_skip_operand.exit.sink.split.i

stbtt__cff_skip_operand.exit.sink.split.i:        ; preds = %bb.l, %bb.k, %bb.i, %bb.f
  %spec.select45.sink.i = phi i32 [ %spec.select45.i, %bb.l ], [ %simplifycfg.merge.i, %bb.k ], [ %i.x, %bb.i ], [ %i.w, %bb.f ] ; 2 uses
  store i32 %spec.select45.sink.i, ptr %i.d, align 8
end_hunk_8
begin_hunk_9_@stbtt_GetGlyphShape:bb.a
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.cb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %.not.i17 = icmp slt i32 %1, %i.g
  br i1 %.not.i17, label %bb.c, label %stbtt__GetGlyfOffset.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %stbtt__GetGlyfOffset.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 4 uses
  %.val28.i = load i8, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val29.i = load i8, ptr %i.u, align 1
  %i.v = zext i8 %.val28.i to i32
  %i.w = zext i8 %.val29.i to i32
  %i.x = shl nuw nsw i32 %i.v, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.val.i19 = load i8, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %i.t, i64 3
  %.val27.i = load i8, ptr %i.ab, align 1
  %i.ac = zext i8 %.val.i19 to i32
  %i.ad = zext i8 %.val27.i to i32
  %i.ae = shl nuw nsw i32 %i.ac, 9
  %i.af = shl nuw nsw i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nsw i32 %1, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i18 = phi i32 [ %i.ao, %bb.f ], [ %i.ag, %bb.e ]
  %.pn.i = phi i32 [ %i.al, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.m                  ; 2 uses
  %i.ap = icmp eq i32 %.pn.i, %.sink.i18
  br i1 %i.ap, label %stbtt__GetGlyfOffset.exit.thread, label %stbtt__GetGlyfOffset.exit

stbtt__GetGlyfOffset.exit.thread:                 ; preds = %bb.b, %bb.c, %bb.g
  store ptr null, ptr %2, align 8
  br label %stbtt__GetGlyphShapeTT.exit

stbtt__GetGlyfOffset.exit:                        ; preds = %bb.g
  store ptr null, ptr %2, align 8
  %i.aq = icmp slt i32 %.023.i, 0
  br i1 %i.aq, label %stbtt__GetGlyphShapeTT.exit, label %bb.h

bb.h:                                             ; preds = %stbtt__GetGlyfOffset.exit
  %i.ar = zext nneg i32 %.023.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar ; 4 uses
  %.val394.i = load i8, ptr %i.as, align 1
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %.val395.i = load i8, ptr %i.at, align 1
  %i.au = zext i8 %.val394.i to i16
  %i.av = shl nuw i16 %i.au, 8                    ; 2 uses
  %i.aw = zext i8 %.val395.i to i16
  %i.ax = or disjoint i16 %i.av, %i.aw            ; 2 uses
  %i.ay = icmp sgt i16 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.bf

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 10 ; 2 uses
  %i.ba = shl nuw i16 %i.ax, 1                    ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = zext i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 5 uses
  %.val372.i = load i8, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %.val373.i = load i8, ptr %i.be, align 1
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -2
  %.val370.i = load i8, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %i.bd, i64 -1
  %.val371.i = load i8, ptr %i.bg, align 1
  %i.bh = zext i8 %.val370.i to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8                ; 3 uses
  %i.bj = zext i8 %.val371.i to i32               ; 3 uses
  %i.bk = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bl = or disjoint i32 %i.bb, 1
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  %narrow.i = mul nuw nsw i32 %i.bm, 14
  %i.bn = zext nneg i32 %narrow.i to i64
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bn) #42, !inline_history !76 ; 17 uses
  %.not368.i = icmp eq ptr %i.bo, null
  br i1 %.not368.i, label %stbtt__GetGlyphShapeTT.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = zext i8 %.val372.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = zext i8 %.val373.i to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br ; 2 uses
  %i.bv = zext i16 %i.ba to i64                   ; 3 uses
  %i.bw = or disjoint i32 %i.bi, %i.bj
  %i.bx = add nuw nsw i32 %i.bw, 1
  %wide.trip.count71 = zext nneg i32 %i.bx to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv ; 3 uses
  %i.by = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bz = add nuw nsw i32 %i.by, 1                ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %xtraiter = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %i.by, 0
  br i1 %i.cb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %i.ca, 131070
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %.new
  %indvars.iv69 = phi i64 [ 0, %.new ], [ %indvars.iv.next70.1, %bb.s ] ; 3 uses
  %.0283.i42 = phi ptr [ %i.bu, %.new ], [ %.1284.i.1, %bb.s ] ; 4 uses
  %.0322.i40 = phi i8 [ 0, %.new ], [ %.1323.i.1, %bb.s ] ; 2 uses
  %.0324.i39 = phi i8 [ 0, %.new ], [ %.1325.i.1, %bb.s ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.cc = icmp eq i8 %.0322.i40, 0
  br i1 %i.cc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.0283.i42, i64 1 ; 2 uses
  %i.ce = load i8, ptr %.0283.i42, align 1        ; 3 uses
  %i.cf = and i8 %i.ce, 8
  %.not367.i = icmp eq i8 %i.cf, 0
  br i1 %.not367.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.0283.i42, i64 2
  %i.ch = load i8, ptr %i.cd, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ci = add i8 %.0322.i40, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1325.i = phi i8 [ %i.ce, %bb.m ], [ %i.ce, %bb.l ], [ %.0324.i39, %bb.n ] ; 2 uses
  %.1323.i = phi i8 [ %i.ch, %bb.m ], [ 0, %bb.l ], [ %i.ci, %bb.n ] ; 2 uses
  %.1284.i = phi ptr [ %i.cg, %bb.m ], [ %i.cd, %bb.l ], [ %.0283.i42, %bb.n ] ; 4 uses
  %gep = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69
  %i.cj = getelementptr inbounds nuw i8, ptr %gep, i64 12
  store i8 %.1325.i, ptr %i.cj, align 2
  %i.ck = icmp eq i8 %.1323.i, 0
  br i1 %i.ck, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = add i8 %.1323.i, -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %.1284.i, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.1284.i, align 1          ; 3 uses
  %i.co = and i8 %i.cn, 8
  %.not367.i.1 = icmp eq i8 %i.co, 0
  br i1 %.not367.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %.1284.i, i64 2
  %i.cq = load i8, ptr %i.cm, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1325.i.1 = phi i8 [ %i.cn, %bb.r ], [ %i.cn, %bb.q ], [ %.1325.i, %bb.p ] ; 3 uses
  %.1323.i.1 = phi i8 [ %i.cq, %bb.r ], [ 0, %bb.q ], [ %i.cl, %bb.p ] ; 2 uses
  %.1284.i.1 = phi ptr [ %i.cp, %bb.r ], [ %i.cm, %bb.q ], [ %.1284.i, %bb.p ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 26
  store i8 %.1325.i.1, ptr %i.cs, align 2
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader31.preheader.unr-lcssa, label %bb.k

.preheader31.preheader.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader31.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader31.preheader.unr-lcssa, %bb.j
  %indvars.iv69.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next70.1, %.preheader31.preheader.unr-lcssa ]
  %.0283.i42.epil.init = phi ptr [ %i.bu, %bb.j ], [ %.1284.i.1, %.preheader31.preheader.unr-lcssa ] ; 4 uses
  %.0322.i40.epil.init = phi i8 [ 0, %bb.j ], [ %.1323.i.1, %.preheader31.preheader.unr-lcssa ]
  %.0324.i39.epil.init = phi i8 [ 0, %bb.j ], [ %.1325.i.1, %.preheader31.preheader.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.ct = icmp eq i8 %.0322.i40.epil.init, 0
  br i1 %i.ct, label %bb.t, label %.preheader31.preheader.epilog-lcssa

bb.t:                                             ; preds = %.epil.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %.0283.i42.epil.init, i64 1
  %i.cv = load i8, ptr %.0283.i42.epil.init, align 1 ; 2 uses
  %i.cw = and i8 %i.cv, 8
  %.not367.i.epil = icmp eq i8 %i.cw, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %.0283.i42.epil.init, i64 2
  %spec.select = select i1 %.not367.i.epil, ptr %i.cu, ptr %i.cx
  br label %.preheader31.preheader.epilog-lcssa

.preheader31.preheader.epilog-lcssa:              ; preds = %bb.t, %.epil.preheader
  %.1325.i.epil = phi i8 [ %.0324.i39.epil.init, %.epil.preheader ], [ %i.cv, %bb.t ]
  %.1284.i.epil = phi ptr [ %.0283.i42.epil.init, %.epil.preheader ], [ %spec.select, %bb.t ]
  %gep.epil = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69.epil.init
  %i.cy = getelementptr inbounds nuw i8, ptr %gep.epil, i64 12
  store i8 %.1325.i.epil, ptr %i.cy, align 2
  br label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %.preheader31.preheader.unr-lcssa, %.preheader31.preheader.epilog-lcssa
  %.1284.i.lcssa = phi ptr [ %.1284.i.1, %.preheader31.preheader.unr-lcssa ], [ %.1284.i.epil, %.preheader31.preheader.epilog-lcssa ]
  %invariant.gep89 = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv
  br label %.preheader31

.preheader31:                                     ; preds = %.preheader31.preheader, %bb.x
  %indvars.iv73 = phi i64 [ 0, %.preheader31.preheader ], [ %indvars.iv.next74, %bb.x ] ; 2 uses
  %.2285.i45 = phi ptr [ %.1284.i.lcssa, %.preheader31.preheader ], [ %.3286.i, %bb.x ] ; 6 uses
  %.0306.i44 = phi i16 [ 0, %.preheader31.preheader ], [ %.1307.i, %bb.x ] ; 3 uses
  %gep90 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep89, i64 %indvars.iv73 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %gep90, i64 12
  %i.da = load i8, ptr %i.cz, align 2
  %i.db = zext i8 %i.da to i32                    ; 3 uses
  %i.dc = and i32 %i.db, 2
  %.not364.i = icmp eq i32 %i.dc, 0
  br i1 %.not364.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader31
  %i.dd = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 1
  %i.de = load i8, ptr %.2285.i45, align 1
  %i.df = and i32 %i.db, 16
  %.not366.i = icmp eq i32 %i.df, 0
  %i.dg = zext i8 %i.de to i16                    ; 2 uses
  %i.dh = sub nsw i16 0, %i.dg
  %i.di = select i1 %.not366.i, i16 %i.dh, i16 %i.dg
  %i.dj = add i16 %i.di, %.0306.i44
  br label %bb.x

bb.v:                                             ; preds = %.preheader31
  %i.dk = and i32 %i.db, 16
  %.not365.i = icmp eq i32 %i.dk, 0
  br i1 %.not365.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dl = load i8, ptr %.2285.i45, align 1
  %i.dm = zext i8 %i.dl to i16
  %i.dn = shl nuw i16 %i.dm, 8
  %i.do = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 1
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i16
  %i.dr = or disjoint i16 %i.dn, %i.dq
  %i.ds = add i16 %i.dr, %.0306.i44
  %i.dt = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1307.i = phi i16 [ %i.dj, %bb.u ], [ %.0306.i44, %bb.v ], [ %i.ds, %bb.w ] ; 2 uses
  %.3286.i = phi ptr [ %i.dd, %bb.u ], [ %.2285.i45, %bb.v ], [ %i.dt, %bb.w ] ; 2 uses
  store i16 %.1307.i, ptr %gep90, align 2
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count71
  br i1 %exitcond76.not, label %.preheader30.preheader, label %.preheader31

.preheader30.preheader:                           ; preds = %bb.x
  %invariant.gep91 = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv
  br label %.preheader30

.preheader30:                                     ; preds = %.preheader30.preheader, %bb.ab
  %indvars.iv77 = phi i64 [ 0, %.preheader30.preheader ], [ %indvars.iv.next78, %bb.ab ] ; 2 uses
  %.4287.i48 = phi ptr [ %.3286.i, %.preheader30.preheader ], [ %.5.i, %bb.ab ] ; 6 uses
  %.0304.i47 = phi i16 [ 0, %.preheader30.preheader ], [ %.1305.i, %bb.ab ] ; 3 uses
  %gep92 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep91, i64 %indvars.iv77 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %gep92, i64 12
  %i.dv = load i8, ptr %i.du, align 2
  %i.dw = zext i8 %i.dv to i32                    ; 3 uses
  %i.dx = and i32 %i.dw, 4
  %.not361.i = icmp eq i32 %i.dx, 0
  br i1 %.not361.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader30
  %i.dy = getelementptr inbounds nuw i8, ptr %.4287.i48, i64 1
  %i.dz = load i8, ptr %.4287.i48, align 1
  %i.ea = and i32 %i.dw, 32
  %.not363.i = icmp eq i32 %i.ea, 0
  %i.eb = zext i8 %i.dz to i16                    ; 2 uses
  %i.ec = sub nsw i16 0, %i.eb
  %i.ed = select i1 %.not363.i, i16 %i.ec, i16 %i.eb
  %i.ee = add i16 %i.ed, %.0304.i47
  br label %bb.ab

bb.z:                                             ; preds = %.preheader30
  %i.ef = and i32 %i.dw, 32
  %.not362.i = icmp eq i32 %i.ef, 0
  br i1 %.not362.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eg = load i8, ptr %.4287.i48, align 1
  %i.eh = zext i8 %i.eg to i16
  %i.ei = shl nuw i16 %i.eh, 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.4287.i48, i64 1
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = zext i8 %i.ek to i16
  %i.em = or disjoint i16 %i.ei, %i.el
  %i.en = add i16 %i.em, %.0304.i47
  %i.eo = getelementptr inbounds nuw i8, ptr %.4287.i48, i64 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1305.i = phi i16 [ %i.ee, %bb.y ], [ %.0304.i47, %bb.z ], [ %i.en, %bb.aa ] ; 2 uses
  %.5.i = phi ptr [ %i.dy, %bb.y ], [ %.4287.i48, %bb.z ], [ %i.eo, %bb.aa ]
  %i.ep = getelementptr inbounds nuw i8, ptr %gep92, i64 2
  store i16 %.1305.i, ptr %i.ep, align 2
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count71
  br i1 %exitcond80.not, label %.preheader, label %.preheader30

.preheader:                                       ; preds = %bb.ab, %bb.aw
  %.0288.i65 = phi i32 [ %.2290.i, %bb.aw ], [ 0, %bb.ab ] ; 6 uses
  %.0291.i63 = phi i32 [ %.2293.i, %bb.aw ], [ 0, %bb.ab ] ; 6 uses
  %.0294.i62 = phi i32 [ %.2296.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0297.i61 = phi i32 [ %.2299.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0300.i58 = phi i32 [ %.1301.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0302.i55 = phi i32 [ %.1303.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0308.i54 = phi i32 [ %.1309.i, %bb.aw ], [ 0, %bb.ab ] ; 4 uses
  %.0310.i53 = phi i32 [ %.1311.i, %bb.aw ], [ 0, %bb.ab ] ; 2 uses
  %.0312.i52 = phi i32 [ %.1313.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0314.i51 = phi i32 [ %.1315.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.3319.i50 = phi i32 [ %i.iz, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0329.i49 = phi i32 [ %.4333.i, %bb.aw ], [ 0, %bb.ab ] ; 12 uses
  %i.eq = add nsw i32 %.3319.i50, %i.bb
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.er ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.eu = load i8, ptr %i.et, align 2             ; 2 uses
  %i.ev = load i16, ptr %i.es, align 2            ; 3 uses
  %i.ew = sext i16 %i.ev to i32                   ; 7 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.ey = load i16, ptr %i.ex, align 2            ; 3 uses
  %i.ez = sext i16 %i.ey to i32                   ; 7 uses
  %i.fa = icmp eq i32 %.0312.i52, %.3319.i50
  br i1 %i.fa, label %bb.ac, label %bb.ap

bb.ac:                                            ; preds = %.preheader
  %.not358.i = icmp eq i32 %.0312.i52, 0
  br i1 %.not358.i, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i10 = icmp eq i32 %.0308.i54, 0
  %.not27.i11 = icmp eq i32 %.0310.i53, 0         ; 2 uses
  br i1 %.not.i10, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not27.i11, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = add nsw i32 %.0329.i49, 1
  %i.fc = sext i32 %.0329.i49 to i64
  %i.fd = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.fc ; 5 uses
  %i.fe = add nsw i32 %.0291.i63, %.0302.i55
  %i.ff = lshr i32 %i.fe, 1
  %i.fg = add nsw i32 %.0288.i65, %.0300.i58
  %i.fh = lshr i32 %i.fg, 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i8 3, ptr %i.fi, align 2
  %i.fj = trunc i32 %i.ff to i16
  store i16 %i.fj, ptr %i.fd, align 2
  %i.fk = trunc i32 %i.fh to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i16 %i.fk, ptr %i.fl, align 2
  %i.fm = trunc nsw i32 %.0302.i55 to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i16 %i.fm, ptr %i.fn, align 2
  %i.fo = trunc nsw i32 %.0300.i58 to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 6
  store i16 %i.fo, ptr %i.fp, align 2
  br label %bb.ag
end_hunk_9
