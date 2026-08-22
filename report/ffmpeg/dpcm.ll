Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dpcm?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"cbd2_dpcm\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"DPCM Cuberoot-Delta-Exact\00", align 1
@ff_cbd2_dpcm_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 81928, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @dpcm_decode_init, %union.anon { ptr @dpcm_decode_frame }, ptr null, ptr @dpcm_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"derf_dpcm\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DPCM Xilam DERF\00", align 1
@ff_derf_dpcm_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 1, i32 81926, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @dpcm_decode_init, %union.anon { ptr @dpcm_decode_frame }, ptr null, ptr @dpcm_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"gremlin_dpcm\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"DPCM Gremlin\00", align 1
@ff_gremlin_dpcm_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.4, ptr @.str.5, i32 1, i32 81925, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @dpcm_decode_init, %union.anon { ptr @dpcm_decode_frame }, ptr null, ptr @dpcm_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"interplay_dpcm\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"DPCM Interplay\00", align 1
@ff_interplay_dpcm_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.6, ptr @.str.7, i32 1, i32 81921, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @dpcm_decode_init, %union.anon { ptr @dpcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"roq_dpcm\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"DPCM id RoQ\00", align 1
@ff_roq_dpcm_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.8, ptr @.str.9, i32 1, i32 81920, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @dpcm_decode_init, %union.anon { ptr @dpcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"sdx2_dpcm\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"DPCM Squareroot-Delta-Exact\00", align 1
@ff_sdx2_dpcm_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.10, ptr @.str.11, i32 1, i32 81924, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @dpcm_decode_init, %union.anon { ptr @dpcm_decode_frame }, ptr null, ptr @dpcm_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"sol_dpcm\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"DPCM Sol\00", align 1
@ff_sol_dpcm_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.12, ptr @.str.13, i32 1, i32 81923, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @dpcm_decode_init, %union.anon { ptr @dpcm_decode_frame }, ptr null, ptr @dpcm_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"xan_dpcm\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"DPCM Xan\00", align 1
@ff_xan_dpcm_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.14, ptr @.str.15, i32 1, i32 81922, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @dpcm_decode_init, %union.anon { ptr @dpcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"wady_dpcm\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"DPCM Marble WADY\00", align 1
@ff_wady_dpcm_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.16, ptr @.str.17, i32 1, i32 81927, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 536, ptr null, ptr null, ptr null, ptr @dpcm_decode_init, %union.anon { ptr @dpcm_decode_frame }, ptr null, ptr @dpcm_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.18 = private unnamed_addr constant [28 x i8] c"invalid number of channels\0A\00", align 1
@sol_table_old = internal constant [16 x i8] c"\00\01\02\03\06\0A\0F\15\EB\F1\F6\FA\FD\FE\FF\00", align 16
@sol_table_new = internal constant [16 x i8] c"\00\01\02\03\06\0A\0F\15\00\FF\FE\FD\FA\F6\F1\EB", align 16
@.str.19 = private unnamed_addr constant [22 x i8] c"Unknown SOL subcodec\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"packet is too small\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"channels have differing number of samples\0A\00", align 1
@interplay_delta_table = internal unnamed_addr constant [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 47, i16 51, i16 56, i16 61, i16 66, i16 72, i16 79, i16 86, i16 94, i16 102, i16 112, i16 122, i16 133, i16 145, i16 158, i16 173, i16 189, i16 206, i16 225, i16 245, i16 267, i16 292, i16 318, i16 348, i16 379, i16 414, i16 452, i16 493, i16 538, i16 587, i16 640, i16 699, i16 763, i16 832, i16 908, i16 991, i16 1081, i16 1180, i16 1288, i16 1405, i16 1534, i16 1673, i16 1826, i16 1993, i16 2175, i16 2373, i16 2590, i16 2826, i16 3084, i16 3365, i16 3672, i16 4008, i16 4373, i16 4772, i16 5208, i16 5683, i16 6202, i16 6767, i16 7385, i16 8059, i16 8794, i16 9597, i16 10472, i16 11428, i16 12471, i16 13609, i16 14851, i16 16206, i16 17685, i16 19298, i16 21060, i16 22981, i16 25078, i16 27367, i16 29864, i16 32589, i16 -29973, i16 -26728, i16 -23186, i16 -19322, i16 -15105, i16 -10503, i16 -5481, i16 -1, i16 1, i16 1, i16 5481, i16 10503, i16 15105, i16 19322, i16 23186, i16 26728, i16 29973, i16 -32589, i16 -29864, i16 -27367, i16 -25078, i16 -22981, i16 -21060, i16 -19298, i16 -17685, i16 -16206, i16 -14851, i16 -13609, i16 -12471, i16 -11428, i16 -10472, i16 -9597, i16 -8794, i16 -8059, i16 -7385, i16 -6767, i16 -6202, i16 -5683, i16 -5208, i16 -4772, i16 -4373, i16 -4008, i16 -3672, i16 -3365, i16 -3084, i16 -2826, i16 -2590, i16 -2373, i16 -2175, i16 -1993, i16 -1826, i16 -1673, i16 -1534, i16 -1405, i16 -1288, i16 -1180, i16 -1081, i16 -991, i16 -908, i16 -832, i16 -763, i16 -699, i16 -640, i16 -587, i16 -538, i16 -493, i16 -452, i16 -414, i16 -379, i16 -348, i16 -318, i16 -292, i16 -267, i16 -245, i16 -225, i16 -206, i16 -189, i16 -173, i16 -158, i16 -145, i16 -133, i16 -122, i16 -112, i16 -102, i16 -94, i16 -86, i16 -79, i16 -72, i16 -66, i16 -61, i16 -56, i16 -51, i16 -47, i16 -43, i16 -42, i16 -41, i16 -40, i16 -39, i16 -38, i16 -37, i16 -36, i16 -35, i16 -34, i16 -33, i16 -32, i16 -31, i16 -30, i16 -29, i16 -28, i16 -27, i16 -26, i16 -25, i16 -24, i16 -23, i16 -22, i16 -21, i16 -20, i16 -19, i16 -18, i16 -17, i16 -16, i16 -15, i16 -14, i16 -13, i16 -12, i16 -11, i16 -10, i16 -9, i16 -8, i16 -7, i16 -6, i16 -5, i16 -4, i16 -3, i16 -2, i16 -1], align 16
@sol_table_16 = internal unnamed_addr constant [128 x i16] [i16 0, i16 8, i16 16, i16 32, i16 48, i16 64, i16 80, i16 96, i16 112, i16 128, i16 144, i16 160, i16 176, i16 192, i16 208, i16 224, i16 240, i16 256, i16 272, i16 288, i16 304, i16 320, i16 336, i16 352, i16 368, i16 384, i16 400, i16 416, i16 432, i16 448, i16 464, i16 480, i16 496, i16 512, i16 520, i16 528, i16 536, i16 544, i16 552, i16 560, i16 568, i16 576, i16 584, i16 592, i16 600, i16 608, i16 616, i16 624, i16 632, i16 640, i16 648, i16 656, i16 664, i16 672, i16 680, i16 688, i16 696, i16 704, i16 712, i16 720, i16 728, i16 736, i16 744, i16 752, i16 760, i16 768, i16 776, i16 784, i16 792, i16 800, i16 808, i16 816, i16 824, i16 832, i16 840, i16 848, i16 856, i16 864, i16 872, i16 880, i16 888, i16 896, i16 904, i16 912, i16 920, i16 928, i16 936, i16 944, i16 952, i16 960, i16 968, i16 976, i16 984, i16 992, i16 1000, i16 1008, i16 1016, i16 1024, i16 1088, i16 1152, i16 1216, i16 1280, i16 1344, i16 1408, i16 1472, i16 1536, i16 1600, i16 1664, i16 1728, i16 1792, i16 1856, i16 1920, i16 1984, i16 2048, i16 2304, i16 2560, i16 2816, i16 3072, i16 3328, i16 3584, i16 3840, i16 4096, i16 5120, i16 6144, i16 7168, i16 8192, i16 12288, i16 16384], align 16
@derf_steps = internal unnamed_addr constant [96 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@wady_table = internal unnamed_addr constant [128 x i16] [i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 15, i16 18, i16 21, i16 24, i16 28, i16 32, i16 36, i16 40, i16 44, i16 49, i16 54, i16 59, i16 64, i16 70, i16 76, i16 82, i16 88, i16 95, i16 102, i16 109, i16 116, i16 124, i16 132, i16 140, i16 148, i16 160, i16 170, i16 180, i16 190, i16 200, i16 210, i16 220, i16 230, i16 240, i16 255, i16 270, i16 285, i16 300, i16 320, i16 340, i16 360, i16 380, i16 400, i16 425, i16 450, i16 475, i16 500, i16 525, i16 550, i16 580, i16 610, i16 650, i16 700, i16 750, i16 800, i16 900, i16 1000, i16 0, i16 -2, i16 -4, i16 -6, i16 -8, i16 -10, i16 -12, i16 -15, i16 -18, i16 -21, i16 -24, i16 -28, i16 -32, i16 -36, i16 -40, i16 -44, i16 -49, i16 -54, i16 -59, i16 -64, i16 -70, i16 -76, i16 -82, i16 -88, i16 -95, i16 -102, i16 -109, i16 -116, i16 -124, i16 -132, i16 -140, i16 -148, i16 -160, i16 -170, i16 -180, i16 -190, i16 -200, i16 -210, i16 -220, i16 -230, i16 -240, i16 -255, i16 -270, i16 -285, i16 -300, i16 -320, i16 -340, i16 -360, i16 -380, i16 -400, i16 -425, i16 -450, i16 -475, i16 -500, i16 -525, i16 -550, i16 -580, i16 -610, i16 -650, i16 -700, i16 -750, i16 -800, i16 -900, i16 -1000], align 16
@.str.22 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @dpcm_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = add i32 %i.d, -3
  %or.cond = icmp ult i32 %i.e, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.18) #7
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 3 uses
  store <2 x i32> zeroinitializer, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  switch i32 %i.j, label %.thread74 [
    i32 81920, label %vector.body115
    i32 81923, label %bb.d
    i32 81924, label %vector.body108
    i32 81928, label %vector.body
    i32 81925, label %bb.h
    i32 81927, label %bb.k
  ]

vector.body:                                      ; preds = %bb.c, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.c ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 -128, i32 -127, i32 -126, i32 -125, i32 -124, i32 -123, i32 -122, i32 -121>, %bb.c ] ; 4 uses
  %i.k = mul nsw <8 x i32> %vec.ind, %vec.ind
  %i.l = mul nsw <8 x i32> %i.k, %vec.ind
  %i.m = sdiv <8 x i32> %i.l, splat (i32 64)
  %i.n = trunc <8 x i32> %i.m to <8 x i16>
  %i.o = getelementptr [2 x i8], ptr %i.b, i64 %index
  store <8 x i16> %i.n, ptr %i.o, align 2, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, 256
  br i1 %i.p, label %.loopexit, label %vector.body, !llvm.loop !37

vector.body108:                                   ; preds = %bb.c, %vector.body108
  %index109 = phi i64 [ %index.next111, %vector.body108 ], [ 0, %bb.c ] ; 2 uses
  %vec.ind110 = phi <8 x i64> [ %vec.ind.next112, %vector.body108 ], [ <i64 -128, i64 -127, i64 -126, i64 -125, i64 -124, i64 -123, i64 -122, i64 -121>, %bb.c ] ; 4 uses
  %i.q = mul nsw <8 x i64> %vec.ind110, %vec.ind110
  %i.r = trunc <8 x i64> %i.q to <8 x i16>
  %i.s = shl <8 x i16> %i.r, splat (i16 1)        ; 2 uses
  %i.t = icmp slt <8 x i64> %vec.ind110, zeroinitializer
  %i.u = sub <8 x i16> zeroinitializer, %i.s
  %i.v = select <8 x i1> %i.t, <8 x i16> %i.u, <8 x i16> %i.s
  %i.w = getelementptr [2 x i8], ptr %i.b, i64 %index109
  store <8 x i16> %i.v, ptr %i.w, align 2, !tbaa !35
  %index.next111 = add nuw i64 %index109, 8       ; 2 uses
  %vec.ind.next112 = add nsw <8 x i64> %vec.ind110, splat (i64 8)
  %i.x = icmp eq i64 %index.next111, 256
  br i1 %i.x, label %.loopexit, label %vector.body108, !llvm.loop !41

vector.body115:                                   ; preds = %bb.c, %vector.body115
  %index116 = phi i64 [ %index.next118, %vector.body115 ], [ 0, %bb.c ] ; 2 uses
  %vec.ind117 = phi <8 x i64> [ %vec.ind.next119, %vector.body115 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %bb.c ] ; 3 uses
  %i.y = mul nuw nsw <8 x i64> %vec.ind117, %vec.ind117
  %i.z = trunc <8 x i64> %i.y to <8 x i16>        ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index116 ; 2 uses
  store <8 x i16> %i.z, ptr %i.aa, align 2, !tbaa !35
  %i.ab = sub nsw <8 x i16> zeroinitializer, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !35
  %index.next118 = add nuw i64 %index116, 8       ; 2 uses
  %vec.ind.next119 = add nuw nsw <8 x i64> %vec.ind117, splat (i64 8)
  %i.ad = icmp eq i64 %index.next118, 128
  br i1 %i.ad, label %.loopexit, label %vector.body115, !llvm.loop !42

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  switch i32 %i.af, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %.thread74
  ]

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 528
  store ptr @sol_table_old, ptr %i.ag, align 8, !tbaa !44
  store <2 x i32> splat (i32 128), ptr %i.f, align 8, !tbaa !30
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 528
  store ptr @sol_table_new, ptr %i.ah, align 8, !tbaa !44
  store <2 x i32> splat (i32 128), ptr %i.f, align 8, !tbaa !30
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.19) #7
  br label %bb.p

