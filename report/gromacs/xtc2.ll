Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc2?download=true
inline.NumInlined: 79
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@magic = internal unnamed_addr constant [92 x i32] [i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 10, i32 12, i32 16, i32 20, i32 25, i32 32, i32 40, i32 50, i32 64, i32 80, i32 101, i32 128, i32 161, i32 203, i32 256, i32 322, i32 406, i32 512, i32 645, i32 812, i32 1024, i32 1290, i32 1625, i32 2048, i32 2580, i32 3250, i32 4096, i32 5160, i32 6501, i32 8192, i32 10321, i32 13003, i32 16384, i32 20642, i32 26007, i32 32768, i32 41285, i32 52015, i32 65536, i32 82570, i32 104031, i32 131072, i32 165140, i32 208063, i32 262144, i32 330280, i32 416127, i32 524288, i32 660561, i32 832255, i32 1048576, i32 1321122, i32 1664510, i32 2097152, i32 2642245, i32 3329021, i32 4194304, i32 5284491, i32 6658042, i32 8388608, i32 10568983, i32 13316085, i32 16777216, i32 21137967, i32 26632170, i32 33554432, i32 42275935, i32 53264340, i32 67108864, i32 84551870, i32 106528681, i32 134217728, i32 169103740, i32 213057362, i32 268435456, i32 338207481, i32 426114725, i32 536870912, i32 676414963, i32 852229450, i32 1073741824, i32 1352829926, i32 1704458900, i32 -2147483648, i32 -1589307444, i32 -886049495], align 16
@.str = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/src/external/tng_io/src/compression/xtc2.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"TRAJNG: BUG! ntriplets_left<0!\0A\00", align 1
@magic_bits = internal unnamed_addr constant [92 x [8 x i32]] [[8 x i32] [i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24], [8 x i32] [i32 5, i32 10, i32 15, i32 20, i32 24, i32 29, i32 34, i32 39], [8 x i32] [i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42, i32 48], [8 x i32] [i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56], [8 x i32] [i32 8, i32 16, i32 24, i32 32, i32 39, i32 47, i32 55, i32 63], [8 x i32] [i32 9, i32 18, i32 27, i32 36, i32 45, i32 54, i32 63, i32 72], [8 x i32] [i32 10, i32 20, i32 30, i32 40, i32 50, i32 60, i32 70, i32 80], [8 x i32] [i32 11, i32 22, i32 33, i32 44, i32 54, i32 65, i32 76, i32 87], [8 x i32] [i32 12, i32 24, i32 36, i32 48, i32 60, i32 72, i32 84, i32 97], [8 x i32] [i32 13, i32 26, i32 39, i32 52, i32 65, i32 78, i32 91, i32 104], [8 x i32] [i32 14, i32 28, i32 42, i32 56, i32 70, i32 84, i32 98, i32 112], [8 x i32] [i32 15, i32 30, i32 45, i32 60, i32 75, i32 90, i32 105, i32 120], [8 x i32] [i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 128], [8 x i32] [i32 17, i32 34, i32 51, i32 68, i32 85, i32 102, i32 119, i32 136], [8 x i32] [i32 18, i32 36, i32 54, i32 72, i32 90, i32 108, i32 127, i32 144], [8 x i32] [i32 19, i32 38, i32 57, i32 76, i32 95, i32 114, i32 133, i32 152], [8 x i32] [i32 20, i32 40, i32 60, i32 80, i32 100, i32 120, i32 140, i32 160], [8 x i32] [i32 21, i32 42, i32 63, i32 84, i32 105, i32 127, i32 147, i32 168], [8 x i32] [i32 22, i32 44, i32 66, i32 88, i32 110, i32 132, i32 154, i32 176], [8 x i32] [i32 23, i32 46, i32 69, i32 92, i32 115, i32 138, i32 161, i32 184], [8 x i32] [i32 24, i32 48, i32 72, i32 97, i32 120, i32 144, i32 168, i32 192], [8 x i32] [i32 25, i32 50, i32 75, i32 100, i32 125, i32 150, i32 175, i32 200], [8 x i32] [i32 26, i32 52, i32 78, i32 104, i32 130, i32 156, i32 182, i32 208], [8 x i32] [i32 27, i32 54, i32 81, i32 108, i32 135, i32 162, i32 190, i32 216], [8 x i32] [i32 28, i32 56, i32 84, i32 112, i32 140, i32 168, i32 196, i32 224], [8 x i32] [i32 29, i32 58, i32 87, i32 116, i32 145, i32 174, i32 203, i32 232], [8 x i32] [i32 30, i32 60, i32 90, i32 120, i32 150, i32 180, i32 210, i32 240], [8 x i32] [i32 31, i32 62, i32 93, i32 124, i32 155, i32 186, i32 217, i32 248], [8 x i32] [i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 256], [8 x i32] [i32 33, i32 66, i32 99, i32 132, i32 165, i32 198, i32 231, i32 264], [8 x i32] [i32 34, i32 68, i32 102, i32 136, i32 170, i32 204, i32 238, i32 272], [8 x i32] [i32 35, i32 70, i32 105, i32 140, i32 175, i32 210, i32 245, i32 280], [8 x i32] [i32 36, i32 72, i32 108, i32 144, i32 180, i32 216, i32 252, i32 288], [8 x i32] [i32 37, i32 74, i32 111, i32 148, i32 185, i32 222, i32 259, i32 296], [8 x i32] [i32 38, i32 76, i32 114, i32 152, i32 190, i32 228, i32 266, i32 304], [8 x i32] [i32 39, i32 78, i32 117, i32 157, i32 195, i32 234, i32 273, i32 312], [8 x i32] [i32 40, i32 80, i32 120, i32 160, i32 200, i32 240, i32 280, i32 320], [8 x i32] [i32 41, i32 82, i32 123, i32 164, i32 205, i32 246, i32 287, i32 328], [8 x i32] [i32 42, i32 84, i32 127, i32 168, i32 210, i32 252, i32 294, i32 336], [8 x i32] [i32 43, i32 86, i32 129, i32 172, i32 215, i32 258, i32 301, i32 344], [8 x i32] [i32 44, i32 88, i32 132, i32 176, i32 220, i32 264, i32 308, i32 352], [8 x i32] [i32 45, i32 90, i32 135, i32 180, i32 225, i32 270, i32 315, i32 360], [8 x i32] [i32 46, i32 92, i32 138, i32 184, i32 230, i32 276, i32 322, i32 368], [8 x i32] [i32 47, i32 94, i32 141, i32 188, i32 235, i32 282, i32 329, i32 376], [8 x i32] [i32 48, i32 97, i32 144, i32 192, i32 240, i32 288, i32 336, i32 384], [8 x i32] [i32 49, i32 98, i32 147, i32 196, i32 245, i32 294, i32 343, i32 392], [8 x i32] [i32 50, i32 100, i32 150, i32 200, i32 250, i32 300, i32 350, i32 400], [8 x i32] [i32 52, i32 102, i32 153, i32 204, i32 255, i32 306, i32 357, i32 408], [8 x i32] [i32 52, i32 104, i32 156, i32 208, i32 260, i32 312, i32 364, i32 416], [8 x i32] [i32 53, i32 106, i32 159, i32 212, i32 265, i32 318, i32 371, i32 424], [8 x i32] [i32 54, i32 108, i32 162, i32 216, i32 270, i32 324, i32 378, i32 432], [8 x i32] [i32 55, i32 110, i32 165, i32 220, i32 275, i32 330, i32 385, i32 440], [8 x i32] [i32 56, i32 112, i32 168, i32 224, i32 280, i32 336, i32 392, i32 448], [8 x i32] [i32 57, i32 114, i32 172, i32 228, i32 285, i32 342, i32 399, i32 456], [8 x i32] [i32 58, i32 116, i32 174, i32 232, i32 290, i32 348, i32 406, i32 464], [8 x i32] [i32 59, i32 118, i32 177, i32 236, i32 295, i32 354, i32 413, i32 472], [8 x i32] [i32 60, i32 120, i32 180, i32 240, i32 300, i32 360, i32 420, i32 480], [8 x i32] [i32 61, i32 122, i32 183, i32 244, i32 305, i32 366, i32 427, i32 488], [8 x i32] [i32 62, i32 124, i32 186, i32 248, i32 310, i32 372, i32 434, i32 496], [8 x i32] [i32 63, i32 127, i32 190, i32 252, i32 315, i32 378, i32 442, i32 505], [8 x i32] [i32 64, i32 128, i32 192, i32 256, i32 320, i32 384, i32 448, i32 512], [8 x i32] [i32 65, i32 130, i32 195, i32 260, i32 325, i32 390, i32 455, i32 520], [8 x i32] [i32 66, i32 132, i32 198, i32 264, i32 330, i32 396, i32 462, i32 528], [8 x i32] [i32 67, i32 134, i32 201, i32 268, i32 335, i32 402, i32 469, i32 536], [8 x i32] [i32 68, i32 136, i32 204, i32 272, i32 340, i32 408, i32 476, i32 544], [8 x i32] [i32 69, i32 138, i32 207, i32 276, i32 345, i32 414, i32 483, i32 552], [8 x i32] [i32 70, i32 140, i32 210, i32 280, i32 350, i32 420, i32 490, i32 560], [8 x i32] [i32 71, i32 142, i32 213, i32 284, i32 355, i32 426, i32 497, i32 568], [8 x i32] [i32 72, i32 144, i32 216, i32 288, i32 360, i32 432, i32 505, i32 576], [8 x i32] [i32 73, i32 146, i32 219, i32 292, i32 365, i32 438, i32 511, i32 584], [8 x i32] [i32 74, i32 148, i32 222, i32 296, i32 370, i32 444, i32 518, i32 592], [8 x i32] [i32 75, i32 150, i32 225, i32 300, i32 375, i32 451, i32 525, i32 600], [8 x i32] [i32 76, i32 152, i32 228, i32 304, i32 380, i32 456, i32 532, i32 608], [8 x i32] [i32 77, i32 154, i32 231, i32 308, i32 385, i32 462, i32 539, i32 616], [8 x i32] [i32 78, i32 157, i32 234, i32 312, i32 390, i32 469, i32 546, i32 625], [8 x i32] [i32 79, i32 158, i32 237, i32 316, i32 395, i32 474, i32 553, i32 632], [8 x i32] [i32 80, i32 160, i32 240, i32 320, i32 400, i32 480, i32 560, i32 640], [8 x i32] [i32 81, i32 162, i32 243, i32 324, i32 406, i32 486, i32 568, i32 648], [8 x i32] [i32 82, i32 164, i32 246, i32 328, i32 410, i32 492, i32 574, i32 656], [8 x i32] [i32 83, i32 166, i32 249, i32 332, i32 415, i32 498, i32 581, i32 664], [8 x i32] [i32 84, i32 168, i32 252, i32 336, i32 420, i32 505, i32 588, i32 672], [8 x i32] [i32 85, i32 170, i32 255, i32 340, i32 425, i32 510, i32 595, i32 680], [8 x i32] [i32 86, i32 172, i32 258, i32 344, i32 430, i32 516, i32 602, i32 688], [8 x i32] [i32 87, i32 174, i32 261, i32 348, i32 435, i32 522, i32 609, i32 696], [8 x i32] [i32 88, i32 176, i32 264, i32 352, i32 440, i32 528, i32 616, i32 704], [8 x i32] [i32 89, i32 178, i32 267, i32 356, i32 445, i32 534, i32 623, i32 712], [8 x i32] [i32 90, i32 180, i32 270, i32 360, i32 451, i32 540, i32 631, i32 720], [8 x i32] [i32 91, i32 182, i32 273, i32 364, i32 455, i32 546, i32 637, i32 728], [8 x i32] [i32 92, i32 184, i32 276, i32 368, i32 460, i32 552, i32 644, i32 736], [8 x i32] [i32 94, i32 187, i32 279, i32 373, i32 466, i32 558, i32 651, i32 745], [8 x i32] [i32 94, i32 188, i32 282, i32 376, i32 470, i32 564, i32 658, i32 752], [8 x i32] [i32 95, i32 190, i32 285, i32 380, i32 475, i32 570, i32 665, i32 760]], align 16
@.str.3 = private unnamed_addr constant [48 x i8] c"TRAJNG: BUG! Overflow in compression detected.\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @Ptngc_magic(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i32 @Ptngc_find_magic_index(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 512
  %i.b = icmp ugt i32 %0, 104031
  %. = select i1 %i.b, i64 47, i64 24
  %.0 = select i1 %i.a, i64 %., i64 0
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %.0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %.not = icmp ugt i32 %i.d, %0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define ptr @Ptngc_pack_array_xtc2(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [19 x i32], align 16              ; 12 uses
  %i.b = alloca [19 x i32], align 16              ; 6 uses
  %i.c = alloca [19 x i32], align 16              ; 12 uses
  %i.d = alloca [19 x i32], align 16              ; 6 uses
  %i.e = alloca ptr, align 8                      ; 32 uses
  %i.f = alloca [3 x i32], align 4                ; 11 uses
  %i.g = alloca [3 x i32], align 4                ; 6 uses
  %i.h = alloca i32, align 4                      ; 14 uses
  %i.i = alloca [54 x i32], align 16              ; 11 uses
  %i.j = alloca [21 x i32], align 16              ; 66 uses
  %i.k = alloca [72 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.l = load i32, ptr %2, align 4, !tbaa !12     ; 6 uses
  %i.m = sdiv i32 %i.l, 3                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store i32 0, ptr %i.h, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  %i.n = shl nsw i32 %i.l, 3
  %i.o = sext i32 %i.n to i64
  %i.p = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.o, ptr noundef nonnull @.str, i32 noundef 1635) #11 ; 3 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !16
  %i.q = load <2 x i32>, ptr %1, align 4, !tbaa !12 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !12   ; 7 uses
  %i.t = icmp sgt i32 %i.l, 5
  %i.u = extractelement <2 x i32> %i.q, i64 0     ; 5 uses
  %i.v = extractelement <2 x i32> %i.q, i64 1     ; 5 uses
  br i1 %i.t, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %i.w = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %min.iters.check = icmp slt i32 %i.l, 15
  br i1 %min.iters.check, label %.preheader646.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check985 = icmp slt i32 %i.l, 51
  br i1 %min.iters.check985, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.w, 12
  %n.vec = and i64 %i.w, -16                      ; 4 uses
  %i.y = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat987 = shufflevector <2 x i32> %i.q, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat989 = shufflevector <2 x i32> %i.q, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi990 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi991 = phi <8 x i32> [ %broadcast.splat987, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi992 = phi <8 x i32> [ %broadcast.splat987, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi993 = phi <8 x i32> [ %broadcast.splat989, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi994 = phi <8 x i32> [ %broadcast.splat989, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi995 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi996 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi997 = phi <8 x i32> [ %broadcast.splat987, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi998 = phi <8 x i32> [ %broadcast.splat987, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi999 = phi <8 x i32> [ %broadcast.splat989, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi1000 = phi <8 x i32> [ %broadcast.splat989, %vector.ph ], [ %i.ae, %vector.body ]
  %.idx1291 = mul nuw i64 %index, 12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.idx1291
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.idx1292 = mul nuw i64 %index, 12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.idx1292
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 108
  %wide.vec = load <24 x i32>, ptr %i.aa, align 4, !tbaa !12 ; 3 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1001 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1002 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec1003 = load <24 x i32>, ptr %i.ac, align 4, !tbaa !12 ; 3 uses
  %strided.vec1004 = shufflevector <24 x i32> %wide.vec1003, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1005 = shufflevector <24 x i32> %wide.vec1003, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1006 = shufflevector <24 x i32> %wide.vec1003, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec, <8 x i32> %vec.phi999) ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec1004, <8 x i32> %vec.phi1000) ; 2 uses
  %i.af = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec, <8 x i32> %vec.phi993) ; 2 uses
  %i.ag = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec1004, <8 x i32> %vec.phi994) ; 2 uses
  %i.ah = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec1001, <8 x i32> %vec.phi997) ; 2 uses
  %i.ai = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec1005, <8 x i32> %vec.phi998) ; 2 uses
  %i.aj = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec1001, <8 x i32> %vec.phi991) ; 2 uses
  %i.ak = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec1005, <8 x i32> %vec.phi992) ; 2 uses
  %i.al = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec1002, <8 x i32> %vec.phi995) ; 2 uses
  %i.am = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %strided.vec1006, <8 x i32> %vec.phi996) ; 2 uses
  %i.an = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec1002, <8 x i32> %vec.phi) ; 2 uses
  %i.ao = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec1006, <8 x i32> %vec.phi990) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.an, <8 x i32> %i.ao)
  %i.aq = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax) ; 3 uses
  %rdx.minmax1007 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aj, <8 x i32> %i.ak)
  %i.ar = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax1007) ; 3 uses
  %rdx.minmax1008 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.af, <8 x i32> %i.ag)
  %i.as = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax1008) ; 3 uses
  %rdx.minmax1009 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.al, <8 x i32> %i.am)
  %i.at = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1009) ; 3 uses
  %rdx.minmax1010 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ah, <8 x i32> %i.ai)
  %i.au = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1010) ; 3 uses
  %rdx.minmax1011 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ae)
  %i.av = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1011) ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %i.aw = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %i.ax = insertelement <2 x i32> %i.aw, i32 %i.ar, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.preheader646.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aq, %vec.epilog.iter.check ], [ %i.s, %vector.main.loop.iter.check ]
  %bc.merge.rdx1012 = phi i32 [ %i.ar, %vec.epilog.iter.check ], [ %i.v, %vector.main.loop.iter.check ]
  %bc.merge.rdx1013 = phi i32 [ %i.as, %vec.epilog.iter.check ], [ %i.u, %vector.main.loop.iter.check ]
  %bc.merge.rdx1014 = phi i32 [ %i.at, %vec.epilog.iter.check ], [ %i.s, %vector.main.loop.iter.check ]
  %bc.merge.rdx1015 = phi i32 [ %i.au, %vec.epilog.iter.check ], [ %i.v, %vector.main.loop.iter.check ]
  %bc.merge.rdx1016 = phi i32 [ %i.av, %vec.epilog.iter.check ], [ %i.u, %vector.main.loop.iter.check ]
  %broadcast.splatinsert1034 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1016, i64 0
  %broadcast.splat1035 = shufflevector <4 x i32> %broadcast.splatinsert1034, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1018 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1015, i64 0
  %broadcast.splat1019 = shufflevector <4 x i32> %broadcast.splatinsert1018, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1014, i64 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1022.a = insertelement <4 x i32> poison, i32 %bc.merge.rdx1013, i64 0
  %broadcast.splat1023.a = shufflevector <4 x i32> %broadcast.splatinsert1022.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1024 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1012, i64 0
  %broadcast.splat1025 = shufflevector <4 x i32> %broadcast.splatinsert1024, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1026 = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat1027 = shufflevector <4 x i32> %broadcast.splatinsert1026, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1017 = and i64 %i.w, -4                   ; 3 uses
  %3 = or disjoint i64 %n.vec1017, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1030 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1041, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1031 = phi <4 x i32> [ %broadcast.splat1027, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %vec.phi1032 = phi <4 x i32> [ %broadcast.splat1025, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %vec.phi1033.a = phi <4 x i32> [ %broadcast.splat1023.a, %vec.epilog.ph ], [ %i.bb, %vec.epilog.vector.body ]
  %vec.phi1034 = phi <4 x i32> [ %broadcast.splat1021, %vec.epilog.ph ], [ %i.be, %vec.epilog.vector.body ]
  %vec.phi1035 = phi <4 x i32> [ %broadcast.splat1019, %vec.epilog.ph ], [ %i.bc, %vec.epilog.vector.body ]
  %vec.phi1036 = phi <4 x i32> [ %broadcast.splat1035, %vec.epilog.ph ], [ %i.ba, %vec.epilog.vector.body ]
  %.idx1293 = mul nuw i64 %index1030, 12
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.idx1293
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %wide.vec1037 = load <12 x i32>, ptr %i.az, align 4, !tbaa !12 ; 3 uses
  %strided.vec1038 = shufflevector <12 x i32> %wide.vec1037, <12 x i32> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9> ; 2 uses
  %strided.vec1039 = shufflevector <12 x i32> %wide.vec1037, <12 x i32> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10> ; 2 uses
  %strided.vec1040 = shufflevector <12 x i32> %wide.vec1037, <12 x i32> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11> ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec1038, <4 x i32> %vec.phi1036) ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec1038, <4 x i32> %vec.phi1033.a) ; 2 uses
  %i.bc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec1039, <4 x i32> %vec.phi1035) ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec1039, <4 x i32> %vec.phi1032) ; 2 uses
  %i.be = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec1040, <4 x i32> %vec.phi1034) ; 2 uses
  %i.bf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec1040, <4 x i32> %vec.phi1031) ; 2 uses
  %index.next1041 = add nuw i64 %index1030, 4     ; 2 uses
  %i.bg = icmp eq i64 %index.next1041, %n.vec1017
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bf) ; 2 uses
  %i.bi = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bd) ; 2 uses
  %i.bj = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bb) ; 2 uses
  %i.bk = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.be) ; 2 uses
  %i.bl = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bc) ; 2 uses
  %i.bm = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.ba) ; 2 uses
  %cmp.n1042 = icmp eq i64 %i.w, %n.vec1017
  %i.bn = insertelement <2 x i32> poison, i32 %i.bj, i64 0
  %i.bo = insertelement <2 x i32> %i.bn, i32 %i.bi, i64 1 ; 2 uses
  br i1 %cmp.n1042, label %._crit_edge, label %.preheader646.preheader

