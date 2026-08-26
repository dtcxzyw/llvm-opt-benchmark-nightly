Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aom_film_grain?download=true
inline.NumInlined: 164
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"out->format == in->format\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"libavcodec/aom_film_grain.c\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"params->type == AV_FILM_GRAIN_PARAMS_AV1\00", align 1
@gaussian_sequence = internal unnamed_addr constant [2048 x i16] [i16 56, i16 568, i16 -180, i16 172, i16 124, i16 -84, i16 172, i16 -64, i16 -900, i16 24, i16 820, i16 224, i16 1248, i16 996, i16 272, i16 -8, i16 -916, i16 -388, i16 -732, i16 -104, i16 -188, i16 800, i16 112, i16 -652, i16 -320, i16 -376, i16 140, i16 -252, i16 492, i16 -168, i16 44, i16 -788, i16 588, i16 -584, i16 500, i16 -228, i16 12, i16 680, i16 272, i16 -476, i16 972, i16 -100, i16 652, i16 368, i16 432, i16 -196, i16 -720, i16 -192, i16 1000, i16 -332, i16 652, i16 -136, i16 -552, i16 -604, i16 -4, i16 192, i16 -220, i16 -136, i16 1000, i16 -52, i16 372, i16 -96, i16 -624, i16 124, i16 -24, i16 396, i16 540, i16 -12, i16 -104, i16 640, i16 464, i16 244, i16 -208, i16 -84, i16 368, i16 -528, i16 -740, i16 248, i16 -968, i16 -848, i16 608, i16 376, i16 -60, i16 -292, i16 -40, i16 -156, i16 252, i16 -292, i16 248, i16 224, i16 -280, i16 400, i16 -244, i16 244, i16 -60, i16 76, i16 -80, i16 212, i16 532, i16 340, i16 128, i16 -36, i16 824, i16 -352, i16 -60, i16 -264, i16 -96, i16 -612, i16 416, i16 -704, i16 220, i16 -204, i16 640, i16 -160, i16 1220, i16 -408, i16 900, i16 336, i16 20, i16 -336, i16 -96, i16 -792, i16 304, i16 48, i16 -28, i16 -1232, i16 -1172, i16 -448, i16 104, i16 -292, i16 -520, i16 244, i16 60, i16 -948, i16 0, i16 -708, i16 268, i16 108, i16 356, i16 -548, i16 488, i16 -344, i16 -136, i16 488, i16 -196, i16 -224, i16 656, i16 -236, i16 -1128, i16 60, i16 4, i16 140, i16 276, i16 -676, i16 -376, i16 168, i16 -108, i16 464, i16 8, i16 564, i16 64, i16 240, i16 308, i16 -300, i16 -400, i16 -456, i16 -136, i16 56, i16 120, i16 -408, i16 -116, i16 436, i16 504, i16 -232, i16 328, i16 844, i16 -164, i16 -84, i16 784, i16 -168, i16 232, i16 -224, i16 348, i16 -376, i16 128, i16 568, i16 96, i16 -1244, i16 -288, i16 276, i16 848, i16 832, i16 -360, i16 656, i16 464, i16 -384, i16 -332, i16 -356, i16 728, i16 -388, i16 160, i16 -192, i16 468, i16 296, i16 224, i16 140, i16 -776, i16 -100, i16 280, i16 4, i16 196, i16 44, i16 -36, i16 -648, i16 932, i16 16, i16 1428, i16 28, i16 528, i16 808, i16 772, i16 20, i16 268, i16 88, i16 -332, i16 -284, i16 124, i16 -384, i16 -448, i16 208, i16 -228, i16 -1044, i16 -328, i16 660, i16 380, i16 -148, i16 -300, i16 588, i16 240, i16 540, i16 28, i16 136, i16 -88, i16 -436, i16 256, i16 296, i16 -1000, i16 1400, i16 0, i16 -48, i16 1056, i16 -136, i16 264, i16 -528, i16 -1108, i16 632, i16 -484, i16 -592, i16 -344, i16 796, i16 124, i16 -668, i16 -768, i16 388, i16 1296, i16 -232, i16 -188, i16 -200, i16 -288, i16 -4, i16 308, i16 100, i16 -168, i16 256, i16 -500, i16 204, i16 -508, i16 648, i16 -136, i16 372, i16 -272, i16 -120, i16 -1004, i16 -552, i16 -548, i16 -384, i16 548, i16 -296, i16 428, i16 -108, i16 -8, i16 -912, i16 -324, i16 -224, i16 -88, i16 -112, i16 -220, i16 -100, i16 996, i16 -796, i16 548, i16 360, i16 -216, i16 180, i16 428, i16 -200, i16 -212, i16 148, i16 96, i16 148, i16 284, i16 216, i16 -412, i16 -320, i16 120, i16 -300, i16 -384, i16 -604, i16 -572, i16 -332, i16 -8, i16 -180, i16 -176, i16 696, i16 116, i16 -88, i16 628, i16 76, i16 44, i16 -516, i16 240, i16 -208, i16 -40, i16 100, i16 -592, i16 344, i16 -308, i16 -452, i16 -228, i16 20, i16 916, i16 -1752, i16 -136, i16 -340, i16 -804, i16 140, i16 40, i16 512, i16 340, i16 248, i16 184, i16 -492, i16 896, i16 -156, i16 932, i16 -628, i16 328, i16 -688, i16 -448, i16 -616, i16 -752, i16 -100, i16 560, i16 -1020, i16 180, i16 -800, i16 -64, i16 76, i16 576, i16 1068, i16 396, i16 660, i16 552, i16 -108, i16 -28, i16 320, i16 -628, i16 312, i16 -92, i16 -92, i16 -472, i16 268, i16 16, i16 560, i16 516, i16 -672, i16 -52, i16 492, i16 -100, i16 260, i16 384, i16 284, i16 292, i16 304, i16 -148, i16 88, i16 -152, i16 1012, i16 1064, i16 -228, i16 164, i16 -376, i16 -684, i16 592, i16 -392, i16 156, i16 196, i16 -524, i16 -64, i16 -884, i16 160, i16 -176, i16 636, i16 648, i16 404, i16 -396, i16 -436, i16 864, i16 424, i16 -728, i16 988, i16 -604, i16 904, i16 -592, i16 296, i16 -224, i16 536, i16 -176, i16 -920, i16 436, i16 -48, i16 1176, i16 -884, i16 416, i16 -776, i16 -824, i16 -884, i16 524, i16 -548, i16 -564, i16 -68, i16 -164, i16 -96, i16 692, i16 364, i16 -692, i16 -1012, i16 -68, i16 260, i16 -480, i16 876, i16 -1116, i16 452, i16 -332, i16 -352, i16 892, i16 -1088, i16 1220, i16 -676, i16 12, i16 -292, i16 244, i16 496, i16 372, i16 -32, i16 280, i16 200, i16 112, i16 -440, i16 -96, i16 24, i16 -644, i16 -184, i16 56, i16 -432, i16 224, i16 -980, i16 272, i16 -260, i16 144, i16 -436, i16 420, i16 356, i16 364, i16 -528, i16 76, i16 172, i16 -744, i16 -368, i16 404, i16 -752, i16 -416, i16 684, i16 -688, i16 72, i16 540, i16 416, i16 92, i16 444, i16 480, i16 -72, i16 -1416, i16 164, i16 -1172, i16 -68, i16 24, i16 424, i16 264, i16 1040, i16 128, i16 -912, i16 -524, i16 -356, i16 64, i16 876, i16 -12, i16 4, i16 -88, i16 532, i16 272, i16 -524, i16 320, i16 276, i16 -508, i16 940, i16 24, i16 -400, i16 -120, i16 756, i16 60, i16 236, i16 -412, i16 100, i16 376, i16 -484, i16 400, i16 -100, i16 -740, i16 -108, i16 -260, i16 328, i16 -268, i16 224, i16 -200, i16 -416, i16 184, i16 -604, i16 -564, i16 -20, i16 296, i16 60, i16 892, i16 -888, i16 60, i16 164, i16 68, i16 -760, i16 216, i16 -296, i16 904, i16 -336, i16 -28, i16 404, i16 -356, i16 -568, i16 -208, i16 -1480, i16 -512, i16 296, i16 328, i16 -360, i16 -164, i16 -1560, i16 -776, i16 1156, i16 -428, i16 164, i16 -504, i16 -112, i16 120, i16 -216, i16 -148, i16 -264, i16 308, i16 32, i16 64, i16 -72, i16 72, i16 116, i16 176, i16 -64, i16 -272, i16 460, i16 -536, i16 -784, i16 -280, i16 348, i16 108, i16 -752, i16 -132, i16 524, i16 -540, i16 -776, i16 116, i16 -296, i16 -1196, i16 -288, i16 -560, i16 1040, i16 -472, i16 116, i16 -848, i16 -1116, i16 116, i16 636, i16 696, i16 284, i16 -176, i16 1016, i16 204, i16 -864, i16 -648, i16 -248, i16 356, i16 972, i16 -584, i16 -204, i16 264, i16 880, i16 528, i16 -24, i16 -184, i16 116, i16 448, i16 -144, i16 828, i16 524, i16 212, i16 -212, i16 52, i16 12, i16 200, i16 268, i16 -488, i16 -404, i16 -880, i16 824, i16 -672, i16 -40, i16 908, i16 -248, i16 500, i16 716, i16 -576, i16 492, i16 -576, i16 16, i16 720, i16 -108, i16 384, i16 124, i16 344, i16 280, i16 576, i16 -500, i16 252, i16 104, i16 -308, i16 196, i16 -188, i16 -8, i16 1268, i16 296, i16 1032, i16 -1196, i16 436, i16 316, i16 372, i16 -432, i16 -200, i16 -660, i16 704, i16 -224, i16 596, i16 -132, i16 268, i16 32, i16 -452, i16 884, i16 104, i16 -1008, i16 424, i16 -1348, i16 -280, i16 4, i16 -1168, i16 368, i16 476, i16 696, i16 300, i16 -8, i16 24, i16 180, i16 -592, i16 -196, i16 388, i16 304, i16 500, i16 724, i16 -160, i16 244, i16 -84, i16 272, i16 -256, i16 -420, i16 320, i16 208, i16 -144, i16 -156, i16 156, i16 364, i16 452, i16 28, i16 540, i16 316, i16 220, i16 -644, i16 -248, i16 464, i16 72, i16 360, i16 32, i16 -388, i16 496, i16 -680, i16 -48, i16 208, i16 -116, i16 -408, i16 60, i16 -604, i16 -392, i16 548, i16 -840, i16 784, i16 -460, i16 656, i16 -544, i16 -388, i16 -264, i16 908, i16 -800, i16 -628, i16 -612, i16 -568, i16 572, i16 -220, i16 164, i16 288, i16 -16, i16 -308, i16 308, i16 -112, i16 -636, i16 -760, i16 280, i16 -668, i16 432, i16 364, i16 240, i16 -196, i16 604, i16 340, i16 384, i16 196, i16 592, i16 -44, i16 -500, i16 432, i16 -580, i16 -132, i16 636, i16 -76, i16 392, i16 4, i16 -412, i16 540, i16 508, i16 328, i16 -356, i16 -36, i16 16, i16 -220, i16 -64, i16 -248, i16 -60, i16 24, i16 -192, i16 368, i16 1040, i16 92, i16 -24, i16 -1044, i16 -32, i16 40, i16 104, i16 148, i16 192, i16 -136, i16 -520, i16 56, i16 -816, i16 -224, i16 732, i16 392, i16 356, i16 212, i16 -80, i16 -424, i16 -1008, i16 -324, i16 588, i16 -1496, i16 576, i16 460, i16 -816, i16 -848, i16 56, i16 -580, i16 -92, i16 -1372, i16 -112, i16 -496, i16 200, i16 364, i16 52, i16 -140, i16 48, i16 -48, i16 -60, i16 84, i16 72, i16 40, i16 132, i16 -356, i16 -268, i16 -104, i16 -284, i16 -404, i16 732, i16 -520, i16 164, i16 -304, i16 -540, i16 120, i16 328, i16 -76, i16 -460, i16 756, i16 388, i16 588, i16 236, i16 -436, i16 -72, i16 -176, i16 -404, i16 -316, i16 -148, i16 716, i16 -604, i16 404, i16 -72, i16 -88, i16 -888, i16 -68, i16 944, i16 88, i16 -220, i16 -344, i16 960, i16 472, i16 460, i16 -232, i16 704, i16 120, i16 832, i16 -228, i16 692, i16 -508, i16 132, i16 -476, i16 844, i16 -748, i16 -364, i16 -44, i16 1116, i16 -1104, i16 -1056, i16 76, i16 428, i16 552, i16 -692, i16 60, i16 356, i16 96, i16 -384, i16 -188, i16 -612, i16 -576, i16 736, i16 508, i16 892, i16 352, i16 -1132, i16 504, i16 -24, i16 -352, i16 324, i16 332, i16 -600, i16 -312, i16 292, i16 508, i16 -144, i16 -8, i16 484, i16 48, i16 284, i16 -260, i16 -240, i16 256, i16 -100, i16 -292, i16 -204, i16 -44, i16 472, i16 -204, i16 908, i16 -188, i16 -1000, i16 -256, i16 92, i16 1164, i16 -392, i16 564, i16 356, i16 652, i16 -28, i16 -884, i16 256, i16 484, i16 -192, i16 760, i16 -176, i16 376, i16 -524, i16 -452, i16 -436, i16 860, i16 -736, i16 212, i16 124, i16 504, i16 -476, i16 468, i16 76, i16 -472, i16 552, i16 -692, i16 -944, i16 -620, i16 740, i16 -240, i16 400, i16 132, i16 20, i16 192, i16 -196, i16 264, i16 -668, i16 -1012, i16 -60, i16 296, i16 -316, i16 -828, i16 76, i16 -156, i16 284, i16 -768, i16 -448, i16 -832, i16 148, i16 248, i16 652, i16 616, i16 1236, i16 288, i16 -328, i16 -400, i16 -124, i16 588, i16 220, i16 520, i16 -696, i16 1032, i16 768, i16 -740, i16 -92, i16 -272, i16 296, i16 448, i16 -464, i16 412, i16 -200, i16 392, i16 440, i16 -200, i16 264, i16 -152, i16 -260, i16 320, i16 1032, i16 216, i16 320, i16 -8, i16 -64, i16 156, i16 -1016, i16 1084, i16 1172, i16 536, i16 484, i16 -432, i16 132, i16 372, i16 -52, i16 -256, i16 84, i16 116, i16 -352, i16 48, i16 116, i16 304, i16 -384, i16 412, i16 924, i16 -300, i16 528, i16 628, i16 180, i16 648, i16 44, i16 -980, i16 -220, i16 1320, i16 48, i16 332, i16 748, i16 524, i16 -268, i16 -720, i16 540, i16 -276, i16 564, i16 -344, i16 -208, i16 -196, i16 436, i16 896, i16 88, i16 -392, i16 132, i16 80, i16 -964, i16 -288, i16 568, i16 56, i16 -48, i16 -456, i16 888, i16 8, i16 552, i16 -156, i16 -292, i16 948, i16 288, i16 128, i16 -716, i16 -292, i16 1192, i16 -152, i16 876, i16 352, i16 -600, i16 -260, i16 -812, i16 -468, i16 -28, i16 -120, i16 -32, i16 -44, i16 1284, i16 496, i16 192, i16 464, i16 312, i16 -76, i16 -516, i16 -380, i16 -456, i16 -1012, i16 -48, i16 308, i16 -156, i16 36, i16 492, i16 -156, i16 -808, i16 188, i16 1652, i16 68, i16 -120, i16 -116, i16 316, i16 160, i16 -140, i16 352, i16 808, i16 -416, i16 592, i16 316, i16 -480, i16 56, i16 528, i16 -204, i16 -568, i16 372, i16 -232, i16 752, i16 -344, i16 744, i16 -4, i16 324, i16 -416, i16 -600, i16 768, i16 268, i16 -248, i16 -88, i16 -132, i16 -420, i16 -432, i16 80, i16 -288, i16 404, i16 -316, i16 -1216, i16 -588, i16 520, i16 -108, i16 92, i16 -320, i16 368, i16 -480, i16 -216, i16 -92, i16 1688, i16 -300, i16 180, i16 1020, i16 -176, i16 820, i16 -68, i16 -228, i16 -260, i16 436, i16 -904, i16 20, i16 40, i16 -508, i16 440, i16 -736, i16 312, i16 332, i16 204, i16 760, i16 -372, i16 728, i16 96, i16 -20, i16 -632, i16 -520, i16 -560, i16 336, i16 1076, i16 -64, i16 -532, i16 776, i16 584, i16 192, i16 396, i16 -728, i16 -520, i16 276, i16 -188, i16 80, i16 -52, i16 -612, i16 -252, i16 -48, i16 648, i16 212, i16 -688, i16 228, i16 -52, i16 -260, i16 428, i16 -412, i16 -272, i16 -404, i16 180, i16 816, i16 -796, i16 48, i16 152, i16 484, i16 -88, i16 -216, i16 988, i16 696, i16 188, i16 -528, i16 648, i16 -116, i16 -180, i16 316, i16 476, i16 12, i16 -564, i16 96, i16 476, i16 -252, i16 -364, i16 -376, i16 -392, i16 556, i16 -256, i16 -576, i16 260, i16 -352, i16 120, i16 -16, i16 -136, i16 -260, i16 -492, i16 72, i16 556, i16 660, i16 580, i16 616, i16 772, i16 436, i16 424, i16 -32, i16 -324, i16 -1268, i16 416, i16 -324, i16 -80, i16 920, i16 160, i16 228, i16 724, i16 32, i16 -516, i16 64, i16 384, i16 68, i16 -128, i16 136, i16 240, i16 248, i16 -204, i16 -68, i16 252, i16 -932, i16 -120, i16 -480, i16 -628, i16 -84, i16 192, i16 852, i16 -404, i16 -288, i16 -132, i16 204, i16 100, i16 168, i16 -68, i16 -196, i16 -868, i16 460, i16 1080, i16 380, i16 -80, i16 244, i16 0, i16 484, i16 -888, i16 64, i16 184, i16 352, i16 600, i16 460, i16 164, i16 604, i16 -196, i16 320, i16 -64, i16 588, i16 -184, i16 228, i16 12, i16 372, i16 48, i16 -848, i16 -344, i16 224, i16 208, i16 -200, i16 484, i16 128, i16 -20, i16 272, i16 -468, i16 -840, i16 384, i16 256, i16 -720, i16 -520, i16 -464, i16 -580, i16 112, i16 -120, i16 644, i16 -356, i16 -208, i16 -608, i16 -528, i16 704, i16 560, i16 -424, i16 392, i16 828, i16 40, i16 84, i16 200, i16 -152, i16 0, i16 -144, i16 584, i16 280, i16 -120, i16 80, i16 -556, i16 -972, i16 -196, i16 -472, i16 724, i16 80, i16 168, i16 -32, i16 88, i16 160, i16 -688, i16 0, i16 160, i16 356, i16 372, i16 -776, i16 740, i16 -128, i16 676, i16 -248, i16 -480, i16 4, i16 -364, i16 96, i16 544, i16 232, i16 -1032, i16 956, i16 236, i16 356, i16 20, i16 -40, i16 300, i16 24, i16 -676, i16 -596, i16 132, i16 1120, i16 -104, i16 532, i16 -1096, i16 568, i16 648, i16 444, i16 508, i16 380, i16 188, i16 -376, i16 -604, i16 1488, i16 424, i16 24, i16 756, i16 -220, i16 -192, i16 716, i16 120, i16 920, i16 688, i16 168, i16 44, i16 -460, i16 568, i16 284, i16 1144, i16 1160, i16 600, i16 424, i16 888, i16 656, i16 -356, i16 -320, i16 220, i16 316, i16 -176, i16 -724, i16 -188, i16 -816, i16 -628, i16 -348, i16 -228, i16 -380, i16 1012, i16 -452, i16 -660, i16 736, i16 928, i16 404, i16 -696, i16 -72, i16 -268, i16 -892, i16 128, i16 184, i16 -344, i16 -780, i16 360, i16 336, i16 400, i16 344, i16 428, i16 548, i16 -112, i16 136, i16 -228, i16 -216, i16 -820, i16 -516, i16 340, i16 92, i16 -136, i16 116, i16 -300, i16 376, i16 -244, i16 100, i16 -316, i16 -520, i16 -284, i16 -12, i16 824, i16 164, i16 -548, i16 -180, i16 -128, i16 116, i16 -924, i16 -828, i16 268, i16 -368, i16 -580, i16 620, i16 192, i16 160, i16 0, i16 -1676, i16 1068, i16 424, i16 -56, i16 -360, i16 468, i16 -156, i16 720, i16 288, i16 -528, i16 556, i16 -364, i16 548, i16 -148, i16 504, i16 316, i16 152, i16 -648, i16 -620, i16 -684, i16 -24, i16 -376, i16 -384, i16 -108, i16 -920, i16 -1032, i16 768, i16 180, i16 -264, i16 -508, i16 -1268, i16 -260, i16 -60, i16 300, i16 -240, i16 988, i16 724, i16 -376, i16 -576, i16 -212, i16 -736, i16 556, i16 192, i16 1092, i16 -620, i16 -880, i16 376, i16 -56, i16 -4, i16 -216, i16 -32, i16 836, i16 268, i16 396, i16 1332, i16 864, i16 -600, i16 100, i16 56, i16 -412, i16 -92, i16 356, i16 180, i16 884, i16 -468, i16 -436, i16 292, i16 -388, i16 -804, i16 -704, i16 -840, i16 368, i16 -348, i16 140, i16 -724, i16 1536, i16 940, i16 372, i16 112, i16 -372, i16 436, i16 -480, i16 1136, i16 296, i16 -32, i16 -228, i16 132, i16 -48, i16 -220, i16 868, i16 -1016, i16 -60, i16 -1044, i16 -464, i16 328, i16 916, i16 244, i16 12, i16 -736, i16 -296, i16 360, i16 468, i16 -376, i16 -108, i16 -92, i16 788, i16 368, i16 -56, i16 544, i16 400, i16 -672, i16 -420, i16 728, i16 16, i16 320, i16 44, i16 -284, i16 -380, i16 -796, i16 488, i16 132, i16 204, i16 -596, i16 -372, i16 88, i16 -152, i16 -908, i16 -636, i16 -572, i16 -624, i16 -116, i16 -692, i16 -200, i16 -56, i16 276, i16 -88, i16 484, i16 -324, i16 948, i16 864, i16 1000, i16 -456, i16 -184, i16 -276, i16 292, i16 -296, i16 156, i16 676, i16 320, i16 160, i16 908, i16 -84, i16 -1236, i16 -288, i16 -116, i16 260, i16 -372, i16 -644, i16 732, i16 -756, i16 -96, i16 84, i16 344, i16 -520, i16 348, i16 -688, i16 240, i16 -84, i16 216, i16 -1044, i16 -136, i16 -676, i16 -396, i16 -1500, i16 960, i16 -40, i16 176, i16 168, i16 1516, i16 420, i16 -504, i16 -344, i16 -364, i16 -360, i16 1216, i16 -940, i16 -380, i16 -212, i16 252, i16 -660, i16 -708, i16 484, i16 -444, i16 -152, i16 928, i16 -120, i16 1112, i16 476, i16 -260, i16 560, i16 -148, i16 -344, i16 108, i16 -196, i16 228, i16 -288, i16 504, i16 560, i16 -328, i16 -88, i16 288, i16 -1008, i16 460, i16 -228, i16 468, i16 -836, i16 -196, i16 76, i16 388, i16 232, i16 412, i16 -1168, i16 -716, i16 -644, i16 756, i16 -172, i16 -356, i16 -504, i16 116, i16 432, i16 528, i16 48, i16 476, i16 -168, i16 -608, i16 448, i16 160, i16 -532, i16 -272, i16 28, i16 -676, i16 -12, i16 828, i16 980, i16 456, i16 520, i16 104, i16 -104, i16 256, i16 -344, i16 -4, i16 -28, i16 -368, i16 -52, i16 -524, i16 -572, i16 -556, i16 -200, i16 768, i16 1124, i16 -208, i16 -512, i16 176, i16 232, i16 248, i16 -148, i16 -888, i16 604, i16 -600, i16 -304, i16 804, i16 -156, i16 -212, i16 488, i16 -192, i16 -804, i16 -256, i16 368, i16 -360, i16 -916, i16 -328, i16 228, i16 -240, i16 -448, i16 -472, i16 856, i16 -556, i16 -364, i16 572, i16 -12, i16 -156, i16 -368, i16 -340, i16 432, i16 252, i16 -752, i16 -152, i16 288, i16 268, i16 -580, i16 -848, i16 -592, i16 108, i16 -76, i16 244, i16 312, i16 -716, i16 592, i16 -80, i16 436, i16 360, i16 4, i16 -248, i16 160, i16 516, i16 584, i16 732, i16 44, i16 -468, i16 -280, i16 -292, i16 -156, i16 -588, i16 28, i16 308, i16 912, i16 24, i16 124, i16 156, i16 180, i16 -252, i16 944, i16 -924, i16 -772, i16 -520, i16 -428, i16 -624, i16 300, i16 -212, i16 -1144, i16 32, i16 -724, i16 800, i16 -1128, i16 -212, i16 -1288, i16 -848, i16 180, i16 -416, i16 440, i16 192, i16 -576, i16 -792, i16 -76, i16 -1080, i16 80, i16 -532, i16 -352, i16 -132, i16 380, i16 -820, i16 148, i16 1112, i16 128, i16 164, i16 456, i16 700, i16 -924, i16 144, i16 -668, i16 -384, i16 648, i16 -832, i16 508, i16 552, i16 -52, i16 -100, i16 -656, i16 208, i16 -568, i16 748, i16 -88, i16 680, i16 232, i16 300, i16 192, i16 -408, i16 -1012, i16 -152, i16 -252, i16 -268, i16 272, i16 -876, i16 -664, i16 -648, i16 -332, i16 -136, i16 16, i16 12, i16 1152, i16 -28, i16 332, i16 -536, i16 320, i16 -672, i16 -460, i16 -316, i16 532, i16 -260, i16 228, i16 -40, i16 1052, i16 -816, i16 180, i16 88, i16 -496, i16 -556, i16 -672, i16 -368, i16 428, i16 92, i16 356, i16 404, i16 -408, i16 252, i16 196, i16 -176, i16 -556, i16 792, i16 268, i16 32, i16 372, i16 40, i16 96, i16 -332, i16 328, i16 120, i16 372, i16 -900, i16 -40, i16 472, i16 -264, i16 -592, i16 952, i16 128, i16 656, i16 112, i16 664, i16 -232, i16 420, i16 4, i16 -344, i16 -464, i16 556, i16 244, i16 -416, i16 -32, i16 252, i16 0, i16 -412, i16 188, i16 -696, i16 508, i16 -476, i16 324, i16 -1096, i16 656, i16 -312, i16 560, i16 264, i16 -136, i16 304, i16 160, i16 -64, i16 -580, i16 248, i16 336, i16 -720, i16 560, i16 -348, i16 -288, i16 -276, i16 -196, i16 -500, i16 852, i16 -544, i16 -236, i16 -1128, i16 -992, i16 -776, i16 116, i16 56, i16 52, i16 860, i16 884, i16 212, i16 -12, i16 168, i16 1020, i16 512, i16 -552, i16 924, i16 -148, i16 716, i16 188, i16 164, i16 -340, i16 -520, i16 -184, i16 880, i16 -152, i16 -680, i16 -208, i16 -1156, i16 -300, i16 -528, i16 -472, i16 364, i16 100, i16 -744, i16 -1056, i16 -32, i16 540, i16 280, i16 144, i16 -676, i16 -32, i16 -232, i16 -280, i16 -224, i16 96, i16 568, i16 -76, i16 172, i16 148, i16 148, i16 104, i16 32, i16 -296, i16 -32, i16 788, i16 -80, i16 32, i16 -16, i16 280, i16 288, i16 944, i16 428, i16 -484], align 16
@fgy_32x32xn_c_16.w = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 27, i32 17], [2 x i32] [i32 17, i32 27]], align 16
@fguv_32x32xn_c_16.w = internal unnamed_addr constant [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 27, i32 17], [2 x i32] [i32 17, i32 27]], [2 x [2 x i32]] [[2 x i32] [i32 23, i32 22], [2 x i32] zeroinitializer]], align 16

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_aom_apply_film_grain(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x [2 x i32]], align 16         ; 11 uses
  %i.c = alloca [3 x [74 x [82 x i8]]], align 16  ; 20 uses
  %i.d = alloca [3 x [256 x i8]], align 16        ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.g) #8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.m = load i8, ptr %i.l, align 2, !tbaa !24
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 3 uses
  %i.q = load i32, ptr %i.f, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 76) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = load i32, ptr %2, align 8, !tbaa !27
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 77) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.e, align 8, !tbaa !29
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = load ptr, ptr %1, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.af = mul nsw i32 %i.ae, %i.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  tail call void @av_image_copy_plane(ptr noundef %i.x, i32 noundef %i.z, ptr noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.af, i32 noundef %i.ah) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !31
  %.not55 = icmp eq i32 %i.an, 0
  br i1 %.not55, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.av = load i32, ptr %i.au, align 4, !tbaa !31
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !32
  %i.ax = sub nsw i32 0, %i.aw
  %i.ay = ashr i32 %i.ax, %i.k
  %i.az = mul i32 %i.ay, %i.p
  %i.ba = sub i32 0, %i.az
  %i.bb = load i32, ptr %i.am, align 4, !tbaa !33
  %i.bc = sub nsw i32 0, %i.bb
  %i.bd = ashr i32 %i.bc, %i.n
  %i.be = sub nsw i32 0, %i.bd
  tail call void @av_image_copy_plane(ptr noundef %i.ap, i32 noundef %i.ar, ptr noundef %i.at, i32 noundef %i.av, i32 noundef %i.ba, i32 noundef %i.be) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !31
  %.not55.1 = icmp eq i32 %i.bg, 0
  br i1 %.not55.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load i32, ptr %i.al, align 8, !tbaa !32
  %i.bq = sub nsw i32 0, %i.bp
  %i.br = ashr i32 %i.bq, %i.k
  %i.bs = mul i32 %i.br, %i.p
  %i.bt = sub i32 0, %i.bs
  %i.bu = load i32, ptr %i.am, align 4, !tbaa !33
  %i.bv = sub nsw i32 0, %i.bu
  %i.bw = ashr i32 %i.bv, %i.n
  %i.bx = sub nsw i32 0, %i.bw
  tail call void @av_image_copy_plane(ptr noundef %i.bi, i32 noundef %i.bk, ptr noundef %i.bm, i32 noundef %i.bo, i32 noundef %i.bt, i32 noundef %i.bx) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.by = load i32, ptr %i.r, align 4, !tbaa !9
  switch i32 %i.by, label %bb.ar [
    i32 8, label %bb.l
    i32 0, label %bb.l
    i32 4, label %bb.l
    i32 5, label %bb.l
    i32 12, label %bb.l
    i32 13, label %bb.l
    i32 14, label %bb.l
    i32 173, label %bb.ao
    i32 60, label %bb.ao
    i32 70, label %bb.ao
    i32 66, label %bb.ao
    i32 168, label %bb.ap
    i32 62, label %bb.ap
    i32 64, label %bb.ap
    i32 68, label %bb.ap
    i32 166, label %bb.aq
    i32 123, label %bb.aq
    i32 127, label %bb.aq
    i32 131, label %bb.aq
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.bz = load i32, ptr %i.f, align 4, !tbaa !9
  %i.ca = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.bz) #8 ; 2 uses
  %i.cb = load i32, ptr %i.am, align 4, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !34
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !35
  %i.cl = add nsw i32 %i.ck, 4                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !37
  %i.co = shl nuw i32 1, %i.cl
  %i.cp = ashr i32 %i.co, 1
  br label %.preheader55.i.i