bb.h:                                             ; preds = %bb.c
  store i16 0, ptr %i.b, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.082 = phi i32 [ 45, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.06781 = phi i32 [ 64, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %.06880 = phi i32 [ 0, %bb.h ], [ %i.aj, %bb.i ]
  %i.ai = lshr i32 %.06781, 5
  %i.aj = add nuw nsw i32 %i.ai, %.06880          ; 3 uses
  %i.ak = add nuw nsw i32 %.082, %.06781
  %i.al = add nuw nsw i32 %.082, 2
  %i.am = trunc i32 %i.aj to i16                  ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i16 %i.am, ptr %i.ao, align 2, !tbaa !35
  %i.ap = sub i16 0, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 127
  br i1 %exitcond.not, label %bb.j, label %bb.i, !llvm.loop !46

bb.j:                                             ; preds = %bb.i
  %i.ar = trunc i32 %i.aj to i16
  %i.as = add i16 %i.ar, 680
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 510
  store i16 %i.as, ptr %i.at, align 2, !tbaa !35
  br label %.loopexit

bb.k:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47 ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !48
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = load i8, ptr %i.av, align 1, !tbaa !49
  %i.ba = zext i8 %i.az to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.bb = phi i32 [ %i.ba, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !50
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %vector.body108, %vector.body115, %bb.e, %bb.f, %bb.n, %bb.j
  %.pr = load i32, ptr %i.i, align 4, !tbaa !32
  %i.bd = icmp eq i32 %.pr, 81923
  br i1 %i.bd, label %.thread, label %.thread74

.thread:                                          ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !43
  %i.be = icmp eq i32 %.pre, 3
  br i1 %i.be, label %.thread74, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 0, ptr %i.bf, align 4, !tbaa !51
  br label %bb.p

.thread74:                                        ; preds = %bb.d, %bb.c, %.thread, %.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 1, ptr %i.bg, align 4, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread74, %bb.g, %bb.b
  %.069 = phi i32 [ -22, %bb.b ], [ -1, %bb.g ], [ 0, %.thread74 ], [ 0, %bb.o ]
  ret i32 %.069
}

; Function Attrs: nounwind uwtable
define internal i32 @dpcm_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 15 uses
  %i.b = alloca [2 x i32], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29   ; 5 uses
  %i.i = add nsw i32 %i.h, -1                     ; 9 uses
  %.not = icmp ne i32 %i.i, 0                     ; 2 uses
  %.not202 = trunc i32 %i.d to i1
  %or.cond.not = and i1 %.not, %.not202
  %i.j = sext i1 %or.cond.not to i32
  %.0187 = add nsw i32 %i.d, %i.j                 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 16 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = icmp ne ptr %i.l, null
  %i.o = icmp sgt i32 %.0187, -1
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  switch i32 %i.s, label %.thread [
    i32 81920, label %bb.c
    i32 81921, label %bb.d
    i32 81922, label %bb.e
    i32 81923, label %bb.f
    i32 81927, label %bb.g
    i32 81926, label %bb.g
    i32 81925, label %bb.g
    i32 81928, label %bb.g
    i32 81924, label %bb.g
  ]

bb.c:                                             ; preds = %bytestream2_init.exit
  %i.t = add nsw i32 %.0187, -8
  br label %bb.g

bb.d:                                             ; preds = %bytestream2_init.exit
  %reass.sub = sub i32 %.0187, %i.h
  %i.u = add i32 %reass.sub, -6
  br label %bb.g

bb.e:                                             ; preds = %bytestream2_init.exit
  %i.v = shl nsw i32 %i.h, 1
  %i.w = sub nsw i32 %.0187, %i.v
  br label %bb.g

bb.f:                                             ; preds = %bytestream2_init.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43
  %.not203 = icmp ne i32 %i.y, 3
  %i.z = zext i1 %.not203 to i32
  %spec.select = shl nuw nsw i32 %.0187, %i.z
  br label %bb.g

bb.g:                                             ; preds = %bytestream2_init.exit, %bytestream2_init.exit, %bytestream2_init.exit, %bytestream2_init.exit, %bytestream2_init.exit, %bb.f, %bb.e, %bb.d, %bb.c
  %.0190 = phi i32 [ %spec.select, %bb.f ], [ %i.t, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %.0187, %bytestream2_init.exit ], [ %.0187, %bytestream2_init.exit ], [ %.0187, %bytestream2_init.exit ], [ %.0187, %bytestream2_init.exit ], [ %.0187, %bytestream2_init.exit ] ; 4 uses
  %i.aa = icmp slt i32 %.0190, 1
  br i1 %i.aa, label %.thread, label %bb.h

.thread:                                          ; preds = %bytestream2_init.exit, %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20) #7
  br label %bb.ai

bb.h:                                             ; preds = %bb.g
  %i.ab = srem i32 %.0190, %i.h
  %.not204 = icmp eq i32 %i.ab, 0
  br i1 %.not204, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.21) #7
  %.pre = load i32, ptr %i.g, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = phi i32 [ %.pre, %bb.i ], [ %i.h, %bb.h ] ; 2 uses
  %i.ad = add nsw i32 %.0190, -1
  %i.ae = add i32 %i.ad, %i.ac
  %i.af = sdiv i32 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !55
  %i.ah = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.ai, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %1, align 8, !tbaa !60    ; 16 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = zext nneg i32 %.0190 to i64             ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx ; 9 uses
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  switch i32 %i.ap, label %.loopexit [
    i32 81920, label %bb.l
    i32 81921, label %bb.o
    i32 81922, label %bb.p
end_hunk_0
begin_hunk_1_@dpcm_decode_frame:bb.a

bb.v:                                             ; preds = %.lr.ph279, %bb.y
  %.4278 = phi ptr [ %i.aj, %.lr.ph279 ], [ %i.ig, %bb.y ] ; 2 uses
  %.5198277 = phi i32 [ 0, %.lr.ph279 ], [ %i.ih, %bb.y ] ; 3 uses
  %.sroa.0.7276 = phi ptr [ %i.l, %.lr.ph279 ], [ %i.hj, %bb.y ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.7276, i64 1
  %i.hk = load i8, ptr %.sroa.0.7276, align 1, !tbaa !49 ; 3 uses
  %.not209 = icmp sgt i8 %i.hk, -1
  br i1 %.not209, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hl = and i8 %i.hk, 127
  %i.hm = zext nneg i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr @sol_table_16, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !35
  %i.hp = sext i16 %i.ho to i32
  %i.hq = sext i32 %.5198277 to i64               ; 2 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !30
  %i.ht = sub nsw i32 %i.hs, %i.hp                ; 2 uses
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !30
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.hu = zext nneg i8 %i.hk to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr @sol_table_16, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !35
  %i.hx = sext i16 %i.hw to i32
  %i.hy = sext i32 %.5198277 to i64               ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !30
  %i.ib = add nsw i32 %i.ia, %i.hx                ; 2 uses
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ic = phi i32 [ %i.ib, %bb.x ], [ %i.ht, %bb.w ]
  %.pre-phi322 = phi i64 [ %i.hy, %bb.x ], [ %i.hq, %bb.w ]
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.pre-phi322
  %i.ie = tail call i32 @llvm.smax.i32(i32 %i.ic, i32 -32768)
  %i.if = tail call i32 @llvm.smin.i32(i32 %i.ie, i32 32767) ; 2 uses
  %.0.i215 = trunc nsw i32 %i.if to i16
  store i32 %i.if, ptr %i.id, align 4, !tbaa !30
  %i.ig = getelementptr inbounds nuw i8, ptr %.4278, i64 2 ; 2 uses
  store i16 %.0.i215, ptr %.4278, align 2, !tbaa !35
  %i.ih = xor i32 %.5198277, %i.i
  %i.ii = icmp ult ptr %i.ig, %i.am
  br i1 %i.ii, label %bb.v, label %.loopexit, !llvm.loop !71

.lr.ph272:                                        ; preds = %bb.k, %bb.k
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 512 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph272, %bb.ab
  %.5271 = phi ptr [ %i.aj, %.lr.ph272 ], [ %i.iz, %bb.ab ] ; 2 uses
  %.6199270 = phi i32 [ 0, %.lr.ph272 ], [ %i.ja, %bb.ab ] ; 2 uses
  %.sroa.0.8269 = phi ptr [ %i.l, %.lr.ph272 ], [ %i.ik, %bb.ab ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.8269, i64 1
  %i.il = load i8, ptr %.sroa.0.8269, align 1, !tbaa !49 ; 2 uses
  %i.im = and i8 %i.il, 1
  %.not207 = icmp eq i8 %i.im, 0
  %i.in = sext i32 %.6199270 to i64               ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.in ; 2 uses
  br i1 %.not207, label %bb.aa, label %._crit_edge318

._crit_edge318:                                   ; preds = %bb.z
  %.pre320 = load i32, ptr %i.io, align 4, !tbaa !30
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.io, align 4, !tbaa !30
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge318, %bb.aa
  %i.ip = phi i32 [ %.pre320, %._crit_edge318 ], [ 0, %bb.aa ]
  %i.iq = sext i8 %i.il to i64
  %i.ir = getelementptr [2 x i8], ptr %i.f, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 256
  %i.it = load i16, ptr %i.is, align 2, !tbaa !35
  %i.iu = sext i16 %i.it to i32
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.in
  %i.iw = add nsw i32 %i.ip, %i.iu
  %i.ix = tail call i32 @llvm.smax.i32(i32 %i.iw, i32 -32768)
  %i.iy = tail call i32 @llvm.smin.i32(i32 %i.ix, i32 32767) ; 2 uses
  %.0.i213 = trunc nsw i32 %i.iy to i16
  store i32 %i.iy, ptr %i.iv, align 4, !tbaa !30
  %i.iz = getelementptr inbounds nuw i8, ptr %.5271, i64 2 ; 2 uses
  store i16 %.0.i213, ptr %.5271, align 2, !tbaa !35
  %i.ja = xor i32 %.6199270, %i.i
  %i.jb = icmp ult ptr %i.iz, %i.am
  br i1 %i.jb, label %bb.z, label %.loopexit, !llvm.loop !72

bb.ac:                                            ; preds = %.lr.ph268, %bb.ac
  %.0189267 = phi i32 [ 0, %.lr.ph268 ], [ %i.jo, %bb.ac ] ; 2 uses
  %.6266 = phi ptr [ %i.aj, %.lr.ph268 ], [ %i.jn, %bb.ac ] ; 2 uses
  %.sroa.0.9265 = phi ptr [ %i.l, %.lr.ph268 ], [ %i.jc, %bb.ac ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.9265, i64 1
  %i.jd = load i8, ptr %.sroa.0.9265, align 1, !tbaa !49
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !35
  %i.jh = sext i16 %i.jg to i32
  %i.ji = zext nneg i32 %.0189267 to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !30
  %i.jl = add i32 %i.jk, %i.jh                    ; 2 uses
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !30
  %i.jm = trunc i32 %i.jl to i16
  %i.jn = getelementptr inbounds nuw i8, ptr %.6266, i64 2 ; 2 uses
  store i16 %i.jm, ptr %.6266, align 2, !tbaa !35
  %i.jo = xor i32 %.0189267, 1
  %i.jp = icmp ult ptr %i.jn, %i.am
  br i1 %i.jp, label %bb.ac, label %.loopexit, !llvm.loop !73

bb.ad:                                            ; preds = %.lr.ph264, %bb.ad
  %.0188263 = phi i32 [ 0, %.lr.ph264 ], [ %i.kg, %bb.ad ] ; 2 uses
  %.7262 = phi ptr [ %i.aj, %.lr.ph264 ], [ %i.kf, %bb.ad ] ; 2 uses
  %.sroa.0.10261 = phi ptr [ %i.l, %.lr.ph264 ], [ %i.jq, %bb.ad ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.10261, i64 1
  %i.jr = load i8, ptr %.sroa.0.10261, align 1, !tbaa !49 ; 2 uses
  %i.js = and i8 %i.jr, 127
  %i.jt = tail call i8 @llvm.umin.i8(i8 %i.js, i8 95)
  %i.ju = zext nneg i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr @derf_steps, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !30 ; 2 uses
  %i.jx = sub nsw i32 0, %i.jw
  %.not206245 = icmp slt i8 %i.jr, 0
  %i.jy = select i1 %.not206245, i32 %i.jx, i32 %i.jw
  %i.jz = sext i32 %.0188263 to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !30
  %i.kc = add nsw i32 %i.kb, %i.jy
  %i.kd = tail call i32 @llvm.smax.i32(i32 %i.kc, i32 -32768)
  %i.ke = tail call i32 @llvm.smin.i32(i32 %i.kd, i32 32767) ; 2 uses
  %.0.i211 = trunc nsw i32 %i.ke to i16
  store i32 %i.ke, ptr %i.ka, align 4, !tbaa !30
  %i.kf = getelementptr inbounds nuw i8, ptr %.7262, i64 2 ; 2 uses
  store i16 %.0.i211, ptr %.7262, align 2, !tbaa !35
  %i.kg = xor i32 %.0188263, %i.i
  %i.kh = icmp ult ptr %i.kf, %i.am
  br i1 %i.kh, label %bb.ad, label %.loopexit, !llvm.loop !74

bb.ae:                                            ; preds = %.lr.ph, %bb.ah
  %.0260 = phi i32 [ 0, %.lr.ph ], [ %i.ld, %bb.ah ] ; 3 uses
  %.8259 = phi ptr [ %i.aj, %.lr.ph ], [ %i.lc, %bb.ah ] ; 2 uses
  %.sroa.0.11258 = phi ptr [ %i.l, %.lr.ph ], [ %i.ki, %bb.ah ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.11258, i64 1
  %i.kj = load i8, ptr %.sroa.0.11258, align 1, !tbaa !49 ; 3 uses
  %.not205 = icmp sgt i8 %i.kj, -1
  br i1 %.not205, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kk = zext i8 %i.kj to i32
  %i.kl = shl i32 %i.kk, 25
  %i.km = ashr exact i32 %i.kl, 16                ; 2 uses
  %i.kn = sext i32 %.0260 to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.kn
  store i32 %i.km, ptr %i.ko, align 4, !tbaa !30
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.kp = load i32, ptr %i.ar, align 8, !tbaa !50
  %i.kq = zext nneg i8 %i.kj to i64
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr @wady_table, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !35
  %i.kt = sext i16 %i.ks to i32
  %i.ku = mul i32 %i.kp, %i.kt
  %i.kv = sext i32 %.0260 to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.kv ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !30
  %i.ky = add i32 %i.ku, %i.kx                    ; 2 uses
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !30
  %i.kz = tail call i32 @llvm.smax.i32(i32 %i.ky, i32 -32768)
  %i.la = tail call i32 @llvm.smin.i32(i32 %i.kz, i32 32767)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.lb = phi i32 [ %i.la, %bb.ag ], [ %i.km, %bb.af ]
  %.0.i = trunc nsw i32 %i.lb to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %.8259, i64 2 ; 2 uses
  store i16 %.0.i, ptr %.8259, align 2, !tbaa !35
  %i.ld = xor i32 %.0260, %i.i
  %i.le = icmp ult ptr %i.lc, %i.am
  br i1 %i.le, label %bb.ae, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %bb.ah, %bb.ad, %bb.ac, %bb.ab, %bb.u, %bb.y, %.lr.ph297, %.lr.ph302, %.preheader, %._crit_edge, %bb.k
  store i32 1, ptr %2, align 4, !tbaa !30
  %i.lf = load i32, ptr %i.c, align 8, !tbaa !52
  br label %bb.ai

bb.ai:                                            ; preds = %bb.j, %.loopexit, %.thread
  %.0186 = phi i32 [ -22, %.thread ], [ %i.lf, %.loopexit ], [ %i.ah, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0186
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dpcm_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store <2 x i32> zeroinitializer, ptr %i.c, align 8, !tbaa !30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 356}
!30 = !{!6, !6, i64 0}
!31 = !{!10, !13, i64 16}
!32 = !{!33, !6, i64 20}
!33 = !{!"AVCodec", !16, i64 0, !16, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !11, i64 32, !34, i64 40, !16, i64 48}
!34 = !{!"p1 _ZTS9AVProfile", !12, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !7, i64 0}
!37 = distinct !{!37, !38, !39, !40}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !38, !39, !40}
!42 = distinct !{!42, !38, !39, !40}
!43 = !{!10, !6, i64 28}
!44 = !{!45, !16, i64 528}
!45 = !{!"DPCMContext", !7, i64 0, !7, i64 512, !6, i64 520, !16, i64 528}
!46 = distinct !{!46, !38}
!47 = !{!10, !16, i64 72}
!48 = !{!10, !6, i64 80}
!49 = !{!7, !7, i64 0}
!50 = !{!45, !6, i64 520}
!51 = !{!10, !6, i64 348}
!52 = !{!53, !6, i64 32}
!53 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!54 = !{!53, !16, i64 24}
!55 = !{!56, !6, i64 112}
!56 = !{!"AVFrame", !7, i64 0, !7, i64 64, !57, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !58, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !59, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!57 = !{!"p2 omnipotent char", !28, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!60 = !{!16, !16, i64 0}
!61 = distinct !{!61, !38}
!62 = distinct !{!62, !38, !39, !40}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !38, !39}
!66 = distinct !{!66, !38}
!67 = distinct !{!67, !38, !39, !40}
!68 = distinct !{!68, !38, !40, !39}
!69 = distinct !{!69, !38}
!70 = distinct !{!70, !38}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !38}
end_hunk_1
