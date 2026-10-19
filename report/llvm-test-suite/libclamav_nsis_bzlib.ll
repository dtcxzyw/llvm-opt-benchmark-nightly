Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_nsis_bzlib?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @default_bzalloc, ptr %i.b, align 8, !tbaa !11
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
  store ptr %0, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 10, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 3188
  store i32 0, ptr %i.q, align 4, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !25
  %i.v = trunc nuw nsw i32 %2 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i8 %i.v, ptr %i.w, align 4, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 3152
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 0, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.z, align 4, !tbaa !32
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
  %i.a = alloca [6 x i8], align 1                 ; 15 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 367 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17
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
  %.phi.trans.insert1804.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64040 ; 2 uses
  %.phi.trans.insert1806.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64044 ; 2 uses
  %.phi.trans.insert1808.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64048 ; 2 uses
  %.phi.trans.insert1810.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64052 ; 2 uses
  %.phi.trans.insert1812.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64056 ; 2 uses
  %.phi.trans.insert1814.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64060 ; 2 uses
  %.phi.trans.insert1816.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64064 ; 2 uses
  %.phi.trans.insert1818.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64068 ; 2 uses
  %.phi.trans.insert1820.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64072 ; 2 uses
  %.phi.trans.insert1822.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64076 ; 2 uses
  %.phi.trans.insert1826.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64084 ; 2 uses
  %.phi.trans.insert1828.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64088 ; 2 uses
  %.phi.trans.insert1830.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64092 ; 2 uses
  %.phi.trans.insert1832.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64096 ; 2 uses
  %.phi.trans.insert1834.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64100 ; 2 uses
  %.phi.trans.insert1836.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64104 ; 2 uses
  %.phi.trans.insert1838.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64108 ; 2 uses
  %.phi.trans.insert1840.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64112 ; 2 uses
  %.phi.trans.insert1842.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64116 ; 2 uses
  %.phi.trans.insert1844.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64120 ; 2 uses
  %.phi.trans.insert1846.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64128 ; 2 uses
  %.phi.trans.insert1848.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64136 ; 2 uses
  %.phi.trans.insert1902.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 54 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 54 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 3196 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 3192 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 3468 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 25886 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 7884 ; 6 uses
  %scevgep1701.i = getelementptr i8, ptr %i.a, i64 -1 ; 3 uses
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
  %i.an = load i8, ptr %i.h, align 4, !tbaa !26
  %.not29 = icmp eq i8 %i.an, 0
  br i1 %.not29, label %bb.x, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !73
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.e
  %.pre.pre.i = load i32, ptr %i.i, align 8, !tbaa !74
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.lr.ph.lr.ph.i, %bb.h
  %.ph713 = phi ptr [ %i.ao, %.lr.ph.lr.ph.i ], [ %i.ba, %bb.h ] ; 2 uses
  %.ph714 = phi i32 [ %.pre.pre.i, %.lr.ph.lr.ph.i ], [ %i.az, %bb.h ]
  %i.as = icmp eq i32 %.ph714, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.ph713, i64 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %.backedge.i
  %i.au = phi i1 [ false, %.backedge.i ], [ %i.as, %.lr.ph.i.outer ]
  br i1 %i.au, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.av = load i8, ptr %i.j, align 4, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %.ph713, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !76
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !77
  %i.ay = load i32, ptr %i.i, align 8, !tbaa !74
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.i, align 8, !tbaa !74
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !17  ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !73
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 36 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !24
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !24
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !25
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = icmp eq i32 %i.bg, 0
  br i1 %i.bo, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i.outer

bb.i:                                             ; preds = %.lr.ph.i
  %i.bp = load i32, ptr %i.k, align 4, !tbaa !78  ; 8 uses
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !79  ; 4 uses
  %i.br = add nsw i32 %i.bq, 1                    ; 2 uses
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %unRLE_obuf_to_output_SMALL.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = icmp sgt i32 %i.bp, %i.br
  br i1 %i.bt, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.i, align 8, !tbaa !74
  %i.bu = load i32, ptr %i.m, align 8, !tbaa !80  ; 4 uses
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.j, align 4, !tbaa !75
  %i.bw = load i32, ptr %i.n, align 4, !tbaa !81  ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.09.i.i = phi i32 [ 0, %bb.k ], [ %.09..i.i, %bb.l ] ; 2 uses
  %.0.i.i = phi i32 [ 256, %bb.k ], [ %..0.i.i, %bb.l ] ; 2 uses
  %i.bx = add nsw i32 %.0.i.i, %.09.i.i
  %i.by = ashr i32 %i.bx, 1                       ; 3 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %.not.i.i = icmp slt i32 %i.bw, %i.cb           ; 2 uses
  %.09..i.i = select i1 %.not.i.i, i32 %.09.i.i, i32 %i.by ; 3 uses
  %..0.i.i = select i1 %.not.i.i, i32 %i.by, i32 %.0.i.i ; 2 uses
  %i.cc = sub nsw i32 %..0.i.i, %.09..i.i
  %.not11.i.i = icmp eq i32 %i.cc, 1
  br i1 %.not11.i.i, label %indexIntoF.exit.i, label %bb.l, !llvm.loop !33