.preheader55.i.i:                                 ; preds = %bb.n, %bb.l
  %indvars.iv91.i.i = phi i64 [ 0, %bb.l ], [ %indvars.iv.next92.i.i, %bb.n ] ; 2 uses
  %.05158.i.i = phi i32 [ %i.ci, %bb.l ], [ %i.ek, %bb.n ]
  %i.cq = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %indvars.iv91.i.i
  br label %bb.o

.preheader54.i.i:                                 ; preds = %bb.n
  %i.cr = add nsw i32 %i.cb, 31
  %i.cs = ashr i32 %i.cr, 5                       ; 2 uses
  %i.ct = zext i8 %i.cd to i32                    ; 8 uses
  %i.cu = zext i8 %i.cf to i32                    ; 10 uses
  %.fr.i.i = freeze i32 %i.cn                     ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.cw = sub i32 0, %.fr.i.i                     ; 2 uses
  %i.cx = icmp sgt i32 %.fr.i.i, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  br i1 %i.cx, label %.preheader53.us.preheader.i.i, label %.preheader53.i.preheader.i

.preheader53.i.preheader.i:                       ; preds = %.preheader54.i.i
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !38 ; 2 uses
  %i.da = shl nuw i32 1, %i.cz
  %i.db = ashr i32 %i.da, 1
  %i.dc = ashr i32 %i.db, %i.cz                   ; 2 uses
  %broadcast.splatinsert89 = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat90 = shufflevector <4 x i32> %broadcast.splatinsert89, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %iter.check

