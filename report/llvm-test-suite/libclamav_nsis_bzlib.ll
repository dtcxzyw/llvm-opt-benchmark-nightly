inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@BZ2_rNums = dso_local local_unnamed_addr constant [512 x i32] [i32 619, i32 720, i32 127, i32 481, i32 931, i32 816, i32 813, i32 233, i32 566, i32 247, i32 985, i32 724, i32 205, i32 454, i32 863, i32 491, i32 741, i32 242, i32 949, i32 214, i32 733, i32 859, i32 335, i32 708, i32 621, i32 574, i32 73, i32 654, i32 730, i32 472, i32 419, i32 436, i32 278, i32 496, i32 867, i32 210, i32 399, i32 680, i32 480, i32 51, i32 878, i32 465, i32 811, i32 169, i32 869, i32 675, i32 611, i32 697, i32 867, i32 561, i32 862, i32 687, i32 507, i32 283, i32 482, i32 129, i32 807, i32 591, i32 733, i32 623, i32 150, i32 238, i32 59, i32 379, i32 684, i32 877, i32 625, i32 169, i32 643, i32 105, i32 170, i32 607, i32 520, i32 932, i32 727, i32 476, i32 693, i32 425, i32 174, i32 647, i32 73, i32 122, i32 335, i32 530, i32 442, i32 853, i32 695, i32 249, i32 445, i32 515, i32 909, i32 545, i32 703, i32 919, i32 874, i32 474, i32 882, i32 500, i32 594, i32 612, i32 641, i32 801, i32 220, i32 162, i32 819, i32 984, i32 589, i32 513, i32 495, i32 799, i32 161, i32 604, i32 958, i32 533, i32 221, i32 400, i32 386, i32 867, i32 600, i32 782, i32 382, i32 596, i32 414, i32 171, i32 516, i32 375, i32 682, i32 485, i32 911, i32 276, i32 98, i32 553, i32 163, i32 354, i32 666, i32 933, i32 424, i32 341, i32 533, i32 870, i32 227, i32 730, i32 475, i32 186, i32 263, i32 647, i32 537, i32 686, i32 600, i32 224, i32 469, i32 68, i32 770, i32 919, i32 190, i32 373, i32 294, i32 822, i32 808, i32 206, i32 184, i32 943, i32 795, i32 384, i32 383, i32 461, i32 404, i32 758, i32 839, i32 887, i32 715, i32 67, i32 618, i32 276, i32 204, i32 918, i32 873, i32 777, i32 604, i32 560, i32 951, i32 160, i32 578, i32 722, i32 79, i32 804, i32 96, i32 409, i32 713, i32 940, i32 652, i32 934, i32 970, i32 447, i32 318, i32 353, i32 859, i32 672, i32 112, i32 785, i32 645, i32 863, i32 803, i32 350, i32 139, i32 93, i32 354, i32 99, i32 820, i32 908, i32 609, i32 772, i32 154, i32 274, i32 580, i32 184, i32 79, i32 626, i32 630, i32 742, i32 653, i32 282, i32 762, i32 623, i32 680, i32 81, i32 927, i32 626, i32 789, i32 125, i32 411, i32 521, i32 938, i32 300, i32 821, i32 78, i32 343, i32 175, i32 128, i32 250, i32 170, i32 774, i32 972, i32 275, i32 999, i32 639, i32 495, i32 78, i32 352, i32 126, i32 857, i32 956, i32 358, i32 619, i32 580, i32 124, i32 737, i32 594, i32 701, i32 612, i32 669, i32 112, i32 134, i32 694, i32 363, i32 992, i32 809, i32 743, i32 168, i32 974, i32 944, i32 375, i32 748, i32 52, i32 600, i32 747, i32 642, i32 182, i32 862, i32 81, i32 344, i32 805, i32 988, i32 739, i32 511, i32 655, i32 814, i32 334, i32 249, i32 515, i32 897, i32 955, i32 664, i32 981, i32 649, i32 113, i32 974, i32 459, i32 893, i32 228, i32 433, i32 837, i32 553, i32 268, i32 926, i32 240, i32 102, i32 654, i32 459, i32 51, i32 686, i32 754, i32 806, i32 760, i32 493, i32 403, i32 415, i32 394, i32 687, i32 700, i32 946, i32 670, i32 656, i32 610, i32 738, i32 392, i32 760, i32 799, i32 887, i32 653, i32 978, i32 321, i32 576, i32 617, i32 626, i32 502, i32 894, i32 679, i32 243, i32 440, i32 680, i32 879, i32 194, i32 572, i32 640, i32 724, i32 926, i32 56, i32 204, i32 700, i32 707, i32 151, i32 457, i32 449, i32 797, i32 195, i32 791, i32 558, i32 945, i32 679, i32 297, i32 59, i32 87, i32 824, i32 713, i32 663, i32 412, i32 693, i32 342, i32 606, i32 134, i32 108, i32 571, i32 364, i32 631, i32 212, i32 174, i32 643, i32 304, i32 329, i32 343, i32 97, i32 430, i32 751, i32 497, i32 314, i32 983, i32 374, i32 822, i32 928, i32 140, i32 206, i32 73, i32 263, i32 980, i32 736, i32 876, i32 478, i32 430, i32 305, i32 170, i32 514, i32 364, i32 692, i32 829, i32 82, i32 855, i32 953, i32 676, i32 246, i32 369, i32 970, i32 294, i32 750, i32 807, i32 827, i32 150, i32 790, i32 288, i32 923, i32 804, i32 378, i32 215, i32 828, i32 592, i32 281, i32 565, i32 555, i32 710, i32 82, i32 896, i32 831, i32 547, i32 261, i32 524, i32 462, i32 293, i32 465, i32 502, i32 56, i32 661, i32 821, i32 976, i32 991, i32 658, i32 869, i32 905, i32 758, i32 745, i32 193, i32 768, i32 550, i32 608, i32 933, i32 378, i32 286, i32 215, i32 979, i32 792, i32 961, i32 61, i32 688, i32 793, i32 644, i32 986, i32 403, i32 106, i32 366, i32 905, i32 644, i32 372, i32 567, i32 466, i32 434, i32 645, i32 210, i32 389, i32 550, i32 919, i32 135, i32 780, i32 773, i32 635, i32 389, i32 707, i32 100, i32 626, i32 958, i32 165, i32 504, i32 920, i32 176, i32 193, i32 713, i32 857, i32 265, i32 203, i32 50, i32 668, i32 108, i32 645, i32 990, i32 626, i32 197, i32 510, i32 357, i32 358, i32 850, i32 858, i32 364, i32 936, i32 638], align 16

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, 1) i32 @nsis_BZ2_bzDecompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %or.cond = icmp ugt i32 %2, 1
  %or.cond38 = or i1 %i.a, %or.cond
  %or.cond3 = icmp ugt i32 %1, 4
  %or.cond39 = or i1 %or.cond3, %or.cond38
  br i1 %or.cond39, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @default_bzalloc, ptr %i.b, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ @default_bzalloc, %bb.c ], [ %i.c, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @default_bzfree, ptr %i.f, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = tail call ptr %i.e(ptr noundef %i.j, i32 noundef 64144, i32 noundef 1) #8 ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 10, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 3188
  store i32 0, ptr %i.q, align 4, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !26
  %i.v = trunc nuw nsw i32 %2 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i8 %i.v, ptr %i.w, align 4, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 3152
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 0, ptr %i.y, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.z, align 4, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %bb.a ], [ -3, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal ptr @default_bzalloc(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call ptr @cli_malloc(i64 noundef %i.b) #8
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @default_bzfree(ptr nofree readnone captures(none) %0, ptr noundef captures(address_is_null) %1) #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 5) i32 @nsis_BZ2_bzDecompress(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 16                ; 31 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 367 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !14
  %.not = icmp eq ptr %i.f, %0
  br i1 %.not, label %.preheader, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader:                                       ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1092 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64080 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 12 uses
  %i.o = getelementptr i8, ptr %i.d, i64 1096     ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 3160 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 3168 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 3184 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 3152 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64036 ; 3 uses
  %.phi.trans.insert1842.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64040 ; 2 uses
  %.phi.trans.insert1844.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64044 ; 2 uses
  %.phi.trans.insert1846.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64048 ; 2 uses
  %.phi.trans.insert1848.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64052 ; 2 uses
  %.phi.trans.insert1850.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64056 ; 2 uses
  %.phi.trans.insert1852.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64060 ; 2 uses
  %.phi.trans.insert1854.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64064 ; 2 uses
  %.phi.trans.insert1856.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64068 ; 2 uses
  %.phi.trans.insert1858.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64072 ; 2 uses
  %.phi.trans.insert1860.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64076 ; 2 uses
  %.phi.trans.insert1864.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64084 ; 2 uses
  %.phi.trans.insert1866.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64088 ; 2 uses
  %.phi.trans.insert1868.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64092 ; 2 uses
  %.phi.trans.insert1870.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64096 ; 2 uses
  %.phi.trans.insert1872.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64100 ; 2 uses
  %.phi.trans.insert1874.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64104 ; 2 uses
  %.phi.trans.insert1876.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64108 ; 2 uses
  %.phi.trans.insert1878.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64112 ; 2 uses
  %.phi.trans.insert1880.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64116 ; 2 uses
  %.phi.trans.insert1882.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64120 ; 2 uses
  %.phi.trans.insert1884.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64128 ; 2 uses
  %.phi.trans.insert1886.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64136 ; 2 uses
  %.phi.trans.insert1931.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 54 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 54 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 3196 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 3192 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 3468 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 25886 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 7884 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 43888 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 45436 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 51628 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 57820 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 64012 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 3724 ; 41 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 7820 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 2124 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 3452 ; 2 uses
  %.pre = load i32, ptr %i.g, align 8, !tbaa !19  ; 4 uses
  %i.am = icmp sgt i32 %.pre, 9
  br label %bb.d

bb.d:                                             ; preds = %bb.ar, %.preheader
  switch i32 %.pre, label %bb.ar [
    i32 1, label %unRLE_obuf_to_output_SMALL.exit.thread
    i32 2, label %.loopexit
  ]

.loopexit:                                        ; preds = %bb.d, %BZ2_decompress.exit.thread
  %i.an = load i8, ptr %i.h, align 4, !tbaa !27
  %.not29 = icmp eq i8 %i.an, 0
  br i1 %.not29, label %bb.x, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !30
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.e
  %.pre.pre.i = load i32, ptr %i.i, align 8, !tbaa !31
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.lr.ph.lr.ph.i, %bb.h
  %.ph716.a = phi ptr [ %i.ao, %.lr.ph.lr.ph.i ], [ %i.ba, %bb.h ] ; 2 uses
  %.ph717 = phi i32 [ %.pre.pre.i, %.lr.ph.lr.ph.i ], [ %i.az, %bb.h ]
  %i.as = icmp eq i32 %.ph717, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.ph716.a, i64 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %.backedge.i
  %i.au = phi i1 [ false, %.backedge.i ], [ %i.as, %.lr.ph.i.outer ]
  br i1 %i.au, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.av = load i8, ptr %i.j, align 4, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %.ph716.a, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !34
  %i.ay = load i32, ptr %i.i, align 8, !tbaa !31
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.i, align 8, !tbaa !31
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !14  ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !30
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 36 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !25
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !25
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !26
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = icmp eq i32 %i.bg, 0
  br i1 %i.bo, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i.outer

bb.i:                                             ; preds = %.lr.ph.i
  %i.bp = load i32, ptr %i.k, align 4, !tbaa !35  ; 8 uses
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !36  ; 4 uses
  %i.br = add nsw i32 %i.bq, 1                    ; 2 uses
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %unRLE_obuf_to_output_SMALL.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = icmp sgt i32 %i.bp, %i.br
  br i1 %i.bt, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.i, align 8, !tbaa !31
  %i.bu = load i32, ptr %i.m, align 8, !tbaa !37  ; 4 uses
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.j, align 4, !tbaa !32
  %i.bw = load i32, ptr %i.n, align 4, !tbaa !38  ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.09.i.i = phi i32 [ 256, %bb.k ], [ %..09.i.i, %bb.l ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %bb.k ], [ %.0..i.i, %bb.l ] ; 2 uses
  %i.bx = add nsw i32 %.0.i.i, %.09.i.i
  %i.by = ashr i32 %i.bx, 1                       ; 3 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %.not.i.i = icmp slt i32 %i.bw, %i.cb           ; 2 uses
  %..09.i.i = select i1 %.not.i.i, i32 %i.by, i32 %.09.i.i ; 2 uses
  %.0..i.i = select i1 %.not.i.i, i32 %.0.i.i, i32 %i.by ; 3 uses
  %i.cc = sub nsw i32 %..09.i.i, %.0..i.i
  %.not11.i.i = icmp eq i32 %i.cc, 1
  br i1 %.not11.i.i, label %indexIntoF.exit.i, label %bb.l, !llvm.loop !39

indexIntoF.exit.i:                                ; preds = %bb.l
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !41  ; 5 uses
  %i.ce = zext i32 %i.bw to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !42
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = load ptr, ptr %i.q, align 8, !tbaa !44  ; 5 uses
  %i.cj = lshr i32 %i.bw, 1
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !34
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl i32 %i.bw, 2
  %i.cp = and i32 %i.co, 4
  %i.cq = lshr i32 %i.cn, %i.cp
  %i.cr = shl nuw nsw i32 %i.cq, 16
  %i.cs = and i32 %i.cr, 983040
  %i.ct = or disjoint i32 %i.cs, %i.ch            ; 4 uses
  store i32 %i.ct, ptr %i.n, align 4, !tbaa !38
  %i.cu = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.cu, ptr %i.k, align 4, !tbaa !35
  %i.cv = icmp eq i32 %i.bp, %i.bq
  br i1 %i.cv, label %.backedge.i, label %bb.m

end_hunk_0
begin_hunk_1_@nsis_BZ2_bzDecompress:bb.a
  store i32 %i.agl, ptr %.phi.trans.insert1931.i, align 4, !tbaa !20
  %i.agm = shl nuw i32 1, %i.agl
  %i.agn = and i32 %i.agm, %i.agk
  %i.ago = icmp eq i32 %i.agn, 0
  br i1 %i.ago, label %bb.dg, label %bb.df

bb.db:                                            ; preds = %bb.de, %.lr.ph1655.i
  %i.agp = phi i32 [ %.promoted1659.i, %.lr.ph1655.i ], [ %i.aha, %bb.de ] ; 2 uses
  %i.agq = phi i32 [ %.promoted1653.i829, %.lr.ph1655.i ], [ %i.agy, %bb.de ] ; 2 uses
  %i.agr = icmp eq i32 %i.agp, 0
  br i1 %i.agr, label %BZ2_decompress.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ags = load i32, ptr %i.v, align 8, !tbaa !21
  %i.agt = shl i32 %i.ags, 8
  %i.agu = load ptr, ptr %i.agg, align 8, !tbaa !77 ; 2 uses
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !34
  %i.agw = zext i8 %i.agv to i32
  %i.agx = or disjoint i32 %i.agt, %i.agw         ; 2 uses
  store i32 %i.agx, ptr %i.v, align 8, !tbaa !21
  %i.agy = add nsw i32 %i.agq, 8                  ; 3 uses
  store i32 %i.agy, ptr %.phi.trans.insert1931.i, align 4, !tbaa !20
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agu, i64 1
  store ptr %i.agz, ptr %i.agg, align 8, !tbaa !77
  %i.aha = add i32 %i.agp, -1                     ; 2 uses
  store i32 %i.aha, ptr %i.agh, align 8, !tbaa !76
  %i.ahb = load i32, ptr %i.agi, align 4, !tbaa !23
  %i.ahc = add i32 %i.ahb, 1                      ; 2 uses
  store i32 %i.ahc, ptr %i.agi, align 4, !tbaa !23
  %i.ahd = icmp eq i32 %i.ahc, 0
  br i1 %i.ahd, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ahe = load i32, ptr %i.agj, align 8, !tbaa !24
  %i.ahf = add i32 %i.ahe, 1
  store i32 %i.ahf, ptr %i.agj, align 8, !tbaa !24
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ahg = icmp sgt i32 %i.agq, -8
  br i1 %i.ahg, label %._crit_edge1656.i, label %bb.db

bb.df:                                            ; preds = %._crit_edge1656.i
  %i.ahh = add nsw i32 %.8943.i, 1                ; 3 uses
  %.not1349.i = icmp slt i32 %i.ahh, %.31013.i.ph
  br i1 %.not1349.i, label %bb.da, label %BZ2_decompress.exit

bb.dg:                                            ; preds = %._crit_edge1656.i
  %i.ahi = trunc i32 %.8943.i to i8
  %i.ahj = sext i32 %.11.i.ph to i64
  %i.ahk = getelementptr inbounds i8, ptr %i.aa, i64 %i.ahj
  store i8 %i.ahi, ptr %i.ahk, align 1, !tbaa !34
  %i.ahl = add nsw i32 %.11.i.ph, 1
  br label %bb.cz, !llvm.loop !84

bb.dh:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ahm = icmp sgt i32 %.11011.i, 0
  br i1 %i.ahm, label %iter.check, label %.preheader1392.i

iter.check:                                       ; preds = %bb.dh
  %min.iters.check465 = icmp ult i32 %.11011.i, 4
  br i1 %min.iters.check465, label %.lr.ph1520.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ahn = add nsw i32 %.11011.i, -1              ; 2 uses
  %i.aho = and i32 %i.ahn, 255
  %i.ahp = icmp eq i32 %i.aho, 255
  %i.ahq = icmp ugt i32 %i.ahn, 255
  %i.ahr = or i1 %i.ahp, %i.ahq
  br i1 %i.ahr, label %.lr.ph1520.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check466 = icmp ult i32 %.11011.i, 32
  br i1 %min.iters.check466, label %vec.epilog.ph, label %vector.ph467

vector.ph467:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf468 = and i32 %.11011.i, 28
  %n.vec469 = and i32 %.11011.i, 480              ; 10 uses
  %i.ahs = trunc i32 %n.vec469 to i8              ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !34
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.aht, align 16, !tbaa !34
  %i.ahu = icmp eq i32 %n.vec469, 32
  br i1 %i.ahu, label %middle.block473, label %vector.body470.1

vector.body470.1:                                 ; preds = %vector.ph467
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.ahv, align 16, !tbaa !34
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.ahw, align 16, !tbaa !34
  %i.ahx = icmp eq i32 %n.vec469, 64
  br i1 %i.ahx, label %middle.block473, label %vector.body470.2

vector.body470.2:                                 ; preds = %vector.body470.1
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.ahy, align 16, !tbaa !34
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.ahz, align 16, !tbaa !34
  %i.aia = icmp eq i32 %n.vec469, 96
  br i1 %i.aia, label %middle.block473, label %vector.body470.3

vector.body470.3:                                 ; preds = %vector.body470.2
  %i.aib = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.aic = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.aib, align 16, !tbaa !34
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.aic, align 16, !tbaa !34
  %i.aid = icmp eq i32 %n.vec469, 128
  br i1 %i.aid, label %middle.block473, label %vector.body470.4

vector.body470.4:                                 ; preds = %vector.body470.3
  %i.aie = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aif = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.aie, align 16, !tbaa !34
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.aif, align 16, !tbaa !34
  %i.aig = icmp eq i32 %n.vec469, 160
  br i1 %i.aig, label %middle.block473, label %vector.body470.5

vector.body470.5:                                 ; preds = %vector.body470.4
  %i.aih = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aii = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.aih, align 16, !tbaa !34
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.aii, align 16, !tbaa !34
  %i.aij = icmp eq i32 %n.vec469, 192
  br i1 %i.aij, label %middle.block473, label %vector.body470.6

vector.body470.6:                                 ; preds = %vector.body470.5
  %i.aik = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ail = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.aik, align 16, !tbaa !34
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.ail, align 16, !tbaa !34
  %i.aim = icmp eq i32 %n.vec469, 224
  br i1 %i.aim, label %middle.block473, label %vector.body470.7

vector.body470.7:                                 ; preds = %vector.body470.6
  %i.ain = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.aio = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.ain, align 16, !tbaa !34
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.aio, align 16, !tbaa !34
  br label %middle.block473

middle.block473:                                  ; preds = %vector.body470.7, %vector.body470.6, %vector.body470.5, %vector.body470.4, %vector.body470.3, %vector.body470.2, %vector.body470.1, %vector.ph467
  %cmp.n = icmp eq i32 %.11011.i, %n.vec469
  br i1 %cmp.n, label %.preheader1392.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block473
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf468, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1520.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec469, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val474 = phi i8 [ %i.ahs, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec476 = and i32 %.11011.i, 508              ; 3 uses
  %i.aip = trunc i32 %n.vec476 to i8
  %broadcast.splatinsert477 = insertelement <4 x i8> poison, i8 %bc.resume.val474, i64 0
  %broadcast.splat478 = shufflevector <4 x i8> %broadcast.splatinsert477, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat478, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index479 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next481, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind480 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next482, %vec.epilog.vector.body ] ; 2 uses
  %i.aiq = and i32 %index479, 252
  %i.air = zext nneg i32 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.air
  store <4 x i8> %vec.ind480, ptr %i.ais, align 4, !tbaa !34
  %index.next481 = add nuw i32 %index479, 4       ; 2 uses
  %vec.ind.next482 = add <4 x i8> %vec.ind480, splat (i8 4)
  %i.ait = icmp eq i32 %index.next481, %n.vec476
  br i1 %i.ait, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n483 = icmp eq i32 %.11011.i, %n.vec476
  br i1 %cmp.n483, label %.preheader1392.i, label %.lr.ph1520.i.preheader

.lr.ph1520.i.preheader:                           ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010651518.i.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.ahs, %vec.epilog.iter.check ], [ %i.aip, %vec.epilog.middle.block ]
  br label %.lr.ph1520.i

.preheader1392.i:                                 ; preds = %.lr.ph1520.i, %middle.block473, %vec.epilog.middle.block, %bb.dh
  %i.aiu = icmp sgt i32 %.01032.i, 0
  br i1 %i.aiu, label %.lr.ph1527.i, label %._crit_edge1528.i

.lr.ph1527.i:                                     ; preds = %.preheader1392.i
  %wide.trip.count.i = zext nneg i32 %.01032.i to i64
  br label %bb.di

.lr.ph1520.i:                                     ; preds = %.lr.ph1520.i.preheader, %.lr.ph1520.i
  %.010651518.i = phi i8 [ %i.aix, %.lr.ph1520.i ], [ %.010651518.i.ph, %.lr.ph1520.i.preheader ] ; 3 uses
  %i.aiv = zext i8 %.010651518.i to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aiv
  store i8 %.010651518.i, ptr %i.aiw, align 1, !tbaa !34
  %i.aix = add i8 %.010651518.i, 1                ; 2 uses
  %i.aiy = zext i8 %i.aix to i32
  %i.aiz = icmp samesign ugt i32 %.11011.i, %i.aiy
  br i1 %i.aiz, label %.lr.ph1520.i, label %.preheader1392.i, !llvm.loop !87

bb.di:                                            ; preds = %._crit_edge1525.i, %.lr.ph1527.i
  %indvars.iv1736.i = phi i64 [ 0, %.lr.ph1527.i ], [ %indvars.iv.next1737.i, %._crit_edge1525.i ] ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv1736.i
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !34 ; 4 uses
  %i.ajc = zext i8 %i.ajb to i64                  ; 17 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajc
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !34 ; 2 uses
  %.not13481521.i = icmp eq i8 %i.ajb, 0
  br i1 %.not13481521.i, label %._crit_edge1525.i, label %vector.scevcheck485

vector.scevcheck485:                              ; preds = %bb.di
  %i.ajf = icmp ult i8 %i.ajb, 4
  br i1 %i.ajf, label %.lr.ph1524.i.prol, label %vector.main.loop.iter.check488

vector.main.loop.iter.check488:                   ; preds = %vector.scevcheck485
  %min.iters.check489 = icmp ult i8 %i.ajb, 32
  br i1 %min.iters.check489, label %vec.epilog.ph505, label %vector.ph490

vector.ph490:                                     ; preds = %vector.main.loop.iter.check488
  %n.mod.vf491 = and i64 %i.ajc, 28
  %n.vec492 = and i64 %i.ajc, 224                 ; 8 uses
  %i.ajg = and i64 %i.ajc, 31
  %i.ajh = getelementptr i8, ptr %i.a, i64 %i.ajc ; 4 uses
  %i.aji = getelementptr i8, ptr %i.ajh, i64 -16
  %i.ajj = getelementptr i8, ptr %i.ajh, i64 -32
  %wide.load = load <16 x i8>, ptr %i.aji, align 1, !tbaa !34
  %wide.load495 = load <16 x i8>, ptr %i.ajj, align 1, !tbaa !34
  %i.ajk = getelementptr i8, ptr %i.ajh, i64 -15
  %i.ajl = getelementptr i8, ptr %i.ajh, i64 -31
  store <16 x i8> %wide.load, ptr %i.ajk, align 1, !tbaa !34
  store <16 x i8> %wide.load495, ptr %i.ajl, align 1, !tbaa !34
  %i.ajm = icmp eq i64 %n.vec492, 32
  br i1 %i.ajm, label %middle.block497, label %vector.body493.1

vector.body493.1:                                 ; preds = %vector.ph490
  %i.ajn = getelementptr i8, ptr %i.a, i64 %i.ajc ; 4 uses
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -48
  %i.ajp = getelementptr i8, ptr %i.ajn, i64 -64
  %wide.load.1 = load <16 x i8>, ptr %i.ajo, align 1, !tbaa !34
  %wide.load495.1 = load <16 x i8>, ptr %i.ajp, align 1, !tbaa !34
  %i.ajq = getelementptr i8, ptr %i.ajn, i64 -47
  %i.ajr = getelementptr i8, ptr %i.ajn, i64 -63
  store <16 x i8> %wide.load.1, ptr %i.ajq, align 1, !tbaa !34
  store <16 x i8> %wide.load495.1, ptr %i.ajr, align 1, !tbaa !34
  %i.ajs = icmp eq i64 %n.vec492, 64
  br i1 %i.ajs, label %middle.block497, label %vector.body493.2

vector.body493.2:                                 ; preds = %vector.body493.1
  %i.ajt = getelementptr i8, ptr %i.a, i64 %i.ajc ; 4 uses
  %i.aju = getelementptr i8, ptr %i.ajt, i64 -80
  %i.ajv = getelementptr i8, ptr %i.ajt, i64 -96
  %wide.load.2 = load <16 x i8>, ptr %i.aju, align 1, !tbaa !34
  %wide.load495.2 = load <16 x i8>, ptr %i.ajv, align 1, !tbaa !34
  %i.ajw = getelementptr i8, ptr %i.ajt, i64 -79
  %i.ajx = getelementptr i8, ptr %i.ajt, i64 -95
  store <16 x i8> %wide.load.2, ptr %i.ajw, align 1, !tbaa !34
  store <16 x i8> %wide.load495.2, ptr %i.ajx, align 1, !tbaa !34
  %i.ajy = icmp eq i64 %n.vec492, 96
  br i1 %i.ajy, label %middle.block497, label %vector.body493.3

vector.body493.3:                                 ; preds = %vector.body493.2
  %i.ajz = getelementptr i8, ptr %i.a, i64 %i.ajc ; 4 uses
  %i.aka = getelementptr i8, ptr %i.ajz, i64 -112
  %i.akb = getelementptr i8, ptr %i.ajz, i64 -128
  %wide.load.3 = load <16 x i8>, ptr %i.aka, align 1, !tbaa !34
  %wide.load495.3 = load <16 x i8>, ptr %i.akb, align 1, !tbaa !34
  %i.akc = getelementptr i8, ptr %i.ajz, i64 -111
  %i.akd = getelementptr i8, ptr %i.ajz, i64 -127
  store <16 x i8> %wide.load.3, ptr %i.akc, align 1, !tbaa !34
  store <16 x i8> %wide.load495.3, ptr %i.akd, align 1, !tbaa !34
  %i.ake = icmp eq i64 %n.vec492, 128
  br i1 %i.ake, label %middle.block497, label %vector.body493.4

vector.body493.4:                                 ; preds = %vector.body493.3
  %i.akf = getelementptr i8, ptr %i.a, i64 %i.ajc ; 4 uses
  %i.akg = getelementptr i8, ptr %i.akf, i64 -144
  %i.akh = getelementptr i8, ptr %i.akf, i64 -160
  %wide.load.4 = load <16 x i8>, ptr %i.akg, align 1, !tbaa !34
  %wide.load495.4 = load <16 x i8>, ptr %i.akh, align 1, !tbaa !34
  %i.aki = getelementptr i8, ptr %i.akf, i64 -143
  %i.akj = getelementptr i8, ptr %i.akf, i64 -159
  store <16 x i8> %wide.load.4, ptr %i.aki, align 1, !tbaa !34
  store <16 x i8> %wide.load495.4, ptr %i.akj, align 1, !tbaa !34
  %i.akk = icmp eq i64 %n.vec492, 160
  br i1 %i.akk, label %middle.block497, label %vector.body493.5

vector.body493.5:                                 ; preds = %vector.body493.4
  %i.akl = getelementptr i8, ptr %i.a, i64 %i.ajc ; 4 uses
  %i.akm = getelementptr i8, ptr %i.akl, i64 -176
  %i.akn = getelementptr i8, ptr %i.akl, i64 -192
  %wide.load.5 = load <16 x i8>, ptr %i.akm, align 1, !tbaa !34
  %wide.load495.5 = load <16 x i8>, ptr %i.akn, align 1, !tbaa !34
  %i.ako = getelementptr i8, ptr %i.akl, i64 -175
  %i.akp = getelementptr i8, ptr %i.akl, i64 -191
  store <16 x i8> %wide.load.5, ptr %i.ako, align 1, !tbaa !34
  store <16 x i8> %wide.load495.5, ptr %i.akp, align 1, !tbaa !34
  %i.akq = icmp eq i64 %n.vec492, 192
  br i1 %i.akq, label %middle.block497, label %vector.body493.6

vector.body493.6:                                 ; preds = %vector.body493.5
  %i.akr = getelementptr i8, ptr %i.a, i64 %i.ajc ; 4 uses
  %i.aks = getelementptr i8, ptr %i.akr, i64 -208
  %i.akt = getelementptr i8, ptr %i.akr, i64 -224
  %wide.load.6 = load <16 x i8>, ptr %i.aks, align 1, !tbaa !34
  %wide.load495.6 = load <16 x i8>, ptr %i.akt, align 1, !tbaa !34
  %i.aku = getelementptr i8, ptr %i.akr, i64 -207
  %i.akv = getelementptr i8, ptr %i.akr, i64 -223
  store <16 x i8> %wide.load.6, ptr %i.aku, align 1, !tbaa !34
  store <16 x i8> %wide.load495.6, ptr %i.akv, align 1, !tbaa !34
  br label %middle.block497

middle.block497:                                  ; preds = %vector.body493.6, %vector.body493.5, %vector.body493.4, %vector.body493.3, %vector.body493.2, %vector.body493.1, %vector.ph490
  %cmp.n498 = icmp eq i64 %n.vec492, %i.ajc
  br i1 %cmp.n498, label %._crit_edge1525.i, label %vec.epilog.iter.check503

vec.epilog.iter.check503:                         ; preds = %middle.block497
  %min.epilog.iters.check504 = icmp eq i64 %n.mod.vf491, 0
  br i1 %min.epilog.iters.check504, label %.lr.ph1524.i.prol, label %vec.epilog.ph505, !prof !85

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check488, %vec.epilog.iter.check503
  %vec.epilog.resume.val499 = phi i64 [ %n.vec492, %vec.epilog.iter.check503 ], [ 0, %vector.main.loop.iter.check488 ]
  %n.vec507 = and i64 %i.ajc, 252                 ; 2 uses
  %i.akw = and i64 %i.ajc, 3
  br label %vec.epilog.vector.body508

vec.epilog.vector.body508:                        ; preds = %vec.epilog.vector.body508, %vec.epilog.ph505
  %index509 = phi i64 [ %vec.epilog.resume.val499, %vec.epilog.ph505 ], [ %index.next511, %vec.epilog.vector.body508 ] ; 2 uses
  %i.akx = sub i64 %i.ajc, %index509
  %i.aky = getelementptr i8, ptr %i.a, i64 %i.akx ; 2 uses
  %i.akz = getelementptr i8, ptr %i.aky, i64 -4
  %wide.load510 = load <4 x i8>, ptr %i.akz, align 1, !tbaa !34
  %i.ala = getelementptr i8, ptr %i.aky, i64 -3
  store <4 x i8> %wide.load510, ptr %i.ala, align 1, !tbaa !34
  %index.next511 = add nuw i64 %index509, 4       ; 2 uses
  %i.alb = icmp eq i64 %index.next511, %n.vec507
  br i1 %i.alb, label %.lr.ph1524.i.preheader.a, label %vec.epilog.vector.body508, !llvm.loop !88

.lr.ph1524.i.preheader.a:                         ; preds = %vec.epilog.vector.body508
  %lcmp.mod.not.a = icmp eq i64 %n.vec507, %i.ajc
  br i1 %lcmp.mod.not.a, label %._crit_edge1525.i, label %.lr.ph1524.i.prol

.lr.ph1524.i.prol:                                ; preds = %vector.scevcheck485, %vec.epilog.iter.check503, %.lr.ph1524.i.preheader.a
  %indvars.iv.i.ph = phi i64 [ %i.ajc, %vector.scevcheck485 ], [ %i.ajg, %vec.epilog.iter.check503 ], [ %i.akw, %.lr.ph1524.i.preheader.a ]
  br label %.lr.ph1524.i

.lr.ph1524.i:                                     ; preds = %.lr.ph1524.i.prol, %.lr.ph1524.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph1524.i ], [ %indvars.iv.i.ph, %.lr.ph1524.i.prol ] ; 2 uses
  %i.alc = getelementptr i8, ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.ald = getelementptr i8, ptr %i.alc, i64 -1
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !34
  store i8 %i.ale, ptr %i.alc, align 1, !tbaa !34
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.alf = and i64 %indvars.iv.next.i.1, 255
  %.not1348.i.1 = icmp eq i64 %i.alf, 0
  br i1 %.not1348.i.1, label %._crit_edge1525.i, label %.lr.ph1524.i, !llvm.loop !89