indexIntoF.exit.i:                                ; preds = %bb.l
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !27  ; 5 uses
  %i.ce = zext i32 %i.bw to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !84
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = load ptr, ptr %i.q, align 8, !tbaa !28  ; 5 uses
  %i.cj = lshr i32 %i.bw, 1
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !77
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl i32 %i.bw, 2
  %i.cp = and i32 %i.co, 4
  %i.cq = lshr i32 %i.cn, %i.cp
  %i.cr = shl nuw nsw i32 %i.cq, 16
  %i.cs = and i32 %i.cr, 983040
  %i.ct = or disjoint i32 %i.cs, %i.ch            ; 4 uses
  store i32 %i.ct, ptr %i.n, align 4, !tbaa !81
  %i.cu = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.cu, ptr %i.k, align 4, !tbaa !78
  %i.cv = icmp eq i32 %i.bp, %i.bq
  br i1 %i.cv, label %.backedge.i, label %bb.m

bb.m:                                             ; preds = %indexIntoF.exit.i
  %i.cw = and i32 %.09..i.i, 255                  ; 2 uses
  %.not.i = icmp eq i32 %i.cw, %i.bu
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.cw, ptr %i.m, align 8, !tbaa !80
  br label %.backedge.i

.backedge.i:                                      ; preds = %indexIntoF.exit119.i, %bb.v, %indexIntoF.exit105.i, %bb.r, %indexIntoF.exit98.i, %bb.n, %indexIntoF.exit.i
  %i.cx = load i32, ptr %i.at, align 8, !tbaa !73
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.m
  store i32 2, ptr %i.i, align 8, !tbaa !74
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.09.i92.i = phi i32 [ 0, %bb.o ], [ %.09..i95.i, %bb.p ] ; 2 uses
  %.0.i93.i = phi i32 [ 256, %bb.o ], [ %..0.i96.i, %bb.p ] ; 2 uses
  %i.cz = add nsw i32 %.0.i93.i, %.09.i92.i
  %i.da = ashr i32 %i.cz, 1                       ; 3 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %.not.i94.i = icmp slt i32 %i.ct, %i.dd         ; 2 uses
  %.09..i95.i = select i1 %.not.i94.i, i32 %.09.i92.i, i32 %i.da ; 3 uses
  %..0.i96.i = select i1 %.not.i94.i, i32 %i.da, i32 %.0.i93.i ; 2 uses
  %i.de = sub nsw i32 %..0.i96.i, %.09..i95.i
  %.not11.i97.i = icmp eq i32 %i.de, 1
  br i1 %.not11.i97.i, label %indexIntoF.exit98.i, label %bb.p, !llvm.loop !33

indexIntoF.exit98.i:                              ; preds = %bb.p
  %i.df = zext nneg i32 %i.ct to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !84
  %i.di = zext i16 %i.dh to i32                   ; 2 uses
  %i.dj = lshr i32 %i.ct, 1
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !77
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.ch, 2
  %i.dp = and i32 %i.do, 4
  %i.dq = lshr i32 %i.dn, %i.dp
  %i.dr = shl nuw nsw i32 %i.dq, 16
  %i.ds = and i32 %i.dr, 983040
  %i.dt = or disjoint i32 %i.ds, %i.di            ; 4 uses
  store i32 %i.dt, ptr %i.n, align 4, !tbaa !81
  %i.du = add nsw i32 %i.bp, 2                    ; 2 uses
  store i32 %i.du, ptr %i.k, align 4, !tbaa !78
  %i.dv = icmp eq i32 %i.cu, %i.bq
  br i1 %i.dv, label %.backedge.i, label %bb.q

bb.q:                                             ; preds = %indexIntoF.exit98.i
  %i.dw = and i32 %.09..i95.i, 255                ; 2 uses
  %.not90.i = icmp eq i32 %i.dw, %i.bu
  br i1 %.not90.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.dw, ptr %i.m, align 8, !tbaa !80
  br label %.backedge.i

bb.s:                                             ; preds = %bb.q
  store i32 3, ptr %i.i, align 8, !tbaa !74
  br label %bb.t

end_hunk_0
begin_hunk_1_@nsis_BZ2_bzDecompress:bb.a
.preheader1383.i:                                 ; preds = %.lr.ph1555.i, %.lr.ph1555.i.prol.loopexit
  %.lcssa615 = phi i32 [ %.lcssa615.unr, %.lr.ph1555.i.prol.loopexit ], [ %i.bmc, %.lr.ph1555.i ] ; 2 uses
  %.not13311557.i = icmp eq i32 %.lcssa615, 0
  br i1 %.not13311557.i, label %._crit_edge1560.i, label %iter.check564