.preheader53.us.preheader.i.i:                    ; preds = %.preheader54.i.i
  %i.dd = sext i32 %i.cw to i64                   ; 2 uses
  %i.de = zext nneg i32 %.fr.i.i to i64
  %i.df = load i32, ptr %i.cy, align 8, !tbaa !38 ; 2 uses
  %i.dg = shl nuw i32 1, %i.df
  %i.dh = ashr i32 %i.dg, 1
  br label %.preheader53.us.i.i

.preheader53.us.i.i:                              ; preds = %.split.us.split.us82.i.i, %.preheader53.us.preheader.i.i
  %indvars.iv114.i.i = phi i64 [ 3, %.preheader53.us.preheader.i.i ], [ %indvars.iv.next115.i.i, %.split.us.split.us82.i.i ] ; 2 uses
  %i.di = getelementptr [82 x i8], ptr %i.c, i64 %indvars.iv114.i.i
  br label %.preheader.lr.ph.us.us79.i.i

.preheader.lr.ph.us.us79.i.i:                     ; preds = %._crit_edge70.split.us75.us.i.i, %.preheader53.us.i.i
  %indvars.iv110.i.i = phi i64 [ 3, %.preheader53.us.i.i ], [ %indvars.iv.next111.i.i, %._crit_edge70.split.us75.us.i.i ] ; 2 uses
  %invariant.gep123.i.i = getelementptr i8, ptr %i.di, i64 %indvars.iv110.i.i ; 3 uses
  br label %.preheader.us73.us.i.i

