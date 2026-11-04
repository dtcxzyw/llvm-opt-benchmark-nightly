Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_tilemap_editor?download=true
inline.NumInlined: 201
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stbte__colorrect = type { i32, i32, i32, i32, i32 }
%struct.stbte__panel = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stbte__region_t = type { i32, i32, i32, i32, i32, float }

@stbte__color_table = local_unnamed_addr global [13 x [3 x [7 x i32]]] [[3 x [7 x i32]] [[7 x i32] [i32 0, i32 8689788, i32 14474408, i32 14474408, i32 4243520, i32 6344800, i32 5263440], [7 x i32] [i32 10793104, i32 14740608, i32 16777152, i32 16777152, i32 8454016, i32 8454016, i32 6316128], [7 x i32] [i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 9474192]], [3 x [7 x i32]] [[7 x i32] [i32 8423568, i32 6316128, i32 6316128, i32 6316128, i32 6316128, i32 6316128, i32 6316128], [7 x i32] [i32 6314080, i32 6316128, i32 6316128, i32 6316128, i32 6316128, i32 6316128, i32 6316128], [7 x i32] zeroinitializer], [3 x [7 x i32]] [[7 x i32] [i32 3952744, i32 7375016, i32 6583432, i32 9745628, i32 8949956, i32 10267852, i32 4210752], [7 x i32] [i32 8953016, i32 8953016, i32 8953016, i32 8953016, i32 8701160, i32 11323647, i32 789512], [7 x i32] [i32 12371148, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 7368820]], [3 x [7 x i32]] [[7 x i32] [i32 4208712, i32 4206608, i32 4206608, i32 4206608, i32 4206608, i32 4206608, i32 3158052], [7 x i32] [i32 6837356, i32 12615744, i32 12615744, i32 12615744, i32 12615744, i32 12615744, i32 6311984], [7 x i32] [i32 16049407, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 9474192]], [3 x [7 x i32]] [[7 x i32] [i32 11841612, i32 11316320, i32 12648384, i32 12648384, i32 4243520, i32 6344800, i32 5263440], [7 x i32] [i32 10526796, i32 13684812, i32 16777088, i32 16777088, i32 8454016, i32 8454016, i32 6316128], [7 x i32] [i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 9474192]], [3 x [7 x i32]] [[7 x i32] [i32 4244544, i32 6344800, i32 12648384, i32 12648384, i32 4243520, i32 6344800, i32 5263440], [7 x i32] [i32 4243520, i32 8454016, i32 8454016, i32 8454016, i32 8454016, i32 8454016, i32 6316128], [7 x i32] [i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 9474192]], [3 x [7 x i32]] [[7 x i32] [i32 9474220, i32 10526904, i32 12368076, i32 12368076, i32 9474112, i32 9474112, i32 9474112], [7 x i32] [i32 10526904, i32 11580624, i32 10526904, i32 10526904, i32 10526800, i32 10526800, i32 10526800], [7 x i32] [i32 8421512, i32 8421424, i32 8421424, i32 8421424, i32 8421424, i32 8421424, i32 8421424]], [3 x [7 x i32]] [[7 x i32] [i32 7359600, i32 8936588, i32 10250404, i32 12087484, i32 11833532, i32 11833532, i32 3156008], [7 x i32] [i32 6578276, i32 13412564, i32 12607680, i32 10516632, i32 14727392, i32 14727392, i32 4208696], [7 x i32] [i32 14470372, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 9474192]], [3 x [7 x i32]] [[7 x i32] [i32 7359600, i32 8936588, i32 10250404, i32 12087484, i32 11833532, i32 11833532, i32 3156008], [7 x i32] [i32 11574452, i32 13412564, i32 12607680, i32 10516632, i32 14727392, i32 14727392, i32 4208696], [7 x i32] [i32 14470372, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 16777215, i32 9474192]], [3 x [7 x i32]] [[7 x i32] [i32 6579348, i32 8948920, i32 11579568, i32 11579596, i32 10263796, i32 8947888, i32 5263468], [7 x i32] [i32 9474212, i32 11580628, i32 11579612, i32 11579596, i32 13684988, i32 13686000, i32 6316128], [7 x i32] [i32 11842772, i32 15000831, i32 16777215, i32 16777215, i32 14738687, i32 15527167, i32 9474192]], [3 x [7 x i32]] [[7 x i32] [i32 6579268, i32 8948836, i32 11579568, i32 11579528, i32 11315288, i32 8947820, i32 5263440], [7 x i32] [i32 8947820, i32 11580560, i32 11579568, i32 11579528, i32 14211224, i32 13685936, i32 6316128], [7 x i32] [i32 11842716, i32 16777176, i32 16777215, i32 16777172, i32 16777180, i32 16777164, i32 9474192]], [3 x [7 x i32]] [[7 x i32] [i32 9462884, i32 11832460, i32 13938864, i32 14463152, i32 16751772, i32 13142152, i32 5263440], [7 x i32] [i32 11828352, i32 13939896, i32 12888232, i32 14463152, i32 16761024, i32 16574700, i32 6316128], [7 x i32] [i32 14726324, i32 16768216, i32 16767188, i32 16769252, i32 16772328, i32 16777215, i32 9474192]], [3 x [7 x i32]] [[7 x i32] [i32 4208712, i32 4208712, i32 4208712, i32 8939668, i32 8159432, i32 8159432, i32 3156008], [7 x i32] [i32 4208712, i32 4208712, i32 4208712, i32 4208712, i32 8159432, i32 8159432, i32 4208696], [7 x i32] [i32 13157576, i32 16777215, i32 16777215, i32 16777215, i32 15263980, i32 16777215, i32 9474192]]], align 16
@stbte__state_to_index = local_unnamed_addr global [2 x [2 x [2 x [2 x i8]]]] [[2 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\02\03"], [2 x [2 x i8]] [[2 x i8] c"\04\05", [2 x i8] c"\02\03"]], [2 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\06\06", [2 x i8] c"\06\06"], [2 x [2 x i8]] [[2 x i8] c"\04\05", [2 x i8] c"\06\06"]]], align 16
@stbte__fontdata = global [769 x i16] [i16 4, i16 9, i16 6, i16 9, i16 9, i16 9, i16 9, i16 8, i16 9, i16 8, i16 4, i16 9, i16 7, i16 7, i16 7, i16 7, i16 4, i16 2, i16 6, i16 8, i16 6, i16 6, i16 7, i16 3, i16 4, i16 4, i16 8, i16 6, i16 3, i16 6, i16 2, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 2, i16 3, i16 5, i16 4, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 6, i16 7, i16 7, i16 7, i16 6, i16 7, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 6, i16 6, i16 6, i16 4, i16 6, i16 4, i16 7, i16 7, i16 3, i16 6, i16 6, i16 5, i16 6, i16 6, i16 5, i16 6, i16 6, i16 4, i16 5, i16 6, i16 4, i16 7, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 6, i16 6, i16 6, i16 5, i16 2, i16 5, i16 8, i16 0, i16 0, i16 0, i16 0, i16 2, i16 253, i16 130, i16 456, i16 156, i16 8, i16 72, i16 184, i16 64, i16 2, i16 125, i16 66, i16 64, i16 160, i16 64, i16 146, i16 511, i16 146, i16 146, i16 511, i16 146, i16 146, i16 511, i16 146, i16 511, i16 257, i16 341, i16 297, i16 341, i16 297, i16 341, i16 257, i16 511, i16 16, i16 56, i16 124, i16 16, i16 16, i16 16, i16 124, i16 56, i16 16, i16 96, i16 144, i16 270, i16 261, i16 262, i16 136, i16 80, i16 48, i16 224, i16 192, i16 160, i16 80, i16 40, i16 22, i16 14, i16 15, i16 3, i16 448, i16 496, i16 496, i16 240, i16 232, i16 20, i16 10, i16 5, i16 2, i16 112, i16 232, i16 452, i16 450, i16 225, i16 113, i16 58, i16 28, i16 63, i16 30, i16 60, i16 200, i16 455, i16 257, i16 257, i16 0, i16 0, i16 0, i16 257, i16 257, i16 455, i16 120, i16 204, i16 132, i16 132, i16 159, i16 14, i16 4, i16 4, i16 14, i16 159, i16 132, i16 132, i16 204, i16 120, i16 8, i16 24, i16 56, i16 120, i16 56, i16 24, i16 8, i16 32, i16 48, i16 56, i16 60, i16 56, i16 48, i16 32, i16 0, i16 0, i16 0, i16 0, i16 111, i16 111, i16 7, i16 7, i16 0, i16 0, i16 7, i16 7, i16 34, i16 127, i16 127, i16 34, i16 34, i16 127, i16 127, i16 34, i16 36, i16 46, i16 107, i16 107, i16 58, i16 18, i16 99, i16 51, i16 24, i16 12, i16 102, i16 99, i16 48, i16 122, i16 79, i16 93, i16 55, i16 114, i16 80, i16 4, i16 7, i16 3, i16 62, i16 127, i16 99, i16 65, i16 65, i16 99, i16 127, i16 62, i16 8, i16 42, i16 62, i16 28, i16 28, i16 62, i16 42, i16 8, i16 8, i16 8, i16 62, i16 62, i16 8, i16 8, i16 128, i16 224, i16 96, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 96, i16 96, i16 96, i16 48, i16 24, i16 12, i16 6, i16 3, i16 62, i16 127, i16 89, i16 77, i16 127, i16 62, i16 64, i16 66, i16 127, i16 127, i16 64, i16 64, i16 98, i16 115, i16 89, i16 77, i16 71, i16 66, i16 33, i16 97, i16 73, i16 93, i16 119, i16 35, i16 24, i16 28, i16 22, i16 127, i16 127, i16 16, i16 39, i16 103, i16 69, i16 69, i16 125, i16 57, i16 62, i16 127, i16 73, i16 73, i16 121, i16 48, i16 1, i16 1, i16 113, i16 121, i16 15, i16 7, i16 54, i16 127, i16 73, i16 73, i16 127, i16 54, i16 6, i16 79, i16 73, i16 105, i16 63, i16 30, i16 54, i16 54, i16 128, i16 246, i16 118, i16 8, i16 28, i16 54, i16 99, i16 65, i16 20, i16 20, i16 20, i16 20, i16 65, i16 99, i16 54, i16 28, i16 8, i16 2, i16 3, i16 105, i16 109, i16 7, i16 2, i16 30, i16 63, i16 33, i16 45, i16 47, i16 46, i16 124, i16 126, i16 19, i16 19, i16 126, i16 124, i16 127, i16 127, i16 73, i16 73, i16 127, i16 54, i16 62, i16 127, i16 65, i16 65, i16 99, i16 34, i16 127, i16 127, i16 65, i16 99, i16 62, i16 28, i16 127, i16 127, i16 73, i16 73, i16 73, i16 65, i16 127, i16 127, i16 9, i16 9, i16 9, i16 1, i16 62, i16 127, i16 65, i16 73, i16 121, i16 121, i16 127, i16 127, i16 8, i16 8, i16 127, i16 127, i16 65, i16 65, i16 127, i16 127, i16 65, i16 65, i16 32, i16 96, i16 64, i16 64, i16 127, i16 63, i16 127, i16 127, i16 8, i16 28, i16 54, i16 99, i16 65, i16 127, i16 127, i16 64, i16 64, i16 64, i16 64, i16 127, i16 127, i16 6, i16 12, i16 6, i16 127, i16 127, i16 127, i16 127, i16 6, i16 12, i16 24, i16 127, i16 127, i16 62, i16 127, i16 65, i16 65, i16 65, i16 127, i16 62, i16 127, i16 127, i16 9, i16 9, i16 15, i16 6, i16 62, i16 127, i16 65, i16 81, i16 49, i16 127, i16 94, i16 127, i16 127, i16 9, i16 25, i16 127, i16 102, i16 70, i16 79, i16 73, i16 73, i16 121, i16 49, i16 1, i16 1, i16 127, i16 127, i16 1, i16 1, i16 63, i16 127, i16 64, i16 64, i16 127, i16 63, i16 15, i16 31, i16 48, i16 96, i16 48, i16 31, i16 15, i16 127, i16 127, i16 48, i16 24, i16 48, i16 127, i16 127, i16 99, i16 119, i16 28, i16 28, i16 119, i16 99, i16 7, i16 15, i16 120, i16 120, i16 15, i16 7, i16 97, i16 113, i16 89, i16 77, i16 71, i16 67, i16 127, i16 127, i16 65, i16 65, i16 3, i16 6, i16 12, i16 24, i16 48, i16 96, i16 65, i16 65, i16 127, i16 127, i16 8, i16 12, i16 6, i16 3, i16 6, i16 12, i16 8, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 3, i16 7, i16 4, i16 32, i16 116, i16 84, i16 84, i16 124, i16 120, i16 127, i16 127, i16 68, i16 68, i16 124, i16 56, i16 56, i16 124, i16 68, i16 68, i16 68, i16 56, i16 124, i16 68, i16 68, i16 127, i16 127, i16 56, i16 124, i16 84, i16 84, i16 92, i16 24, i16 8, i16 124, i16 126, i16 10, i16 10, i16 56, i16 380, i16 324, i16 324, i16 508, i16 252, i16 127, i16 127, i16 4, i16 4, i16 124, i16 120, i16 72, i16 122, i16 122, i16 64, i16 256, i16 256, i16 256, i16 506, i16 250, i16 126, i16 126, i16 16, i16 56, i16 104, i16 64, i16 66, i16 126, i16 126, i16 64, i16 124, i16 124, i16 24, i16 56, i16 28, i16 124, i16 120, i16 124, i16 124, i16 4, i16 4, i16 124, i16 120, i16 56, i16 124, i16 68, i16 68, i16 124, i16 56, i16 508, i16 508, i16 68, i16 68, i16 124, i16 56, i16 56, i16 124, i16 68, i16 68, i16 508, i16 508, i16 124, i16 124, i16 4, i16 4, i16 12, i16 8, i16 72, i16 92, i16 84, i16 84, i16 116, i16 36, i16 4, i16 4, i16 62, i16 126, i16 68, i16 68, i16 60, i16 124, i16 64, i16 64, i16 124, i16 124, i16 28, i16 60, i16 96, i16 96, i16 60, i16 28, i16 28, i16 124, i16 112, i16 56, i16 112, i16 124, i16 28, i16 68, i16 108, i16 56, i16 56, i16 108, i16 68, i16 284, i16 316, i16 352, i16 320, i16 508, i16 252, i16 68, i16 100, i16 116, i16 92, i16 76, i16 68, i16 8, i16 62, i16 119, i16 65, i16 65, i16 127, i16 127, i16 65, i16 65, i16 119, i16 62, i16 8, i16 16, i16 24, i16 12, i16 12, i16 24, i16 24, i16 12, i16 4], align 16
@toolchar = local_unnamed_addr global [11 x i32] [i32 26, i32 24, i32 25, i32 20, i32 23, i32 22, i32 18, i32 19, i32 17, i32 29, i32 28], align 16
@stbte__ui = global { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [256 x %struct.stbte__colorrect], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, ptr, float, [7 x %struct.stbte__panel], [65536 x [8 x i16]], [65536 x [1 x float]], i32, i32, [4 x i8], ptr, i32, i32, i32, i32 } { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, [256 x %struct.stbte__colorrect] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, float 0.000000e+00, ptr null, float 0.000000e+00, [7 x %struct.stbte__panel] zeroinitializer, [65536 x [8 x i16]] zeroinitializer, [65536 x [1 x float]] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [13 x i8] c"[unassigned]\00", align 1
@default_category = local_unnamed_addr global ptr @.str, align 8
@stbte__font_offset = local_unnamed_addr global [111 x i16] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"%6.2f\00", align 1
@stbte__region = local_unnamed_addr global [4 x %struct.stbte__region_t] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [38 x i8] c"Eyedropped tile that isn't in tileset\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Selection too large for copy buffer, increase STBTE_MAX_COPY\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cut\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"w:%*d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"h:%*d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"x:%*d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"x:\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"y:%*d\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"y:\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@__const.stbte__layers.propmodes = private unnamed_addr constant [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16], align 16
@__const.stbte__layers.lockedchar = private unnamed_addr constant [3 x i8] c"UPL", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"*ALL*\00", align 1
@stbte__saved = local_unnamed_addr global float 0.000000e+00, align 4
@stbte__save = local_unnamed_addr global i32 0, align 4
@stbte__cp_mode = local_unnamed_addr global i32 0, align 4
@stbte__cp_aspect = local_unnamed_addr global i32 0, align 4
@stbte__cp_altered = local_unnamed_addr global i32 0, align 4
@__const.stbte_mouse_button.events = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 5, i32 4], [2 x i32] [i32 7, i32 6]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__init_gui() local_unnamed_addr #0 {
bb.a:
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 52), align 4, !tbaa !26
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5192), align 8, !tbaa !27
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5364), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5372), align 4, !tbaa !30
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5396), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5404), align 4, !tbaa !30
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5428), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5436), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5440), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5460), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5468), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5472), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5492), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5500), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5504), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5524), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5532), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5536), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5556), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5564), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5568), align 8, !tbaa !31
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5376), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5408), align 8, !tbaa !31
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5340), align 4, !tbaa !32
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 80, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5340), align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5344), align 8, !tbaa !33
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  store i32 80, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5344), align 8, !tbaa !33
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.e ] ; 5 uses
  %.014 = phi i16 [ 111, %.preheader ], [ %i.p, %bb.e ] ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @stbte__font_offset, i64 %indvars.iv
  store i16 %.014, ptr %i.e, align 2, !tbaa !35
  %i.f = getelementptr inbounds nuw [2 x i8], ptr @stbte__fontdata, i64 %indvars.iv
  %i.g = load i16, ptr %i.f, align 2, !tbaa !35
  %i.h = add i16 %i.g, %.014                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr @stbte__font_offset, i64 %indvars.iv.next
  store i16 %i.h, ptr %i.i, align 2, !tbaa !35
  %i.j = getelementptr inbounds nuw [2 x i8], ptr @stbte__fontdata, i64 %indvars.iv.next
  %i.k = load i16, ptr %i.j, align 2, !tbaa !35
  %i.l = add i16 %i.k, %i.h                       ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @stbte__font_offset, i64 %indvars.iv.next.1
  store i16 %i.l, ptr %i.m, align 2, !tbaa !35
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @stbte__fontdata, i64 %indvars.iv.next.1
  %i.o = load i16, ptr %i.n, align 2, !tbaa !35
  %i.p = add i16 %i.o, %i.l
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 111
  br i1 %exitcond.not.2, label %bb.f, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define noundef ptr @stbte_create_map(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = or i32 %1, %0
  %i.b = or i32 %i.a, %2
  %or.cond3 = icmp slt i32 %i.b, 0
  %i.c = icmp sgt i32 %0, 200
  %or.cond5 = or i1 %i.c, %or.cond3
  %i.d = icmp sgt i32 %1, 200
  %or.cond7 = or i1 %i.d, %or.cond5
  %i.e = icmp sgt i32 %2, 8
  %or.cond9 = or i1 %i.e, %or.cond7
  br i1 %or.cond9, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 52), align 4, !tbaa !26
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %stbte__init_gui.exit

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 52), align 4, !tbaa !26
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5192), align 8, !tbaa !27
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5364), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5372), align 4, !tbaa !30
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5396), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5404), align 4, !tbaa !30
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5428), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5436), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5440), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5460), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5468), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5472), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5492), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5500), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5504), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5524), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5532), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5536), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5556), align 4, !tbaa !29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5564), align 4, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5568), align 8, !tbaa !31
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5376), align 8, !tbaa !31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5408), align 8, !tbaa !31
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5340), align 4, !tbaa !32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 80, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5340), align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5344), align 8, !tbaa !33
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  store i32 80, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5344), align 8, !tbaa !33
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.i.2, %bb.g ] ; 5 uses
  %.014.i = phi i16 [ 111, %.preheader ], [ %i.v, %bb.g ] ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @stbte__font_offset, i64 %indvars.iv.i
  store i16 %.014.i, ptr %i.k, align 2, !tbaa !35
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @stbte__fontdata, i64 %indvars.iv.i
  %i.m = load i16, ptr %i.l, align 2, !tbaa !35
  %i.n = add i16 %i.m, %.014.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @stbte__font_offset, i64 %indvars.iv.next.i
  store i16 %i.n, ptr %i.o, align 2, !tbaa !35
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @stbte__fontdata, i64 %indvars.iv.next.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !35
  %i.r = add i16 %i.q, %i.n                       ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @stbte__font_offset, i64 %indvars.iv.next.i.1
  store i16 %i.r, ptr %i.s, align 2, !tbaa !35
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @stbte__fontdata, i64 %indvars.iv.next.i.1
  %i.u = load i16, ptr %i.t, align 2, !tbaa !35
  %i.v = add i16 %i.u, %i.r
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
end_hunk_0
begin_hunk_1_@stbte__begin_undo:bb.a
  store i8 0, ptr %i.o, align 4, !tbaa !51
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__end_undo(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77   ; 2 uses
  %i.d = add i32 %i.c, 8388607
  %i.e = and i32 %i.d, 8388607                    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !35
  %i.k = icmp eq i16 %i.j, -2
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %i.b, align 4, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !78
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.p
  store i16 -4, ptr %i.q, align 2, !tbaa !35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__undo_record(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %4 to i16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 4 uses
  %i.g = sext i32 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  store i16 %i.b, ptr %i.h, align 2, !tbaa !35
  %i.i = add nsw i32 %i.d, 1
  %i.j = and i32 %i.i, 8388607
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !78   ; 2 uses
  %i.m = icmp slt i32 %i.l, 8388606
  %i.n = zext i1 %i.m to i32
  %i.o = add nsw i32 %i.l, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  %.neg.i = sext i1 %i.r to i32
  %i.s = add i32 %i.q, %.neg.i                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 800876
  %i.u = trunc i32 %1 to i16
  %i.v = zext nneg i32 %i.j to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.v
  store i16 %i.u, ptr %i.w, align 2, !tbaa !35
  %i.x = add i32 %i.d, 2
  %i.y = and i32 %i.x, 8388607
  %i.z = icmp slt i32 %i.o, 8388606
  %i.aa = zext i1 %i.z to i32
  %i.ab = add nsw i32 %i.o, %i.aa                 ; 2 uses
  %i.ac = icmp sgt i32 %i.s, 0
  %.neg.i7 = sext i1 %i.ac to i32
  %i.ad = add i32 %i.s, %.neg.i7                  ; 2 uses
  %i.ae = trunc i32 %2 to i16
  %i.af = zext nneg i32 %i.y to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !35
  %i.ah = add i32 %i.d, 3
  %i.ai = and i32 %i.ah, 8388607
  %i.aj = icmp slt i32 %i.ab, 8388606
  %i.ak = zext i1 %i.aj to i32
  %i.al = add nsw i32 %i.ab, %i.ak                ; 2 uses
  %i.am = icmp sgt i32 %i.ad, 0
  %.neg.i8 = sext i1 %i.am to i32
  %i.an = add i32 %i.ad, %.neg.i8                 ; 2 uses
  %i.ao = trunc i32 %3 to i16
  %i.ap = zext nneg i32 %i.ai to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ap
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !35
  %i.ar = add i32 %i.d, 4
  %i.as = and i32 %i.ar, 8388607
  store i32 %i.as, ptr %i.c, align 4, !tbaa !77
  %i.at = icmp slt i32 %i.al, 8388606
  %i.au = zext i1 %i.at to i32
  %i.av = add nsw i32 %i.al, %i.au
  store i32 %i.av, ptr %i.k, align 8, !tbaa !78
  %i.aw = icmp sgt i32 %i.an, 0
  %.neg.i9 = sext i1 %i.aw to i32
  %i.ax = add i32 %i.an, %.neg.i9
  store i32 %i.ax, ptr %i.p, align 4, !tbaa !79
  store i8 0, ptr %i.t, align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__redo_record(ptr nofree noundef captures(none) initializes((800876, 800877)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = trunc i32 %4 to i16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 4 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.f
  store i16 %i.a, ptr %i.g, align 2, !tbaa !35
  %i.h = add i32 %i.c, 8388607
  %i.i = and i32 %i.h, 8388607
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !79   ; 2 uses
  %i.l = icmp slt i32 %i.k, 8388606
  %i.m = zext i1 %i.l to i32
  %i.n = add nsw i32 %i.k, %i.m                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !78   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %.neg.i = sext i1 %i.q to i32
  %i.r = add i32 %i.p, %.neg.i                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 800876
  %i.t = trunc i32 %1 to i16
  %i.u = zext nneg i32 %i.i to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.u
  store i16 %i.t, ptr %i.v, align 2, !tbaa !35
  %i.w = add i32 %i.c, 8388606
  %i.x = and i32 %i.w, 8388607
  %i.y = icmp slt i32 %i.n, 8388606
  %i.z = zext i1 %i.y to i32
  %i.aa = add nsw i32 %i.n, %i.z                  ; 2 uses
  %i.ab = icmp sgt i32 %i.r, 0
  %.neg.i7 = sext i1 %i.ab to i32
  %i.ac = add i32 %i.r, %.neg.i7                  ; 2 uses
  %i.ad = trunc i32 %2 to i16
  %i.ae = zext nneg i32 %i.x to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ae
  store i16 %i.ad, ptr %i.af, align 2, !tbaa !35
  %i.ag = add i32 %i.c, 8388605
  %i.ah = and i32 %i.ag, 8388607
  %i.ai = icmp slt i32 %i.aa, 8388606
  %i.aj = zext i1 %i.ai to i32
  %i.ak = add nsw i32 %i.aa, %i.aj                ; 2 uses
  %i.al = icmp sgt i32 %i.ac, 0
  %.neg.i8 = sext i1 %i.al to i32
  %i.am = add i32 %i.ac, %.neg.i8                 ; 2 uses
  %i.an = trunc i32 %3 to i16
  %i.ao = zext nneg i32 %i.ah to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ao
  store i16 %i.an, ptr %i.ap, align 2, !tbaa !35
  %i.aq = add i32 %i.c, 8388604
  %i.ar = and i32 %i.aq, 8388607
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !77
  %i.as = icmp slt i32 %i.ak, 8388606
  %i.at = zext i1 %i.as to i32
  %i.au = add nsw i32 %i.ak, %i.at
  store i32 %i.au, ptr %i.j, align 4, !tbaa !79
  %i.av = icmp sgt i32 %i.am, 0
  %.neg.i9 = sext i1 %i.av to i32
  %i.aw = add i32 %i.am, %.neg.i9
  store i32 %i.aw, ptr %i.o, align 8, !tbaa !78
  store i8 0, ptr %i.s, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @stbte__extract_float(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #11 {
bb.a:
  %.sroa.0.0.insert.ext = zext i16 %0 to i32
  %.sroa.0.2.insert.ext = zext i16 %1 to i32
  %.sroa.0.2.insert.shift = shl nuw i32 %.sroa.0.2.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i32 %.sroa.0.2.insert.shift, %.sroa.0.0.insert.ext
  %i.a = bitcast i32 %.sroa.0.2.insert.insert to float
  ret float %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext i16 @stbte__extract_short(float noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %.sroa.idx = icmp eq i32 %1, 1
  %2 = bitcast float %0 to i32                    ; 2 uses
  %.sroa.0.2.extract.shift = lshr i32 %2, 16
  %.sroa.speculated.v = select i1 %.sroa.idx, i32 %.sroa.0.2.extract.shift, i32 %2
  %.sroa.speculated = trunc i32 %.sroa.speculated.v to i16
  ret i16 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__undo_record_prop(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 5 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.f
  store i16 %5, ptr %i.g, align 2, !tbaa !35
  %i.h = add nsw i32 %i.c, 1
  %i.i = and i32 %i.h, 8388607
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78   ; 2 uses
  %i.l = icmp slt i32 %i.k, 8388606
  %i.m = zext i1 %i.l to i32
  %i.n = add nsw i32 %i.k, %i.m                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !79   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %.neg.i = sext i1 %i.q to i32
  %i.r = add i32 %i.p, %.neg.i                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 800876
  %i.t = zext nneg i32 %i.i to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.t
  store i16 %4, ptr %i.u, align 2, !tbaa !35
  %i.v = add i32 %i.c, 2
  %i.w = and i32 %i.v, 8388607
  %i.x = icmp slt i32 %i.n, 8388606
  %i.y = zext i1 %i.x to i32
  %i.z = add nsw i32 %i.n, %i.y                   ; 2 uses
  %i.aa = icmp sgt i32 %i.r, 0
  %.neg.i9 = sext i1 %i.aa to i32
  %i.ab = add i32 %i.r, %.neg.i9                  ; 2 uses
  %i.ac = trunc i32 %1 to i16
  %i.ad = zext nneg i32 %i.w to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ad
  store i16 %i.ac, ptr %i.ae, align 2, !tbaa !35
  %i.af = add i32 %i.c, 3
  %i.ag = and i32 %i.af, 8388607
  %i.ah = icmp slt i32 %i.z, 8388606
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add nsw i32 %i.z, %i.ai                 ; 2 uses
  %i.ak = icmp sgt i32 %i.ab, 0
  %.neg.i10 = sext i1 %i.ak to i32
  %i.al = add i32 %i.ab, %.neg.i10                ; 2 uses
  %i.am = trunc i32 %2 to i16
  %i.an = zext nneg i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.an
  store i16 %i.am, ptr %i.ao, align 2, !tbaa !35
  %i.ap = add i32 %i.c, 4
  %i.aq = and i32 %i.ap, 8388607
  %i.ar = icmp slt i32 %i.aj, 8388606
  %i.as = zext i1 %i.ar to i32
  %i.at = add nsw i32 %i.aj, %i.as                ; 2 uses
  %i.au = icmp sgt i32 %i.al, 0
  %.neg.i11 = sext i1 %i.au to i32
  %i.av = add i32 %i.al, %.neg.i11                ; 2 uses
  %i.aw = trunc i32 %3 to i16
  %i.ax = add i16 %i.aw, 256
  %i.ay = zext nneg i32 %i.aq to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ay
  store i16 %i.ax, ptr %i.az, align 2, !tbaa !35
  %i.ba = add i32 %i.c, 5
  %i.bb = and i32 %i.ba, 8388607
  store i32 %i.bb, ptr %i.b, align 4, !tbaa !77
  %i.bc = icmp slt i32 %i.at, 8388606
  %i.bd = zext i1 %i.bc to i32
  %i.be = add nsw i32 %i.at, %i.bd
  store i32 %i.be, ptr %i.j, align 8, !tbaa !78
  %i.bf = icmp sgt i32 %i.av, 0
  %.neg.i12 = sext i1 %i.bf to i32
  %i.bg = add i32 %i.av, %.neg.i12
  store i32 %i.bg, ptr %i.o, align 4, !tbaa !79
  store i8 0, ptr %i.s, align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__undo_record_prop_float(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %stbte__undo_record_prop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast float %4 to i32                  ; 2 uses
  %.sroa.05.2.extract.shift = lshr i32 %i.b, 16
  %.sroa.05.2.extract.trunc = trunc nuw i32 %.sroa.05.2.extract.shift to i16
  %.sroa.0.0.extract.trunc = trunc i32 %i.b to i16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 5 uses
  %i.g = sext i32 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  store i16 %.sroa.05.2.extract.trunc, ptr %i.h, align 2, !tbaa !35
  %i.i = add nsw i32 %i.d, 1
  %i.j = and i32 %i.i, 8388607
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !78   ; 2 uses
  %i.m = icmp slt i32 %i.l, 8388606
  %i.n = zext i1 %i.m to i32
  %i.o = add nsw i32 %i.l, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  %.neg.i.i = sext i1 %i.r to i32
  %i.s = add i32 %i.q, %.neg.i.i                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 800876
  %i.u = zext nneg i32 %i.j to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.u
  store i16 %.sroa.0.0.extract.trunc, ptr %i.v, align 2, !tbaa !35
  %i.w = add i32 %i.d, 2
  %i.x = and i32 %i.w, 8388607
  %i.y = icmp slt i32 %i.o, 8388606
  %i.z = zext i1 %i.y to i32
  %i.aa = add nsw i32 %i.o, %i.z                  ; 2 uses
  %i.ab = icmp sgt i32 %i.s, 0
  %.neg.i9.i = sext i1 %i.ab to i32
  %i.ac = add i32 %i.s, %.neg.i9.i                ; 2 uses
  %i.ad = trunc i32 %1 to i16
  %i.ae = zext nneg i32 %i.x to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ae
  store i16 %i.ad, ptr %i.af, align 2, !tbaa !35
  %i.ag = add i32 %i.d, 3
  %i.ah = and i32 %i.ag, 8388607
  %i.ai = icmp slt i32 %i.aa, 8388606
  %i.aj = zext i1 %i.ai to i32
  %i.ak = add nsw i32 %i.aa, %i.aj                ; 2 uses
  %i.al = icmp sgt i32 %i.ac, 0
  %.neg.i10.i = sext i1 %i.al to i32
  %i.am = add i32 %i.ac, %.neg.i10.i              ; 2 uses
  %i.an = trunc i32 %2 to i16
  %i.ao = zext nneg i32 %i.ah to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ao
  store i16 %i.an, ptr %i.ap, align 2, !tbaa !35
  %i.aq = add i32 %i.d, 4
  %i.ar = and i32 %i.aq, 8388607
  %i.as = icmp slt i32 %i.ak, 8388606
  %i.at = zext i1 %i.as to i32
  %i.au = add nsw i32 %i.ak, %i.at                ; 2 uses
  %i.av = icmp sgt i32 %i.am, 0
  %.neg.i11.i = sext i1 %i.av to i32
  %i.aw = add i32 %i.am, %.neg.i11.i              ; 2 uses
  %i.ax = trunc i32 %3 to i16
  %i.ay = add i16 %i.ax, 256
  %i.az = zext nneg i32 %i.ar to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.az
  store i16 %i.ay, ptr %i.ba, align 2, !tbaa !35
  %i.bb = add i32 %i.d, 5
  %i.bc = and i32 %i.bb, 8388607
  store i32 %i.bc, ptr %i.c, align 4, !tbaa !77
  %i.bd = icmp slt i32 %i.au, 8388606
  %i.be = zext i1 %i.bd to i32
  %i.bf = add nsw i32 %i.au, %i.be
  store i32 %i.bf, ptr %i.k, align 8, !tbaa !78
  %i.bg = icmp sgt i32 %i.aw, 0
  %.neg.i12.i = sext i1 %i.bg to i32
  %i.bh = add i32 %i.aw, %.neg.i12.i
  store i32 %i.bh, ptr %i.p, align 4, !tbaa !79
  store i8 0, ptr %i.t, align 4, !tbaa !51
  br label %stbte__undo_record_prop.exit

stbte__undo_record_prop.exit:                     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__redo_record_prop(ptr nofree noundef captures(none) initializes((800876, 800877)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !77   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 5 uses
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.e
  store i16 %5, ptr %i.f, align 2, !tbaa !35
  %i.g = add i32 %i.b, 8388607
  %i.h = and i32 %i.g, 8388607
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79   ; 2 uses
  %i.k = icmp slt i32 %i.j, 8388606
  %i.l = zext i1 %i.k to i32
  %i.m = add nsw i32 %i.j, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %.neg.i = sext i1 %i.p to i32
  %i.q = add i32 %i.o, %.neg.i                    ; 2 uses
end_hunk_1