iter.check564:                                    ; preds = %.preheader1383.i, %bb.fx
  %.0922.lcssa2067.i = phi i32 [ %.lcssa615, %.preheader1383.i ], [ %i.bii, %bb.fx ] ; 7 uses
  %i.bjd = zext nneg i32 %.0922.lcssa2067.i to i64 ; 5 uses
  %i.bje = add nsw i32 %.0922.lcssa2067.i, -1     ; 3 uses
  %i.bjf = zext i32 %i.bje to i64
  %i.bjg = add nuw nsw i64 %i.bjf, 1              ; 5 uses
  %min.iters.check550 = icmp ult i32 %i.bje, 3
  br i1 %min.iters.check550, label %.lr.ph1559.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check564
  %i.bjh = add i32 %.0922.lcssa2067.i, %i.bik
  %i.bji = add i32 %i.bik, 1
  %i.bjj = icmp ugt i32 %i.bji, %i.bjh
  %i.bjk = sub nsw i32 0, %.0922.lcssa2067.i
  %i.bjl = icmp ugt i32 %i.bik, %i.bjk
  %i.bjm = or i1 %i.bjj, %i.bjl
  br i1 %i.bjm, label %.lr.ph1559.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bjn = add i32 %.0922.lcssa2067.i, %i.bik     ; 2 uses
  %i.bjo = add i32 %i.bjn, -1
  %i.bjp = zext i32 %i.bjo to i64
  %i.bjq = zext i32 %i.bjn to i64
  %i.bjr = sub nsw i64 %i.bjq, %i.bjp
  %diff.check = icmp ugt i64 %i.bjr, -32
  br i1 %diff.check, label %.lr.ph1559.i.preheader, label %vector.main.loop.iter.check551

vector.main.loop.iter.check551:                   ; preds = %vector.memcheck
  %min.iters.check552 = icmp ult i32 %i.bje, 31
  br i1 %min.iters.check552, label %vec.epilog.ph568, label %vector.ph553

vector.ph553:                                     ; preds = %vector.main.loop.iter.check551
  %i.bjs = and i64 %i.bjg, 28
  %n.vec554 = and i64 %i.bjg, 8589934560          ; 4 uses
  %i.bjt = sub nsw i64 %i.bjd, %n.vec554
  br label %vector.body555

vector.body555:                                   ; preds = %vector.ph553, %vector.body555
  %index556 = phi i64 [ 0, %vector.ph553 ], [ %index.next559, %vector.body555 ] ; 2 uses
  %i.bju = trunc i64 %index556 to i32
  %i.bjv = sub i32 %.0922.lcssa2067.i, %i.bju
  %i.bjw = add i32 %i.bik, %i.bjv                 ; 2 uses
  %i.bjx = add i32 %i.bjw, -1
  %i.bjy = zext i32 %i.bjx to i64
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bjy ; 2 uses
  %i.bka = getelementptr inbounds i8, ptr %i.bjz, i64 -15
  %i.bkb = getelementptr inbounds i8, ptr %i.bjz, i64 -31
  %wide.load557 = load <16 x i8>, ptr %i.bka, align 1, !tbaa !77
  %wide.load558 = load <16 x i8>, ptr %i.bkb, align 1, !tbaa !77
  %i.bkc = zext i32 %i.bjw to i64
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bkc ; 2 uses
  %i.bke = getelementptr inbounds i8, ptr %i.bkd, i64 -15
  %i.bkf = getelementptr inbounds i8, ptr %i.bkd, i64 -31
  store <16 x i8> %wide.load557, ptr %i.bke, align 1, !tbaa !77
  store <16 x i8> %wide.load558, ptr %i.bkf, align 1, !tbaa !77
  %index.next559 = add nuw i64 %index556, 32      ; 2 uses
  %i.bkg = icmp eq i64 %index.next559, %n.vec554
  br i1 %i.bkg, label %middle.block560, label %vector.body555, !llvm.loop !62

middle.block560:                                  ; preds = %vector.body555
  %cmp.n561 = icmp eq i64 %i.bjg, %n.vec554
  br i1 %cmp.n561, label %._crit_edge1560.i, label %vec.epilog.iter.check566

vec.epilog.iter.check566:                         ; preds = %middle.block560
  %min.epilog.iters.check567 = icmp eq i64 %i.bjs, 0
  br i1 %min.epilog.iters.check567, label %.lr.ph1559.i.preheader, label %vec.epilog.ph568, !prof !118

vec.epilog.ph568:                                 ; preds = %vector.main.loop.iter.check551, %vec.epilog.iter.check566
  %vec.epilog.resume.val562 = phi i64 [ %n.vec554, %vec.epilog.iter.check566 ], [ 0, %vector.main.loop.iter.check551 ]
  %n.vec569 = and i64 %i.bjg, 8589934588          ; 3 uses
  %i.bkh = sub nsw i64 %i.bjd, %n.vec569
  br label %vec.epilog.vector.body570

vec.epilog.vector.body570:                        ; preds = %vec.epilog.vector.body570, %vec.epilog.ph568
  %index571 = phi i64 [ %vec.epilog.resume.val562, %vec.epilog.ph568 ], [ %index.next573, %vec.epilog.vector.body570 ] ; 2 uses
  %i.bki = trunc i64 %index571 to i32
  %i.bkj = sub i32 %.0922.lcssa2067.i, %i.bki
  %i.bkk = add i32 %i.bik, %i.bkj                 ; 2 uses
  %i.bkl = add i32 %i.bkk, -1
  %i.bkm = zext i32 %i.bkl to i64
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bkm
  %i.bko = getelementptr inbounds i8, ptr %i.bkn, i64 -3
  %wide.load572 = load <4 x i8>, ptr %i.bko, align 1, !tbaa !77
  %i.bkp = zext i32 %i.bkk to i64
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bkp
  %i.bkr = getelementptr inbounds i8, ptr %i.bkq, i64 -3
  store <4 x i8> %wide.load572, ptr %i.bkr, align 1, !tbaa !77
  %index.next573 = add nuw i64 %index571, 4       ; 2 uses
  %i.bks = icmp eq i64 %index.next573, %n.vec569
  br i1 %i.bks, label %vec.epilog.middle.block574, label %vec.epilog.vector.body570, !llvm.loop !63

