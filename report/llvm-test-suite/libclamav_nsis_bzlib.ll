inline.NumInlined: 12
inline.NumDeleted: 7
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
define internal ptr @default_bzalloc(ptr readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call ptr @cli_malloc(i64 noundef %i.b) #8
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @default_bzfree(ptr readnone captures(none) %0, ptr noundef captures(address_is_null) %1) #2 {
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
define dso_local range(i32 -4, 5) i32 @nsis_BZ2_bzDecompress(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 16                ; 44 uses
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
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 3168 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 3184 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 3152 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64036 ; 3 uses
  %.phi.trans.insert1843.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64040 ; 2 uses
  %.phi.trans.insert1845.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64044 ; 2 uses
  %.phi.trans.insert1847.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64048 ; 2 uses
  %.phi.trans.insert1849.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64052 ; 2 uses
  %.phi.trans.insert1851.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64056 ; 2 uses
  %.phi.trans.insert1853.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64060 ; 2 uses
  %.phi.trans.insert1855.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64064 ; 2 uses
  %.phi.trans.insert1857.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64068 ; 2 uses
  %.phi.trans.insert1859.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64072 ; 2 uses
  %.phi.trans.insert1861.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64076 ; 2 uses
  %.phi.trans.insert1865.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64084 ; 2 uses
  %.phi.trans.insert1867.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64088 ; 2 uses
  %.phi.trans.insert1869.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64092 ; 2 uses
  %.phi.trans.insert1871.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64096 ; 2 uses
  %.phi.trans.insert1873.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64100 ; 2 uses
  %.phi.trans.insert1875.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64104 ; 2 uses
  %.phi.trans.insert1877.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64108 ; 2 uses
  %.phi.trans.insert1879.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64112 ; 2 uses
  %.phi.trans.insert1881.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64116 ; 2 uses
  %.phi.trans.insert1883.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64120 ; 2 uses
  %.phi.trans.insert1885.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64128 ; 2 uses
  %.phi.trans.insert1887.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64136 ; 2 uses
  %.phi.trans.insert1932.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 54 uses
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
  %.pre = load i32, ptr %i.g, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 7804
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 7880
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 7788
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 7876
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 7772
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 7872
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 7756
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 7868
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 7740
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 7864
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 7724
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 7860
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 7708
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 7856
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 7692
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 7852
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 7676
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 7848
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 7660
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 7844
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 7644
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 7840
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 7628
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 7836
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 7612
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 7832
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 7596
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 7828
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 7580
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 7824
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 7564
  %i.cg = getelementptr i8, ptr %i.d, i64 68
  %i.ch = getelementptr i8, ptr %i.d, i64 84
  %i.ci = getelementptr i8, ptr %i.d, i64 1100
  %i.cj = getelementptr i8, ptr %i.d, i64 1116
  %i.ck = getelementptr i8, ptr %i.d, i64 100
  %i.cl = getelementptr i8, ptr %i.d, i64 116
  %i.cm = getelementptr i8, ptr %i.d, i64 1132
  %i.cn = getelementptr i8, ptr %i.d, i64 1148
  %i.co = getelementptr i8, ptr %i.d, i64 132
  %i.cp = getelementptr i8, ptr %i.d, i64 148
  %i.cq = getelementptr i8, ptr %i.d, i64 1164
  %i.cr = getelementptr i8, ptr %i.d, i64 1180
  %i.cs = getelementptr i8, ptr %i.d, i64 164
  %i.ct = getelementptr i8, ptr %i.d, i64 180
  %i.cu = getelementptr i8, ptr %i.d, i64 1196
  %i.cv = getelementptr i8, ptr %i.d, i64 1212
  %i.cw = getelementptr i8, ptr %i.d, i64 196
  %i.cx = getelementptr i8, ptr %i.d, i64 212
  %i.cy = getelementptr i8, ptr %i.d, i64 1228
  %i.cz = getelementptr i8, ptr %i.d, i64 1244
  %i.da = getelementptr i8, ptr %i.d, i64 228
  %i.db = getelementptr i8, ptr %i.d, i64 244
  %i.dc = getelementptr i8, ptr %i.d, i64 1260
  %i.dd = getelementptr i8, ptr %i.d, i64 1276
  %i.de = getelementptr i8, ptr %i.d, i64 260
  %i.df = getelementptr i8, ptr %i.d, i64 276
  %i.dg = getelementptr i8, ptr %i.d, i64 1292
  %i.dh = getelementptr i8, ptr %i.d, i64 1308
  %i.di = getelementptr i8, ptr %i.d, i64 292
  %i.dj = getelementptr i8, ptr %i.d, i64 308
  %i.dk = getelementptr i8, ptr %i.d, i64 1324
  %i.dl = getelementptr i8, ptr %i.d, i64 1340
  %i.dm = getelementptr i8, ptr %i.d, i64 324
  %i.dn = getelementptr i8, ptr %i.d, i64 340
  %i.do = getelementptr i8, ptr %i.d, i64 1356
  %i.dp = getelementptr i8, ptr %i.d, i64 1372
  %i.dq = getelementptr i8, ptr %i.d, i64 356
  %i.dr = getelementptr i8, ptr %i.d, i64 372
  %i.ds = getelementptr i8, ptr %i.d, i64 1388
  %i.dt = getelementptr i8, ptr %i.d, i64 1404
  %i.du = getelementptr i8, ptr %i.d, i64 388
  %i.dv = getelementptr i8, ptr %i.d, i64 404
  %i.dw = getelementptr i8, ptr %i.d, i64 1420
  %i.dx = getelementptr i8, ptr %i.d, i64 1436
  %i.dy = getelementptr i8, ptr %i.d, i64 420
  %i.dz = getelementptr i8, ptr %i.d, i64 436
  %i.ea = getelementptr i8, ptr %i.d, i64 1452
  %i.eb = getelementptr i8, ptr %i.d, i64 1468
  %i.ec = getelementptr i8, ptr %i.d, i64 452
  %i.ed = getelementptr i8, ptr %i.d, i64 468
  %i.ee = getelementptr i8, ptr %i.d, i64 1484
  %i.ef = getelementptr i8, ptr %i.d, i64 1500
  %i.eg = getelementptr i8, ptr %i.d, i64 484
  %i.eh = getelementptr i8, ptr %i.d, i64 500
  %i.ei = getelementptr i8, ptr %i.d, i64 1516
  %i.ej = getelementptr i8, ptr %i.d, i64 1532
  %i.ek = getelementptr i8, ptr %i.d, i64 516
  %i.el = getelementptr i8, ptr %i.d, i64 532
  %i.em = getelementptr i8, ptr %i.d, i64 1548
  %i.en = getelementptr i8, ptr %i.d, i64 1564
  %i.eo = getelementptr i8, ptr %i.d, i64 548
  %i.ep = getelementptr i8, ptr %i.d, i64 564
  %i.eq = getelementptr i8, ptr %i.d, i64 1580
  %i.er = getelementptr i8, ptr %i.d, i64 1596
  %i.es = getelementptr i8, ptr %i.d, i64 580
  %i.et = getelementptr i8, ptr %i.d, i64 596
  %i.eu = getelementptr i8, ptr %i.d, i64 1612
  %i.ev = getelementptr i8, ptr %i.d, i64 1628
  %i.ew = getelementptr i8, ptr %i.d, i64 612
  %i.ex = getelementptr i8, ptr %i.d, i64 628
  %i.ey = getelementptr i8, ptr %i.d, i64 1644
  %i.ez = getelementptr i8, ptr %i.d, i64 1660
  %i.fa = getelementptr i8, ptr %i.d, i64 644
  %i.fb = getelementptr i8, ptr %i.d, i64 660
  %i.fc = getelementptr i8, ptr %i.d, i64 1676
  %i.fd = getelementptr i8, ptr %i.d, i64 1692
  %i.fe = getelementptr i8, ptr %i.d, i64 676
  %i.ff = getelementptr i8, ptr %i.d, i64 692
  %i.fg = getelementptr i8, ptr %i.d, i64 1708
  %i.fh = getelementptr i8, ptr %i.d, i64 1724
  %i.fi = getelementptr i8, ptr %i.d, i64 708
  %i.fj = getelementptr i8, ptr %i.d, i64 724
  %i.fk = getelementptr i8, ptr %i.d, i64 1740
  %i.fl = getelementptr i8, ptr %i.d, i64 1756
  %i.fm = getelementptr i8, ptr %i.d, i64 740
  %i.fn = getelementptr i8, ptr %i.d, i64 756
  %i.fo = getelementptr i8, ptr %i.d, i64 1772
  %i.fp = getelementptr i8, ptr %i.d, i64 1788
  %i.fq = getelementptr i8, ptr %i.d, i64 772
  %i.fr = getelementptr i8, ptr %i.d, i64 788
  %i.fs = getelementptr i8, ptr %i.d, i64 1804
  %i.ft = getelementptr i8, ptr %i.d, i64 1820
  %i.fu = getelementptr i8, ptr %i.d, i64 804
  %i.fv = getelementptr i8, ptr %i.d, i64 820
  %i.fw = getelementptr i8, ptr %i.d, i64 1836
  %i.fx = getelementptr i8, ptr %i.d, i64 1852
  %i.fy = getelementptr i8, ptr %i.d, i64 836
  %i.fz = getelementptr i8, ptr %i.d, i64 852
  %i.ga = getelementptr i8, ptr %i.d, i64 1868
  %i.gb = getelementptr i8, ptr %i.d, i64 1884
  %i.gc = getelementptr i8, ptr %i.d, i64 868
  %i.gd = getelementptr i8, ptr %i.d, i64 884
  %i.ge = getelementptr i8, ptr %i.d, i64 1900
  %i.gf = getelementptr i8, ptr %i.d, i64 1916
  %i.gg = getelementptr i8, ptr %i.d, i64 900
  %i.gh = getelementptr i8, ptr %i.d, i64 916
  %i.gi = getelementptr i8, ptr %i.d, i64 1932
  %i.gj = getelementptr i8, ptr %i.d, i64 1948
  %i.gk = getelementptr i8, ptr %i.d, i64 932
end_hunk_0
begin_hunk_1_@nsis_BZ2_bzDecompress:bb.a
  br i1 %exitcond1819.not.i.3, label %.preheader1371.i, label %.preheader1373.i, !llvm.loop !116

.preheader1371.i:                                 ; preds = %.preheader1373.i, %bb.gw
  %indvars.iv1820.i = phi i64 [ %indvars.iv.next1821.i.3, %bb.gw ], [ 0, %.preheader1373.i ] ; 7 uses
  %i.cjo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv1820.i
  %i.cjp = load i32, ptr %i.cjo, align 4, !tbaa !4 ; 2 uses
  %i.cjq = icmp slt i32 %i.cjp, 0
  %i.cjr = icmp sgt i32 %i.cjp, %.31121.i
  %or.cond1357.i = select i1 %i.cjq, i1 true, i1 %i.cjr
  br i1 %or.cond1357.i, label %.loopexit.loopexit1683.i, label %bb.gv

bb.gv:                                            ; preds = %.preheader1371.i
  %exitcond1824.not.i = icmp eq i64 %indvars.iv1820.i, 256
  br i1 %exitcond1824.not.i, label %bb.gx, label %.preheader1371.i.1

.preheader1371.i.1:                               ; preds = %bb.gv
  %indvars.iv.next1821.i = or disjoint i64 %indvars.iv1820.i, 1 ; 2 uses
  %i.cjs = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next1821.i
  %i.cjt = load i32, ptr %i.cjs, align 4, !tbaa !4 ; 2 uses
  %i.cju = icmp slt i32 %i.cjt, 0
  %i.cjv = icmp sgt i32 %i.cjt, %.31121.i
  %or.cond1357.i.1 = select i1 %i.cju, i1 true, i1 %i.cjv
  br i1 %or.cond1357.i.1, label %.loopexit.loopexit1683.i, label %.preheader1371.i.2

.preheader1371.i.2:                               ; preds = %.preheader1371.i.1
  %indvars.iv.next1821.i.1 = or disjoint i64 %indvars.iv1820.i, 2 ; 2 uses
  %i.cjw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next1821.i.1
  %i.cjx = load i32, ptr %i.cjw, align 4, !tbaa !4 ; 2 uses
  %i.cjy = icmp slt i32 %i.cjx, 0
  %i.cjz = icmp sgt i32 %i.cjx, %.31121.i
  %or.cond1357.i.2 = select i1 %i.cjy, i1 true, i1 %i.cjz
  br i1 %or.cond1357.i.2, label %.loopexit.loopexit1683.i, label %.preheader1371.i.3

.preheader1371.i.3:                               ; preds = %.preheader1371.i.2
  %indvars.iv.next1821.i.2 = or disjoint i64 %indvars.iv1820.i, 3 ; 2 uses
  %i.cka = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next1821.i.2
  %i.ckb = load i32, ptr %i.cka, align 4, !tbaa !4 ; 2 uses
  %i.ckc = icmp slt i32 %i.ckb, 0
  %i.ckd = icmp sgt i32 %i.ckb, %.31121.i
  %or.cond1357.i.3 = select i1 %i.ckc, i1 true, i1 %i.ckd
  br i1 %or.cond1357.i.3, label %.loopexit.loopexit1683.i, label %bb.gw

bb.gw:                                            ; preds = %.preheader1371.i.3
  %indvars.iv.next1821.i.3 = add nuw nsw i64 %indvars.iv1820.i, 4
  br label %.preheader1371.i

bb.gx:                                            ; preds = %bb.gv
  store i32 0, ptr %i.i, align 8, !tbaa !31
  store i8 0, ptr %i.j, align 4, !tbaa !32
  store i32 2, ptr %i.g, align 8, !tbaa !19
  %i.cke = load i8, ptr %i.h, align 4, !tbaa !27
  %.not1345.i = icmp eq i8 %i.cke, 0
  br i1 %.not1345.i, label %.preheader.i45, label %vector.body

vector.body:                                      ; preds = %bb.gx
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !4
  %wide.load481 = load <4 x i32>, ptr %i.he, align 4, !tbaa !4
  store <4 x i32> %wide.load, ptr %i.ak, align 4, !tbaa !4
  store <4 x i32> %wide.load481, ptr %i.hf, align 4, !tbaa !4
  %wide.load.1 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !4
  %wide.load481.1 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !4
  store <4 x i32> %wide.load.1, ptr %i.hi, align 4, !tbaa !4
  store <4 x i32> %wide.load481.1, ptr %i.hj, align 4, !tbaa !4
  %wide.load.2 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !4
  %wide.load481.2 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !4
  store <4 x i32> %wide.load.2, ptr %i.hm, align 4, !tbaa !4
  store <4 x i32> %wide.load481.2, ptr %i.hn, align 4, !tbaa !4
  %wide.load.3 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !4
  %wide.load481.3 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !4
  store <4 x i32> %wide.load.3, ptr %i.hq, align 4, !tbaa !4
  store <4 x i32> %wide.load481.3, ptr %i.hr, align 4, !tbaa !4
  %wide.load.4 = load <4 x i32>, ptr %i.hs, align 4, !tbaa !4
  %wide.load481.4 = load <4 x i32>, ptr %i.ht, align 4, !tbaa !4
  store <4 x i32> %wide.load.4, ptr %i.hu, align 4, !tbaa !4
  store <4 x i32> %wide.load481.4, ptr %i.hv, align 4, !tbaa !4
  %wide.load.5 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !4
  %wide.load481.5 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !4
  store <4 x i32> %wide.load.5, ptr %i.hy, align 4, !tbaa !4
  store <4 x i32> %wide.load481.5, ptr %i.hz, align 4, !tbaa !4
  %wide.load.6 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !4
  %wide.load481.6 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !4
  store <4 x i32> %wide.load.6, ptr %i.ic, align 4, !tbaa !4
  store <4 x i32> %wide.load481.6, ptr %i.id, align 4, !tbaa !4
  %wide.load.7 = load <4 x i32>, ptr %i.ie, align 4, !tbaa !4
  %wide.load481.7 = load <4 x i32>, ptr %i.if, align 4, !tbaa !4
  store <4 x i32> %wide.load.7, ptr %i.ig, align 4, !tbaa !4
  store <4 x i32> %wide.load481.7, ptr %i.ih, align 4, !tbaa !4
  %wide.load.8 = load <4 x i32>, ptr %i.ii, align 4, !tbaa !4
  %wide.load481.8 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !4
  store <4 x i32> %wide.load.8, ptr %i.ik, align 4, !tbaa !4
  store <4 x i32> %wide.load481.8, ptr %i.il, align 4, !tbaa !4
  %wide.load.9 = load <4 x i32>, ptr %i.im, align 4, !tbaa !4
  %wide.load481.9 = load <4 x i32>, ptr %i.in, align 4, !tbaa !4
  store <4 x i32> %wide.load.9, ptr %i.io, align 4, !tbaa !4
  store <4 x i32> %wide.load481.9, ptr %i.ip, align 4, !tbaa !4
  %wide.load.10 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !4
  %wide.load481.10 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !4
  store <4 x i32> %wide.load.10, ptr %i.is, align 4, !tbaa !4
  store <4 x i32> %wide.load481.10, ptr %i.it, align 4, !tbaa !4
  %wide.load.11 = load <4 x i32>, ptr %i.iu, align 4, !tbaa !4
  %wide.load481.11 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !4
  store <4 x i32> %wide.load.11, ptr %i.iw, align 4, !tbaa !4
  store <4 x i32> %wide.load481.11, ptr %i.ix, align 4, !tbaa !4
  %wide.load.12 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !4
  %wide.load481.12 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !4
  store <4 x i32> %wide.load.12, ptr %i.ja, align 4, !tbaa !4
  store <4 x i32> %wide.load481.12, ptr %i.jb, align 4, !tbaa !4
  %wide.load.13 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !4
  %wide.load481.13 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !4
  store <4 x i32> %wide.load.13, ptr %i.je, align 4, !tbaa !4
  store <4 x i32> %wide.load481.13, ptr %i.jf, align 4, !tbaa !4
  %wide.load.14 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !4
  %wide.load481.14 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !4
  store <4 x i32> %wide.load.14, ptr %i.ji, align 4, !tbaa !4
  store <4 x i32> %wide.load481.14, ptr %i.jj, align 4, !tbaa !4
  %wide.load.15 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !4
  %wide.load481.15 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !4
  store <4 x i32> %wide.load.15, ptr %i.jm, align 4, !tbaa !4
  store <4 x i32> %wide.load481.15, ptr %i.jn, align 4, !tbaa !4
  %wide.load.16 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !4
  %wide.load481.16 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !4
  store <4 x i32> %wide.load.16, ptr %i.jq, align 4, !tbaa !4
  store <4 x i32> %wide.load481.16, ptr %i.jr, align 4, !tbaa !4
  %wide.load.17 = load <4 x i32>, ptr %i.js, align 4, !tbaa !4
  %wide.load481.17 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !4
  store <4 x i32> %wide.load.17, ptr %i.ju, align 4, !tbaa !4
  store <4 x i32> %wide.load481.17, ptr %i.jv, align 4, !tbaa !4
  %wide.load.18 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !4
  %wide.load481.18 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !4
  store <4 x i32> %wide.load.18, ptr %i.jy, align 4, !tbaa !4
  store <4 x i32> %wide.load481.18, ptr %i.jz, align 4, !tbaa !4
  %wide.load.19 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !4
  %wide.load481.19 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !4
  store <4 x i32> %wide.load.19, ptr %i.kc, align 4, !tbaa !4
  store <4 x i32> %wide.load481.19, ptr %i.kd, align 4, !tbaa !4
  %wide.load.20 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !4
  %wide.load481.20 = load <4 x i32>, ptr %i.kf, align 4, !tbaa !4
  store <4 x i32> %wide.load.20, ptr %i.kg, align 4, !tbaa !4
  store <4 x i32> %wide.load481.20, ptr %i.kh, align 4, !tbaa !4
  %wide.load.21 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !4
  %wide.load481.21 = load <4 x i32>, ptr %i.kj, align 4, !tbaa !4
  store <4 x i32> %wide.load.21, ptr %i.kk, align 4, !tbaa !4
  store <4 x i32> %wide.load481.21, ptr %i.kl, align 4, !tbaa !4
  %wide.load.22 = load <4 x i32>, ptr %i.km, align 4, !tbaa !4
  %wide.load481.22 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !4
  store <4 x i32> %wide.load.22, ptr %i.ko, align 4, !tbaa !4
  store <4 x i32> %wide.load481.22, ptr %i.kp, align 4, !tbaa !4
  %wide.load.23 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !4
  %wide.load481.23 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !4
  store <4 x i32> %wide.load.23, ptr %i.ks, align 4, !tbaa !4
  store <4 x i32> %wide.load481.23, ptr %i.kt, align 4, !tbaa !4
  %wide.load.24 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !4
  %wide.load481.24 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !4
  store <4 x i32> %wide.load.24, ptr %i.kw, align 4, !tbaa !4
  store <4 x i32> %wide.load481.24, ptr %i.kx, align 4, !tbaa !4
  %wide.load.25 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !4
  %wide.load481.25 = load <4 x i32>, ptr %i.kz, align 4, !tbaa !4
  store <4 x i32> %wide.load.25, ptr %i.la, align 4, !tbaa !4
  store <4 x i32> %wide.load481.25, ptr %i.lb, align 4, !tbaa !4
  %wide.load.26 = load <4 x i32>, ptr %i.lc, align 4, !tbaa !4
  %wide.load481.26 = load <4 x i32>, ptr %i.ld, align 4, !tbaa !4
  store <4 x i32> %wide.load.26, ptr %i.le, align 4, !tbaa !4
  store <4 x i32> %wide.load481.26, ptr %i.lf, align 4, !tbaa !4
  %wide.load.27 = load <4 x i32>, ptr %i.lg, align 4, !tbaa !4
  %wide.load481.27 = load <4 x i32>, ptr %i.lh, align 4, !tbaa !4
  store <4 x i32> %wide.load.27, ptr %i.li, align 4, !tbaa !4
  store <4 x i32> %wide.load481.27, ptr %i.lj, align 4, !tbaa !4
  %wide.load.28 = load <4 x i32>, ptr %i.lk, align 4, !tbaa !4
  %wide.load481.28 = load <4 x i32>, ptr %i.ll, align 4, !tbaa !4
  store <4 x i32> %wide.load.28, ptr %i.lm, align 4, !tbaa !4
  store <4 x i32> %wide.load481.28, ptr %i.ln, align 4, !tbaa !4
  %wide.load.29 = load <4 x i32>, ptr %i.lo, align 4, !tbaa !4
  %wide.load481.29 = load <4 x i32>, ptr %i.lp, align 4, !tbaa !4
  store <4 x i32> %wide.load.29, ptr %i.lq, align 4, !tbaa !4
  store <4 x i32> %wide.load481.29, ptr %i.lr, align 4, !tbaa !4
  %wide.load.30 = load <4 x i32>, ptr %i.ls, align 4, !tbaa !4
  %wide.load481.30 = load <4 x i32>, ptr %i.lt, align 4, !tbaa !4
  store <4 x i32> %wide.load.30, ptr %i.lu, align 4, !tbaa !4
  store <4 x i32> %wide.load481.30, ptr %i.lv, align 4, !tbaa !4
  %wide.load.31 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !4
  %wide.load481.31 = load <4 x i32>, ptr %i.lx, align 4, !tbaa !4
  store <4 x i32> %wide.load.31, ptr %i.ly, align 4, !tbaa !4
  store <4 x i32> %wide.load481.31, ptr %i.lz, align 4, !tbaa !4
  %i.ckf = load i32, ptr %i.ma, align 4, !tbaa !4
  store i32 %i.ckf, ptr %i.mb, align 4, !tbaa !4
  %wide.trip.count1834.i = zext nneg i32 %.31121.i to i64
  br label %bb.gy

.preheader.i45:                                   ; preds = %bb.gx
  %i.ckg = load ptr, ptr %i.s, align 8, !tbaa !46 ; 8 uses
  %wide.trip.count1840.i = zext nneg i32 %.31121.i to i64 ; 2 uses
  %xtraiter772 = and i64 %wide.trip.count1840.i, 1
  %i.ckh = icmp eq i32 %.31121.i, 1
  br i1 %i.ckh, label %.epil.preheader771, label %.preheader.i45.new

.preheader.i45.new:                               ; preds = %.preheader.i45
  %unroll_iter776 = and i64 %wide.trip.count1840.i, 2147483646
  br label %bb.hi

bb.gy:                                            ; preds = %bb.hb, %vector.body
  %indvars.iv1830.i = phi i64 [ 0, %vector.body ], [ %indvars.iv.next1831.i, %bb.hb ] ; 5 uses
  %i.cki = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.ckj = getelementptr inbounds nuw [2 x i8], ptr %i.cki, i64 %indvars.iv1830.i ; 2 uses
  %i.ckk = load i16, ptr %i.ckj, align 2, !tbaa !42
  %i.ckl = and i16 %i.ckk, 255
  %i.ckm = zext nneg i16 %i.ckl to i64
  %i.ckn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ckm ; 3 uses
  %i.cko = load i32, ptr %i.ckn, align 4          ; 3 uses
  %i.ckp = trunc i32 %i.cko to i16
  store i16 %i.ckp, ptr %i.ckj, align 2, !tbaa !42
  %i.ckq = and i64 %indvars.iv1830.i, 1
  %i.ckr = icmp eq i64 %i.ckq, 0
  br i1 %i.ckr, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %1 = lshr i32 %i.cko, 16
  %2 = load ptr, ptr %i.q, align 8, !tbaa !44
  %3 = lshr exact i64 %indvars.iv1830.i, 1
  %4 = and i64 %3, 2147483647
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = and i8 %6, -16
  %i.cks = trunc i32 %1 to i8
  %i.ckt = or i8 %7, %i.cks
  store i8 %i.ckt, ptr %5, align 1, !tbaa !34
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gy
  %8 = load ptr, ptr %i.q, align 8, !tbaa !44
  %9 = lshr i64 %indvars.iv1830.i, 1
  %10 = and i64 %9, 2147483647
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 %10 ; 2 uses
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %i.cku = and i8 %12, 15
  %i.ckv = lshr i32 %i.cko, 12
  %i.ckw = trunc i32 %i.ckv to i8
  %i.ckx = and i8 %i.ckw, -16
  %i.cky = or disjoint i8 %i.cku, %i.ckx
  store i8 %i.cky, ptr %11, align 1, !tbaa !34
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.ckz = load i32, ptr %i.ckn, align 4, !tbaa !4
  %i.cla = add nsw i32 %i.ckz, 1
  store i32 %i.cla, ptr %i.ckn, align 4, !tbaa !4
  %indvars.iv.next1831.i = add nuw nsw i64 %indvars.iv1830.i, 1 ; 2 uses
  %exitcond1835.not.i = icmp eq i64 %indvars.iv.next1831.i, %wide.trip.count1834.i
  br i1 %exitcond1835.not.i, label %._crit_edge1621.i, label %bb.gy, !llvm.loop !117

._crit_edge1621.i:                                ; preds = %bb.hb
  %i.clb = load i32, ptr %i.w, align 8, !tbaa !78 ; 4 uses
  %i.clc = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.cld = sext i32 %i.clb to i64
  %i.cle = getelementptr inbounds [2 x i8], ptr %i.clc, i64 %i.cld
  %i.clf = load i16, ptr %i.cle, align 2, !tbaa !42
  %i.clg = zext i16 %i.clf to i32
  %i.clh = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.cli = ashr i32 %i.clb, 1
  %i.clj = sext i32 %i.cli to i64
  %i.clk = getelementptr inbounds i8, ptr %i.clh, i64 %i.clj
  %i.cll = load i8, ptr %i.clk, align 1, !tbaa !34
  %i.clm = zext i8 %i.cll to i32
  %i.cln = shl i32 %i.clb, 2
  %i.clo = and i32 %i.cln, 4
  %i.clp = lshr i32 %i.clm, %i.clo
  %i.clq = shl nuw nsw i32 %i.clp, 16
  %i.clr = and i32 %i.clq, 983040
  %i.cls = or disjoint i32 %i.clr, %i.clg
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hf, %._crit_edge1621.i
  %.26961.i = phi i32 [ %i.cls, %._crit_edge1621.i ], [ %i.cmj, %bb.hf ] ; 9 uses
  %.37.i = phi i32 [ %i.clb, %._crit_edge1621.i ], [ %.26961.i, %bb.hf ] ; 3 uses
  %i.clt = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.clu = zext nneg i32 %.26961.i to i64         ; 2 uses
  %i.clv = getelementptr inbounds nuw [2 x i8], ptr %i.clt, i64 %i.clu ; 2 uses
  %i.clw = load i16, ptr %i.clv, align 2, !tbaa !42
  %i.clx = zext i16 %i.clw to i32
  %i.cly = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.clz = lshr i32 %.26961.i, 1
  %i.cma = zext nneg i32 %i.clz to i64            ; 2 uses
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cly, i64 %i.cma ; 3 uses
  %i.cmc = load i8, ptr %i.cmb, align 1, !tbaa !34
  %i.cmd = zext i8 %i.cmc to i32
  %i.cme = shl nuw nsw i32 %.26961.i, 2
  %i.cmf = and i32 %i.cme, 4                      ; 2 uses
  %i.cmg = lshr i32 %i.cmd, %i.cmf
  %i.cmh = shl nuw nsw i32 %i.cmg, 16
  %i.cmi = and i32 %i.cmh, 983040
  %i.cmj = or disjoint i32 %i.cmi, %i.clx         ; 2 uses
  %i.cmk = trunc i32 %.37.i to i16
  store i16 %i.cmk, ptr %i.clv, align 2, !tbaa !42
  %i.cml = and i32 %.26961.i, 1
  %i.cmm = icmp eq i32 %i.cml, 0
  %i.cmn = load i8, ptr %i.cmb, align 1, !tbaa !34 ; 2 uses
  br i1 %i.cmm, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.cmo = and i8 %i.cmn, -16
  %i.cmp = lshr i32 %.37.i, 16
  %i.cmq = trunc i32 %i.cmp to i8
  %i.cmr = or i8 %i.cmo, %i.cmq
  br label %bb.hf

bb.he:                                            ; preds = %bb.hc
  %i.cms = and i8 %i.cmn, 15
  %i.cmt = lshr i32 %.37.i, 12
  %i.cmu = trunc i32 %i.cmt to i8
  %i.cmv = and i8 %i.cmu, -16
  %i.cmw = or disjoint i8 %i.cms, %i.cmv
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %storemerge.i = phi i8 [ %i.cmw, %bb.he ], [ %i.cmr, %bb.hd ]
  store i8 %storemerge.i, ptr %i.cmb, align 1, !tbaa !34
  %i.cmx = load i32, ptr %i.w, align 8, !tbaa !78
  %.not1347.i = icmp eq i32 %.26961.i, %i.cmx
  br i1 %.not1347.i, label %bb.hg, label %bb.hc, !llvm.loop !118

bb.hg:                                            ; preds = %bb.hf
  store i32 %.26961.i, ptr %i.n, align 4, !tbaa !38
  store i32 0, ptr %i.k, align 4, !tbaa !35
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %bb.hg
  %.09.i.i39 = phi i32 [ 256, %bb.hg ], [ %..09.i.i41, %bb.hh ] ; 2 uses
  %.0.i.i40 = phi i32 [ 0, %bb.hg ], [ %.0..i.i42, %bb.hh ] ; 2 uses
  %i.cmy = add nsw i32 %.0.i.i40, %.09.i.i39
  %i.cmz = ashr i32 %i.cmy, 1                     ; 3 uses
  %i.cna = sext i32 %i.cmz to i64
  %i.cnb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.cna
  %i.cnc = load i32, ptr %i.cnb, align 4, !tbaa !4
  %.not.i1362.i = icmp slt i32 %.26961.i, %i.cnc  ; 2 uses
  %..09.i.i41 = select i1 %.not.i1362.i, i32 %i.cmz, i32 %.09.i.i39 ; 2 uses
  %.0..i.i42 = select i1 %.not.i1362.i, i32 %.0.i.i40, i32 %i.cmz ; 3 uses
  %i.cnd = sub nsw i32 %..09.i.i41, %.0..i.i42
  %.not11.i.i43 = icmp eq i32 %i.cnd, 1
  br i1 %.not11.i.i43, label %indexIntoF.exit.i44, label %bb.hh, !llvm.loop !39

indexIntoF.exit.i44:                              ; preds = %bb.hh
  store i32 %.0..i.i42, ptr %i.m, align 8, !tbaa !37
  %i.cne = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.cnf = getelementptr inbounds nuw [2 x i8], ptr %i.cne, i64 %i.clu
  %i.cng = load i16, ptr %i.cnf, align 2, !tbaa !42
  %i.cnh = zext i16 %i.cng to i32
  %i.cni = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cni, i64 %i.cma
  %i.cnk = load i8, ptr %i.cnj, align 1, !tbaa !34
  %i.cnl = zext i8 %i.cnk to i32
  %i.cnm = lshr i32 %i.cnl, %i.cmf
  %i.cnn = shl nuw nsw i32 %i.cnm, 16
  %i.cno = and i32 %i.cnn, 983040
  %i.cnp = or disjoint i32 %i.cno, %i.cnh
  store i32 %i.cnp, ptr %i.n, align 4, !tbaa !38
  store i32 1, ptr %i.k, align 4, !tbaa !35
  br label %BZ2_decompress.exit

bb.hi:                                            ; preds = %bb.hi, %.preheader.i45.new
  %indvars.iv1836.i = phi i64 [ 0, %.preheader.i45.new ], [ %indvars.iv.next1837.i.1, %bb.hi ] ; 4 uses
  %niter777 = phi i64 [ 0, %.preheader.i45.new ], [ %niter777.next.1, %bb.hi ]
  %i.cnq = getelementptr inbounds nuw [4 x i8], ptr %i.ckg, i64 %indvars.iv1836.i
  %i.cnr = load i32, ptr %i.cnq, align 4, !tbaa !4
  %i.cns = trunc nuw nsw i64 %indvars.iv1836.i to i32
  %i.cnt = shl i32 %i.cns, 8
  %i.cnu = and i32 %i.cnr, 255
  %i.cnv = zext nneg i32 %i.cnu to i64
  %i.cnw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cnv ; 3 uses
  %i.cnx = load i32, ptr %i.cnw, align 4, !tbaa !4
  %i.cny = sext i32 %i.cnx to i64
  %i.cnz = getelementptr inbounds [4 x i8], ptr %i.ckg, i64 %i.cny ; 2 uses
  %i.coa = load i32, ptr %i.cnz, align 4, !tbaa !4
  %i.cob = or i32 %i.coa, %i.cnt
  store i32 %i.cob, ptr %i.cnz, align 4, !tbaa !4
  %i.coc = load i32, ptr %i.cnw, align 4, !tbaa !4
  %i.cod = add nsw i32 %i.coc, 1
  store i32 %i.cod, ptr %i.cnw, align 4, !tbaa !4
  %indvars.iv.next1837.i = or disjoint i64 %indvars.iv1836.i, 1 ; 2 uses
  %i.coe = getelementptr inbounds nuw [4 x i8], ptr %i.ckg, i64 %indvars.iv.next1837.i
  %i.cof = load i32, ptr %i.coe, align 4, !tbaa !4
  %i.cog = trunc nuw nsw i64 %indvars.iv.next1837.i to i32
  %i.coh = shl i32 %i.cog, 8
  %i.coi = and i32 %i.cof, 255
  %i.coj = zext nneg i32 %i.coi to i64
  %i.cok = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.coj ; 3 uses
  %i.col = load i32, ptr %i.cok, align 4, !tbaa !4
  %i.com = sext i32 %i.col to i64
  %i.con = getelementptr inbounds [4 x i8], ptr %i.ckg, i64 %i.com ; 2 uses
  %i.coo = load i32, ptr %i.con, align 4, !tbaa !4
  %i.cop = or i32 %i.coo, %i.coh
  store i32 %i.cop, ptr %i.con, align 4, !tbaa !4
  %i.coq = load i32, ptr %i.cok, align 4, !tbaa !4
  %i.cor = add nsw i32 %i.coq, 1
  store i32 %i.cor, ptr %i.cok, align 4, !tbaa !4
  %indvars.iv.next1837.i.1 = add nuw nsw i64 %indvars.iv1836.i, 2 ; 2 uses
  %niter777.next.1 = add i64 %niter777, 2         ; 2 uses
  %niter777.ncmp.1 = icmp eq i64 %niter777.next.1, %unroll_iter776
  br i1 %niter777.ncmp.1, label %._crit_edge1624.i.unr-lcssa, label %bb.hi, !llvm.loop !119

._crit_edge1624.i.unr-lcssa:                      ; preds = %bb.hi
  %lcmp.mod774.not = icmp eq i64 %xtraiter772, 0
  br i1 %lcmp.mod774.not, label %._crit_edge1624.i, label %.epil.preheader771

.epil.preheader771:                               ; preds = %._crit_edge1624.i.unr-lcssa, %.preheader.i45
  %indvars.iv1836.i.epil.init = phi i64 [ 0, %.preheader.i45 ], [ %indvars.iv.next1837.i.1, %._crit_edge1624.i.unr-lcssa ] ; 2 uses
  %lcmp.mod775 = trunc i32 %.31121.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod775)
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %i.ckg, i64 %indvars.iv1836.i.epil.init
  %i.cot = load i32, ptr %i.cos, align 4, !tbaa !4
  %i.cou = trunc nuw nsw i64 %indvars.iv1836.i.epil.init to i32
  %i.cov = shl i32 %i.cou, 8
  %i.cow = and i32 %i.cot, 255
  %i.cox = zext nneg i32 %i.cow to i64
  %i.coy = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cox ; 3 uses
  %i.coz = load i32, ptr %i.coy, align 4, !tbaa !4
  %i.cpa = sext i32 %i.coz to i64
  %i.cpb = getelementptr inbounds [4 x i8], ptr %i.ckg, i64 %i.cpa ; 2 uses
  %i.cpc = load i32, ptr %i.cpb, align 4, !tbaa !4
  %i.cpd = or i32 %i.cpc, %i.cov
  store i32 %i.cpd, ptr %i.cpb, align 4, !tbaa !4
  %i.cpe = load i32, ptr %i.coy, align 4, !tbaa !4
  %i.cpf = add nsw i32 %i.cpe, 1
  store i32 %i.cpf, ptr %i.coy, align 4, !tbaa !4
  br label %._crit_edge1624.i

._crit_edge1624.i:                                ; preds = %._crit_edge1624.i.unr-lcssa, %.epil.preheader771
  %i.cpg = load i32, ptr %i.w, align 8, !tbaa !78
  %i.cph = sext i32 %i.cpg to i64
  %i.cpi = getelementptr inbounds [4 x i8], ptr %i.ckg, i64 %i.cph
  %i.cpj = load i32, ptr %i.cpi, align 4, !tbaa !4
  %i.cpk = lshr i32 %i.cpj, 8                     ; 3 uses
  store i32 %i.cpk, ptr %i.n, align 4, !tbaa !38
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.cpl = load i32, ptr %i.t, align 8, !tbaa !51
  %i.cpm = mul nsw i32 %i.cpl, 100000
  %.not1346.i = icmp ult i32 %i.cpk, %i.cpm
  br i1 %.not1346.i, label %bb.hj, label %BZ2_decompress.exit.thread

bb.hj:                                            ; preds = %._crit_edge1624.i
  %i.cpn = zext nneg i32 %i.cpk to i64
  %i.cpo = getelementptr inbounds nuw [4 x i8], ptr %i.ckg, i64 %i.cpn
  %i.cpp = load i32, ptr %i.cpo, align 4, !tbaa !4 ; 2 uses
  %i.cpq = and i32 %i.cpp, 255
end_hunk_1