.preheader646.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.22.0.ph = phi i32 [ %i.s, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.sroa.10.0.ph = phi i32 [ %i.s, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.sroa.6.0.ph = phi i32 [ %i.v, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  %.sroa.0821.0.ph = phi i32 [ %i.u, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %3, %vec.epilog.middle.block ]
  %.ph1333 = phi <2 x i32> [ %i.q, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.preheader646

.preheader646:                                    ; preds = %.preheader646.preheader, %.preheader646
  %.sroa.22.0 = phi i32 [ %spec.store.select621.2, %.preheader646 ], [ %.sroa.22.0.ph, %.preheader646.preheader ]
  %.sroa.10.0 = phi i32 [ %spec.store.select430.2, %.preheader646 ], [ %.sroa.10.0.ph, %.preheader646.preheader ]
  %.sroa.6.0 = phi i32 [ %spec.store.select430.1, %.preheader646 ], [ %.sroa.6.0.ph, %.preheader646.preheader ]
  %.sroa.0821.0 = phi i32 [ %spec.store.select430, %.preheader646 ], [ %.sroa.0821.0.ph, %.preheader646.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader646 ], [ %indvars.iv.ph, %.preheader646.preheader ] ; 2 uses
  %i.bp = phi <2 x i32> [ %i.bv, %.preheader646 ], [ %.ph1333, %.preheader646.preheader ]
  %i.bq = mul nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !tbaa !12 ; 3 uses
  %i.bt = extractelement <2 x i32> %i.bs, i64 0
  %spec.store.select430 = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 %.sroa.0821.0) ; 2 uses
  %i.bu = extractelement <2 x i32> %i.bs, i64 1
  %spec.store.select430.1 = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 %.sroa.6.0) ; 2 uses
  %i.bv = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bs, <2 x i32> %i.bp) ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12 ; 2 uses
  %spec.store.select430.2 = tail call i32 @llvm.smax.i32(i32 %i.by, i32 %.sroa.10.0) ; 2 uses
  %spec.store.select621.2 = tail call i32 @llvm.smin.i32(i32 %i.by, i32 %.sroa.22.0) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader646, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %.preheader646
  %i.bz = extractelement <2 x i32> %i.bv, i64 1
  %i.ca = extractelement <2 x i32> %i.bv, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.22.1 = phi i32 [ %i.s, %bb.a ], [ %i.bh, %vec.epilog.middle.block ], [ %i.aq, %middle.block ], [ %spec.store.select621.2, %._crit_edge.loopexit ] ; 11 uses
  %.sroa.12.1 = phi i32 [ %i.v, %bb.a ], [ %i.bi, %vec.epilog.middle.block ], [ %i.ar, %middle.block ], [ %i.bz, %._crit_edge.loopexit ] ; 8 uses
  %.sroa.0825.1 = phi i32 [ %i.u, %bb.a ], [ %i.bj, %vec.epilog.middle.block ], [ %i.as, %middle.block ], [ %i.ca, %._crit_edge.loopexit ] ; 8 uses
  %.sroa.10.1 = phi i32 [ %i.s, %bb.a ], [ %i.bk, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %spec.store.select430.2, %._crit_edge.loopexit ]
  %.sroa.6.1 = phi i32 [ %i.v, %bb.a ], [ %i.bl, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %spec.store.select430.1, %._crit_edge.loopexit ]
  %.sroa.0821.1 = phi i32 [ %i.u, %bb.a ], [ %i.bm, %vec.epilog.middle.block ], [ %i.av, %middle.block ], [ %spec.store.select430, %._crit_edge.loopexit ]
  %i.cb = phi <2 x i32> [ %i.q, %bb.a ], [ %i.bo, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %i.bv, %._crit_edge.loopexit ] ; 2 uses
  %i.cc = sub nsw i32 %.sroa.0821.1, %.sroa.0825.1
  %i.cd = add nsw i32 %i.cc, 1                    ; 3 uses
  %i.ce = icmp ugt i32 %i.cd, 512
  %i.cf = icmp ugt i32 %i.cd, 104031
  %..i = select i1 %i.cf, i64 47, i64 24
  %.0.i = select i1 %i.ce, i64 %..i, i64 0
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %.0.i, %._crit_edge ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !12
  %.not.i = icmp ugt i32 %i.ch, %i.cd
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %Ptngc_find_magic_index.exit, label %bb.b, !llvm.loop !0

Ptngc_find_magic_index.exit:                      ; preds = %bb.b
  %i.ci = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.ci, ptr %i.f, align 4, !tbaa !12
  %i.cj = sub nsw i32 %.sroa.6.1, %.sroa.12.1
  %i.ck = add nsw i32 %i.cj, 1                    ; 3 uses
  %i.cl = icmp ugt i32 %i.ck, 512
  %i.cm = icmp ugt i32 %i.ck, 104031
  %..i454 = select i1 %i.cm, i64 47, i64 24
  %.0.i455 = select i1 %i.cl, i64 %..i454, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %Ptngc_find_magic_index.exit
  %indvars.iv.i456 = phi i64 [ %indvars.iv.next.i458, %bb.c ], [ %.0.i455, %Ptngc_find_magic_index.exit ] ; 5 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i456
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !12
  %.not.i457 = icmp ugt i32 %i.co, %i.ck
  %indvars.iv.next.i458 = add nuw nsw i64 %indvars.iv.i456, 1
  br i1 %.not.i457, label %Ptngc_find_magic_index.exit459, label %bb.c, !llvm.loop !0

Ptngc_find_magic_index.exit459:                   ; preds = %bb.c
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i456 ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv.i456 to i32 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !12
  %i.cs = sub nsw i32 %.sroa.10.1, %.sroa.22.1
  %i.ct = add nsw i32 %i.cs, 1                    ; 3 uses
  %i.cu = icmp ugt i32 %i.ct, 512
  %i.cv = icmp ugt i32 %i.ct, 104031
  %..i460 = select i1 %i.cv, i64 47, i64 24
  %.0.i461 = select i1 %i.cu, i64 %..i460, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %Ptngc_find_magic_index.exit459
  %indvars.iv.i462 = phi i64 [ %indvars.iv.next.i464, %bb.d ], [ %.0.i461, %Ptngc_find_magic_index.exit459 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i462
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !12
  %.not.i463 = icmp ugt i32 %i.cx, %i.ct
  %indvars.iv.next.i464 = add nuw nsw i64 %indvars.iv.i462, 1
  br i1 %.not.i463, label %Ptngc_find_magic_index.exit465, label %bb.d, !llvm.loop !0

Ptngc_find_magic_index.exit465:                   ; preds = %bb.d
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i462 ; 2 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv.i462 to i32 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !12
  %i.db = call fastcc i32 @compute_magic_bits(ptr noundef %i.f) ; 7 uses
  %spec.select623 = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i456, i64 %indvars.iv.i)
  %spec.select = trunc i64 %spec.select623 to i32
  %.1394 = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 %spec.select) ; 5 uses
  %i.dc = sdiv i32 %.1394, 2
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12 ; 3 uses
  %i.dg = load i32, ptr %2, align 4, !tbaa !12    ; 4 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.preheader, label %.thread904