vec.epilog.middle.block574:                       ; preds = %vec.epilog.vector.body570
  %cmp.n575 = icmp eq i64 %i.bjg, %n.vec569
  br i1 %cmp.n575, label %._crit_edge1560.i, label %.lr.ph1559.i.preheader

.lr.ph1559.i.preheader:                           ; preds = %iter.check564, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check566, %vec.epilog.middle.block574
  %indvars.iv1753.i.ph = phi i64 [ %i.bjd, %iter.check564 ], [ %i.bjd, %vector.scevcheck ], [ %i.bjd, %vector.memcheck ], [ %i.bjt, %vec.epilog.iter.check566 ], [ %i.bkh, %vec.epilog.middle.block574 ] ; 4 uses
  %i.bkt = trunc i64 %indvars.iv1753.i.ph to i32  ; 2 uses
  %xtraiter738 = and i32 %i.bkt, 1
  %lcmp.mod739.not = icmp eq i32 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %.lr.ph1559.i.prol.loopexit, label %.lr.ph1559.i.prol

.lr.ph1559.i.prol:                                ; preds = %.lr.ph1559.i.preheader
  %i.bku = trunc nuw i64 %indvars.iv1753.i.ph to i32
  %i.bkv = add i32 %i.bik, %i.bku                 ; 2 uses
  %i.bkw = add i32 %i.bkv, -1
  %i.bkx = zext i32 %i.bkw to i64
  %i.bky = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bkx
  %i.bkz = load i8, ptr %i.bky, align 1, !tbaa !77
  %i.bla = zext i32 %i.bkv to i64
  %i.blb = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bla
  store i8 %i.bkz, ptr %i.blb, align 1, !tbaa !77
  %indvars.iv.next1754.i.prol = add nsw i64 %indvars.iv1753.i.ph, -1
  br label %.lr.ph1559.i.prol.loopexit

.lr.ph1559.i.prol.loopexit:                       ; preds = %.lr.ph1559.i.prol, %.lr.ph1559.i.preheader
  %indvars.iv1753.i.unr = phi i64 [ %indvars.iv1753.i.ph, %.lr.ph1559.i.preheader ], [ %indvars.iv.next1754.i.prol, %.lr.ph1559.i.prol ]
  %i.blc = icmp eq i32 %i.bkt, 1
  br i1 %i.blc, label %._crit_edge1560.i, label %.lr.ph1559.i.preheader.new

.lr.ph1559.i.preheader.new:                       ; preds = %.lr.ph1559.i.prol.loopexit
  %invariant.op832 = add i32 -1, %i.bik
  br label %.lr.ph1559.i

.lr.ph1555.i:                                     ; preds = %.lr.ph1555.i, %.lr.ph1555.preheader.i.new
  %indvars.iv1750.i = phi i64 [ %indvars.iv1750.i.unr, %.lr.ph1555.preheader.i.new ], [ %indvars.iv.next1751.i.3, %.lr.ph1555.i ] ; 5 uses
  %i.bld = trunc i64 %indvars.iv1750.i to i32
  %i.ble = add i32 %i.bik, %i.bld
  %i.blf = sext i32 %i.ble to i64
  %i.blg = getelementptr i8, ptr %i.ai, i64 %i.blf ; 2 uses
  %i.blh = getelementptr i8, ptr %i.blg, i64 -3
  %i.bli = getelementptr i8, ptr %i.blg, i64 -4
  %i.blj = load <4 x i8>, ptr %i.bli, align 1, !tbaa !77
  store <4 x i8> %i.blj, ptr %i.blh, align 1, !tbaa !77
  %i.blk = trunc i64 %indvars.iv1750.i to i32
  %.reass = add i32 %i.blk, %invariant.op
  %i.bll = sext i32 %.reass to i64
  %i.blm = getelementptr i8, ptr %i.ai, i64 %i.bll ; 2 uses
  %i.bln = getelementptr i8, ptr %i.blm, i64 -3
  %i.blo = getelementptr i8, ptr %i.blm, i64 -4
  %i.blp = load <4 x i8>, ptr %i.blo, align 1, !tbaa !77
  store <4 x i8> %i.blp, ptr %i.bln, align 1, !tbaa !77
  %i.blq = trunc i64 %indvars.iv1750.i to i32
  %.reass829 = add i32 %i.blq, %invariant.op828
  %i.blr = sext i32 %.reass829 to i64
  %i.bls = getelementptr i8, ptr %i.ai, i64 %i.blr ; 2 uses
  %i.blt = getelementptr i8, ptr %i.bls, i64 -3
  %i.blu = getelementptr i8, ptr %i.bls, i64 -4
  %i.blv = load <4 x i8>, ptr %i.blu, align 1, !tbaa !77
  store <4 x i8> %i.blv, ptr %i.blt, align 1, !tbaa !77
  %i.blw = trunc i64 %indvars.iv1750.i to i32
  %.reass831 = add i32 %i.blw, %invariant.op830
  %i.blx = sext i32 %.reass831 to i64
  %i.bly = getelementptr i8, ptr %i.ai, i64 %i.blx ; 2 uses
  %i.blz = getelementptr i8, ptr %i.bly, i64 -3
  %i.bma = getelementptr i8, ptr %i.bly, i64 -4
  %i.bmb = load <4 x i8>, ptr %i.bma, align 1, !tbaa !77
  store <4 x i8> %i.bmb, ptr %i.blz, align 1, !tbaa !77
  %indvars.iv.next1751.i.3 = add nsw i64 %indvars.iv1750.i, -16 ; 2 uses
  %i.bmc = trunc i64 %indvars.iv.next1751.i.3 to i32 ; 2 uses
  %i.bmd = icmp ugt i32 %i.bmc, 3
  br i1 %i.bmd, label %.lr.ph1555.i, label %.preheader1383.i, !llvm.loop !64