bb.m:                                             ; preds = %.lr.ph.us.us.i.i, %bb.m
  %indvars.iv103.i.i = phi i64 [ %i.dd, %.lr.ph.us.us.i.i ], [ %indvars.iv.next104.i.i, %bb.m ] ; 3 uses
  %.164.us.us.i.i = phi i32 [ %.04468.us.us.i.i, %.lr.ph.us.us.i.i ], [ %i.dp, %bb.m ]
  %.14663.us.us.i.i = phi ptr [ %.04567.us.us.i.i, %.lr.ph.us.us.i.i ], [ %i.dj, %bb.m ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.14663.us.us.i.i, i64 1 ; 2 uses
  %i.dk = load i8, ptr %.14663.us.us.i.i, align 1, !tbaa !29
  %i.dl = sext i8 %i.dk to i32
  %gep.i.i = getelementptr i8, ptr %gep124.i.i, i64 %indvars.iv103.i.i
  %i.dm = load i8, ptr %gep.i.i, align 1, !tbaa !29
  %i.dn = sext i8 %i.dm to i32
  %i.do = mul nsw i32 %i.dn, %i.dl
  %i.dp = add nsw i32 %i.do, %.164.us.us.i.i      ; 2 uses
  %indvars.iv.next104.i.i = add nsw i64 %indvars.iv103.i.i, 1 ; 2 uses
  %.not.us.us.i.i = icmp sge i64 %indvars.iv103.i.i, %i.de
  %i.dq = or i64 %indvars.iv.next104.i.i, %indvars.iv106.i.i
  %i.dr = and i64 %i.dq, 4294967295
  %or.cond.not.us.us.i.i = icmp eq i64 %i.dr, 0
  %or.cond.us.us.i.i = or i1 %.not.us.us.i.i, %or.cond.not.us.us.i.i
  br i1 %or.cond.us.us.i.i, label %._crit_edge.us.us.i.i, label %bb.m, !llvm.loop !39

._crit_edge.us.us.i.i:                            ; preds = %bb.m, %.preheader.us73.us.i.i
  %.146.lcssa.us.us.i.i = phi ptr [ %.04567.us.us.i.i, %.preheader.us73.us.i.i ], [ %i.dj, %bb.m ]
  %.1.lcssa.us.us.i.i = phi i32 [ %.04468.us.us.i.i, %.preheader.us73.us.i.i ], [ %i.dp, %bb.m ] ; 2 uses
  %indvars.iv.next107.i.i = add nsw i64 %indvars.iv106.i.i, 1 ; 2 uses
  %i.ds = and i64 %indvars.iv.next107.i.i, 4294967295
  %exitcond109.not.i.i = icmp eq i64 %i.ds, 1
  br i1 %exitcond109.not.i.i, label %._crit_edge70.split.us75.us.i.i, label %.preheader.us73.us.i.i, !llvm.loop !41

.preheader.us73.us.i.i:                           ; preds = %._crit_edge.us.us.i.i, %.preheader.lr.ph.us.us79.i.i
  %indvars.iv106.i.i = phi i64 [ %indvars.iv.next107.i.i, %._crit_edge.us.us.i.i ], [ %i.dd, %.preheader.lr.ph.us.us79.i.i ] ; 4 uses
  %.04468.us.us.i.i = phi i32 [ %.1.lcssa.us.us.i.i, %._crit_edge.us.us.i.i ], [ 0, %.preheader.lr.ph.us.us79.i.i ] ; 2 uses
  %.04567.us.us.i.i = phi ptr [ %.146.lcssa.us.us.i.i, %._crit_edge.us.us.i.i ], [ %i.cv, %.preheader.lr.ph.us.us79.i.i ] ; 2 uses
  %i.dt = trunc nsw i64 %indvars.iv106.i.i to i32
  %i.du = or i32 %i.dt, %i.cw
  %or.cond.not61.us.us.i.i = icmp eq i32 %i.du, 0
  br i1 %or.cond.not61.us.us.i.i, label %._crit_edge.us.us.i.i, label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %.preheader.us73.us.i.i
  %gep124.i.i = getelementptr [82 x i8], ptr %invariant.gep123.i.i, i64 %indvars.iv106.i.i
  br label %bb.m

._crit_edge70.split.us75.us.i.i:                  ; preds = %._crit_edge.us.us.i.i
  %i.dv = load i8, ptr %invariant.gep123.i.i, align 1, !tbaa !29
  %i.dw = sext i8 %i.dv to i32
  %i.dx = add nsw i32 %.1.lcssa.us.us.i.i, %i.dh
  %i.dy = ashr i32 %i.dx, %i.df
  %i.dz = add nsw i32 %i.dy, %i.dw
  %i.ea = tail call i32 @llvm.smax.i32(i32 %i.dz, i32 -128)
  %.0.i.us.us81.i.i = tail call i32 @llvm.smin.i32(i32 %i.ea, i32 127)
  %i.eb = trunc nsw i32 %.0.i.us.us81.i.i to i8
  store i8 %i.eb, ptr %invariant.gep123.i.i, align 1, !tbaa !29
  %indvars.iv.next111.i.i = add nuw nsw i64 %indvars.iv110.i.i, 1 ; 2 uses
  %exitcond113.not.i.i = icmp eq i64 %indvars.iv.next111.i.i, 79
  br i1 %exitcond113.not.i.i, label %.split.us.split.us82.i.i, label %.preheader.lr.ph.us.us79.i.i, !llvm.loop !42

.split.us.split.us82.i.i:                         ; preds = %._crit_edge70.split.us75.us.i.i
  %indvars.iv.next115.i.i = add nuw nsw i64 %indvars.iv114.i.i, 1 ; 2 uses
  %exitcond117.not.i.i = icmp eq i64 %indvars.iv.next115.i.i, 73
  br i1 %exitcond117.not.i.i, label %generate_grain_y_c_8.exit.i, label %.preheader53.us.i.i, !llvm.loop !43

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next92.i.i = add nuw nsw i64 %indvars.iv91.i.i, 1 ; 2 uses
  %exitcond94.not.i.i = icmp eq i64 %indvars.iv.next92.i.i, 73
  br i1 %exitcond94.not.i.i, label %.preheader54.i.i, label %.preheader55.i.i, !llvm.loop !44

bb.o:                                             ; preds = %bb.o, %.preheader55.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader55.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 2 uses
  %.15256.i.i = phi i32 [ %.05158.i.i, %.preheader55.i.i ], [ %i.ek, %bb.o ] ; 4 uses
  %i.ec = ashr i32 %.15256.i.i, 1                 ; 2 uses
  %i.ed = lshr i32 %.15256.i.i, 3
  %i.ee = lshr i32 %.15256.i.i, 12
  %i.ef = xor i32 %i.ed, %i.ee
  %i.eg = xor i32 %i.ef, %.15256.i.i
  %i.eh = xor i32 %i.eg, %i.ec
  %i.ei = shl i32 %i.eh, 15
  %i.ej = and i32 %i.ei, 32768
  %i.ek = or i32 %i.ej, %i.ec                     ; 3 uses
  %i.el = lshr i32 %i.ek, 5
  %i.em = and i32 %i.el, 2047
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr @gaussian_sequence, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !45
  %i.eq = sext i16 %i.ep to i32
  %i.er = add nsw i32 %i.cp, %i.eq
  %i.es = ashr i32 %i.er, %i.cl
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.i.i
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !29
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 82
  br i1 %exitcond.not.i.i, label %bb.n, label %bb.o, !llvm.loop !47

iter.check:                                       ; preds = %iter.check, %.preheader53.i.preheader.i
  %indvars.iv99.i.i = phi i64 [ %indvars.iv.next100.i.i, %iter.check ], [ 3, %.preheader53.i.preheader.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %indvars.iv99.i.i ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 3 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ew, align 1, !tbaa !29
  %i.ex = sext <16 x i8> %wide.load to <16 x i32>
  %i.ey = add nsw <16 x i32> %broadcast.splat, %i.ex
  %i.ez = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ey, <16 x i32> splat (i32 -128))
  %i.fa = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ez, <16 x i32> splat (i32 127))
  %i.fb = trunc nsw <16 x i32> %i.fa to <16 x i8>
  store <16 x i8> %i.fb, ptr %i.ew, align 1, !tbaa !29
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 19 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !29
  %i.fd = sext <16 x i8> %wide.load.1 to <16 x i32>
  %i.fe = add nsw <16 x i32> %broadcast.splat, %i.fd
  %i.ff = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fe, <16 x i32> splat (i32 -128))
  %i.fg = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ff, <16 x i32> splat (i32 127))
  %i.fh = trunc nsw <16 x i32> %i.fg to <16 x i8>
  store <16 x i8> %i.fh, ptr %i.fc, align 1, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 35 ; 2 uses
  %wide.load.2 = load <16 x i8>, ptr %i.fi, align 1, !tbaa !29
  %i.fj = sext <16 x i8> %wide.load.2 to <16 x i32>
  %i.fk = add nsw <16 x i32> %broadcast.splat, %i.fj
  %i.fl = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fk, <16 x i32> splat (i32 -128))
  %i.fm = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.fl, <16 x i32> splat (i32 127))
  %i.fn = trunc nsw <16 x i32> %i.fm to <16 x i8>
  store <16 x i8> %i.fn, ptr %i.fi, align 1, !tbaa !29
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ev, i64 51 ; 2 uses
  %wide.load.3 = load <16 x i8>, ptr %i.fo, align 1, !tbaa !29
  %i.fp = sext <16 x i8> %wide.load.3 to <16 x i32>
  %i.fq = add nsw <16 x i32> %broadcast.splat, %i.fp
  %i.fr = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fq, <16 x i32> splat (i32 -128))
  %i.fs = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.fr, <16 x i32> splat (i32 127))
  %i.ft = trunc nsw <16 x i32> %i.fs to <16 x i8>
  store <16 x i8> %i.ft, ptr %i.fo, align 1, !tbaa !29
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ev, i64 67 ; 2 uses
  %wide.load92 = load <4 x i8>, ptr %i.fu, align 1, !tbaa !29
  %i.fv = sext <4 x i8> %wide.load92 to <4 x i32>
  %i.fw = add nsw <4 x i32> %broadcast.splat90, %i.fv
  %i.fx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fw, <4 x i32> splat (i32 -128))
  %i.fy = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fx, <4 x i32> splat (i32 127))
  %i.fz = trunc nsw <4 x i32> %i.fy to <4 x i8>
  store <4 x i8> %i.fz, ptr %i.fu, align 1, !tbaa !29
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ev, i64 71 ; 2 uses
  %wide.load92.1 = load <4 x i8>, ptr %i.ga, align 1, !tbaa !29
  %i.gb = sext <4 x i8> %wide.load92.1 to <4 x i32>
  %i.gc = add nsw <4 x i32> %broadcast.splat90, %i.gb
  %i.gd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gc, <4 x i32> splat (i32 -128))
  %i.ge = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gd, <4 x i32> splat (i32 127))
  %i.gf = trunc nsw <4 x i32> %i.ge to <4 x i8>
  store <4 x i8> %i.gf, ptr %i.ga, align 1, !tbaa !29
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ev, i64 75 ; 2 uses
  %wide.load92.2 = load <4 x i8>, ptr %i.gg, align 1, !tbaa !29
  %i.gh = sext <4 x i8> %wide.load92.2 to <4 x i32>
  %i.gi = add nsw <4 x i32> %broadcast.splat90, %i.gh
  %i.gj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gi, <4 x i32> splat (i32 -128))
end_hunk_0
begin_hunk_1_@ff_aom_apply_film_grain:bb.a
  %i.re = lshr <16 x i32> %step.add187, splat (i32 16)
  %i.rf = trunc <16 x i32> %i.rd to <16 x i8>
  %i.rg = trunc <16 x i32> %i.re to <16 x i8>
  %i.rh = add <16 x i8> %broadcast.splat182, %i.rf
  %i.ri = add <16 x i8> %broadcast.splat182, %i.rg
  %i.rj = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 16
  store <16 x i8> %i.rh, ptr %invariant.gep.i75.i, align 1, !tbaa !29
  store <16 x i8> %i.ri, ptr %i.rj, align 1, !tbaa !29
  %i.rk = icmp eq i64 %n.vec178, 32
  br i1 %i.rk, label %middle.block190, label %vector.body184.1