.lr.ph.preheader:                                 ; preds = %Ptngc_find_magic_index.exit465
  %wide.trip.count745 = zext nneg i32 %i.dg to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count745, 1
  %i.di = icmp eq i32 %i.dg, 1
  br i1 %i.di, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count745, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %positive_int.exit.1, %.lr.ph.preheader.new
  %indvars.iv742 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next743.1, %positive_int.exit.1 ] ; 3 uses
  %.0395656 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1396.fr.1, %positive_int.exit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %positive_int.exit.1 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv742
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !12 ; 4 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.dm = shl nuw i32 %i.dk, 1
  %i.dn = add i32 %i.dm, -1
  br label %positive_int.exit

bb.f:                                             ; preds = %.lr.ph
  %i.do = icmp slt i32 %i.dk, 0
  br i1 %i.do, label %bb.g, label %positive_int.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = xor i32 %i.dk, -1
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = add nuw nsw i32 %i.dq, 2
  br label %positive_int.exit

positive_int.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %.0.i466 = phi i32 [ %i.dn, %bb.e ], [ %i.dr, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ds = icmp sgt i32 %.0.i466, %.0395656
  %i.dt = icmp slt i32 %.0.i466, %i.df
  %or.cond431 = select i1 %i.ds, i1 %i.dt, i1 false
  %.1396 = select i1 %or.cond431, i32 %.0.i466, i32 %.0395656
  %.1396.fr = freeze i32 %.1396                   ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv742
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !12 ; 4 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.j, label %bb.h

bb.h:                                             ; preds = %positive_int.exit
  %i.dy = icmp slt i32 %i.dw, 0
  br i1 %i.dy, label %bb.i, label %positive_int.exit.1

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@Ptngc_pack_array_xtc2:bb.a
  %i.xb = xor <8 x i32> %wide.load1247, splat (i32 -1)
  %i.xc = xor <8 x i32> %wide.load1248, splat (i32 -1)
  %i.xd = xor <8 x i32> %wide.load1249, splat (i32 -1)
  %i.xe = xor <8 x i32> %wide.load1250, splat (i32 -1)
  %i.xf = shl nuw nsw <8 x i32> %i.xb, splat (i32 1)
  %i.xg = shl nuw nsw <8 x i32> %i.xc, splat (i32 1)
  %i.xh = shl nuw nsw <8 x i32> %i.xd, splat (i32 1)
  %i.xi = shl nuw nsw <8 x i32> %i.xe, splat (i32 1)
  %i.xj = add nuw nsw <8 x i32> %i.xf, splat (i32 2)
  %i.xk = add nuw nsw <8 x i32> %i.xg, splat (i32 2)
  %i.xl = add nuw nsw <8 x i32> %i.xh, splat (i32 2)
  %i.xm = add nuw nsw <8 x i32> %i.xi, splat (i32 2)
  %i.xn = shl nuw <8 x i32> %wide.load1247, splat (i32 1)
  %i.xo = shl nuw <8 x i32> %wide.load1248, splat (i32 1)
  %i.xp = shl nuw <8 x i32> %wide.load1249, splat (i32 1)
  %i.xq = shl nuw <8 x i32> %wide.load1250, splat (i32 1)
  %i.xr = add <8 x i32> %i.xn, splat (i32 -1)
  %i.xs = add <8 x i32> %i.xo, splat (i32 -1)
  %i.xt = add <8 x i32> %i.xp, splat (i32 -1)
  %i.xu = add <8 x i32> %i.xq, splat (i32 -1)
  %.inv1294 = icmp sgt <8 x i32> %wide.load1247, zeroinitializer
  %predphi = select <8 x i1> %.inv1294, <8 x i32> %i.xr, <8 x i32> zeroinitializer
  %predphi1251 = select <8 x i1> %i.wx, <8 x i32> %i.xj, <8 x i32> %predphi
  %.inv1295 = icmp sgt <8 x i32> %wide.load1248, zeroinitializer
  %predphi1252 = select <8 x i1> %.inv1295, <8 x i32> %i.xs, <8 x i32> zeroinitializer
  %predphi1253 = select <8 x i1> %i.wy, <8 x i32> %i.xk, <8 x i32> %predphi1252
  %.inv1296 = icmp sgt <8 x i32> %wide.load1249, zeroinitializer
  %predphi1254 = select <8 x i1> %.inv1296, <8 x i32> %i.xt, <8 x i32> zeroinitializer
  %predphi1255 = select <8 x i1> %i.wz, <8 x i32> %i.xl, <8 x i32> %predphi1254
  %.inv1297 = icmp sgt <8 x i32> %wide.load1250, zeroinitializer
  %predphi1256 = select <8 x i1> %.inv1297, <8 x i32> %i.xu, <8 x i32> zeroinitializer
  %predphi1257 = select <8 x i1> %i.xa, <8 x i32> %i.xm, <8 x i32> %predphi1256
  store <8 x i32> %predphi1251, ptr %i.wt, align 16, !tbaa !12
  store <8 x i32> %predphi1253, ptr %i.wu, align 16, !tbaa !12
  store <8 x i32> %predphi1255, ptr %i.wv, align 16, !tbaa !12
  store <8 x i32> %predphi1257, ptr %i.ww, align 16, !tbaa !12
  %index.next1258 = add nuw i64 %index1246, 32    ; 2 uses
  %i.xv = icmp eq i64 %index.next1258, %n.vec1244
  br i1 %i.xv, label %middle.block1259, label %vector.body1245, !llvm.loop !24

middle.block1259:                                 ; preds = %vector.body1245
  %cmp.n1260 = icmp eq i64 %n.vec1244, %wide.trip.count767
  br i1 %cmp.n1260, label %.preheader639, label %vec.epilog.iter.check1264

vec.epilog.iter.check1264:                        ; preds = %middle.block1259
  %min.epilog.iters.check1265 = icmp eq i64 %i.ws, 0
  br i1 %min.epilog.iters.check1265, label %.lr.ph665.preheader, label %vec.epilog.ph1266, !prof !50

vec.epilog.ph1266:                                ; preds = %vector.main.loop.iter.check1241, %vec.epilog.iter.check1264
  %vec.epilog.resume.val1261 = phi i64 [ %n.vec1244, %vec.epilog.iter.check1264 ], [ 0, %vector.main.loop.iter.check1241 ]
  %n.vec1267 = and i64 %wide.trip.count767, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body1268

vec.epilog.vector.body1268:                       ; preds = %vec.epilog.vector.body1268, %vec.epilog.ph1266
  %index1269 = phi i64 [ %vec.epilog.resume.val1261, %vec.epilog.ph1266 ], [ %index.next1273, %vec.epilog.vector.body1268 ] ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1269 ; 2 uses
  %wide.load1270 = load <8 x i32>, ptr %i.xw, align 16, !tbaa !12 ; 4 uses
  %i.xx = icmp slt <8 x i32> %wide.load1270, zeroinitializer
  %i.xy = xor <8 x i32> %wide.load1270, splat (i32 -1)
  %i.xz = shl nuw nsw <8 x i32> %i.xy, splat (i32 1)
  %i.ya = add nuw nsw <8 x i32> %i.xz, splat (i32 2)
  %i.yb = shl nuw <8 x i32> %wide.load1270, splat (i32 1)
  %i.yc = add <8 x i32> %i.yb, splat (i32 -1)
  %.inv1298 = icmp sgt <8 x i32> %wide.load1270, zeroinitializer
  %predphi1271 = select <8 x i1> %.inv1298, <8 x i32> %i.yc, <8 x i32> zeroinitializer
  %predphi1272 = select <8 x i1> %i.xx, <8 x i32> %i.ya, <8 x i32> %predphi1271
  store <8 x i32> %predphi1272, ptr %i.xw, align 16, !tbaa !12
  %index.next1273 = add nuw i64 %index1269, 8     ; 2 uses
  %i.yd = icmp eq i64 %index.next1273, %n.vec1267
  br i1 %i.yd, label %vec.epilog.middle.block1274, label %vec.epilog.vector.body1268, !llvm.loop !25

vec.epilog.middle.block1274:                      ; preds = %vec.epilog.vector.body1268
  %cmp.n1275 = icmp eq i64 %n.vec1267, %wide.trip.count767
  br i1 %cmp.n1275, label %.preheader639, label %.lr.ph665.preheader

.lr.ph665.preheader:                              ; preds = %iter.check1262, %vec.epilog.iter.check1264, %vec.epilog.middle.block1274
  %indvars.iv764.ph = phi i64 [ 0, %iter.check1262 ], [ %n.vec1244, %vec.epilog.iter.check1264 ], [ %n.vec1267, %vec.epilog.middle.block1274 ]
  br label %.lr.ph665

.preheader639:                                    ; preds = %positive_int.exit532, %middle.block1259, %vec.epilog.middle.block1274, %insert_batch.exit530
  %i.ye = phi i1 [ false, %insert_batch.exit530 ], [ true, %middle.block1259 ], [ true, %vec.epilog.middle.block1274 ], [ true, %positive_int.exit532 ]
  %.1364950 = phi i32 [ %.0363921, %insert_batch.exit530 ], [ %.1364951, %middle.block1259 ], [ %.1364951, %vec.epilog.middle.block1274 ], [ %.1364951, %positive_int.exit532 ] ; 4 uses
  %.2372948 = phi i32 [ %i.tf, %insert_batch.exit530 ], [ %.2372949, %middle.block1259 ], [ %.2372949, %vec.epilog.middle.block1274 ], [ %.2372949, %positive_int.exit532 ] ; 3 uses
  %.2377946 = phi ptr [ %i.te, %insert_batch.exit530 ], [ %.2377947, %middle.block1259 ], [ %.2377947, %vec.epilog.middle.block1274 ], [ %.2377947, %positive_int.exit532 ] ; 2 uses
  %.1381944 = phi i1 [ %or.cond3923, %insert_batch.exit530 ], [ %.1381945, %middle.block1259 ], [ %.1381945, %vec.epilog.middle.block1274 ], [ %.1381945, %positive_int.exit532 ]
  %.2942 = phi i32 [ %.1607917, %insert_batch.exit530 ], [ %.2943, %middle.block1259 ], [ %.2943, %vec.epilog.middle.block1274 ], [ %.2943, %positive_int.exit532 ] ; 3 uses
  %.0609940 = phi i32 [ 0, %insert_batch.exit530 ], [ %.0609941, %middle.block1259 ], [ %.0609941, %vec.epilog.middle.block1274 ], [ %.0609941, %positive_int.exit532 ] ; 2 uses
  %.sroa.14.2934 = phi i32 [ %.sroa.14.1, %insert_batch.exit530 ], [ %.sroa.14.2935, %middle.block1259 ], [ %.sroa.14.2935, %vec.epilog.middle.block1274 ], [ %.sroa.14.2935, %positive_int.exit532 ] ; 5 uses
  %i.yf = phi <2 x i32> [ %i.sl, %insert_batch.exit530 ], [ %i.wr, %middle.block1259 ], [ %i.wr, %vec.epilog.middle.block1274 ], [ %i.wr, %positive_int.exit532 ] ; 6 uses
  %.not726 = icmp eq i32 %.1364950, 0             ; 2 uses
  br i1 %.not726, label %.preheader638, label %iter.check1223

iter.check1223:                                   ; preds = %.preheader639
  %i.yg = mul nuw nsw i32 %.1364950, 3
  %wide.trip.count772 = zext nneg i32 %i.yg to i64 ; 3 uses
  %n.vec1228 = and i64 %wide.trip.count772, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1231

vec.epilog.vector.body1231:                       ; preds = %vec.epilog.vector.body1231, %iter.check1223
  %index1232 = phi i64 [ 0, %iter.check1223 ], [ %index.next1235, %vec.epilog.vector.body1231 ] ; 2 uses
  %vec.phi1233 = phi <4 x i32> [ zeroinitializer, %iter.check1223 ], [ %i.yi, %vec.epilog.vector.body1231 ]
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1232
  %wide.load1234 = load <4 x i32>, ptr %i.yh, align 16, !tbaa !12
  %i.yi = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1234, <4 x i32> %vec.phi1233) ; 2 uses
  %index.next1235 = add nuw i64 %index1232, 4     ; 2 uses
  %i.yj = icmp eq i64 %index.next1235, %n.vec1228
  br i1 %i.yj, label %vec.epilog.middle.block1236, label %vec.epilog.vector.body1231, !llvm.loop !26