.lr.ph1559.i:                                     ; preds = %.lr.ph1559.i, %.lr.ph1559.i.preheader.new
  %indvars.iv1753.i = phi i64 [ %indvars.iv1753.i.unr, %.lr.ph1559.i.preheader.new ], [ %indvars.iv.next1754.i.1, %.lr.ph1559.i ] ; 3 uses
  %i.bme = trunc nuw i64 %indvars.iv1753.i to i32
  %i.bmf = add i32 %i.bik, %i.bme                 ; 2 uses
  %i.bmg = add i32 %i.bmf, -1
  %i.bmh = zext i32 %i.bmg to i64
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bmh
  %i.bmj = load i8, ptr %i.bmi, align 1, !tbaa !77
  %i.bmk = zext i32 %i.bmf to i64
  %i.bml = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bmk
  store i8 %i.bmj, ptr %i.bml, align 1, !tbaa !77
  %i.bmm = trunc i64 %indvars.iv1753.i to i32
  %.reass833 = add i32 %i.bmm, %invariant.op832   ; 2 uses
  %i.bmn = add i32 %.reass833, -1
  %i.bmo = zext i32 %i.bmn to i64
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bmo
  %i.bmq = load i8, ptr %i.bmp, align 1, !tbaa !77
  %i.bmr = zext i32 %.reass833 to i64
  %i.bms = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bmr
  store i8 %i.bmq, ptr %i.bms, align 1, !tbaa !77
  %indvars.iv.next1754.i.1 = add nsw i64 %indvars.iv1753.i, -2 ; 2 uses
  %i.bmt = and i64 %indvars.iv.next1754.i.1, 4294967295
  %.not1331.i.1 = icmp eq i64 %i.bmt, 0
  br i1 %.not1331.i.1, label %._crit_edge1560.i, label %.lr.ph1559.i, !llvm.loop !65

._crit_edge1560.i:                                ; preds = %.lr.ph1559.i.prol.loopexit, %.lr.ph1559.i, %middle.block560, %vec.epilog.middle.block574, %.preheader1383.i
  %i.bmu = sext i32 %i.bik to i64
  %i.bmv = getelementptr inbounds i8, ptr %i.ai, i64 %i.bmu
  store i8 %i.bio, ptr %i.bmv, align 1, !tbaa !77
  br label %.loopexit1386.i

bb.fy:                                            ; preds = %bb.fw
  %i.bmw = lshr i32 %i.bii, 4
  %i.bmx = and i32 %i.bii, 15                     ; 2 uses
  %i.bmy = zext nneg i32 %i.bmw to i64            ; 2 uses
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bmy ; 3 uses
  %i.bna = load i32, ptr %i.bmz, align 4, !tbaa !7 ; 3 uses
  %i.bnb = add nsw i32 %i.bna, %i.bmx
  %i.bnc = sext i32 %i.bnb to i64
  %i.bnd = getelementptr inbounds i8, ptr %i.ai, i64 %i.bnc
  %i.bne = load i8, ptr %i.bnd, align 1, !tbaa !77 ; 3 uses
  %.not1639.i = icmp eq i32 %i.bmx, 0
  br i1 %.not1639.i, label %.lr.ph1547.preheader.i.a, label %.lr.ph1542.preheader.i

.lr.ph1542.preheader.i:                           ; preds = %bb.fy
  %i.bnf = sext i32 %i.bna to i64
  %i.bng = add i32 %.01097.i, 15
  %i.bnh = and i32 %i.bng, 15
  %i.bni = zext nneg i32 %i.bnh to i64
  %i.bnj = add nsw i64 %i.bnf, %i.bni
  br label %.lr.ph1542.i

.lr.ph1542.i:                                     ; preds = %.lr.ph1542.i, %.lr.ph1542.preheader.i
  %indvars.iv1735.i = phi i64 [ %i.bnj, %.lr.ph1542.preheader.i ], [ %indvars.iv.next1736.i, %.lr.ph1542.i ] ; 2 uses
  %i.bnk = getelementptr i8, ptr %i.ai, i64 %indvars.iv1735.i ; 2 uses
  %i.bnl = getelementptr i8, ptr %i.bnk, i64 -1
  %i.bnm = load i8, ptr %i.bnl, align 1, !tbaa !77
  store i8 %i.bnm, ptr %i.bnk, align 1, !tbaa !77
  %indvars.iv.next1736.i = add nsw i64 %indvars.iv1735.i, -1 ; 2 uses
  %i.bnn = load i32, ptr %i.bmz, align 4, !tbaa !7 ; 2 uses
  %i.bno = sext i32 %i.bnn to i64
  %i.bnp = icmp sgt i64 %indvars.iv.next1736.i, %i.bno
  br i1 %i.bnp, label %.lr.ph1542.i, label %.lr.ph1547.preheader.i.a, !llvm.loop !66