._crit_edge1525.i:                                ; preds = %.lr.ph1524.i, %middle.block497, %.lr.ph1524.i.preheader.a, %bb.di
  store i8 %i.aje, ptr %i.a, align 16, !tbaa !34
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv1736.i
  store i8 %i.aje, ptr %i.alg, align 1, !tbaa !34
  %indvars.iv.next1737.i = add nuw nsw i64 %indvars.iv1736.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next1737.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge1528.i, label %bb.di, !llvm.loop !90

._crit_edge1528.i:                                ; preds = %._crit_edge1525.i, %.preheader1392.i
  %.12.lcssa.i = phi i32 [ 0, %.preheader1392.i ], [ %.01032.i, %._crit_edge1525.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.ec, %._crit_edge1528.i
  %i.alh = phi i32 [ %i.afm, %._crit_edge1528.i ], [ %i.anv, %bb.ec ]
  %i.ali = phi i32 [ %i.afn, %._crit_edge1528.i ], [ %i.anw, %bb.ec ]
  %i.alj = phi i32 [ %i.afo, %._crit_edge1528.i ], [ %i.anx, %bb.ec ]
  %i.alk = phi i32 [ %i.afp, %._crit_edge1528.i ], [ %i.any, %bb.ec ] ; 3 uses
  %i.all = phi i32 [ %i.afq, %._crit_edge1528.i ], [ %i.anz, %bb.ec ]
  %i.alm = phi i32 [ %i.afr, %._crit_edge1528.i ], [ %i.aoa, %bb.ec ]
  %i.aln = phi i32 [ %i.afs, %._crit_edge1528.i ], [ %i.aob, %bb.ec ] ; 3 uses
  %i.alo = phi i32 [ %i.aft, %._crit_edge1528.i ], [ %i.aoc, %bb.ec ] ; 3 uses
  %i.alp = phi i32 [ %i.afv, %._crit_edge1528.i ], [ %i.aod, %bb.ec ] ; 3 uses
  %i.alq = phi i32 [ %i.afw, %._crit_edge1528.i ], [ %i.aoe, %bb.ec ] ; 2 uses
  %i.alr = phi i32 [ %i.afx, %._crit_edge1528.i ], [ %i.aof, %bb.ec ] ; 3 uses
  %i.als = phi i32 [ %i.afy, %._crit_edge1528.i ], [ %i.aog, %bb.ec ] ; 3 uses
  %i.alt = phi i32 [ %i.afz, %._crit_edge1528.i ], [ %i.aoh, %bb.ec ] ; 2 uses
  %i.alu = phi i32 [ %i.aga, %._crit_edge1528.i ], [ %i.aoi, %bb.ec ] ; 2 uses
  %i.alv = phi ptr [ %i.agb, %._crit_edge1528.i ], [ %i.aoj, %bb.ec ] ; 2 uses
  %i.alw = phi ptr [ %i.agc, %._crit_edge1528.i ], [ %i.aok, %bb.ec ] ; 2 uses
  %i.alx = phi ptr [ %i.agd, %._crit_edge1528.i ], [ %i.aol, %bb.ec ] ; 2 uses
  %.01155.i = phi i32 [ %i.afu, %._crit_edge1528.i ], [ %.21157.i, %bb.ec ] ; 3 uses
  %.31035.i = phi i32 [ %.01032.i, %._crit_edge1528.i ], [ %.51037.i, %bb.ec ] ; 4 uses
  %.41014.i = phi i32 [ %.11011.i, %._crit_edge1528.i ], [ %.61016.i, %bb.ec ] ; 7 uses
  %.5988.i = phi i32 [ %.2985.i, %._crit_edge1528.i ], [ %.7990.i, %bb.ec ] ; 9 uses
  %.0964.i = phi i32 [ 0, %._crit_edge1528.i ], [ %i.asx, %bb.ec ] ; 2 uses
  %.9944.i = phi i32 [ %.6941.i, %._crit_edge1528.i ], [ %.11946.i, %bb.ec ] ; 3 uses
  %.13.i = phi i32 [ %.12.lcssa.i, %._crit_edge1528.i ], [ %.15.i, %bb.ec ]
  %i.aly = icmp slt i32 %.0964.i, %.41014.i
  br i1 %i.aly, label %bb.dk, label %.preheader1391.i

.preheader1391.i:                                 ; preds = %bb.dj
  %i.alz = icmp sgt i32 %.41014.i, 0
  br i1 %i.alz, label %.preheader1390.lr.ph.i, label %._crit_edge1538.i

.preheader1390.lr.ph.i:                           ; preds = %.preheader1391.i
  %i.ama = icmp sgt i32 %.5988.i, 0
  %wide.trip.count.i.i = zext i32 %.5988.i to i64 ; 7 uses
  %wide.trip.count1750.i = zext nneg i32 %.41014.i to i64
  %min.iters.check529 = icmp ult i32 %.5988.i, 8
  %n.vec532 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n543 = icmp eq i64 %n.vec532, %wide.trip.count.i.i
  %xtraiter720 = and i64 %wide.trip.count.i.i, 1
  %i.amb = icmp eq i32 %.5988.i, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  %lcmp.mod723.a = trunc i32 %.5988.i to i1
  %xtraiter724 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.amc = icmp ult i32 %.5988.i, 4
  %unroll_iter727 = and i64 %wide.trip.count.i.i, 2147483644
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  %lcmp.mod726 = icmp ne i64 %xtraiter724, 0
  br label %.preheader1390.i

bb.dk:                                            ; preds = %bb.dj, %bb.at
  %i.amd = phi i32 [ %i.alh, %bb.dj ], [ %.pre1853.i, %bb.at ] ; 2 uses
  %i.ame = phi i32 [ %i.ali, %bb.dj ], [ %.pre1855.i, %bb.at ] ; 2 uses
  %i.amf = phi i32 [ %i.alj, %bb.dj ], [ %.pre1857.i, %bb.at ] ; 2 uses
  %i.amg = phi i32 [ %i.alk, %bb.dj ], [ %.pre1859.i, %bb.at ] ; 2 uses
  %i.amh = phi i32 [ %i.all, %bb.dj ], [ %.pre1861.i, %bb.at ] ; 2 uses
  %i.ami = phi i32 [ %i.alm, %bb.dj ], [ %.pre1863.i.a, %bb.at ] ; 2 uses
  %i.amj = phi i32 [ %i.aln, %bb.dj ], [ %.pre1865.i, %bb.at ] ; 2 uses
  %i.amk = phi i32 [ %i.alo, %bb.dj ], [ %.pre1867.i, %bb.at ] ; 2 uses
  %i.aml = phi i32 [ %i.alp, %bb.dj ], [ %.pre1871.i, %bb.at ] ; 2 uses
  %i.amm = phi i32 [ %i.alq, %bb.dj ], [ %.pre1873.i, %bb.at ] ; 2 uses
  %i.amn = phi i32 [ %i.alr, %bb.dj ], [ %.pre1875.i, %bb.at ] ; 2 uses
  %i.amo = phi i32 [ %i.als, %bb.dj ], [ %.pre1877.i, %bb.at ] ; 2 uses
  %i.amp = phi i32 [ %i.alt, %bb.dj ], [ %.pre1879.i, %bb.at ] ; 2 uses
  %i.amq = phi i32 [ %i.alu, %bb.dj ], [ %.pre1881.i, %bb.at ] ; 2 uses
  %i.amr = phi ptr [ %i.alv, %bb.dj ], [ %.pre1883.i, %bb.at ] ; 2 uses
  %i.ams = phi ptr [ %i.alw, %bb.dj ], [ %.pre1885.i, %bb.at ] ; 2 uses
  %i.amt = phi ptr [ %i.alx, %bb.dj ], [ %.pre1887.i, %bb.at ] ; 2 uses
  %.11156.i = phi i32 [ %.01155.i, %bb.dj ], [ %.pre1869.i, %bb.at ]
  %.41036.i = phi i32 [ %.31035.i, %bb.dj ], [ %.pre1851.i, %bb.at ] ; 2 uses
  %.51015.i = phi i32 [ %.41014.i, %bb.dj ], [ %.pre1849.i, %bb.at ] ; 2 uses
  %.6989.i = phi i32 [ %.5988.i, %bb.dj ], [ %.pre1847.i, %bb.at ] ; 2 uses
  %.1965.i = phi i32 [ %.0964.i, %bb.dj ], [ %.pre1845.i, %bb.at ] ; 2 uses
  %.10945.i = phi i32 [ %.9944.i, %bb.dj ], [ %.pre1843.i, %bb.at ] ; 2 uses
  %.14.i = phi i32 [ %.13.i, %bb.dj ], [ %.pre.i36, %bb.at ]
  store i32 33, ptr %i.g, align 8, !tbaa !19
  %.promoted1632.i = load i32, ptr %.phi.trans.insert1931.i, align 4, !tbaa !20 ; 3 uses
  %i.amu = icmp sgt i32 %.promoted1632.i, 4
  br i1 %i.amu, label %.._crit_edge1635_crit_edge.i, label %.lr.ph1634.i

.._crit_edge1635_crit_edge.i:                     ; preds = %bb.dk
  %.pre1945.i.a = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1635.i

.lr.ph1634.i:                                     ; preds = %bb.dk
  %i.amv = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 8 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amv, i64 12 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amv, i64 16 ; 2 uses
  %.promoted1638.i = load i32, ptr %i.amw, align 8, !tbaa !76
  br label %bb.dl

._crit_edge1635.i:                                ; preds = %bb.do, %.._crit_edge1635_crit_edge.i
  %i.amz = phi i32 [ %.pre1945.i.a, %.._crit_edge1635_crit_edge.i ], [ %i.anl, %bb.do ]
  %.lcssa1420.i = phi i32 [ %.promoted1632.i, %.._crit_edge1635_crit_edge.i ], [ %i.anm, %bb.do ]
  %i.ana = add nsw i32 %.lcssa1420.i, -5          ; 2 uses
  %i.anb = lshr i32 %i.amz, %i.ana
  %i.anc = and i32 %i.anb, 31
  store i32 %i.ana, ptr %.phi.trans.insert1931.i, align 4, !tbaa !20
  br label %bb.dp

bb.dl:                                            ; preds = %bb.do, %.lr.ph1634.i
  %i.and = phi i32 [ %.promoted1638.i, %.lr.ph1634.i ], [ %i.ano, %bb.do ] ; 2 uses
  %i.ane = phi i32 [ %.promoted1632.i, %.lr.ph1634.i ], [ %i.anm, %bb.do ] ; 2 uses
  %i.anf = icmp eq i32 %i.and, 0
  br i1 %i.anf, label %BZ2_decompress.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ang = load i32, ptr %i.v, align 8, !tbaa !21
  %i.anh = shl i32 %i.ang, 8
  %i.ani = load ptr, ptr %i.amv, align 8, !tbaa !77 ; 2 uses
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !34
  %i.ank = zext i8 %i.anj to i32
  %i.anl = or disjoint i32 %i.anh, %i.ank         ; 2 uses
  store i32 %i.anl, ptr %i.v, align 8, !tbaa !21
  %i.anm = add nsw i32 %i.ane, 8                  ; 3 uses
  store i32 %i.anm, ptr %.phi.trans.insert1931.i, align 4, !tbaa !20
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ani, i64 1
  store ptr %i.ann, ptr %i.amv, align 8, !tbaa !77
  %i.ano = add i32 %i.and, -1                     ; 2 uses
  store i32 %i.ano, ptr %i.amw, align 8, !tbaa !76
  %i.anp = load i32, ptr %i.amx, align 4, !tbaa !23
  %i.anq = add i32 %i.anp, 1                      ; 2 uses
  store i32 %i.anq, ptr %i.amx, align 4, !tbaa !23
  %i.anr = icmp eq i32 %i.anq, 0
  br i1 %i.anr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ans = load i32, ptr %i.amy, align 8, !tbaa !24
  %i.ant = add i32 %i.ans, 1
  store i32 %i.ant, ptr %i.amy, align 8, !tbaa !24
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.anu = icmp sgt i32 %i.ane, -4
  br i1 %i.anu, label %._crit_edge1635.i, label %bb.dl

bb.dp:                                            ; preds = %bb.eb, %._crit_edge1635.i
  %i.anv = phi i32 [ %i.amd, %._crit_edge1635.i ], [ %i.apf, %bb.eb ] ; 2 uses
  %i.anw = phi i32 [ %i.ame, %._crit_edge1635.i ], [ %i.apg, %bb.eb ] ; 2 uses
  %i.anx = phi i32 [ %i.amf, %._crit_edge1635.i ], [ %i.aph, %bb.eb ] ; 2 uses
  %i.any = phi i32 [ %i.amg, %._crit_edge1635.i ], [ %i.api, %bb.eb ] ; 2 uses
  %i.anz = phi i32 [ %i.amh, %._crit_edge1635.i ], [ %i.apj, %bb.eb ] ; 2 uses
  %i.aoa = phi i32 [ %i.ami, %._crit_edge1635.i ], [ %i.apk, %bb.eb ] ; 2 uses
  %i.aob = phi i32 [ %i.amj, %._crit_edge1635.i ], [ %i.apl, %bb.eb ] ; 2 uses
  %i.aoc = phi i32 [ %i.amk, %._crit_edge1635.i ], [ %i.apm, %bb.eb ] ; 2 uses
  %i.aod = phi i32 [ %i.aml, %._crit_edge1635.i ], [ %i.apn, %bb.eb ] ; 2 uses
  %i.aoe = phi i32 [ %i.amm, %._crit_edge1635.i ], [ %i.apo, %bb.eb ] ; 2 uses
  %i.aof = phi i32 [ %i.amn, %._crit_edge1635.i ], [ %i.app, %bb.eb ] ; 2 uses
  %i.aog = phi i32 [ %i.amo, %._crit_edge1635.i ], [ %i.apq, %bb.eb ] ; 2 uses
  %i.aoh = phi i32 [ %i.amp, %._crit_edge1635.i ], [ %i.apr, %bb.eb ] ; 2 uses
  %i.aoi = phi i32 [ %i.amq, %._crit_edge1635.i ], [ %i.aps, %bb.eb ] ; 2 uses
  %i.aoj = phi ptr [ %i.amr, %._crit_edge1635.i ], [ %i.apt, %bb.eb ] ; 2 uses
  %i.aok = phi ptr [ %i.ams, %._crit_edge1635.i ], [ %i.apu, %bb.eb ] ; 2 uses
  %i.aol = phi ptr [ %i.amt, %._crit_edge1635.i ], [ %i.apv, %bb.eb ] ; 2 uses
  %.21157.i = phi i32 [ %i.anc, %._crit_edge1635.i ], [ %.41159.i, %bb.eb ] ; 2 uses
  %.51037.i = phi i32 [ %.41036.i, %._crit_edge1635.i ], [ %.71039.i, %bb.eb ] ; 2 uses
  %.61016.i = phi i32 [ %.51015.i, %._crit_edge1635.i ], [ %.81018.i, %bb.eb ] ; 2 uses
  %.7990.i = phi i32 [ %.6989.i, %._crit_edge1635.i ], [ %.9992.i, %bb.eb ] ; 3 uses
  %.2966.i = phi i32 [ %.1965.i, %._crit_edge1635.i ], [ %.4968.i, %bb.eb ] ; 2 uses
  %.11946.i = phi i32 [ %.10945.i, %._crit_edge1635.i ], [ %.13948.i, %bb.eb ] ; 2 uses
  %.15.i = phi i32 [ 0, %._crit_edge1635.i ], [ %i.asw, %bb.eb ] ; 3 uses
  %i.aom = icmp slt i32 %.15.i, %.7990.i
  br i1 %i.aom, label %bb.dq, label %bb.ec

bb.dq:                                            ; preds = %._crit_edge1649.i, %bb.dp
  %i.aon = phi i32 [ %i.anv, %bb.dp ], [ %i.aqy, %._crit_edge1649.i ] ; 2 uses
  %i.aoo = phi i32 [ %i.anw, %bb.dp ], [ %i.aqz, %._crit_edge1649.i ] ; 2 uses
  %i.aop = phi i32 [ %i.anx, %bb.dp ], [ %i.ara, %._crit_edge1649.i ] ; 2 uses
  %i.aoq = phi i32 [ %i.any, %bb.dp ], [ %i.arb, %._crit_edge1649.i ] ; 2 uses
  %i.aor = phi i32 [ %i.anz, %bb.dp ], [ %i.arc, %._crit_edge1649.i ] ; 2 uses
  %i.aos = phi i32 [ %i.aoa, %bb.dp ], [ %i.ard, %._crit_edge1649.i ] ; 2 uses
  %i.aot = phi i32 [ %i.aob, %bb.dp ], [ %i.are, %._crit_edge1649.i ] ; 2 uses
  %i.aou = phi i32 [ %i.aoc, %bb.dp ], [ %i.arf, %._crit_edge1649.i ] ; 2 uses
  %i.aov = phi i32 [ %i.aod, %bb.dp ], [ %i.arg, %._crit_edge1649.i ] ; 2 uses
  %i.aow = phi i32 [ %i.aoe, %bb.dp ], [ %i.arh, %._crit_edge1649.i ] ; 2 uses
  %i.aox = phi i32 [ %i.aof, %bb.dp ], [ %i.ari, %._crit_edge1649.i ] ; 2 uses
  %i.aoy = phi i32 [ %i.aog, %bb.dp ], [ %i.arj, %._crit_edge1649.i ] ; 2 uses
  %i.aoz = phi i32 [ %i.aoh, %bb.dp ], [ %i.ark, %._crit_edge1649.i ] ; 2 uses
  %i.apa = phi i32 [ %i.aoi, %bb.dp ], [ %i.arl, %._crit_edge1649.i ] ; 2 uses
  %i.apb = phi ptr [ %i.aoj, %bb.dp ], [ %i.arm, %._crit_edge1649.i ] ; 2 uses
  %i.apc = phi ptr [ %i.aok, %bb.dp ], [ %i.arn, %._crit_edge1649.i ] ; 2 uses
  %i.apd = phi ptr [ %i.aol, %bb.dp ], [ %i.aro, %._crit_edge1649.i ] ; 2 uses
  %.31158.i = phi i32 [ %.21157.i, %bb.dp ], [ %.61161.i, %._crit_edge1649.i ] ; 3 uses
  %.61038.i = phi i32 [ %.51037.i, %bb.dp ], [ %.81040.i, %._crit_edge1649.i ] ; 2 uses
  %.71017.i = phi i32 [ %.61016.i, %bb.dp ], [ %.91019.i, %._crit_edge1649.i ] ; 2 uses
  %.8991.i = phi i32 [ %.7990.i, %bb.dp ], [ %.10993.i, %._crit_edge1649.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@nsis_BZ2_bzDecompressEnd:bb.a
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !14
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  tail call void %i.i(ptr noundef %i.k, ptr noundef nonnull %i.g) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %.not27 = icmp eq ptr %i.m, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  tail call void %i.o(ptr noundef %i.q, ptr noundef nonnull %i.m) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 3168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %.not28 = icmp eq ptr %i.s, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  tail call void %i.u(ptr noundef %i.w, ptr noundef nonnull %i.s) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void %i.y(ptr noundef %i.aa, ptr noundef %i.ab) #8
  store ptr null, ptr %i.b, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 56}
!9 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !11, i64 64}
!13 = !{!9, !11, i64 72}
!14 = !{!15, !11, i64 0}
!15 = !{!"", !11, i64 0, !5, i64 8, !6, i64 12, !5, i64 16, !6, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !6, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !6, i64 68, !5, i64 1092, !6, i64 1096, !6, i64 2124, !16, i64 3152, !17, i64 3160, !10, i64 3168, !5, i64 3176, !5, i64 3180, !5, i64 3184, !5, i64 3188, !5, i64 3192, !6, i64 3196, !6, i64 3452, !6, i64 3468, !6, i64 3724, !6, i64 7820, !6, i64 7884, !6, i64 25886, !6, i64 43888, !6, i64 45436, !6, i64 51628, !6, i64 57820, !6, i64 64012, !5, i64 64036, !5, i64 64040, !5, i64 64044, !5, i64 64048, !5, i64 64052, !5, i64 64056, !5, i64 64060, !5, i64 64064, !5, i64 64068, !5, i64 64072, !5, i64 64076, !5, i64 64080, !5, i64 64084, !5, i64 64088, !5, i64 64092, !5, i64 64096, !5, i64 64100, !5, i64 64104, !5, i64 64108, !5, i64 64112, !5, i64 64116, !16, i64 64120, !16, i64 64128, !16, i64 64136}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"p1 short", !11, i64 0}
!18 = !{!9, !11, i64 48}
!19 = !{!15, !5, i64 8}
!20 = !{!15, !5, i64 36}
!21 = !{!15, !5, i64 32}
!22 = !{!15, !5, i64 3188}
!23 = !{!9, !5, i64 12}
!24 = !{!9, !5, i64 16}
!25 = !{!9, !5, i64 36}
!26 = !{!9, !5, i64 40}
!27 = !{!15, !6, i64 44}
!28 = !{!15, !5, i64 48}
!29 = !{!15, !5, i64 52}
!30 = !{!9, !5, i64 32}
!31 = !{!15, !5, i64 16}
!32 = !{!15, !6, i64 12}
!33 = !{!9, !10, i64 24}
!34 = !{!6, !6, i64 0}
!35 = !{!15, !5, i64 1092}
!36 = !{!15, !5, i64 64080}
!37 = !{!15, !5, i64 64}
!38 = !{!15, !5, i64 60}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!15, !17, i64 3160}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !6, i64 0}
!44 = !{!15, !10, i64 3168}
!45 = !{!15, !5, i64 3184}
!46 = !{!15, !16, i64 3152}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = distinct !{!50, !49, !48}
!51 = !{!15, !5, i64 40}
!52 = !{!15, !5, i64 64036}
!53 = !{!15, !5, i64 64040}
!54 = !{!15, !5, i64 64044}
!55 = !{!15, !5, i64 64048}
!56 = !{!15, !5, i64 64052}
!57 = !{!15, !5, i64 64056}
!58 = !{!15, !5, i64 64060}
!59 = !{!15, !5, i64 64064}
!60 = !{!15, !5, i64 64068}
!61 = !{!15, !5, i64 64072}
!62 = !{!15, !5, i64 64076}
!63 = !{!15, !5, i64 64084}
!64 = !{!15, !5, i64 64088}
!65 = !{!15, !5, i64 64092}
!66 = !{!15, !5, i64 64096}
!67 = !{!15, !5, i64 64100}
!68 = !{!15, !5, i64 64104}
!69 = !{!15, !5, i64 64108}
!70 = !{!15, !5, i64 64112}
!71 = !{!15, !5, i64 64116}
!72 = !{!15, !16, i64 64120}
!73 = !{!15, !16, i64 64128}
!74 = !{!15, !16, i64 64136}
!75 = distinct !{null}
!76 = !{!9, !5, i64 8}
!77 = !{!9, !10, i64 0}
!78 = !{!15, !5, i64 56}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = !{!15, !5, i64 3192}
!83 = distinct !{!83, !40}
!84 = distinct !{!84, !40}
!85 = !{!"branch_weights", i32 4, i32 28}
!86 = distinct !{!86, !40, !48, !49}
!87 = distinct !{!87, !40, !48}
!88 = distinct !{!88, !40, !48, !49}
!89 = distinct !{!89, !40, !49, !48}
!90 = distinct !{!90, !40}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40, !48, !49}
!94 = distinct !{!94, !40, !49, !48}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !40, !48, !49}
!101 = distinct !{!101, !40}
!102 = distinct !{!102, !40, !49, !48}
!103 = distinct !{!103, !40}
!104 = distinct !{!104, !40}
!105 = distinct !{!105, !40}
!106 = distinct !{!106, !40}
!107 = distinct !{!107, !98}
!108 = distinct !{!108, !40, !48, !49}
!109 = distinct !{!109, !40, !48, !49}
!110 = distinct !{!110, !40}
!111 = distinct !{!111, !40, !48}
!112 = distinct !{!112, !40}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !40}
!115 = distinct !{!115, !40}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40}
end_hunk_2