vec.epilog.middle.block1236:                      ; preds = %vec.epilog.vector.body1231
  %i.yk = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.yi) ; 2 uses
  %cmp.n1237 = icmp eq i64 %n.vec1228, %wide.trip.count772
  br i1 %cmp.n1237, label %.preheader638, label %.lr.ph668

.lr.ph665:                                        ; preds = %.lr.ph665.preheader, %positive_int.exit532
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %positive_int.exit532 ], [ %indvars.iv764.ph, %.lr.ph665.preheader ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv764 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !12 ; 4 uses
  %i.yn = icmp sgt i32 %i.ym, 0
  br i1 %i.yn, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.lr.ph665
  %i.yo = shl nuw i32 %i.ym, 1
  %i.yp = add i32 %i.yo, -1
  br label %positive_int.exit532

bb.cd:                                            ; preds = %.lr.ph665
  %i.yq = icmp slt i32 %i.ym, 0
  br i1 %i.yq, label %bb.ce, label %positive_int.exit532

bb.ce:                                            ; preds = %bb.cd
  %i.yr = xor i32 %i.ym, -1
  %i.ys = shl nuw nsw i32 %i.yr, 1
  %i.yt = add nuw nsw i32 %i.ys, 2
  br label %positive_int.exit532

positive_int.exit532:                             ; preds = %bb.cc, %bb.cd, %bb.ce
  %.0.i531 = phi i32 [ %i.yp, %bb.cc ], [ %i.yt, %bb.ce ], [ 0, %bb.cd ]
  store i32 %.0.i531, ptr %i.yl, align 4, !tbaa !12
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %exitcond768.not = icmp eq i64 %indvars.iv.next765, %wide.trip.count767
  br i1 %exitcond768.not, label %.preheader639, label %.lr.ph665, !llvm.loop !27

.preheader638:                                    ; preds = %.lr.ph668, %vec.epilog.middle.block1236, %.preheader639
  %.0361.lcssa = phi i32 [ 0, %.preheader639 ], [ %i.yk, %vec.epilog.middle.block1236 ], [ %spec.select434, %.lr.ph668 ] ; 3 uses
  %i.yu = mul nuw nsw i32 %.0382718, 3
  %invariant.smin = call i32 @llvm.smin.i32(i32 %i.yu, i32 %.0609940) ; 4 uses
  %i.yv = icmp sgt i32 %invariant.smin, 0
  br i1 %i.yv, label %iter.check1183, label %._crit_edge673

iter.check1183:                                   ; preds = %.preheader638
  %wide.trip.count777 = zext nneg i32 %invariant.smin to i64 ; 6 uses
  %min.iters.check1160 = icmp ult i32 %invariant.smin, 4
  br i1 %min.iters.check1160, label %.lr.ph672.preheader, label %vector.main.loop.iter.check1161

vector.main.loop.iter.check1161:                  ; preds = %iter.check1183
  %min.iters.check1162 = icmp ult i32 %invariant.smin, 32
  br i1 %min.iters.check1162, label %vec.epilog.ph1187, label %vector.ph1163

vector.ph1163:                                    ; preds = %vector.main.loop.iter.check1161
  %i.yw = and i64 %wide.trip.count777, 28
  %n.vec1164 = and i64 %wide.trip.count777, 2147483616 ; 4 uses
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.ph1163, %vector.body1165
  %index1166 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1175, %vector.body1165 ] ; 2 uses
  %vec.phi1167 = phi <8 x i32> [ zeroinitializer, %vector.ph1163 ], [ %i.zb, %vector.body1165 ]
  %vec.phi1168 = phi <8 x i32> [ zeroinitializer, %vector.ph1163 ], [ %i.zc, %vector.body1165 ]
  %vec.phi1169 = phi <8 x i32> [ zeroinitializer, %vector.ph1163 ], [ %i.zd, %vector.body1165 ]
  %vec.phi1170 = phi <8 x i32> [ zeroinitializer, %vector.ph1163 ], [ %i.ze, %vector.body1165 ]
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1166 ; 4 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 32
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 64
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 96
  %wide.load1171 = load <8 x i32>, ptr %i.yx, align 16, !tbaa !12
  %wide.load1172 = load <8 x i32>, ptr %i.yy, align 16, !tbaa !12
  %wide.load1173 = load <8 x i32>, ptr %i.yz, align 16, !tbaa !12
  %wide.load1174 = load <8 x i32>, ptr %i.za, align 16, !tbaa !12
  %i.zb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1171, <8 x i32> %vec.phi1167) ; 2 uses
  %i.zc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1172, <8 x i32> %vec.phi1168) ; 2 uses
  %i.zd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1173, <8 x i32> %vec.phi1169) ; 2 uses
  %i.ze = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1174, <8 x i32> %vec.phi1170) ; 2 uses
  %index.next1175 = add nuw i64 %index1166, 32    ; 2 uses
  %i.zf = icmp eq i64 %index.next1175, %n.vec1164
  br i1 %i.zf, label %middle.block1176, label %vector.body1165, !llvm.loop !28