.lr.ph1547.preheader.i.a:                         ; preds = %.lr.ph1542.i, %bb.fy
  %.lcssa1451.i = phi i32 [ %i.bna, %bb.fy ], [ %i.bnn, %.lr.ph1542.i ]
  %i.bnq = add nsw i32 %.lcssa1451.i, 1
  store i32 %i.bnq, ptr %i.bmz, align 4, !tbaa !7
  br label %.lr.ph1547.i

.lr.ph1547.i:                                     ; preds = %.lr.ph1547.i, %.lr.ph1547.preheader.i.a
  %indvars.iv1738.i = phi i64 [ %i.bmy, %.lr.ph1547.preheader.i.a ], [ %indvars.iv.next1739.i, %.lr.ph1547.i ] ; 3 uses
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1738.i ; 3 uses
  %i.bns = load i32, ptr %i.bnr, align 4, !tbaa !7
  %i.bnt = add nsw i32 %i.bns, -1                 ; 2 uses
  store i32 %i.bnt, ptr %i.bnr, align 4, !tbaa !7
  %i.bnu = getelementptr i8, ptr %i.bnr, i64 -4
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !7
  %i.bnw = sext i32 %i.bnv to i64
  %i.bnx = getelementptr i8, ptr %i.ai, i64 %i.bnw
  %i.bny = getelementptr i8, ptr %i.bnx, i64 15
  %i.bnz = load i8, ptr %i.bny, align 1, !tbaa !77
  %i.boa = sext i32 %i.bnt to i64
  %i.bob = getelementptr inbounds i8, ptr %i.ai, i64 %i.boa
  store i8 %i.bnz, ptr %i.bob, align 1, !tbaa !77
  %indvars.iv.next1739.i = add nsw i64 %indvars.iv1738.i, -1
  %1 = icmp samesign ugt i64 %indvars.iv1738.i, 1
  br i1 %1, label %.lr.ph1547.i, label %._crit_edge1548.i, !llvm.loop !67

._crit_edge1548.i:                                ; preds = %.lr.ph1547.i
  %i.boc = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.bod = add nsw i32 %i.boc, -1                 ; 2 uses
  store i32 %i.bod, ptr %i.aj, align 4, !tbaa !7
  %i.boe = sext i32 %i.bod to i64
  %i.bof = getelementptr inbounds i8, ptr %i.ai, i64 %i.boe
  store i8 %i.bne, ptr %i.bof, align 1, !tbaa !77
  %i.bog = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.boh = icmp eq i32 %i.bog, 0
  br i1 %i.boh, label %.preheader1384.i, label %.loopexit1386.i

