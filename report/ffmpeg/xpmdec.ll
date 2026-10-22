Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xpmdec?download=true
inline.NumInlined: 27
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.94 = private unnamed_addr constant [11 x i8] c"MediumBlue\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"MediumOrchid\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"MediumPurple\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"MediumSeaGreen\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"MediumSlateBlue\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"MediumSpringGreen\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"MediumTurquoise\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"MediumVioletRed\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"MidnightBlue\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"MintCream\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"MistyRose\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"Moccasin\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"NavajoWhite\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"Navy\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"OldLace\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"Olive\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"OliveDrab\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"Orange\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"OrangeRed\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"Orchid\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"PaleGoldenRod\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"PaleGreen\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"PaleTurquoise\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"PaleVioletRed\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"PapayaWhip\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"PeachPuff\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"Peru\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"Pink\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"Plum\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"PowderBlue\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"Purple\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"RosyBrown\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"RoyalBlue\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"SaddleBrown\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"Salmon\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"SandyBrown\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"SeaGreen\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"SeaShell\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"Sienna\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"Silver\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"SkyBlue\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"SlateBlue\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"SlateGray\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"Snow\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"SpringGreen\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"SteelBlue\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"Tan\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"Teal\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"Thistle\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"Tomato\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"Turquoise\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"Violet\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"Wheat\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"WhiteSmoke\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"YellowGreen\00", align 1
@color_table = internal unnamed_addr constant [141 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.12, i32 -984833, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.13, i32 -332841, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.14, i32 -16711681, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.15, i32 -8388652, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.16, i32 -983041, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.17, i32 -657956, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.18, i32 -6972, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.19, i32 -16777216, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.20, i32 -5171, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.21, i32 -16776961, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.22, i32 -7722014, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.23, i32 -5952982, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.24, i32 -2180985, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.25, i32 -10510688, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.26, i32 -8388864, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.27, i32 -2987746, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.28, i32 -32944, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.29, i32 -10185235, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.30, i32 -1828, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.31, i32 -2354116, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.32, i32 -16711681, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.33, i32 -16777077, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.34, i32 -16741493, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.35, i32 -4684277, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.36, i32 -5658199, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.37, i32 -16751616, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.38, i32 -4343957, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.39, i32 -7667573, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.40, i32 -11179217, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.41, i32 -29696, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.42, i32 -6737204, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.43, i32 -7667712, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.44, i32 -1468806, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.45, i32 -7357297, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.46, i32 -12042869, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.47, i32 -13676721, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.48, i32 -16724271, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.49, i32 -7077677, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.50, i32 -60269, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.51, i32 -16728065, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.52, i32 -9868951, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.53, i32 -14774017, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.54, i32 -5103070, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.55, i32 -1296, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.56, i32 -14513374, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.57, i32 -65281, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.58, i32 -2302756, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.59, i32 -460545, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.60, i32 -10496, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.61, i32 -2448096, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.62, i32 -4276546, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.63, i32 -16711936, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.64, i32 -5374161, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.65, i32 -983056, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.66, i32 -38476, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.67, i32 -3318692, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.68, i32 -11861886, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.69, i32 -16, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.70, i32 -989556, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.71, i32 -1644806, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.72, i32 -3851, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.73, i32 -8586240, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.74, i32 -1331, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.75, i32 -5383962, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.76, i32 -1015680, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.77, i32 -2031617, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.78, i32 -329006, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.79, i32 -7278960, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.80, i32 -2894893, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.81, i32 -18751, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.82, i32 -24454, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.83, i32 -14634326, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.84, i32 -7876870, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.85, i32 -8943463, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.86, i32 -5192482, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.87, i32 -32, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.88, i32 -16711936, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.89, i32 -13447886, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.90, i32 -331546, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.91, i32 -65281, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.92, i32 -5230496, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.93, i32 -10039894, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.94, i32 -16777011, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.95, i32 -4565549, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.96, i32 -7114536, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.97, i32 -12799119, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.98, i32 -8689426, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.99, i32 -16713062, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.100, i32 -12004916, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.101, i32 -3730043, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.102, i32 -15132304, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.103, i32 -655366, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.104, i32 -6943, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.105, i32 -6987, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.106, i32 -8531, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.107, i32 -16777088, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.108, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.109, i32 -133658, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.110, i32 -8355840, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.111, i32 -9728477, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.112, i32 -23296, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.113, i32 -47872, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.114, i32 -2461482, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.115, i32 -1120086, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.116, i32 -6751336, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.117, i32 -5247250, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.118, i32 -2592621, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.119, i32 -4139, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.120, i32 -9543, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.121, i32 -3308225, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.122, i32 -16181, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.123, i32 -2252579, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.124, i32 -5185306, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.125, i32 -6283024, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.126, i32 -65536, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.127, i32 -4419697, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.128, i32 -12490271, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.129, i32 -7650029, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.130, i32 -360334, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.131, i32 -744352, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.132, i32 -13726889, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.133, i32 -2578, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.134, i32 -6270419, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.135, i32 -4144960, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.136, i32 -7876885, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.137, i32 -9807155, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.138, i32 -9404272, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.139, i32 -1286, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.140, i32 -16711809, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.141, i32 -12156236, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.142, i32 -2968436, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.143, i32 -16744320, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.144, i32 -2572328, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.145, i32 -40121, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.146, i32 -12525360, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.147, i32 -1146130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.148, i32 -663885, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.149, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.150, i32 -657931, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.151, i32 -256, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.152, i32 -6632142, [4 x i8] zeroinitializer }], align 16