middle.block1176:                                 ; preds = %vector.body1165
  %rdx.minmax1177 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.zb, <8 x i32> %i.zc)
  %rdx.minmax1178 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1177, <8 x i32> %i.zd)
  %rdx.minmax1179 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1178, <8 x i32> %i.ze)
  %i.zg = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1179) ; 3 uses
  %cmp.n1180 = icmp eq i64 %n.vec1164, %wide.trip.count777
  br i1 %cmp.n1180, label %._crit_edge673, label %vec.epilog.iter.check1185

vec.epilog.iter.check1185:                        ; preds = %middle.block1176
  %min.epilog.iters.check1186 = icmp eq i64 %i.yw, 0
  br i1 %min.epilog.iters.check1186, label %.lr.ph672.preheader, label %vec.epilog.ph1187, !prof !51

vec.epilog.ph1187:                                ; preds = %vector.main.loop.iter.check1161, %vec.epilog.iter.check1185
  %vec.epilog.resume.val1181 = phi i64 [ %n.vec1164, %vec.epilog.iter.check1185 ], [ 0, %vector.main.loop.iter.check1161 ]
  %bc.merge.rdx1182 = phi i32 [ %i.zg, %vec.epilog.iter.check1185 ], [ 0, %vector.main.loop.iter.check1161 ]
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1182, i64 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1188 = and i64 %wide.trip.count777, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1191