vector.body184.1:                                 ; preds = %vector.ph177
  %vec.ind.next189 = add nsw <16 x i32> %step.add187, %i.rb ; 2 uses
  %step.add187.1 = add nsw <16 x i32> %vec.ind.next189, %i.rb ; 2 uses
  %i.rl = lshr <16 x i32> %vec.ind.next189, splat (i32 16)
  %i.rm = lshr <16 x i32> %step.add187.1, splat (i32 16)
  %i.rn = trunc <16 x i32> %i.rl to <16 x i8>
  %i.ro = trunc <16 x i32> %i.rm to <16 x i8>
  %i.rp = add <16 x i8> %broadcast.splat182, %i.rn
  %i.rq = add <16 x i8> %broadcast.splat182, %i.ro
  %i.rr = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 32
  %i.rs = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 48
  store <16 x i8> %i.rp, ptr %i.rr, align 1, !tbaa !29
  store <16 x i8> %i.rq, ptr %i.rs, align 1, !tbaa !29
  %i.rt = icmp eq i64 %n.vec178, 64
  br i1 %i.rt, label %middle.block190, label %vector.body184.2

vector.body184.2:                                 ; preds = %vector.body184.1
  %vec.ind.next189.1 = add nsw <16 x i32> %step.add187.1, %i.rb ; 2 uses
  %step.add187.2 = add nsw <16 x i32> %vec.ind.next189.1, %i.rb ; 2 uses
  %i.ru = lshr <16 x i32> %vec.ind.next189.1, splat (i32 16)
  %i.rv = lshr <16 x i32> %step.add187.2, splat (i32 16)
  %i.rw = trunc <16 x i32> %i.ru to <16 x i8>
  %i.rx = trunc <16 x i32> %i.rv to <16 x i8>
  %i.ry = add <16 x i8> %broadcast.splat182, %i.rw
  %i.rz = add <16 x i8> %broadcast.splat182, %i.rx
  %i.sa = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 64
  %i.sb = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 80
  store <16 x i8> %i.ry, ptr %i.sa, align 1, !tbaa !29
  store <16 x i8> %i.rz, ptr %i.sb, align 1, !tbaa !29
  %i.sc = icmp eq i64 %n.vec178, 96
  br i1 %i.sc, label %middle.block190, label %vector.body184.3

vector.body184.3:                                 ; preds = %vector.body184.2
  %vec.ind.next189.2 = add nsw <16 x i32> %step.add187.2, %i.rb ; 2 uses
  %step.add187.3 = add nsw <16 x i32> %vec.ind.next189.2, %i.rb ; 2 uses
  %i.sd = lshr <16 x i32> %vec.ind.next189.2, splat (i32 16)
  %i.se = lshr <16 x i32> %step.add187.3, splat (i32 16)
  %i.sf = trunc <16 x i32> %i.sd to <16 x i8>
  %i.sg = trunc <16 x i32> %i.se to <16 x i8>
  %i.sh = add <16 x i8> %broadcast.splat182, %i.sf
  %i.si = add <16 x i8> %broadcast.splat182, %i.sg
  %i.sj = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 96
  %i.sk = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 112
  store <16 x i8> %i.sh, ptr %i.sj, align 1, !tbaa !29
  store <16 x i8> %i.si, ptr %i.sk, align 1, !tbaa !29
  %i.sl = icmp eq i64 %n.vec178, 128
  br i1 %i.sl, label %middle.block190, label %vector.body184.4

vector.body184.4:                                 ; preds = %vector.body184.3
  %vec.ind.next189.3 = add nsw <16 x i32> %step.add187.3, %i.rb ; 2 uses
  %step.add187.4 = add nsw <16 x i32> %vec.ind.next189.3, %i.rb ; 2 uses
  %i.sm = lshr <16 x i32> %vec.ind.next189.3, splat (i32 16)
  %i.sn = lshr <16 x i32> %step.add187.4, splat (i32 16)
  %i.so = trunc <16 x i32> %i.sm to <16 x i8>
  %i.sp = trunc <16 x i32> %i.sn to <16 x i8>
  %i.sq = add <16 x i8> %broadcast.splat182, %i.so
  %i.sr = add <16 x i8> %broadcast.splat182, %i.sp
  %i.ss = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 128
  %i.st = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 144
  store <16 x i8> %i.sq, ptr %i.ss, align 1, !tbaa !29
  store <16 x i8> %i.sr, ptr %i.st, align 1, !tbaa !29
  %i.su = icmp eq i64 %n.vec178, 160
  br i1 %i.su, label %middle.block190, label %vector.body184.5

vector.body184.5:                                 ; preds = %vector.body184.4
  %vec.ind.next189.4 = add nsw <16 x i32> %step.add187.4, %i.rb ; 2 uses
  %step.add187.5 = add nsw <16 x i32> %vec.ind.next189.4, %i.rb ; 2 uses
  %i.sv = lshr <16 x i32> %vec.ind.next189.4, splat (i32 16)
  %i.sw = lshr <16 x i32> %step.add187.5, splat (i32 16)
  %i.sx = trunc <16 x i32> %i.sv to <16 x i8>
  %i.sy = trunc <16 x i32> %i.sw to <16 x i8>
  %i.sz = add <16 x i8> %broadcast.splat182, %i.sx
  %i.ta = add <16 x i8> %broadcast.splat182, %i.sy
  %i.tb = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 160
  %i.tc = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 176
  store <16 x i8> %i.sz, ptr %i.tb, align 1, !tbaa !29
  store <16 x i8> %i.ta, ptr %i.tc, align 1, !tbaa !29
  %i.td = icmp eq i64 %n.vec178, 192
  br i1 %i.td, label %middle.block190, label %vector.body184.6

vector.body184.6:                                 ; preds = %vector.body184.5
  %vec.ind.next189.5 = add nsw <16 x i32> %step.add187.5, %i.rb ; 2 uses
  %step.add187.6 = add nsw <16 x i32> %vec.ind.next189.5, %i.rb
  %i.te = lshr <16 x i32> %vec.ind.next189.5, splat (i32 16)
  %i.tf = lshr <16 x i32> %step.add187.6, splat (i32 16)
  %i.tg = trunc <16 x i32> %i.te to <16 x i8>
  %i.th = trunc <16 x i32> %i.tf to <16 x i8>
  %i.ti = add <16 x i8> %broadcast.splat182, %i.tg
  %i.tj = add <16 x i8> %broadcast.splat182, %i.th
  %i.tk = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 192
  %i.tl = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 208
  store <16 x i8> %i.ti, ptr %i.tk, align 1, !tbaa !29
  store <16 x i8> %i.tj, ptr %i.tl, align 1, !tbaa !29
  br label %middle.block190

middle.block190:                                  ; preds = %vector.body184.6, %vector.body184.5, %vector.body184.4, %vector.body184.3, %vector.body184.2, %vector.body184.1, %vector.ph177
  %cmp.n191 = icmp eq i64 %n.vec178, %wide.trip.count.i74.i
  br i1 %cmp.n191, label %.loopexit.i71.i, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block190
  %min.epilog.iters.check197 = icmp eq i64 %i.qx, 0
  br i1 %min.epilog.iters.check197, label %.lr.ph.i76.i.preheader, label %vec.epilog.ph198, !prof !51

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check175, %vec.epilog.iter.check196
  %vec.epilog.resume.val192 = phi i64 [ %n.vec178, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check175 ]
  %bc.resume.val193 = phi i32 [ %i.ra, %vec.epilog.iter.check196 ], [ 32768, %vector.main.loop.iter.check175 ]
  %n.vec199 = and i64 %wide.trip.count.i74.i, 2147483644 ; 4 uses
  %i.tm = trunc nuw nsw i64 %n.vec199 to i32
  %i.tn = mul i32 %i.qu, %i.tm
  %i.to = add i32 %i.tn, 32768
  %broadcast.splatinsert200 = insertelement <4 x i8> poison, i8 %i.qf, i64 0
  %broadcast.splat201 = shufflevector <4 x i8> %broadcast.splatinsert200, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert202 = insertelement <4 x i32> poison, i32 %bc.resume.val193, i64 0
  %broadcast.splat203 = shufflevector <4 x i32> %broadcast.splatinsert202, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert204 = insertelement <4 x i32> poison, i32 %i.qu, i64 0
  %broadcast.splat205 = shufflevector <4 x i32> %broadcast.splatinsert204, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.tp = mul nsw <4 x i32> %broadcast.splat205, <i32 0, i32 1, i32 2, i32 3>
  %induction206 = add nsw <4 x i32> %broadcast.splat203, %i.tp
  %i.tq = shl nsw i32 %i.qu, 2
  %broadcast.splatinsert207 = insertelement <4 x i32> poison, i32 %i.tq, i64 0
  %broadcast.splat208 = shufflevector <4 x i32> %broadcast.splatinsert207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph198
  %index210 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph198 ], [ %index.next212, %vec.epilog.vector.body209 ] ; 2 uses
  %vec.ind211 = phi <4 x i32> [ %induction206, %vec.epilog.ph198 ], [ %vec.ind.next213, %vec.epilog.vector.body209 ] ; 2 uses
  %i.tr = lshr <4 x i32> %vec.ind211, splat (i32 16)
  %i.ts = trunc <4 x i32> %i.tr to <4 x i8>
  %i.tt = add <4 x i8> %broadcast.splat201, %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 %index210
  store <4 x i8> %i.tt, ptr %i.tu, align 1, !tbaa !29
  %index.next212 = add nuw i64 %index210, 4       ; 2 uses
  %vec.ind.next213 = add nsw <4 x i32> %vec.ind211, %broadcast.splat208
  %i.tv = icmp eq i64 %index.next212, %n.vec199
  br i1 %i.tv, label %vec.epilog.middle.block214, label %vec.epilog.vector.body209, !llvm.loop !58

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body209
  %cmp.n215 = icmp eq i64 %n.vec199, %wide.trip.count.i74.i
  br i1 %cmp.n215, label %.loopexit.i71.i, label %.lr.ph.i76.i.preheader

.lr.ph.i76.i.preheader:                           ; preds = %iter.check194, %vec.epilog.iter.check196, %vec.epilog.middle.block214
  %indvars.iv.i77.i.ph = phi i64 [ 0, %iter.check194 ], [ %n.vec178, %vec.epilog.iter.check196 ], [ %n.vec199, %vec.epilog.middle.block214 ]
  %.042.i78.i.ph = phi i32 [ 32768, %iter.check194 ], [ %i.ra, %vec.epilog.iter.check196 ], [ %i.to, %vec.epilog.middle.block214 ]
  br label %.lr.ph.i76.i

.lr.ph.i76.i:                                     ; preds = %.lr.ph.i76.i.preheader, %.lr.ph.i76.i
  %indvars.iv.i77.i = phi i64 [ %indvars.iv.next.i80.i, %.lr.ph.i76.i ], [ %indvars.iv.i77.i.ph, %.lr.ph.i76.i.preheader ] ; 2 uses
  %.042.i78.i = phi i32 [ %i.tz, %.lr.ph.i76.i ], [ %.042.i78.i.ph, %.lr.ph.i76.i.preheader ] ; 2 uses
  %i.tw = lshr i32 %.042.i78.i, 16
  %i.tx = trunc i32 %i.tw to i8
  %i.ty = add i8 %i.qf, %i.tx
  %gep.i79.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 %indvars.iv.i77.i
  store i8 %i.ty, ptr %gep.i79.i, align 1, !tbaa !29
  %i.tz = add nsw i32 %.042.i78.i, %i.qu
  %indvars.iv.next.i80.i = add nuw nsw i64 %indvars.iv.i77.i, 1 ; 2 uses
  %exitcond.not.i81.i = icmp eq i64 %indvars.iv.next.i80.i, %wide.trip.count.i74.i
  br i1 %exitcond.not.i81.i, label %.loopexit.i71.i, label %.lr.ph.i76.i, !llvm.loop !59