; Function Attrs: nounwind uwtable
define internal i32 @xpm_decode_frame(ptr noundef initializes((136, 140)) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 28, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41
  %i.l = sext i32 %i.k to i64
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.l) #9
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = load i32, ptr %i.j, align 8, !tbaa !41
  %i.q = sext i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.o, i64 %i.q, i1 false)
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.s = load i32, ptr %i.j, align 8, !tbaa !41
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !32
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.w = load i32, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  %i.z = ptrtoint ptr %i.y to i64                 ; 7 uses
  %i.aa = icmp sgt i32 %i.w, 9
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0103188 = phi ptr [ %i.ak, %bb.c ], [ %i.v, %bb.b ] ; 6 uses
  %i.ab = load i64, ptr %.0103188, align 1
  %i.ac = xor i64 %i.ab, 3035511156318939695
  %i.ad = getelementptr i8, ptr %.0103188, i64 8
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = xor i64 %i.af, 47
  %i.ah = or i64 %i.ac, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not120 = icmp eq i32 %i.aj, 0
  br i1 %.not120, label %.lr.ph77.split.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.0103188, i64 1 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.z, %i.al
  %i.an = icmp sgt i64 %i.am, 9
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #9
  br label %.thread

.lr.ph77.split.i:                                 ; preds = %.lr.ph, %.critedge6.i
  %.04874.i = phi i32 [ %i.bg, %.critedge6.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.ao = sext i32 %.04874.i to i64
  %i.ap = getelementptr inbounds i8, ptr %.0103188, i64 %i.ao ; 5 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !32
  switch i8 %i.aq, label %.critedge6.i [
    i8 0, label %mod_strcspn.exit
    i8 47, label %bb.d
    i8 34, label %mod_strcspn.exit
  ]

bb.d:                                             ; preds = %.lr.ph77.split.i
  %i.ar = getelementptr i8, ptr %i.ap, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  switch i8 %i.as, label %.critedge6.i [
    i8 42, label %bb.e
    i8 47, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.at = add i32 %.04874.i, 2
  %i.au = sext i32 %i.at to i64
  br label %bb.f

bb.f:                                             ; preds = %.critedge4.i, %bb.e
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %.critedge4.i ], [ %i.au, %bb.e ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.0103188, i64 %indvars.iv89.i ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !32
  switch i8 %i.aw, label %.critedge4.i [
    i8 0, label %.critedge2.i
    i8 42, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr i8, ptr %i.av, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %.not64.i = icmp eq i8 %i.ay, 47
  br i1 %.not64.i, label %.critedge2.i, label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.g, %bb.f
  %indvars.iv.next90.i = add nsw i64 %indvars.iv89.i, 1
  br label %bb.f, !llvm.loop !0

.critedge2.i:                                     ; preds = %bb.g, %bb.f
  %i.az = trunc nsw i64 %indvars.iv89.i to i32
  %i.ba = add nsw i32 %i.az, 1
  br label %.critedge6.i

bb.h:                                             ; preds = %bb.d
  %i.bb = add i32 %.04874.i, 2
  %i.bc = sext i32 %i.bb to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.0103188, i64 %indvars.iv.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !32
  switch i8 %i.be, label %bb.j [
    i8 0, label %.critedge6.loopexit85.i
    i8 10, label %.critedge6.loopexit85.i
  ]

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  br label %bb.i, !llvm.loop !1

.critedge6.loopexit85.i:                          ; preds = %bb.i, %bb.i
  %i.bf = trunc nsw i64 %indvars.iv.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.lr.ph77.split.i, %bb.d, %.critedge6.loopexit85.i, %.critedge2.i
  %.3.i = phi i32 [ %i.ba, %.critedge2.i ], [ %i.bf, %.critedge6.loopexit85.i ], [ %.04874.i, %.lr.ph77.split.i ], [ %.04874.i, %bb.d ]
  %i.bg = add nsw i32 %.3.i, 1
  br label %.lr.ph77.split.i

mod_strcspn.exit:                                 ; preds = %.lr.ph77.split.i, %.lr.ph77.split.i
  %i.bh = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %.not121 = icmp eq i32 %i.bh, 4
  br i1 %.not121, label %bb.l, label %bb.k

bb.k:                                             ; preds = %mod_strcspn.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %.thread

bb.l:                                             ; preds = %mod_strcspn.exit
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !44
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !44
  %i.bk = call i32 @ff_set_dimensions(ptr noundef %0, i32 noundef %i.bi, i32 noundef %i.bj) #9 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !44  ; 3 uses
  %i.bn = add i32 %i.bm, -5
  %or.cond = icmp ult i32 %i.bn, -4
  br i1 %or.cond, label %bb.n, label %.lr.ph191

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.bm) #9
  br label %.thread

.lr.ph191:                                        ; preds = %bb.m
  switch i32 %i.bm, label %.lr.ph191.3 [
    i32 1, label %._crit_edge192
    i32 2, label %._crit_edge192.fold.split
    i32 3, label %._crit_edge192.fold.split281
  ]

.lr.ph191.3:                                      ; preds = %.lr.ph191
  br label %._crit_edge192

._crit_edge192.fold.split:                        ; preds = %.lr.ph191
  br label %._crit_edge192

._crit_edge192.fold.split281:                     ; preds = %.lr.ph191
  br label %._crit_edge192

._crit_edge192:                                   ; preds = %.lr.ph191, %._crit_edge192.fold.split281, %._crit_edge192.fold.split, %.lr.ph191.3
  %.0100190.lcssa = phi i64 [ 892, %.lr.ph191 ], [ 9891893764, %.lr.ph191.3 ], [ 198916, %._crit_edge192.fold.split ], [ 44358268, %._crit_edge192.fold.split281 ]
  %.lcssa272 = phi i64 [ 223, %.lr.ph191 ], [ 2472973441, %.lr.ph191.3 ], [ 49729, %._crit_edge192.fold.split ], [ 11089567, %._crit_edge192.fold.split281 ]
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !44  ; 3 uses
  %i.bp = icmp slt i32 %i.bo, 1
  %i.bq = zext nneg i32 %i.bo to i64
  %i.br = icmp samesign ult i64 %.lcssa272, %i.bq
  %or.cond125 = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond125, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge192
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.bo) #9
  br label %.thread

bb.p:                                             ; preds = %._crit_edge192
  %i.bs = call fastcc i64 @mod_strcspn(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.9)
  %i.bt = getelementptr i8, ptr %i.ap, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 1      ; 3 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.z, %i.bv
  %i.bx = icmp slt i64 %i.bw, 1
  br i1 %i.bx, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !45
  %i.ca = icmp sgt i32 %i.bz, 47
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = load i32, ptr %i.j, align 8, !tbaa !41
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.cc = call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @av_fast_padded_malloc(ptr noundef %i.f, ptr noundef nonnull %i.ce, i64 noundef %.0100190.lcssa) #9
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %.not122 = icmp eq ptr %i.cf, null
  br i1 %.not122, label %.thread, label %.preheader172

.preheader172:                                    ; preds = %bb.t
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !44
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph196, label %.preheader168

bb.u:                                             ; preds = %ascii2index.exit.thread157
  %i.ci = add nuw nsw i32 %.1195, 1               ; 2 uses
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !44
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph196, label %.preheader168, !llvm.loop !35

.preheader168:                                    ; preds = %bb.u, %.preheader172
  %i.cl = phi ptr [ %i.cf, %.preheader172 ], [ %i.ei, %bb.u ]
  %.1104.lcssa = phi ptr [ %i.bu, %.preheader172 ], [ %i.en, %bb.u ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !47
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader168
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.af

.lr.ph196:                                        ; preds = %.preheader172, %bb.u
  %.1195 = phi i32 [ %i.ci, %bb.u ], [ 0, %.preheader172 ]
  %.1104194 = phi ptr [ %i.en, %bb.u ], [ %i.bu, %.preheader172 ] ; 5 uses
  %.not.i126 = icmp eq ptr %.1104194, null
  br i1 %.not.i126, label %mod_strcspn.exit146, label %.lr.ph77.split.i128

.lr.ph77.split.i128:                              ; preds = %.lr.ph196, %.critedge6.i132
  %.04874.i129 = phi i32 [ %i.dj, %.critedge6.i132 ], [ 0, %.lr.ph196 ] ; 6 uses
  %i.cr = sext i32 %.04874.i129 to i64
  %i.cs = getelementptr inbounds i8, ptr %.1104194, i64 %i.cr ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !32
  switch i8 %i.ct, label %.critedge6.i132 [
    i8 0, label %mod_strcspn.exit146.loopexit
    i8 47, label %bb.v
    i8 34, label %mod_strcspn.exit146.loopexit
  ]

bb.v:                                             ; preds = %.lr.ph77.split.i128
  %i.cu = getelementptr i8, ptr %i.cs, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !32
  switch i8 %i.cv, label %.critedge6.i132 [
    i8 42, label %bb.w
    i8 47, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.cw = add i32 %.04874.i129, 2
  %i.cx = sext i32 %i.cw to i64
  br label %bb.x

bb.x:                                             ; preds = %.critedge4.i137, %bb.w
  %indvars.iv89.i135 = phi i64 [ %indvars.iv.next90.i138, %.critedge4.i137 ], [ %i.cx, %bb.w ] ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.1104194, i64 %indvars.iv89.i135 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !32
  switch i8 %i.cz, label %.critedge4.i137 [
    i8 0, label %.critedge2.i139
    i8 42, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr i8, ptr %i.cy, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !32
  %.not64.i136 = icmp eq i8 %i.db, 47
  br i1 %.not64.i136, label %.critedge2.i139, label %.critedge4.i137

.critedge4.i137:                                  ; preds = %bb.y, %bb.x
  %indvars.iv.next90.i138 = add nsw i64 %indvars.iv89.i135, 1
  br label %bb.x, !llvm.loop !0

.critedge2.i139:                                  ; preds = %bb.y, %bb.x
  %i.dc = trunc nsw i64 %indvars.iv89.i135 to i32
  %i.dd = add nsw i32 %i.dc, 1
  br label %.critedge6.i132

bb.z:                                             ; preds = %bb.v
  %i.de = add i32 %.04874.i129, 2
  %i.df = sext i32 %i.de to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i134, %bb.ab ], [ %i.df, %bb.z ] ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.1104194, i64 %indvars.iv.i130
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !32
  switch i8 %i.dh, label %bb.ab [
    i8 0, label %.critedge6.loopexit85.i131
    i8 10, label %.critedge6.loopexit85.i131
  ]

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next.i134 = add nsw i64 %indvars.iv.i130, 1
  br label %bb.aa, !llvm.loop !1

.critedge6.loopexit85.i131:                       ; preds = %bb.aa, %bb.aa
  %i.di = trunc nsw i64 %indvars.iv.i130 to i32
  br label %.critedge6.i132

.critedge6.i132:                                  ; preds = %.lr.ph77.split.i128, %bb.v, %.critedge6.loopexit85.i131, %.critedge2.i139
  %.3.i133 = phi i32 [ %i.dd, %.critedge2.i139 ], [ %i.di, %.critedge6.loopexit85.i131 ], [ %.04874.i129, %.lr.ph77.split.i128 ], [ %.04874.i129, %bb.v ]
  %i.dj = add nsw i32 %.3.i133, 1
  br label %.lr.ph77.split.i128

mod_strcspn.exit146.loopexit:                     ; preds = %.lr.ph77.split.i128, %.lr.ph77.split.i128
  %i.dk = sext i32 %.04874.i129 to i64
  br label %mod_strcspn.exit146

mod_strcspn.exit146:                              ; preds = %mod_strcspn.exit146.loopexit, %.lr.ph196
  %.04868.i145 = phi i64 [ 0, %.lr.ph196 ], [ %i.dk, %mod_strcspn.exit146.loopexit ]
  %i.dl = getelementptr i8, ptr %.1104194, i64 %.04868.i145
  %i.dm = getelementptr i8, ptr %i.dl, i64 1      ; 3 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.z, %i.dn
  %i.dp = load i32, ptr %i.b, align 4, !tbaa !44  ; 3 uses
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = icmp slt i64 %i.do, %i.dq
  br i1 %i.dr, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %mod_strcspn.exit146
  %i.ds = getelementptr inbounds i8, ptr %i.dm, i64 %i.dq
  %i.dt = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ds, ptr noundef nonnull dereferenceable(1) @.str.10) #10 ; 2 uses
  %.not123 = icmp eq ptr %i.dt, null
  br i1 %.not123, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2 ; 4 uses
  %i.dv = call i64 @strcspn(ptr noundef nonnull %i.du, ptr noundef nonnull @.str.11) #10
  %i.dw = icmp sgt i32 %i.dp, 0
  br i1 %i.dw, label %.lr.ph.i, label %ascii2index.exit.thread157

.lr.ph.i:                                         ; preds = %bb.ad, %bb.ae
  %.019.i = phi i32 [ %i.ef, %bb.ae ], [ 0, %bb.ad ]
  %.01118.i = phi i32 [ %i.ee, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %.01217.i = phi i32 [ %i.ed, %bb.ae ], [ 0, %bb.ad ]
  %.01316.i = phi ptr [ %i.ea, %bb.ae ], [ %i.dm, %bb.ad ] ; 2 uses
  %i.dx = load i8, ptr %.01316.i, align 1, !tbaa !32 ; 2 uses
  %i.dy = add i8 %i.dx, 1
  %or.cond.i = icmp ult i8 %i.dy, 33
  br i1 %or.cond.i, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i
  %i.dz = zext i8 %i.dx to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %.01316.i, i64 1
  %i.eb = add nsw i32 %i.dz, -32
  %i.ec = mul nsw i32 %i.eb, %.01118.i
  %i.ed = add nsw i32 %i.ec, %.01217.i            ; 4 uses
  %i.ee = mul nuw nsw i32 %.01118.i, 223
  %i.ef = add nuw nsw i32 %.019.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ef, %i.dp
  br i1 %exitcond.not.i, label %ascii2index.exit, label %.lr.ph.i, !llvm.loop !36

ascii2index.exit:                                 ; preds = %bb.ae
  %i.eg = icmp slt i32 %i.ed, 0
  br i1 %i.eg, label %.thread, label %ascii2index.exit.thread157

ascii2index.exit.thread157:                       ; preds = %bb.ad, %ascii2index.exit
  %.014.i159 = phi i32 [ %i.ed, %ascii2index.exit ], [ 0, %bb.ad ]
  %i.eh = call fastcc i32 @color_string_to_rgba(ptr noundef %i.du, i64 noundef %i.dv)
  %i.ei = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.ej = zext nneg i32 %.014.i159 to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  store i32 %i.eh, ptr %i.ek, align 4, !tbaa !44
  %i.el = call fastcc i64 @mod_strcspn(ptr noundef nonnull %i.du, ptr noundef nonnull @.str.9)
  %i.em = getelementptr i8, ptr %i.du, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 1      ; 3 uses
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.z, %i.eo
  %i.eq = icmp sgt i64 %i.ep, 0
  br i1 %i.eq, label %bb.u, label %.thread

bb.af:                                            ; preds = %.lr.ph206, %._crit_edge202
  %.2205 = phi i32 [ 0, %.lr.ph206 ], [ %i.gk, %._crit_edge202 ] ; 2 uses
  %.3204 = phi ptr [ %.1104.lcssa, %.lr.ph206 ], [ %i.gj, %._crit_edge202 ] ; 3 uses
  %i.er = ptrtoint ptr %.3204 to i64
  %i.es = sub i64 %i.z, %i.er
  %i.et = icmp slt i64 %i.es, 1
  br i1 %i.et, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = call fastcc i64 @mod_strcspn(ptr noundef %.3204, ptr noundef nonnull @.str.4)
  %i.ev = getelementptr i8, ptr %.3204, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 1      ; 3 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = sub i64 %i.z, %i.ex
  %i.ez = icmp slt i64 %i.ey, 1
  br i1 %i.ez, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ag
  %i.fa = load i32, ptr %i.cq, align 8, !tbaa !48
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph201.preheader, label %._crit_edge202

.lr.ph201.preheader:                              ; preds = %.preheader
  %i.fc = load ptr, ptr %1, align 8, !tbaa !49
  %i.fd = load i32, ptr %i.cp, align 8, !tbaa !44
  %i.fe = mul nsw i32 %i.fd, %.2205
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fc, i64 %i.ff
  %.pre = load i32, ptr %i.b, align 4, !tbaa !44
  br label %.lr.ph201

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %ascii2index.exit155.thread164
  %i.fh = phi i32 [ %i.gb, %ascii2index.exit155.thread164 ], [ %.pre, %.lr.ph201.preheader ] ; 3 uses
  %.099200 = phi ptr [ %i.ga, %ascii2index.exit155.thread164 ], [ %i.fg, %.lr.ph201.preheader ] ; 2 uses
  %.0101199 = phi i32 [ %i.ge, %ascii2index.exit155.thread164 ], [ 0, %.lr.ph201.preheader ]
  %.4198 = phi ptr [ %i.gd, %ascii2index.exit155.thread164 ], [ %i.ew, %.lr.ph201.preheader ] ; 3 uses
  %i.fi = ptrtoint ptr %.4198 to i64
  %i.fj = sub i64 %i.z, %i.fi
  %i.fk = sext i32 %i.fh to i64
  %i.fl = icmp slt i64 %i.fj, %i.fk
  br i1 %i.fl, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph201
  %i.fm = icmp sgt i32 %i.fh, 0
  br i1 %i.fm, label %.lr.ph.i148, label %ascii2index.exit155.thread164

.lr.ph.i148:                                      ; preds = %bb.ah, %bb.ai
  %.019.i149 = phi i32 [ %i.fv, %bb.ai ], [ 0, %bb.ah ]
  %.01118.i150 = phi i32 [ %i.fu, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %.01217.i151 = phi i32 [ %i.ft, %bb.ai ], [ 0, %bb.ah ]
  %.01316.i152 = phi ptr [ %i.fq, %bb.ai ], [ %.4198, %bb.ah ] ; 2 uses
  %i.fn = load i8, ptr %.01316.i152, align 1, !tbaa !32 ; 2 uses
  %i.fo = add i8 %i.fn, 1
  %or.cond.i153 = icmp ult i8 %i.fo, 33
  br i1 %or.cond.i153, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i148
  %i.fp = zext i8 %i.fn to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %.01316.i152, i64 1
  %i.fr = add nsw i32 %i.fp, -32
  %i.fs = mul nsw i32 %i.fr, %.01118.i150
  %i.ft = add nsw i32 %i.fs, %.01217.i151         ; 4 uses
  %i.fu = mul nuw nsw i32 %.01118.i150, 223
  %i.fv = add nuw nsw i32 %.019.i149, 1           ; 2 uses
  %exitcond.not.i154 = icmp eq i32 %i.fv, %i.fh
  br i1 %exitcond.not.i154, label %ascii2index.exit155, label %.lr.ph.i148, !llvm.loop !36

ascii2index.exit155:                              ; preds = %bb.ai
  %i.fw = icmp slt i32 %i.ft, 0
  br i1 %i.fw, label %.thread, label %ascii2index.exit155.thread164

ascii2index.exit155.thread164:                    ; preds = %bb.ah, %ascii2index.exit155
  %.014.i147166 = phi i32 [ %i.ft, %ascii2index.exit155 ], [ 0, %bb.ah ]
  %i.fx = zext nneg i32 %.014.i147166 to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !44
  %i.ga = getelementptr inbounds nuw i8, ptr %.099200, i64 4
  store i32 %i.fz, ptr %.099200, align 4, !tbaa !44
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !44  ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %.4198, i64 %i.gc ; 2 uses
  %i.ge = add nuw nsw i32 %.0101199, 1            ; 2 uses
  %i.gf = load i32, ptr %i.cq, align 8, !tbaa !48
  %i.gg = icmp slt i32 %i.ge, %i.gf
  br i1 %i.gg, label %.lr.ph201, label %._crit_edge202, !llvm.loop !37

._crit_edge202:                                   ; preds = %ascii2index.exit155.thread164, %.preheader
  %.4.lcssa = phi ptr [ %i.ew, %.preheader ], [ %i.gd, %ascii2index.exit155.thread164 ] ; 2 uses
  %i.gh = call fastcc i64 @mod_strcspn(ptr noundef %.4.lcssa, ptr noundef nonnull @.str.9)
  %i.gi = getelementptr i8, ptr %.4.lcssa, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 1
  %i.gk = add nuw nsw i32 %.2205, 1               ; 2 uses
  %i.gl = load i32, ptr %i.cm, align 4, !tbaa !47
  %i.gm = icmp slt i32 %i.gk, %i.gl
  br i1 %i.gm, label %bb.af, label %._crit_edge207, !llvm.loop !38

._crit_edge207:                                   ; preds = %._crit_edge202, %.preheader168
  store i32 1, ptr %2, align 4, !tbaa !44
  %i.gn = load i32, ptr %i.j, align 8, !tbaa !41
  br label %.thread

.thread:                                          ; preds = %ascii2index.exit, %bb.ac, %mod_strcspn.exit146, %ascii2index.exit.thread157, %.lr.ph.i, %bb.ag, %bb.af, %ascii2index.exit155, %.lr.ph201, %.lr.ph.i148, %bb.t, %bb.s, %bb.p, %bb.l, %bb.a, %._crit_edge207, %bb.r, %bb.o, %bb.n, %bb.k, %._crit_edge
  %.2108 = phi i32 [ -1094995529, %._crit_edge ], [ -1094995529, %bb.k ], [ -12, %bb.a ], [ -1094995529, %bb.n ], [ -1094995529, %bb.o ], [ %i.bk, %bb.l ], [ -1094995529, %.lr.ph.i ], [ %i.cb, %bb.r ], [ -1094995529, %bb.p ], [ %i.cc, %bb.s ], [ -12, %bb.t ], [ -1094995529, %.lr.ph201 ], [ -1094995529, %.lr.ph.i148 ], [ -1094995529, %bb.ag ], [ %i.gn, %._crit_edge207 ], [ %i.ft, %ascii2index.exit155 ], [ -1094995529, %bb.af ], [ -1094995529, %mod_strcspn.exit146 ], [ -1094995529, %bb.ac ], [ %i.ed, %ascii2index.exit ], [ -1094995529, %ascii2index.exit.thread157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.2108
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @xpm_decode_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  tail call void @av_freep(ptr noundef %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.d, align 8, !tbaa !50
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 -2147483647, 2147483648) i64 @mod_strcspn(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %.lr.ph77

end_hunk_0