vec.epilog.vector.body1191:                       ; preds = %vec.epilog.vector.body1191, %vec.epilog.ph1187
  %index1192 = phi i64 [ %vec.epilog.resume.val1181, %vec.epilog.ph1187 ], [ %index.next1195, %vec.epilog.vector.body1191 ] ; 2 uses
  %vec.phi1193 = phi <4 x i32> [ %broadcast.splat1192, %vec.epilog.ph1187 ], [ %i.zi, %vec.epilog.vector.body1191 ]
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1192
  %wide.load1194 = load <4 x i32>, ptr %i.zh, align 16, !tbaa !12
  %i.zi = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1194, <4 x i32> %vec.phi1193) ; 2 uses
  %index.next1195 = add nuw i64 %index1192, 4     ; 2 uses
  %i.zj = icmp eq i64 %index.next1195, %n.vec1188
  br i1 %i.zj, label %vec.epilog.middle.block1196, label %vec.epilog.vector.body1191, !llvm.loop !29

vec.epilog.middle.block1196:                      ; preds = %vec.epilog.vector.body1191
  %i.zk = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.zi) ; 2 uses
  %cmp.n1197 = icmp eq i64 %n.vec1188, %wide.trip.count777
  br i1 %cmp.n1197, label %._crit_edge673, label %.lr.ph672.preheader

.lr.ph672.preheader:                              ; preds = %iter.check1183, %vec.epilog.iter.check1185, %vec.epilog.middle.block1196
  %indvars.iv774.ph = phi i64 [ 0, %iter.check1183 ], [ %n.vec1164, %vec.epilog.iter.check1185 ], [ %n.vec1188, %vec.epilog.middle.block1196 ]
  %.0357671.ph = phi i32 [ 0, %iter.check1183 ], [ %i.zg, %vec.epilog.iter.check1185 ], [ %i.zk, %vec.epilog.middle.block1196 ]
  br label %.lr.ph672

.lr.ph668:                                        ; preds = %vec.epilog.middle.block1236, %.lr.ph668
  %indvars.iv769 = phi i64 [ %indvars.iv.next770, %.lr.ph668 ], [ %n.vec1228, %vec.epilog.middle.block1236 ] ; 2 uses
  %.0361667 = phi i32 [ %spec.select434, %.lr.ph668 ], [ %i.yk, %vec.epilog.middle.block1236 ]
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv769
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !12
  %spec.select434 = call i32 @llvm.smax.i32(i32 %i.zm, i32 %.0361667) ; 2 uses
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1 ; 2 uses
  %exitcond773.not = icmp eq i64 %indvars.iv.next770, %wide.trip.count772
  br i1 %exitcond773.not, label %.preheader638, label %.lr.ph668, !llvm.loop !30

.lr.ph672:                                        ; preds = %.lr.ph672.preheader, %.lr.ph672
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %.lr.ph672 ], [ %indvars.iv774.ph, %.lr.ph672.preheader ] ; 2 uses
  %.0357671 = phi i32 [ %spec.select435, %.lr.ph672 ], [ %.0357671.ph, %.lr.ph672.preheader ]
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv774
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !12
  %spec.select435 = call i32 @llvm.smax.i32(i32 %i.zo, i32 %.0357671) ; 2 uses
  %indvars.iv.next775 = add nuw nsw i64 %indvars.iv774, 1 ; 2 uses
  %exitcond778.not = icmp eq i64 %indvars.iv.next775, %wide.trip.count777
  br i1 %exitcond778.not, label %._crit_edge673, label %.lr.ph672, !llvm.loop !31

._crit_edge673:                                   ; preds = %.lr.ph672, %middle.block1176, %vec.epilog.middle.block1196, %.preheader638
  %.0357.lcssa = phi i32 [ 0, %.preheader638 ], [ %i.zk, %vec.epilog.middle.block1196 ], [ %i.zg, %middle.block1176 ], [ %spec.select435, %.lr.ph672 ] ; 3 uses
  %i.zp = icmp ugt i32 %.0361.lcssa, 512
  %i.zq = icmp ugt i32 %.0361.lcssa, 104031
  %..i533 = select i1 %i.zq, i64 47, i64 24
  %.0.i534 = select i1 %i.zp, i64 %..i533, i64 0
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %._crit_edge673
  %indvars.iv.i535 = phi i64 [ %indvars.iv.next.i537, %bb.cf ], [ %.0.i534, %._crit_edge673 ] ; 4 uses
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i535
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !12
  %.not.i536 = icmp ugt i32 %i.zs, %.0361.lcssa
  %indvars.iv.next.i537 = add nuw nsw i64 %indvars.iv.i535, 1
  br i1 %.not.i536, label %Ptngc_find_magic_index.exit538, label %bb.cf, !llvm.loop !0

Ptngc_find_magic_index.exit538:                   ; preds = %bb.cf
  %i.zt = icmp ugt i32 %.0357.lcssa, 512
  %i.zu = icmp ugt i32 %.0357.lcssa, 104031
  %..i539 = select i1 %i.zu, i64 47, i64 24
  %.0.i540 = select i1 %i.zt, i64 %..i539, i64 0
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %Ptngc_find_magic_index.exit538
  %indvars.iv.i541 = phi i64 [ %indvars.iv.next.i543, %bb.cg ], [ %.0.i540, %Ptngc_find_magic_index.exit538 ] ; 4 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i541
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !12
  %.not.i542 = icmp ugt i32 %i.zw, %.0357.lcssa
  %indvars.iv.next.i543 = add nuw nsw i64 %indvars.iv.i541, 1
  br i1 %.not.i542, label %Ptngc_find_magic_index.exit544, label %bb.cg, !llvm.loop !0

Ptngc_find_magic_index.exit544:                   ; preds = %bb.cg
  %i.zx = icmp samesign ult i64 %indvars.iv.i535, %indvars.iv.i541
  %..v = call i64 @llvm.umin.i64(i64 %indvars.iv.i535, i64 %indvars.iv.i541)
  %. = trunc i64 %..v to i32
  %i.zy = call i32 @llvm.smax.i32(i32 %.0382718, i32 %.1364950)
  %.1354 = select i1 %i.zx, i32 %.1364950, i32 %i.zy
  %.2355 = call i32 @llvm.smin.i32(i32 %.1354, i32 %.2372948) ; 2 uses
  %i.zz = icmp eq i32 %.2355, 0
  %.3356 = call i32 @llvm.umax.i32(i32 %.2355, i32 1)
  %.1352 = select i1 %i.zz, i32 %.0387716, i32 %.
  %invariant.smin675 = call i32 @llvm.smin.i32(i32 %.0609940, i32 18) ; 2 uses
  %wide.trip.count782 = zext nneg i32 %invariant.smin675 to i64
  br label %bb.ch

bb.ch:                                            ; preds = %Ptngc_find_magic_index.exit556, %Ptngc_find_magic_index.exit544
  %.0349 = phi i32 [ %.3356, %Ptngc_find_magic_index.exit544 ], [ %spec.select437, %Ptngc_find_magic_index.exit556 ] ; 9 uses
  %.0347 = phi i32 [ %.1352, %Ptngc_find_magic_index.exit544 ], [ %i.abg, %Ptngc_find_magic_index.exit556 ] ; 8 uses
  br i1 %i.ye, label %.lr.ph678, label %iter.check1143

.lr.ph678:                                        ; preds = %bb.ch, %bb.cj
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %bb.cj ], [ 0, %bb.ch ] ; 3 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv779
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !12 ; 3 uses
  %i.aac = icmp ugt i32 %i.aab, 512
  %i.aad = icmp ugt i32 %i.aab, 104031
  %..i545 = select i1 %i.aad, i64 47, i64 24
  %.0.i546 = select i1 %i.aac, i64 %..i545, i64 0
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph678
  %indvars.iv.i547 = phi i64 [ %indvars.iv.next.i549, %bb.ci ], [ %.0.i546, %.lr.ph678 ] ; 3 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i547
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !12
  %.not.i548 = icmp ugt i32 %i.aaf, %i.aab
  %indvars.iv.next.i549 = add nuw nsw i64 %indvars.iv.i547, 1
  br i1 %.not.i548, label %Ptngc_find_magic_index.exit550, label %bb.ci, !llvm.loop !0

Ptngc_find_magic_index.exit550:                   ; preds = %bb.ci
  %i.aag = trunc nuw nsw i64 %indvars.iv.i547 to i32
  %i.aah = icmp slt i32 %.0347, %i.aag
  br i1 %i.aah, label %Ptngc_find_magic_index.exit550._crit_edge.loopexit.split.loop.exit, label %bb.cj