generate_scaling_8.exit82.i:                      ; preds = %.loopexit.i71.i, %bb.aa
  %i.ua = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.px, i64 1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !29
  %i.ud = sub nuw nsw i64 256, %i.pz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ua, i8 %i.uc, i64 %i.ud, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %generate_scaling_8.exit82.i, %bb.z
  %i.ue = icmp sgt i32 %i.cs, 0
  br i1 %i.ue, label %.lr.ph106.i, label %apply_film_grain_8.exit

.lr.ph106.i:                                      ; preds = %bb.ab
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.uh = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.uj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.uk = getelementptr i8, ptr %2, i64 140       ; 8 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.um = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.un = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.c, i64 6068 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uu = getelementptr inbounds nuw i8, ptr %i.c, i64 12136
  %i.uv = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.uw = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  br label %bb.ac

bb.ac:                                            ; preds = %apply_grain_row_8.exit.i, %.lr.ph106.i
  %.0104.i = phi i32 [ 0, %.lr.ph106.i ], [ %i.apn, %apply_grain_row_8.exit.i ] ; 8 uses
  %i.ux = load i32, ptr %i.al, align 8, !tbaa !32 ; 4 uses
  %i.uy = add nsw i32 %i.ux, %i.ct
  %i.uz = ashr i32 %i.uy, %i.ct
  %i.va = load i32, ptr %i.uf, align 4, !tbaa !60
  %i.vb = icmp eq i32 %i.va, 0
  %i.vc = zext i1 %i.vb to i32                    ; 3 uses
  %i.vd = load i32, ptr %i.am, align 4, !tbaa !33
  %i.ve = shl nuw nsw i32 %.0104.i, 5             ; 4 uses
  %i.vf = sub nsw i32 %i.vd, %i.ve                ; 3 uses
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.vf, i32 32) ; 2 uses
  %i.vg = add nsw i32 %spec.select.i.i, %i.cu
  %i.vh = ashr i32 %i.vg, %i.cu                   ; 8 uses
  %i.vi = load i32, ptr %i.ug, align 4, !tbaa !31
  %i.vj = mul nsw i32 %i.vi, %i.ve
  %i.vk = ashr i32 %i.vj, %i.cu
  %i.vl = sext i32 %i.vk to i64                   ; 6 uses
  %i.vm = load ptr, ptr %1, align 8, !tbaa !30
  %i.vn = load i32, ptr %i.ak, align 8, !tbaa !31
  %i.vo = mul i32 %i.vn, %i.ve
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr i8, ptr %i.vm, i64 %i.vp  ; 6 uses
  %i.vr = load i32, ptr %i.e, align 8, !tbaa !49
  %.not.i.i = icmp eq i32 %i.vr, 0
  br i1 %.not.i.i, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.vs = load i32, ptr %i.aj, align 8, !tbaa !31 ; 3 uses
  %i.vt = load ptr, ptr %0, align 8, !tbaa !30
  %i.vu = load i32, ptr %i.uh, align 8, !tbaa !61
  %i.vv = icmp ne i32 %i.vu, 0
  %i.vw = icmp ne i32 %.0104.i, 0                 ; 2 uses
  %i.vx = and i1 %i.vw, %i.vv                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.vy = load i32, ptr %i.ui, align 4, !tbaa !62
  %i.vz = load i64, ptr %i.cg, align 8, !tbaa !34
  %i.wa = trunc i64 %i.vz to i32                  ; 2 uses
  %wide.trip.count.i83.i = select i1 %i.vx, i64 2, i64 1 ; 6 uses
  br i1 %i.vx, label %vector.ph273, label %scalar.ph271

vector.ph273:                                     ; preds = %bb.ad
  %n.vec274 = and i64 %wide.trip.count.i83.i, 2
  %broadcast.splatinsert275 = insertelement <2 x i32> poison, i32 %i.wa, i64 0
  %broadcast.splat276 = shufflevector <2 x i32> %broadcast.splatinsert275, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert277 = insertelement <2 x i32> poison, i32 %.0104.i, i64 0
  %broadcast.splat278 = shufflevector <2 x i32> %broadcast.splatinsert277, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph273
  %index280 = phi i64 [ 0, %vector.ph273 ], [ %index.next282, %vector.body279 ] ; 2 uses
  %vec.ind281 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph273 ], [ %vec.ind.next283, %vector.body279 ] ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index280
  %i.wc = sub <2 x i32> %broadcast.splat278, %vec.ind281 ; 2 uses
  %i.wd = mul <2 x i32> %i.wc, splat (i32 9472)
  %i.we = add <2 x i32> %i.wd, splat (i32 45568)
  %i.wf = and <2 x i32> %i.we, splat (i32 65280)
  %i.wg = mul <2 x i32> %i.wc, splat (i32 173)
  %i.wh = add <2 x i32> %i.wg, splat (i32 105)
  %i.wi = and <2 x i32> %i.wh, splat (i32 255)
  %i.wj = or disjoint <2 x i32> %i.wi, %i.wf
  %i.wk = xor <2 x i32> %i.wj, %broadcast.splat276
  store <2 x i32> %i.wk, ptr %i.wb, align 4, !tbaa !31
  %index.next282 = add nuw i64 %index280, 2       ; 2 uses
  %vec.ind.next283 = add <2 x i32> %vec.ind281, splat (i32 2)
  %i.wl = icmp eq i64 %index.next282, %n.vec274
  br i1 %i.wl, label %.preheader232.i.i, label %vector.body279, !llvm.loop !63

.preheader232.i.i:                                ; preds = %scalar.ph271, %vector.body279
  %i.wm = mul i32 %i.vs, %i.ve
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr i8, ptr %i.vt, i64 %i.wn
  %i.wp = sext i32 %i.vs to i64                   ; 5 uses
  %i.wq = sext i32 %i.ux to i64
  %.not.i87.i = icmp eq i32 %i.vy, 0              ; 2 uses
  %..i.i = select i1 %.not.i87.i, i32 255, i32 235 ; 7 uses
  %.209.i.i = select i1 %.not.i87.i, i32 0, i32 16 ; 13 uses
  %.not313.i.i = icmp eq i32 %i.ux, 0
  br i1 %.not313.i.i, label %fgy_32x32xn_c_8.exit.i, label %.lr.ph311.i.i

.lr.ph311.i.i:                                    ; preds = %.preheader232.i.i
  %i.wr = tail call i32 @llvm.smin.i32(i32 %i.vf, i32 2)
  %wide.trip.count338.i.i = sext i32 %spec.select.i.i to i64
  %n.vec263 = and i64 %wide.trip.count.i83.i, 2
  %n.vec252 = and i64 %wide.trip.count.i83.i, 2
  %stride.check227 = icmp slt i32 %i.vs, 0
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %.209.i.i, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert239 = insertelement <4 x i32> poison, i32 %..i.i, i64 0
  %broadcast.splat240 = shufflevector <4 x i32> %broadcast.splatinsert239, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.ae

scalar.ph271:                                     ; preds = %bb.ad, %scalar.ph271
  %indvars.iv.i84.i = phi i64 [ %indvars.iv.next.i85.i, %scalar.ph271 ], [ 0, %bb.ad ] ; 3 uses
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i84.i
  %i.wt = trunc i64 %indvars.iv.i84.i to i32
  %i.wu = sub i32 %.0104.i, %i.wt                 ; 2 uses
  %i.wv = mul i32 %i.wu, 9472
  %i.ww = add i32 %i.wv, 45568
  %i.wx = and i32 %i.ww, 65280
  %i.wy = mul i32 %i.wu, 173
  %i.wz = add i32 %i.wy, 105
  %i.xa = and i32 %i.wz, 255
  %i.xb = or disjoint i32 %i.xa, %i.wx
  %i.xc = xor i32 %i.xb, %i.wa
  store i32 %i.xc, ptr %i.ws, align 4, !tbaa !31
  %indvars.iv.next.i85.i = add nuw nsw i64 %indvars.iv.i84.i, 1 ; 2 uses
  %exitcond.not.i86.i = icmp eq i64 %indvars.iv.next.i85.i, %wide.trip.count.i83.i
  br i1 %exitcond.not.i86.i, label %.preheader232.i.i, label %scalar.ph271, !llvm.loop !64

bb.ae:                                            ; preds = %._crit_edge297.i.i, %.lr.ph311.i.i
  %indvars.iv359.i.i = phi i64 [ 0, %.lr.ph311.i.i ], [ %indvars.iv.next360.i.i, %._crit_edge297.i.i ] ; 5 uses
  %i.xd = trunc i64 %indvars.iv359.i.i to i32
  %i.xe = sub i32 %i.ux, %i.xd                    ; 4 uses
  %i.xf = tail call i32 @llvm.umin.i32(i32 %i.xe, i32 32) ; 2 uses
  %i.xg = load i32, ptr %i.uh, align 8, !tbaa !61
  %i.xh = icmp ne i32 %i.xg, 0                    ; 2 uses
  %or.cond.i.i = and i1 %i.vw, %i.xh
  %i.xi = select i1 %or.cond.i.i, i32 %i.wr, i32 0 ; 4 uses
  %i.xj = icmp ne i64 %indvars.iv359.i.i, 0
  %or.cond3.i.i = and i1 %i.xj, %i.xh             ; 2 uses
  %i.xk = tail call i32 @llvm.umin.i32(i32 %i.xe, i32 2)
  %i.xl = select i1 %or.cond3.i.i, i32 %i.xk, i32 0 ; 9 uses
  br i1 %or.cond3.i.i, label %.preheader231.i.i.preheader, label %.loopexit.i88.i

.preheader231.i.i.preheader:                      ; preds = %bb.ae
  br i1 %i.vx, label %vector.body264, label %.preheader231.i.i

vector.body264:                                   ; preds = %.preheader231.i.i.preheader, %vector.body264
  %index265 = phi i64 [ %index.next267, %vector.body264 ], [ 0, %.preheader231.i.i.preheader ] ; 3 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index265
  %wide.load266 = load <2 x i32>, ptr %i.xm, align 8, !tbaa !31
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %index265
  store <2 x i32> %wide.load266, ptr %i.xn, align 8, !tbaa !31
  %index.next267 = add nuw i64 %index265, 2       ; 2 uses
  %i.xo = icmp eq i64 %index.next267, %n.vec263
  br i1 %i.xo, label %.loopexit.i88.i, label %vector.body264, !llvm.loop !65

.preheader231.i.i:                                ; preds = %.preheader231.i.i.preheader, %.preheader231.i.i
  %indvars.iv317.i.i = phi i64 [ %indvars.iv.next318.i.i, %.preheader231.i.i ], [ 0, %.preheader231.i.i.preheader ] ; 3 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv317.i.i
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !31
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %indvars.iv317.i.i
  store i32 %i.xq, ptr %i.xr, align 4, !tbaa !31
  %indvars.iv.next318.i.i = add nuw nsw i64 %indvars.iv317.i.i, 1 ; 2 uses
  %exitcond321.not.i.i = icmp eq i64 %indvars.iv.next318.i.i, %wide.trip.count.i83.i
  br i1 %exitcond321.not.i.i, label %.loopexit.i88.i, label %.preheader231.i.i, !llvm.loop !66

.loopexit.i88.i:                                  ; preds = %.preheader231.i.i, %vector.body264, %bb.ae
  br i1 %i.vx, label %vector.body253, label %scalar.ph249