.preheader1384.i:                                 ; preds = %._crit_edge1548.i, %.preheader1384.i
  %indvars.iv1745.i = phi i64 [ %indvars.iv.next1746.i, %.preheader1384.i ], [ 15, %._crit_edge1548.i ] ; 3 uses
  %indvars.iv1743.i = phi i64 [ %indvars.iv.next1744.i, %.preheader1384.i ], [ 4095, %._crit_edge1548.i ] ; 3 uses
  %i.boi = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1745.i ; 17 uses
  %i.boj = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bok = sext i32 %i.boj to i64
  %i.bol = getelementptr i8, ptr %i.ai, i64 %i.bok
  %i.bom = getelementptr i8, ptr %i.bol, i64 15
  %i.bon = load i8, ptr %i.bom, align 1, !tbaa !77
  %i.boo = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv1743.i ; 15 uses
  store i8 %i.bon, ptr %i.boo, align 1, !tbaa !77
  %i.bop = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.boq = sext i32 %i.bop to i64
  %i.bor = getelementptr i8, ptr %i.ai, i64 %i.boq
  %i.bos = getelementptr i8, ptr %i.bor, i64 14
  %i.bot = load i8, ptr %i.bos, align 1, !tbaa !77
  %i.bou = getelementptr i8, ptr %i.boo, i64 -1
  store i8 %i.bot, ptr %i.bou, align 1, !tbaa !77
  %i.bov = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bow = sext i32 %i.bov to i64
  %i.box = getelementptr i8, ptr %i.ai, i64 %i.bow
  %i.boy = getelementptr i8, ptr %i.box, i64 13
  %i.boz = load i8, ptr %i.boy, align 1, !tbaa !77
  %i.bpa = getelementptr i8, ptr %i.boo, i64 -2
  store i8 %i.boz, ptr %i.bpa, align 1, !tbaa !77
  %i.bpb = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bpc = sext i32 %i.bpb to i64
  %i.bpd = getelementptr i8, ptr %i.ai, i64 %i.bpc
  %i.bpe = getelementptr i8, ptr %i.bpd, i64 12
  %i.bpf = load i8, ptr %i.bpe, align 1, !tbaa !77
  %i.bpg = getelementptr i8, ptr %i.boo, i64 -3
  store i8 %i.bpf, ptr %i.bpg, align 1, !tbaa !77
  %i.bph = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bpi = sext i32 %i.bph to i64
  %i.bpj = getelementptr i8, ptr %i.ai, i64 %i.bpi
  %i.bpk = getelementptr i8, ptr %i.bpj, i64 11
  %i.bpl = load i8, ptr %i.bpk, align 1, !tbaa !77
  %i.bpm = getelementptr i8, ptr %i.boo, i64 -4
  store i8 %i.bpl, ptr %i.bpm, align 1, !tbaa !77
  %i.bpn = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bpo = sext i32 %i.bpn to i64
  %i.bpp = getelementptr i8, ptr %i.ai, i64 %i.bpo
  %i.bpq = getelementptr i8, ptr %i.bpp, i64 10
  %i.bpr = load i8, ptr %i.bpq, align 1, !tbaa !77
  %i.bps = getelementptr i8, ptr %i.boo, i64 -5
  store i8 %i.bpr, ptr %i.bps, align 1, !tbaa !77
  %i.bpt = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bpu = sext i32 %i.bpt to i64
  %i.bpv = getelementptr i8, ptr %i.ai, i64 %i.bpu
  %i.bpw = getelementptr i8, ptr %i.bpv, i64 9
  %i.bpx = load i8, ptr %i.bpw, align 1, !tbaa !77
  %i.bpy = getelementptr i8, ptr %i.boo, i64 -6
  store i8 %i.bpx, ptr %i.bpy, align 1, !tbaa !77
  %i.bpz = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bqa = sext i32 %i.bpz to i64
  %i.bqb = getelementptr i8, ptr %i.ai, i64 %i.bqa
  %i.bqc = getelementptr i8, ptr %i.bqb, i64 8
  %i.bqd = load i8, ptr %i.bqc, align 1, !tbaa !77
  %i.bqe = getelementptr i8, ptr %i.boo, i64 -7
  store i8 %i.bqd, ptr %i.bqe, align 1, !tbaa !77
  %i.bqf = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bqg = sext i32 %i.bqf to i64
  %i.bqh = getelementptr i8, ptr %i.ai, i64 %i.bqg
  %i.bqi = getelementptr i8, ptr %i.bqh, i64 7
  %i.bqj = load i8, ptr %i.bqi, align 1, !tbaa !77
  %i.bqk = getelementptr i8, ptr %i.boo, i64 -8
  store i8 %i.bqj, ptr %i.bqk, align 1, !tbaa !77
  %i.bql = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bqm = sext i32 %i.bql to i64
  %i.bqn = getelementptr i8, ptr %i.ai, i64 %i.bqm
  %i.bqo = getelementptr i8, ptr %i.bqn, i64 6
  %i.bqp = load i8, ptr %i.bqo, align 1, !tbaa !77
  %i.bqq = getelementptr i8, ptr %i.boo, i64 -9
  store i8 %i.bqp, ptr %i.bqq, align 1, !tbaa !77
  %i.bqr = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bqs = sext i32 %i.bqr to i64
  %i.bqt = getelementptr i8, ptr %i.ai, i64 %i.bqs
  %i.bqu = getelementptr i8, ptr %i.bqt, i64 5
  %i.bqv = load i8, ptr %i.bqu, align 1, !tbaa !77
  %i.bqw = getelementptr i8, ptr %i.boo, i64 -10
  store i8 %i.bqv, ptr %i.bqw, align 1, !tbaa !77
  %i.bqx = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bqy = sext i32 %i.bqx to i64
  %i.bqz = getelementptr i8, ptr %i.ai, i64 %i.bqy
  %i.bra = getelementptr i8, ptr %i.bqz, i64 4
  %i.brb = load i8, ptr %i.bra, align 1, !tbaa !77
  %i.brc = getelementptr i8, ptr %i.boo, i64 -11
  store i8 %i.brb, ptr %i.brc, align 1, !tbaa !77
  %i.brd = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.bre = sext i32 %i.brd to i64
  %i.brf = getelementptr i8, ptr %i.ai, i64 %i.bre
  %i.brg = getelementptr i8, ptr %i.brf, i64 3
  %i.brh = load i8, ptr %i.brg, align 1, !tbaa !77
  %i.bri = getelementptr i8, ptr %i.boo, i64 -12
  store i8 %i.brh, ptr %i.bri, align 1, !tbaa !77
  %i.brj = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.brk = sext i32 %i.brj to i64
  %i.brl = getelementptr i8, ptr %i.ai, i64 %i.brk
  %i.brm = getelementptr i8, ptr %i.brl, i64 2
  %i.brn = load i8, ptr %i.brm, align 1, !tbaa !77
  %i.bro = getelementptr i8, ptr %i.boo, i64 -13
  store i8 %i.brn, ptr %i.bro, align 1, !tbaa !77
  %i.brp = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.brq = sext i32 %i.brp to i64
  %i.brr = getelementptr i8, ptr %i.ai, i64 %i.brq
  %i.brs = getelementptr i8, ptr %i.brr, i64 1
  %i.brt = load i8, ptr %i.brs, align 1, !tbaa !77
  %i.bru = getelementptr i8, ptr %i.boo, i64 -14
  store i8 %i.brt, ptr %i.bru, align 1, !tbaa !77
  %indvars.iv.next1741.14.i = add nsw i64 %indvars.iv1743.i, -15 ; 2 uses
  %i.brv = load i32, ptr %i.boi, align 4, !tbaa !7
  %i.brw = sext i32 %i.brv to i64
  %i.brx = getelementptr inbounds i8, ptr %i.ai, i64 %i.brw
  %i.bry = load i8, ptr %i.brx, align 1, !tbaa !77
  %i.brz = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv.next1741.14.i
  store i8 %i.bry, ptr %i.brz, align 1, !tbaa !77
  %i.bsa = trunc nsw i64 %indvars.iv.next1741.14.i to i32
  %indvars.iv.next1744.i = add nsw i64 %indvars.iv1743.i, -16
  store i32 %i.bsa, ptr %i.boi, align 4, !tbaa !7
  %indvars.iv.next1746.i = add nsw i64 %indvars.iv1745.i, -1
  %.not2044.i = icmp eq i64 %indvars.iv1745.i, 0
  br i1 %.not2044.i, label %.loopexit1386.i, label %.preheader1384.i, !llvm.loop !68