bb.cj:                                            ; preds = %Ptngc_find_magic_index.exit550
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 1 ; 2 uses
  %exitcond783.not = icmp eq i64 %indvars.iv.next780, %wide.trip.count782
  br i1 %exitcond783.not, label %Ptngc_find_magic_index.exit550._crit_edge.loopexit, label %.lr.ph678, !llvm.loop !32

Ptngc_find_magic_index.exit550._crit_edge.loopexit.split.loop.exit: ; preds = %Ptngc_find_magic_index.exit550
  %i.aai = trunc nuw nsw i64 %indvars.iv779 to i32
  br label %Ptngc_find_magic_index.exit550._crit_edge.loopexit

Ptngc_find_magic_index.exit550._crit_edge.loopexit: ; preds = %bb.cj, %Ptngc_find_magic_index.exit550._crit_edge.loopexit.split.loop.exit
  %.7.lcssa.ph = phi i32 [ %i.aai, %Ptngc_find_magic_index.exit550._crit_edge.loopexit.split.loop.exit ], [ %invariant.smin675, %bb.cj ]
  %i.aaj = udiv i32 %.7.lcssa.ph, 3
  br label %iter.check1143

iter.check1143:                                   ; preds = %bb.ch, %Ptngc_find_magic_index.exit550._crit_edge.loopexit
  %.7.lcssa = phi i32 [ 0, %bb.ch ], [ %i.aaj, %Ptngc_find_magic_index.exit550._crit_edge.loopexit ] ; 2 uses
  %spec.select437 = call i32 @llvm.smax.i32(i32 %.7.lcssa, i32 %.0349) ; 2 uses
  %i.aak = mul i32 %spec.select437, 3             ; 3 uses
  %wide.trip.count788 = zext i32 %i.aak to i64    ; 6 uses
  %min.iters.check1121 = icmp ult i32 %i.aak, 4
  br i1 %min.iters.check1121, label %.lr.ph685.preheader, label %vector.main.loop.iter.check1122

vector.main.loop.iter.check1122:                  ; preds = %iter.check1143
  %min.iters.check1123 = icmp ult i32 %i.aak, 32
  br i1 %min.iters.check1123, label %vec.epilog.ph1147, label %vector.ph1124

vector.ph1124:                                    ; preds = %vector.main.loop.iter.check1122
  %i.aal = and i64 %wide.trip.count788, 28
  %n.vec1125 = and i64 %wide.trip.count788, 4294967264 ; 4 uses
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.ph1124, %vector.body1126
  %index1127 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1135, %vector.body1126 ] ; 2 uses
  %vec.phi1128 = phi <8 x i32> [ zeroinitializer, %vector.ph1124 ], [ %i.aaq, %vector.body1126 ]
  %vec.phi1129 = phi <8 x i32> [ zeroinitializer, %vector.ph1124 ], [ %i.aar, %vector.body1126 ]
  %vec.phi1130 = phi <8 x i32> [ zeroinitializer, %vector.ph1124 ], [ %i.aas, %vector.body1126 ]
  %vec.phi1131 = phi <8 x i32> [ zeroinitializer, %vector.ph1124 ], [ %i.aat, %vector.body1126 ]
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1127 ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 64
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aam, i64 96
  %wide.load = load <8 x i32>, ptr %i.aam, align 16, !tbaa !12
  %wide.load1132 = load <8 x i32>, ptr %i.aan, align 16, !tbaa !12
  %wide.load1133 = load <8 x i32>, ptr %i.aao, align 16, !tbaa !12
  %wide.load1134 = load <8 x i32>, ptr %i.aap, align 16, !tbaa !12
  %i.aaq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load, <8 x i32> %vec.phi1128) ; 2 uses
  %i.aar = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1132, <8 x i32> %vec.phi1129) ; 2 uses
  %i.aas = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1133, <8 x i32> %vec.phi1130) ; 2 uses
  %i.aat = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1134, <8 x i32> %vec.phi1131) ; 2 uses
  %index.next1135 = add nuw i64 %index1127, 32    ; 2 uses
  %i.aau = icmp eq i64 %index.next1135, %n.vec1125
  br i1 %i.aau, label %middle.block1136, label %vector.body1126, !llvm.loop !33

middle.block1136:                                 ; preds = %vector.body1126
  %rdx.minmax1137 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aaq, <8 x i32> %i.aar)
  %rdx.minmax1138 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1137, <8 x i32> %i.aas)
  %rdx.minmax1139 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1138, <8 x i32> %i.aat)
  %i.aav = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1139) ; 3 uses
  %cmp.n1140 = icmp eq i64 %n.vec1125, %wide.trip.count788
  br i1 %cmp.n1140, label %._crit_edge686, label %vec.epilog.iter.check1145

vec.epilog.iter.check1145:                        ; preds = %middle.block1136
  %min.epilog.iters.check1146 = icmp eq i64 %i.aal, 0
  br i1 %min.epilog.iters.check1146, label %.lr.ph685.preheader, label %vec.epilog.ph1147, !prof !51

vec.epilog.ph1147:                                ; preds = %vector.main.loop.iter.check1122, %vec.epilog.iter.check1145
  %vec.epilog.resume.val1141 = phi i64 [ %n.vec1125, %vec.epilog.iter.check1145 ], [ 0, %vector.main.loop.iter.check1122 ]
  %bc.merge.rdx1142 = phi i32 [ %i.aav, %vec.epilog.iter.check1145 ], [ 0, %vector.main.loop.iter.check1122 ]
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1142, i64 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1148 = and i64 %wide.trip.count788, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body1151

vec.epilog.vector.body1151:                       ; preds = %vec.epilog.vector.body1151, %vec.epilog.ph1147
  %index1152 = phi i64 [ %vec.epilog.resume.val1141, %vec.epilog.ph1147 ], [ %index.next1155, %vec.epilog.vector.body1151 ] ; 2 uses
  %vec.phi1153 = phi <4 x i32> [ %broadcast.splat1152, %vec.epilog.ph1147 ], [ %i.aax, %vec.epilog.vector.body1151 ]
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1152
  %wide.load1154 = load <4 x i32>, ptr %i.aaw, align 16, !tbaa !12
  %i.aax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1154, <4 x i32> %vec.phi1153) ; 2 uses
  %index.next1155 = add nuw i64 %index1152, 4     ; 2 uses
  %i.aay = icmp eq i64 %index.next1155, %n.vec1148
  br i1 %i.aay, label %vec.epilog.middle.block1156, label %vec.epilog.vector.body1151, !llvm.loop !34

vec.epilog.middle.block1156:                      ; preds = %vec.epilog.vector.body1151
  %i.aaz = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.aax) ; 2 uses
  %cmp.n1157 = icmp eq i64 %n.vec1148, %wide.trip.count788
  br i1 %cmp.n1157, label %._crit_edge686, label %.lr.ph685.preheader

.lr.ph685.preheader:                              ; preds = %iter.check1143, %vec.epilog.iter.check1145, %vec.epilog.middle.block1156
  %indvars.iv784.ph = phi i64 [ 0, %iter.check1143 ], [ %n.vec1125, %vec.epilog.iter.check1145 ], [ %n.vec1148, %vec.epilog.middle.block1156 ]
  %.2359683.ph = phi i32 [ 0, %iter.check1143 ], [ %i.aav, %vec.epilog.iter.check1145 ], [ %i.aaz, %vec.epilog.middle.block1156 ]
  br label %.lr.ph685

.lr.ph685:                                        ; preds = %.lr.ph685.preheader, %.lr.ph685
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %.lr.ph685 ], [ %indvars.iv784.ph, %.lr.ph685.preheader ] ; 2 uses
  %.2359683 = phi i32 [ %spec.select438, %.lr.ph685 ], [ %.2359683.ph, %.lr.ph685.preheader ]
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv784
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !12
  %spec.select438 = call i32 @llvm.smax.i32(i32 %i.abb, i32 %.2359683) ; 2 uses
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 1 ; 2 uses
  %exitcond789.not = icmp eq i64 %indvars.iv.next785, %wide.trip.count788
  br i1 %exitcond789.not, label %._crit_edge686, label %.lr.ph685, !llvm.loop !35

._crit_edge686:                                   ; preds = %.lr.ph685, %vec.epilog.middle.block1156, %middle.block1136
  %spec.select438.lcssa = phi i32 [ %i.aaz, %vec.epilog.middle.block1156 ], [ %i.aav, %middle.block1136 ], [ %spec.select438, %.lr.ph685 ] ; 3 uses
  %i.abc = icmp ugt i32 %spec.select438.lcssa, 512
  %i.abd = icmp ugt i32 %spec.select438.lcssa, 104031
  %..i551 = select i1 %i.abd, i64 47, i64 24
  %.0.i552 = select i1 %i.abc, i64 %..i551, i64 0
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %._crit_edge686
  %indvars.iv.i553 = phi i64 [ %indvars.iv.next.i555, %bb.ck ], [ %.0.i552, %._crit_edge686 ] ; 3 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i553
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !12
  %.not.i554 = icmp ugt i32 %i.abf, %spec.select438.lcssa
  %indvars.iv.next.i555 = add nuw nsw i64 %indvars.iv.i553, 1
  br i1 %.not.i554, label %Ptngc_find_magic_index.exit556, label %bb.ck, !llvm.loop !0