vector.body253:                                   ; preds = %.loopexit.i88.i, %vector.body253
  %index254 = phi i64 [ %index.next256, %vector.body253 ], [ 0, %.loopexit.i88.i ] ; 3 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index254 ; 2 uses
  %wide.load255 = load <2 x i32>, ptr %i.xs, align 4, !tbaa !31 ; 4 uses
  %i.xt = ashr <2 x i32> %wide.load255, splat (i32 1) ; 2 uses
  %i.xu = lshr <2 x i32> %wide.load255, splat (i32 3)
  %i.xv = lshr <2 x i32> %wide.load255, splat (i32 12)
  %i.xw = xor <2 x i32> %i.xu, %i.xv
  %i.xx = xor <2 x i32> %i.xw, %wide.load255
  %i.xy = xor <2 x i32> %i.xx, %i.xt
  %i.xz = shl <2 x i32> %i.xy, splat (i32 15)
  %i.ya = and <2 x i32> %i.xz, splat (i32 32768)
  %i.yb = or <2 x i32> %i.ya, %i.xt               ; 2 uses
  store <2 x i32> %i.yb, ptr %i.xs, align 4, !tbaa !31
  %i.yc = lshr <2 x i32> %i.yb, splat (i32 8)
  %i.yd = and <2 x i32> %i.yc, splat (i32 255)
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index254
  store <2 x i32> %i.yd, ptr %i.ye, align 8, !tbaa !31
  %index.next256 = add nuw i64 %index254, 2       ; 2 uses
  %i.yf = icmp eq i64 %index.next256, %n.vec252
  br i1 %i.yf, label %.preheader230.i.i, label %vector.body253, !llvm.loop !67

.preheader230.i.i:                                ; preds = %scalar.ph249, %vector.body253
  %invariant.gep249.i.i = getelementptr i8, ptr %i.vq, i64 %indvars.iv359.i.i ; 6 uses
  %invariant.gep.i89.i = getelementptr i8, ptr %i.wo, i64 %indvars.iv359.i.i ; 6 uses
  %i.yg = icmp sgt i32 %i.vf, %i.xi
  br i1 %i.yg, label %.preheader228.lr.ph.i.i, label %.preheader229.i.i

.preheader228.lr.ph.i.i:                          ; preds = %.preheader230.i.i
  %i.yh = icmp ugt i32 %i.xe, %i.xl
  %i.yi = load i32, ptr %i.b, align 16            ; 2 uses
  %i.yj = ashr i32 %i.yi, 3
  %i.yk = and i32 %i.yj, -2                       ; 2 uses
  %i.yl = shl i32 %i.yi, 1
  %i.ym = and i32 %i.yl, 30                       ; 2 uses
  %invariant.op257.i.i = add nuw nsw i32 %i.ym, 9
  %invariant.op.i.i = add nsw i32 %i.yk, 9        ; 2 uses
  %.not314.i.i = icmp eq i32 %i.xl, 0
  %invariant.op259.i.i = add nuw nsw i32 %i.ym, 6
  %i.yn = load i32, ptr %i.uj, align 8            ; 2 uses
  %i.yo = ashr i32 %i.yn, 3
  %i.yp = and i32 %i.yo, -2                       ; 2 uses
  %i.yq = shl i32 %i.yn, 1
  %i.yr = and i32 %i.yq, 30
  %invariant.op261.i.i = add nuw nsw i32 %i.yr, 6
  %i.ys = zext nneg i32 %i.xl to i64
  %i.yt = zext nneg i32 %i.xf to i64
  %i.yu = sext i32 %i.xi to i64
  %i.yv = sext i32 %invariant.op.i.i to i64
  %i.yw = sext i32 %i.yp to i64
  %exitcond334.not.i.i = icmp eq i32 %i.xl, 1
  %i.yx = sext i32 %i.yk to i64
  %i.yy = sext i32 %i.yp to i64
  br label %.preheader228.i.i

scalar.ph249:                                     ; preds = %.loopexit.i88.i, %scalar.ph249
  %indvars.iv322.i.i = phi i64 [ %indvars.iv.next323.i.i, %scalar.ph249 ], [ 0, %.loopexit.i88.i ] ; 3 uses
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv322.i.i ; 2 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !31 ; 4 uses
  %i.zb = ashr i32 %i.za, 1                       ; 2 uses
  %i.zc = lshr i32 %i.za, 3
  %i.zd = lshr i32 %i.za, 12
  %i.ze = xor i32 %i.zc, %i.zd
  %i.zf = xor i32 %i.ze, %i.za
  %i.zg = xor i32 %i.zf, %i.zb
  %i.zh = shl i32 %i.zg, 15
  %i.zi = and i32 %i.zh, 32768
  %i.zj = or i32 %i.zi, %i.zb                     ; 2 uses
  store i32 %i.zj, ptr %i.yz, align 4, !tbaa !31
  %i.zk = lshr i32 %i.zj, 8
  %i.zl = and i32 %i.zk, 255
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv322.i.i
  store i32 %i.zl, ptr %i.zm, align 4, !tbaa !31
  %indvars.iv.next323.i.i = add nuw nsw i64 %indvars.iv322.i.i, 1 ; 2 uses
  %exitcond326.not.i.i = icmp eq i64 %indvars.iv.next323.i.i, %wide.trip.count.i83.i
  br i1 %exitcond326.not.i.i, label %.preheader230.i.i, label %scalar.ph249, !llvm.loop !68

.preheader229.i.i:                                ; preds = %._crit_edge.i91.i, %.preheader230.i.i
  %i.zn = icmp sgt i32 %i.xi, 0
  br i1 %i.zn, label %.preheader226.lr.ph.i.i, label %._crit_edge297.i.i

.preheader226.lr.ph.i.i:                          ; preds = %.preheader229.i.i
  %i.zo = icmp ugt i32 %i.xe, %i.xl
  %i.zp = load i32, ptr %i.b, align 16            ; 2 uses
  %i.zq = ashr i32 %i.zp, 3
  %i.zr = and i32 %i.zq, -2                       ; 4 uses
  %i.zs = shl i32 %i.zp, 1
  %i.zt = and i32 %i.zs, 30                       ; 2 uses
  %invariant.op298.i.i = add nuw nsw i32 %i.zt, 9
  %invariant.op265.i.i = add nsw i32 %i.zr, 6     ; 2 uses
  %i.zu = load i32, ptr %i.ul, align 4            ; 2 uses
  %i.zv = ashr i32 %i.zu, 3
  %i.zw = and i32 %i.zv, -2                       ; 4 uses
  %i.zx = shl i32 %i.zu, 1
  %i.zy = and i32 %i.zx, 30                       ; 2 uses
  %invariant.op300.i.i = add nuw nsw i32 %i.zy, 41
  %invariant.op267.i.i = add nsw i32 %i.zw, 6     ; 2 uses
  %.not315.i.i = icmp eq i32 %i.xl, 0
  %i.zz = load i32, ptr %i.um, align 4            ; 2 uses
  %i.aaa = ashr i32 %i.zz, 3
  %i.aab = and i32 %i.aaa, -2                     ; 2 uses
  %i.aac = shl i32 %i.zz, 1
  %i.aad = and i32 %i.aac, 30
  %i.aae = load i32, ptr %i.uj, align 8           ; 2 uses
  %i.aaf = ashr i32 %i.aae, 3
  %i.aag = and i32 %i.aaf, -2                     ; 2 uses
  %i.aah = shl i32 %i.aae, 1
  %i.aai = and i32 %i.aah, 30
  %i.aaj = zext nneg i32 %i.xl to i64             ; 10 uses
  %i.aak = zext nneg i32 %i.xf to i64             ; 4 uses
  %wide.trip.count357.i.i = zext nneg i32 %i.xi to i64 ; 2 uses
  %i.aal = zext nneg i32 %i.zt to i64
  %invariant.gep364.i.i = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %i.aal
  %i.aam = zext nneg i32 %i.zy to i64
  %invariant.gep366.i.i = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %i.aam
  %i.aan = zext nneg i32 %i.aad to i64
  %invariant.gep368.i.i = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %i.aan
  %i.aao = zext nneg i32 %i.aai to i64
  %invariant.gep370.i.i = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %i.aao
  %i.aap = add nuw nsw i64 %i.aaj, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aak, i64 %i.aap)
  %i.aaq = xor i64 %i.aaj, -1
  %i.aar = add nsw i64 %umax, %i.aaq              ; 2 uses
  %i.aas = add nuw nsw i32 %i.xl, 9               ; 2 uses
  %i.aat = add nsw i32 %i.aas, %i.zr              ; 2 uses
  %i.aau = add nsw i32 %i.aas, %i.zw              ; 2 uses
  %scevgep = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.aaj ; 2 uses
  %i.aav = add nuw nsw i64 %i.aaj, 1
  %umax218 = tail call i64 @llvm.umax.i64(i64 %i.aak, i64 %i.aav)
  %i.aaw = add nsw i64 %wide.trip.count357.i.i, -1
  %i.aax = mul nsw i64 %i.aaw, %i.wp
  %i.aay = add i64 %umax218, %i.aax               ; 2 uses
  %scevgep219 = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.aay ; 2 uses
  %scevgep220 = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.aaj
  %scevgep221 = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.aay
  %i.aaz = add nuw nsw i64 %i.aaj, 1
  %i.aba = tail call i64 @llvm.umax.i64(i64 %i.aak, i64 %i.aaz)
  %i.abb = sub nsw i64 %i.aba, %i.aaj             ; 3 uses
  %min.iters.check228 = icmp ult i64 %i.abb, 32
  %i.abc = trunc nsw i64 %i.aar to i32            ; 2 uses
  %i.abd = add i32 %i.aat, %i.abc
  %i.abe = icmp slt i32 %i.abd, %i.aat
  %i.abf = add i32 %i.aau, %i.abc
  %i.abg = icmp slt i32 %i.abf, %i.aau
  %i.abh = icmp ugt i64 %i.aar, 4294967295
  %i.abi = or i1 %i.abg, %i.abh
  %i.abj = or i1 %i.abe, %i.abi
  %bound0 = icmp ult ptr %scevgep, %scevgep221
  %bound1 = icmp ult ptr %scevgep220, %scevgep219
  %found.conflict = and i1 %bound0, %bound1
  %bound0224 = icmp ult ptr %scevgep, %i.cm
  %bound1225 = icmp ult ptr %i.uk, %scevgep219
  %found.conflict226 = and i1 %bound0224, %bound1225
  %i.abk = or i1 %found.conflict226, %stride.check227
  %conflict.rdx = or i1 %found.conflict, %i.abk
  %n.vec230 = and i64 %i.abb, -4                  ; 3 uses
  %i.abl = or disjoint i64 %n.vec230, %i.aaj
  %cmp.n247 = icmp eq i64 %i.abb, %n.vec230
  %i.abm = sext i32 %i.zr to i64
  %i.abn = sext i32 %i.zw to i64
  %i.abo = sext i32 %i.aab to i64
  %i.abp = sext i32 %i.aag to i64
  %exitcond347.not.i.i = icmp eq i32 %i.xl, 1
  %i.abq = sext i32 %i.zr to i64
  %i.abr = sext i32 %i.zw to i64
  %i.abs = sext i32 %i.aab to i64
  %i.abt = sext i32 %i.aag to i64
  br label %.preheader226.i.i

.preheader228.i.i:                                ; preds = %._crit_edge.i91.i, %.preheader228.lr.ph.i.i
  %indvars.iv335.i.i = phi i64 [ %i.yu, %.preheader228.lr.ph.i.i ], [ %indvars.iv.next336.i.i, %._crit_edge.i91.i ] ; 5 uses
  br i1 %i.yh, label %.lr.ph.i92.i, label %.preheader227.i.i