.loopexit1386.i:                                  ; preds = %.preheader1384.i, %._crit_edge1548.i, %._crit_edge1560.i
  %.0920.i = phi i8 [ %i.bio, %._crit_edge1560.i ], [ %i.bne, %._crit_edge1548.i ], [ %i.bne, %.preheader1384.i ]
  %i.bsb = zext i8 %.0920.i to i64
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bsb
  %i.bsd = load i8, ptr %i.bsc, align 1, !tbaa !77 ; 3 uses
  %i.bse = zext i8 %i.bsd to i64
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bse ; 2 uses
  %i.bsg = load i32, ptr %i.bsf, align 4, !tbaa !7
  %i.bsh = add nsw i32 %i.bsg, 1
  store i32 %i.bsh, ptr %i.bsf, align 4, !tbaa !7
  %i.bsi = load i8, ptr %i.h, align 4, !tbaa !26
  %.not1332.i = icmp eq i8 %i.bsi, 0
  %i.bsj = sext i32 %.31121.i to i64              ; 2 uses
  br i1 %.not1332.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %.loopexit1386.i
  %i.bsk = zext i8 %i.bsd to i16
  %i.bsl = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.bsm = getelementptr inbounds [2 x i8], ptr %i.bsl, i64 %i.bsj
  store i16 %i.bsk, ptr %i.bsm, align 2, !tbaa !84
  br label %bb.gb

bb.ga:                                            ; preds = %.loopexit1386.i
  %i.bsn = zext i8 %i.bsd to i32
  %i.bso = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.bsp = getelementptr inbounds [4 x i8], ptr %i.bso, i64 %i.bsj
  store i32 %i.bsn, ptr %i.bsp, align 4, !tbaa !7
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.bsq = add nsw i32 %.31121.i, 1               ; 2 uses
  %i.bsr = icmp eq i32 %.41086.i, 0
  br i1 %i.bsr, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %bb.gb
  %i.bss = add nsw i32 %.41071.i, 1               ; 4 uses
  %.not1333.i = icmp slt i32 %i.bss, %.121046.i
  br i1 %.not1333.i, label %bb.gd, label %BZ2_decompress.exit

bb.gd:                                            ; preds = %bb.gc
  %i.bst = sext i32 %i.bss to i64
  %i.bsu = getelementptr inbounds i8, ptr %i.ab, i64 %i.bst
  %i.bsv = load i8, ptr %i.bsu, align 1, !tbaa !77 ; 2 uses
  %i.bsw = zext i8 %i.bsv to i32
  %i.bsx = zext i8 %i.bsv to i64                  ; 4 uses
  %i.bsy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bsx
  %i.bsz = load i32, ptr %i.bsy, align 4, !tbaa !7
  %i.bta = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bsx
  %i.btb = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bsx
  %i.btc = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bsx
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gb
  %.101216.i = phi i32 [ %i.bsw, %bb.gd ], [ %.41210.i, %bb.gb ]
  %.101201.i = phi i32 [ %i.bsz, %bb.gd ], [ %.41195.i, %bb.gb ] ; 2 uses
  %.101186.i = phi ptr [ %i.bta, %bb.gd ], [ %.41180.i, %bb.gb ]
  %.101171.i = phi ptr [ %i.btc, %bb.gd ], [ %.41165.i, %bb.gb ]
  %.101156.i = phi ptr [ %i.btb, %bb.gd ], [ %.41150.i, %bb.gb ]
  %.101092.i = phi i32 [ 50, %bb.gd ], [ %.41086.i, %bb.gb ]
  %.101077.i = phi i32 [ %i.bss, %bb.gd ], [ %.41071.i, %bb.gb ]
  %i.btd = add nsw i32 %.101092.i, -1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.at
  %i.bte = phi i32 [ %i.bds, %bb.ge ], [ %.pre1833.i, %bb.at ] ; 3 uses
  %.51279.i = phi i32 [ %.01274.i, %bb.ge ], [ %.pre1829.i, %bb.at ] ; 3 uses
  %.151270.i = phi i32 [ %.101265.i, %bb.ge ], [ %.pre1831.i, %bb.at ] ; 3 uses
end_hunk_1