Ptngc_find_magic_index.exit556:                   ; preds = %bb.ck
  %i.abg = trunc nuw nsw i64 %indvars.iv.i553 to i32 ; 2 uses
  %i.abh = icmp slt i32 %.0349, %.7.lcssa
  %i.abi = icmp ne i32 %.0347, %i.abg
  %i.abj = select i1 %i.abh, i1 true, i1 %i.abi
  br i1 %i.abj, label %bb.ch, label %bb.cl, !llvm.loop !36

bb.cl:                                            ; preds = %Ptngc_find_magic_index.exit556
  %i.abk = icmp samesign ult i32 %.0349, 3        ; 2 uses
  br i1 %.not726, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.abl = icmp samesign ult i32 %.0349, 6
  %spec.select440 = select i1 %i.abl, i32 3, i32 0
  %.0346 = select i1 %i.abk, i32 6, i32 %spec.select440
  %i.abm = add nsw i32 %.0387716, 6
  %i.abn = icmp slt i32 %.0347, %i.abm
  %i.abo = add nuw nsw i32 %.0346, %.0347
  %i.abp = icmp slt i32 %i.abo, %.1394
  %or.cond442 = select i1 %i.abn, i1 %i.abp, i1 false
  %i.abq = add nuw nsw i32 %.0347, 6
  %i.abr = icmp slt i32 %i.abq, %.1394
  %or.cond444 = select i1 %or.cond442, i1 true, i1 %i.abr
  br i1 %or.cond444, label %bb.cn, label %bb.db

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.abs = icmp ne i32 %.0349, %.0382718          ; 4 uses
  %.not428 = icmp ne i32 %.0347, %.0387716
  %or.cond446.not = select i1 %i.abs, i1 true, i1 %.not428
  br i1 %or.cond446.not, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.abt = sub nsw i32 %.0347, %.0387716          ; 2 uses
  %.inv = icmp sgt i32 %.0347, 0
  %spec.store.select = select i1 %.inv, i32 %i.abt, i32 0 ; 2 uses
  %i.abu = icmp slt i32 %spec.store.select, 0
  br i1 %i.abu, label %.preheader634.preheader, label %.thread

.preheader634.preheader:                          ; preds = %bb.co
  %wide.trip.count798 = zext nneg i32 %.0349 to i64
  br label %.preheader634

bb.cp:                                            ; preds = %bb.cr
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next795, %wide.trip.count798
  br i1 %exitcond799.not, label %._crit_edge692, label %.preheader634, !llvm.loop !37

.preheader634:                                    ; preds = %.preheader634.preheader, %bb.cp
  %indvars.iv794 = phi i64 [ 0, %.preheader634.preheader ], [ %indvars.iv.next795, %bb.cp ] ; 2 uses
  %.0338690 = phi i32 [ %i.abt, %.preheader634.preheader ], [ %spec.select447, %bb.cp ]
  %i.abv = mul nuw nsw i64 %indvars.iv794, 3      ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.abv
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !12
  %i.abw = sitofp i32 %.pre to double             ; 2 uses
  %i.abx = call double @llvm.fmuladd.f64(double %i.abw, double %i.abw, double 0.000000e+00)
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.abv
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !12
  %i.acb = sitofp i32 %i.aca to double            ; 2 uses
  %i.acc = call double @llvm.fmuladd.f64(double %i.acb, double %i.acb, double %i.abx)
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.abv
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !12
  %i.acg = sitofp i32 %i.acf to double            ; 2 uses
  %i.ach = call double @llvm.fmuladd.f64(double %i.acg, double %i.acg, double %i.acc)
  br label %bb.cq

bb.cq:                                            ; preds = %.preheader634, %bb.cq
  %.1 = phi i32 [ %spec.select447, %bb.cq ], [ %.0338690, %.preheader634 ] ; 2 uses
  %i.aci = add nsw i32 %.1, %.0387716
  %i.acj = sext i32 %i.aci to i64
  %i.ack = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.acj
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !12
  %i.acm = uitofp i32 %i.acl to double            ; 2 uses
  %i.acn = fmul nnan double %i.acm, %i.acm
  %i.aco = fcmp ogt double %i.ach, %i.acn         ; 2 uses
  %i.acp = zext i1 %i.aco to i32
  %spec.select447 = add nsw i32 %.1, %i.acp       ; 6 uses
  %i.acq = icmp slt i32 %spec.select447, 0
  %i.acr = and i1 %i.aco, %i.acq
  br i1 %i.acr, label %bb.cq, label %bb.cr, !llvm.loop !38

bb.cr:                                            ; preds = %bb.cq
  %i.acs = icmp eq i32 %spec.select447, 0
  br i1 %i.acs, label %.thread, label %bb.cp

._crit_edge692:                                   ; preds = %bb.cp
  %i.act = icmp ne i32 %spec.select447, -1
  %or.cond449.not = or i1 %i.act, %i.abs
  br i1 %or.cond449.not, label %.thread, label %bb.ct

.thread:                                          ; preds = %bb.cr, %bb.co, %._crit_edge692
  %.4620 = phi i32 [ %spec.select447, %._crit_edge692 ], [ %spec.store.select, %bb.co ], [ 0, %bb.cr ] ; 2 uses
  %i.acu = icmp eq i32 %.4620, -2
  %or.cond7 = and i1 %i.abk, %i.acu
  %.450 = sext i1 %i.abs to i32
  %.5 = select i1 %or.cond7, i32 %.450, i32 %.4620 ; 4 uses
  %i.acv = icmp eq i32 %.0349, 6                  ; 3 uses
  %i.acw = add i32 %.5, -2
  %or.cond9978 = icmp ult i32 %i.acw, -3
  %i.acx = icmp ne i32 %.5, 0                     ; 2 uses
  %i.acy = and i1 %i.acv, %i.acx
  %or.cond979 = select i1 %or.cond9978, i1 true, i1 %i.acy
  br i1 %or.cond979, label %.critedge, label %._crit_edge982

.critedge:                                        ; preds = %.thread, %.critedge
  %.6981 = phi i32 [ %i.ada, %.critedge ], [ %.5, %.thread ] ; 3 uses
  %.1388980 = phi i32 [ %i.adb, %.critedge ], [ %.0387716, %.thread ]
  %i.acz = call i32 @llvm.smax.i32(i32 %.6981, i32 -2)
  %spec.store.select15 = call i32 @llvm.smin.i32(i32 %i.acz, i32 2) ; 4 uses
  %i.ada = sub nsw i32 %.6981, %spec.store.select15 ; 4 uses
  %i.adb = add nsw i32 %spec.store.select15, %.1388980 ; 2 uses
  %i.adc = icmp slt i32 %.6981, 0                 ; 2 uses
  %i.add = sub nsw i32 0, %spec.store.select15
  %spec.select451 = select i1 %i.adc, i32 2, i32 0
  %spec.select452 = select i1 %i.adc, i32 %i.add, i32 %spec.store.select15
  %i.ade = add nsw i32 %spec.select452, -1
  %i.adf = or i32 %i.ade, %spec.select451
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %i.e) #11
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef %i.adf, i32 noundef 2, ptr noundef nonnull %i.e) #11
  %i.adg = add i32 %i.ada, -2
  %or.cond9 = icmp ult i32 %i.adg, -3
  %i.adh = icmp ne i32 %i.ada, 0                  ; 2 uses
  %i.adi = and i1 %i.acv, %i.adh
  %or.cond = select i1 %or.cond9, i1 true, i1 %i.adi
  br i1 %or.cond, label %.critedge, label %._crit_edge982, !llvm.loop !39

._crit_edge982:                                   ; preds = %.critedge, %.thread
  %.1388.lcssa = phi i32 [ %.0387716, %.thread ], [ %i.adb, %.critedge ] ; 2 uses
  %.6.lcssa = phi i32 [ %.5, %.thread ], [ %i.ada, %.critedge ] ; 2 uses
  %.lcssa974 = phi i1 [ %i.acx, %.thread ], [ %i.adh, %.critedge ]
  %or.cond12 = or i1 %i.abs, %.lcssa974
  br i1 %or.cond12, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %._crit_edge982
  %i.adj = add nsw i32 %.6.lcssa, 1
  %i.adk = mul i32 %.0349, 3
  %i.adl = add i32 %i.adk, -3
  %spec.select453 = select i1 %i.acv, i32 0, i32 %i.adj
  %i.adm = add nuw nsw i32 %i.adl, %spec.select453
  %i.adn = add nsw i32 %.6.lcssa, %.1388.lcssa
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %i.e) #11
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef %i.adm, i32 noundef 4, ptr noundef nonnull %i.e) #11
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge982, %bb.cs, %._crit_edge692, %bb.cn
  %.3390 = phi i32 [ %.0387716, %bb.cn ], [ %.0387716, %._crit_edge692 ], [ %i.adn, %bb.cs ], [ %.1388.lcssa, %._crit_edge982 ] ; 5 uses
  %.2384 = phi i32 [ %.0382718, %bb.cn ], [ %.0382718, %._crit_edge692 ], [ %.0349, %bb.cs ], [ %.0382718, %._crit_edge982 ] ; 8 uses
  %i.ado = load i32, ptr %i.h, align 4, !tbaa !12 ; 4 uses
  %.not429 = icmp eq i32 %i.ado, 0
  br i1 %.not429, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.adp = icmp eq i32 %.2942, 0
  %or.cond14 = or i1 %i.adp, %.1381944
  br i1 %or.cond14, label %bb.cw, label %bb.cv

end_hunk_1