.lr.ph.i92.i:                                     ; preds = %.preheader228.i.i
  %i.abu = trunc nsw i64 %indvars.iv335.i.i to i32
  %.reass258.i.i = add i32 %invariant.op257.i.i, %i.abu
  %i.abv = sext i32 %.reass258.i.i to i64
  %i.abw = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.abv
  %i.abx = mul nsw i64 %indvars.iv335.i.i, %i.wp  ; 2 uses
  %gep250.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.abx
  %gep251.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.abx
  br label %bb.af

.preheader227.i.i:                                ; preds = %bb.af, %.preheader228.i.i
  br i1 %.not314.i.i, label %._crit_edge.i91.i, label %.lr.ph240.i.i

.lr.ph240.i.i:                                    ; preds = %.preheader227.i.i
  %i.aby = trunc i64 %indvars.iv335.i.i to i32
  %i.abz = add i32 %i.aby, 3                      ; 2 uses
  %.reass260.i.i = add i32 %invariant.op259.i.i, %i.abz
  %i.aca = sext i32 %.reass260.i.i to i64
  %i.acb = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.aca ; 2 uses
  %.reass262.i.i = add i32 %invariant.op261.i.i, %i.abz
  %i.acc = sext i32 %.reass262.i.i to i64
  %i.acd = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.acc ; 2 uses
  %i.ace = mul nsw i64 %indvars.iv335.i.i, %i.wp  ; 2 uses
  %gep253.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.ace ; 2 uses
  %gep255.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.ace ; 2 uses
  %i.acf = getelementptr inbounds i8, ptr %i.acb, i64 %i.yv
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !29
  %i.ach = sext i8 %i.acg to i32
  %i.aci = getelementptr i8, ptr %i.acd, i64 %i.yw
  %i.acj = getelementptr i8, ptr %i.aci, i64 41
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !29
  %i.acl = sext i8 %i.ack to i32
  %i.acm = mul nsw i32 %i.acl, 27
  %i.acn = mul nsw i32 %i.ach, 17
  %i.aco = add nsw i32 %i.acm, 16
  %i.acp = add nsw i32 %i.aco, %i.acn
  %i.acq = ashr i32 %i.acp, 5
  %i.acr = tail call i32 @llvm.smax.i32(i32 %i.acq, i32 -128)
  %.0.i223.i.i = tail call i32 @llvm.smin.i32(i32 %i.acr, i32 127)
  %i.acs = load i8, ptr %gep253.i.i, align 1, !tbaa !29 ; 2 uses
  %i.act = zext i8 %i.acs to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.act
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !29
  %i.acw = zext i8 %i.acv to i32
  %i.acx = mul nsw i32 %.0.i223.i.i, %i.acw
  %i.acy = load i32, ptr %i.uk, align 4, !tbaa !69 ; 2 uses
  %i.acz = shl nuw i32 1, %i.acy
  %i.ada = ashr i32 %i.acz, 1
  %i.adb = add nsw i32 %i.acx, %i.ada
  %i.adc = ashr i32 %i.adb, %i.acy
  %i.add = zext i8 %i.acs to i32
  %i.ade = add nsw i32 %i.adc, %i.add             ; 2 uses
  %i.adf = icmp slt i32 %i.ade, %.209.i.i
  %..i220.i.i = tail call i32 @llvm.smin.i32(i32 %i.ade, i32 %..i.i)
  %.0.i221.i.i = select i1 %i.adf, i32 %.209.i.i, i32 %..i220.i.i
  %i.adg = trunc i32 %.0.i221.i.i to i8
  store i8 %i.adg, ptr %gep255.i.i, align 1, !tbaa !29
  br i1 %exitcond334.not.i.i, label %._crit_edge.i91.i, label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph.i92.i
  %indvars.iv327.i.i = phi i64 [ %i.ys, %.lr.ph.i92.i ], [ %indvars.iv.next328.i.i, %bb.af ] ; 4 uses
  %i.adh = trunc nuw nsw i64 %indvars.iv327.i.i to i32
  %.reass.i.i = add i32 %invariant.op.i.i, %i.adh
  %i.adi = sext i32 %.reass.i.i to i64
  %i.adj = getelementptr inbounds i8, ptr %i.abw, i64 %i.adi
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !29
  %i.adl = sext i8 %i.adk to i32
  %gep.i93.i = getelementptr inbounds nuw i8, ptr %gep250.i.i, i64 %indvars.iv327.i.i
  %gep238.i.i = getelementptr inbounds nuw i8, ptr %gep251.i.i, i64 %indvars.iv327.i.i
  %i.adm = load i8, ptr %gep.i93.i, align 1, !tbaa !29 ; 2 uses
  %i.adn = zext i8 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !29
  %i.adq = zext i8 %i.adp to i32
  %i.adr = mul nsw i32 %i.adq, %i.adl
  %i.ads = load i32, ptr %i.uk, align 4, !tbaa !69 ; 2 uses
  %i.adt = shl nuw i32 1, %i.ads
  %i.adu = ashr i32 %i.adt, 1
  %i.adv = add nsw i32 %i.adu, %i.adr
  %i.adw = ashr i32 %i.adv, %i.ads
  %i.adx = zext i8 %i.adm to i32
  %i.ady = add nsw i32 %i.adw, %i.adx             ; 2 uses
  %i.adz = icmp slt i32 %i.ady, %.209.i.i
  %..i224.i.i = tail call i32 @llvm.smin.i32(i32 %i.ady, i32 %..i.i)
  %.0.i225.i.i = select i1 %i.adz, i32 %.209.i.i, i32 %..i224.i.i
  %i.aea = trunc i32 %.0.i225.i.i to i8
  store i8 %i.aea, ptr %gep238.i.i, align 1, !tbaa !29
  %indvars.iv.next328.i.i = add nuw nsw i64 %indvars.iv327.i.i, 1 ; 2 uses
  %i.aeb = icmp samesign ult i64 %indvars.iv.next328.i.i, %i.yt
  br i1 %i.aeb, label %bb.af, label %.preheader227.i.i, !llvm.loop !70

._crit_edge.i91.i:                                ; preds = %bb.ag, %.lr.ph240.i.i, %.preheader227.i.i
  %indvars.iv.next336.i.i = add nsw i64 %indvars.iv335.i.i, 1 ; 2 uses
  %exitcond339.not.i.i = icmp eq i64 %indvars.iv.next336.i.i, %wide.trip.count338.i.i
  br i1 %exitcond339.not.i.i, label %.preheader229.i.i, label %.preheader228.i.i, !llvm.loop !71

bb.ag:                                            ; preds = %.lr.ph240.i.i
  %i.aec = getelementptr i8, ptr %i.acb, i64 %i.yx
  %i.aed = getelementptr i8, ptr %i.aec, i64 10
  %i.aee = load i8, ptr %i.aed, align 2, !tbaa !29
  %i.aef = sext i8 %i.aee to i32
  %i.aeg = getelementptr i8, ptr %i.acd, i64 %i.yy
  %i.aeh = getelementptr i8, ptr %i.aeg, i64 42
  %i.aei = load i8, ptr %i.aeh, align 2, !tbaa !29
  %i.aej = sext i8 %i.aei to i32
  %i.aek = mul nsw i32 %i.aej, 17
  %i.ael = mul nsw i32 %i.aef, 27
  %i.aem = add nsw i32 %i.aek, 16
  %i.aen = add nsw i32 %i.aem, %i.ael
  %i.aeo = ashr i32 %i.aen, 5
  %i.aep = tail call i32 @llvm.smax.i32(i32 %i.aeo, i32 -128)
  %.0.i223.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.aep, i32 127)
  %gep246.i.i.1 = getelementptr inbounds nuw i8, ptr %gep253.i.i, i64 1
  %gep248.i.i.1 = getelementptr inbounds nuw i8, ptr %gep255.i.i, i64 1
  %i.aeq = load i8, ptr %gep246.i.i.1, align 1, !tbaa !29 ; 2 uses
  %i.aer = zext i8 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aer
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !29
  %i.aeu = zext i8 %i.aet to i32
  %i.aev = mul nsw i32 %.0.i223.i.i.1, %i.aeu
  %i.aew = load i32, ptr %i.uk, align 4, !tbaa !69 ; 2 uses
  %i.aex = shl nuw i32 1, %i.aew
  %i.aey = ashr i32 %i.aex, 1
  %i.aez = add nsw i32 %i.aev, %i.aey
  %i.afa = ashr i32 %i.aez, %i.aew
  %i.afb = zext i8 %i.aeq to i32
  %i.afc = add nsw i32 %i.afa, %i.afb             ; 2 uses
  %i.afd = icmp slt i32 %i.afc, %.209.i.i
  %..i220.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.afc, i32 %..i.i)
  %.0.i221.i.i.1 = select i1 %i.afd, i32 %.209.i.i, i32 %..i220.i.i.1
  %i.afe = trunc i32 %.0.i221.i.i.1 to i8
  store i8 %i.afe, ptr %gep248.i.i.1, align 1, !tbaa !29
  br label %._crit_edge.i91.i

.preheader226.i.i:                                ; preds = %._crit_edge275.i.i, %.preheader226.lr.ph.i.i
  %indvars.iv348.i.i = phi i64 [ 0, %.preheader226.lr.ph.i.i ], [ %indvars.iv.next349.i.i, %._crit_edge275.i.i ] ; 8 uses
  br i1 %i.zo, label %.lr.ph264.i.i, label %.preheader.i.i

.lr.ph264.i.i:                                    ; preds = %.preheader226.i.i
  %i.aff = trunc i64 %indvars.iv348.i.i to i32    ; 2 uses
  %i.afg = add i32 %invariant.op298.i.i, %i.aff
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.afh ; 2 uses
  %i.afj = add i32 %invariant.op300.i.i, %i.aff
  %i.afk = sext i32 %i.afj to i64
  %i.afl = getelementptr inbounds [82 x i8], ptr %i.c, i64 %i.afk ; 2 uses
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c_16.w, i64 %indvars.iv348.i.i ; 2 uses
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !31 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !31 ; 2 uses
  %i.afq = mul nsw i64 %indvars.iv348.i.i, %i.wp  ; 2 uses
  %gep289.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.afq ; 2 uses
  %gep291.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.afq ; 2 uses
  %brmerge = select i1 %min.iters.check228, i1 true, i1 %i.abj
  %brmerge298 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge298, label %scalar.ph.preheader, label %vector.ph229

vector.ph229:                                     ; preds = %.lr.ph264.i.i
  %i.afr = load i32, ptr %i.uk, align 4, !tbaa !69, !alias.scope !72
  %broadcast.splatinsert231 = insertelement <4 x i32> poison, i32 %i.afr, i64 0
  %broadcast.splat232 = shufflevector <4 x i32> %broadcast.splatinsert231, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afs = shl nuw <4 x i32> splat (i32 1), %broadcast.splat232
  %i.aft = ashr <4 x i32> %i.afs, splat (i32 1)
  %broadcast.splatinsert233 = insertelement <4 x i32> poison, i32 %i.afn, i64 0
  %broadcast.splat234 = shufflevector <4 x i32> %broadcast.splatinsert233, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert235 = insertelement <4 x i32> poison, i32 %i.afp, i64 0
  %broadcast.splat236 = shufflevector <4 x i32> %broadcast.splatinsert235, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph229
  %index242 = phi i64 [ 0, %vector.ph229 ], [ %index.next245, %vector.body241 ] ; 2 uses
  %i.afu = or disjoint i64 %index242, %i.aaj      ; 3 uses
  %i.afv = trunc i64 %i.afu to i32
  %i.afw = add i32 %i.afv, 3                      ; 2 uses
  %i.afx = add i32 %i.afw, %invariant.op265.i.i
  %i.afy = sext i32 %i.afx to i64
  %i.afz = getelementptr inbounds i8, ptr %i.afi, i64 %i.afy
  %wide.load243.a = load <4 x i8>, ptr %i.afz, align 1, !tbaa !29
end_hunk_1
