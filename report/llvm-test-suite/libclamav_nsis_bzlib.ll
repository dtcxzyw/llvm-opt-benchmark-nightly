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
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 3168 ; 6 uses
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
end_hunk_0
begin_hunk_1_@nsis_BZ2_bzDecompress:bb.a
  %.pre1955.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1657.i

.lr.ph1656.i:                                     ; preds = %bb.db
  %i.arw = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 8 ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arw, i64 12 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arw, i64 16 ; 2 uses
  %.promoted1660.i = load i32, ptr %i.arx, align 8, !tbaa !76
  br label %bb.dc

._crit_edge1657.i:                                ; preds = %bb.df, %.._crit_edge1657_crit_edge.i
  %i.asa = phi i32 [ %.pre1955.i, %.._crit_edge1657_crit_edge.i ], [ %i.asn, %bb.df ]
  %.lcssa1409.i = phi i32 [ %.promoted1654.i871, %.._crit_edge1657_crit_edge.i ], [ %i.aso, %bb.df ]
  %i.asb = add nsw i32 %.lcssa1409.i, -1          ; 3 uses
  store i32 %i.asb, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.asc = shl nuw i32 1, %i.asb
  %i.asd = and i32 %i.asc, %i.asa
  %i.ase = icmp eq i32 %i.asd, 0
  br i1 %i.ase, label %bb.dh, label %bb.dg

bb.dc:                                            ; preds = %bb.df, %.lr.ph1656.i
  %i.asf = phi i32 [ %.promoted1660.i, %.lr.ph1656.i ], [ %i.asq, %bb.df ] ; 2 uses
  %i.asg = phi i32 [ %.promoted1654.i871, %.lr.ph1656.i ], [ %i.aso, %bb.df ] ; 2 uses
  %i.ash = icmp eq i32 %i.asf, 0
  br i1 %i.ash, label %BZ2_decompress.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.asi = load i32, ptr %i.v, align 8, !tbaa !21
  %i.asj = shl i32 %i.asi, 8
  %i.ask = load ptr, ptr %i.arw, align 8, !tbaa !77 ; 2 uses
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !34
  %i.asm = zext i8 %i.asl to i32
  %i.asn = or disjoint i32 %i.asj, %i.asm         ; 2 uses
  store i32 %i.asn, ptr %i.v, align 8, !tbaa !21
  %i.aso = add nsw i32 %i.asg, 8                  ; 3 uses
  store i32 %i.aso, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.asp = getelementptr inbounds nuw i8, ptr %i.ask, i64 1
  store ptr %i.asp, ptr %i.arw, align 8, !tbaa !77
  %i.asq = add i32 %i.asf, -1                     ; 2 uses
  store i32 %i.asq, ptr %i.arx, align 8, !tbaa !76
  %i.asr = load i32, ptr %i.ary, align 4, !tbaa !23
  %i.ass = add i32 %i.asr, 1                      ; 2 uses
  store i32 %i.ass, ptr %i.ary, align 4, !tbaa !23
  %i.ast = icmp eq i32 %i.ass, 0
  br i1 %i.ast, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.asu = load i32, ptr %i.arz, align 8, !tbaa !24
  %i.asv = add i32 %i.asu, 1
  store i32 %i.asv, ptr %i.arz, align 8, !tbaa !24
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.asw = icmp sgt i32 %i.asg, -8
  br i1 %i.asw, label %._crit_edge1657.i, label %bb.dc

bb.dg:                                            ; preds = %._crit_edge1657.i
  %i.asx = add nsw i32 %.8943.i, 1                ; 3 uses
  %.not1349.i = icmp slt i32 %i.asx, %.31013.i.ph
  br i1 %.not1349.i, label %bb.db, label %BZ2_decompress.exit

bb.dh:                                            ; preds = %._crit_edge1657.i
  %i.asy = trunc i32 %.8943.i to i8
  %i.asz = sext i32 %.11.i.ph to i64
  %i.ata = getelementptr inbounds i8, ptr %i.aa, i64 %i.asz
  store i8 %i.asy, ptr %i.ata, align 1, !tbaa !34
  %i.atb = add nsw i32 %.11.i.ph, 1
  br label %bb.da, !llvm.loop !84

bb.di:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.atc = icmp sgt i32 %.11011.i, 0
  br i1 %i.atc, label %iter.check596, label %.preheader1393.i

iter.check596:                                    ; preds = %bb.di
  %min.iters.check583 = icmp ult i32 %.11011.i, 4
  br i1 %min.iters.check583, label %.lr.ph1521.i.preheader, label %vector.scevcheck581

vector.scevcheck581:                              ; preds = %iter.check596
  %i.atd = add nsw i32 %.11011.i, -1              ; 2 uses
  %i.ate = and i32 %i.atd, 255
  %i.atf = icmp eq i32 %i.ate, 255
  %i.atg = icmp ugt i32 %i.atd, 255
  %i.ath = or i1 %i.atf, %i.atg
  br i1 %i.ath, label %.lr.ph1521.i.preheader, label %vector.main.loop.iter.check584

vector.main.loop.iter.check584:                   ; preds = %vector.scevcheck581
  %min.iters.check585 = icmp ult i32 %.11011.i, 32
  br i1 %min.iters.check585, label %vec.epilog.ph600, label %vector.ph586

vector.ph586:                                     ; preds = %vector.main.loop.iter.check584
  %n.mod.vf587 = and i32 %.11011.i, 28
  %n.vec588 = and i32 %.11011.i, 480              ; 10 uses
  %i.ati = trunc i32 %n.vec588 to i8              ; 2 uses
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !34
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.am, align 16, !tbaa !34
  %i.atj = icmp eq i32 %n.vec588, 32
  br i1 %i.atj, label %middle.block592, label %vector.body589.1

vector.body589.1:                                 ; preds = %vector.ph586
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.an, align 16, !tbaa !34
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.ao, align 16, !tbaa !34
  %i.atk = icmp eq i32 %n.vec588, 64
  br i1 %i.atk, label %middle.block592, label %vector.body589.2

vector.body589.2:                                 ; preds = %vector.body589.1
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.ap, align 16, !tbaa !34
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.aq, align 16, !tbaa !34
  %i.atl = icmp eq i32 %n.vec588, 96
  br i1 %i.atl, label %middle.block592, label %vector.body589.3

vector.body589.3:                                 ; preds = %vector.body589.2
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.ar, align 16, !tbaa !34
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.as, align 16, !tbaa !34
  %i.atm = icmp eq i32 %n.vec588, 128
  br i1 %i.atm, label %middle.block592, label %vector.body589.4

vector.body589.4:                                 ; preds = %vector.body589.3
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.at, align 16, !tbaa !34
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.au, align 16, !tbaa !34
  %i.atn = icmp eq i32 %n.vec588, 160
  br i1 %i.atn, label %middle.block592, label %vector.body589.5

vector.body589.5:                                 ; preds = %vector.body589.4
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.av, align 16, !tbaa !34
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.aw, align 16, !tbaa !34
  %i.ato = icmp eq i32 %n.vec588, 192
  br i1 %i.ato, label %middle.block592, label %vector.body589.6

vector.body589.6:                                 ; preds = %vector.body589.5
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.ax, align 16, !tbaa !34
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.ay, align 16, !tbaa !34
  %i.atp = icmp eq i32 %n.vec588, 224
  br i1 %i.atp, label %middle.block592, label %vector.body589.7

vector.body589.7:                                 ; preds = %vector.body589.6
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.az, align 16, !tbaa !34
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.ba, align 16, !tbaa !34
  br label %middle.block592

middle.block592:                                  ; preds = %vector.body589.7, %vector.body589.6, %vector.body589.5, %vector.body589.4, %vector.body589.3, %vector.body589.2, %vector.body589.1, %vector.ph586
  %cmp.n593 = icmp eq i32 %.11011.i, %n.vec588
  br i1 %cmp.n593, label %.preheader1393.i, label %vec.epilog.iter.check598

vec.epilog.iter.check598:                         ; preds = %middle.block592
  %min.epilog.iters.check599 = icmp eq i32 %n.mod.vf587, 0
  br i1 %min.epilog.iters.check599, label %.lr.ph1521.i.preheader, label %vec.epilog.ph600, !prof !85

vec.epilog.ph600:                                 ; preds = %vector.main.loop.iter.check584, %vec.epilog.iter.check598
  %vec.epilog.resume.val594 = phi i32 [ %n.vec588, %vec.epilog.iter.check598 ], [ 0, %vector.main.loop.iter.check584 ]
  %bc.resume.val595 = phi i8 [ %i.ati, %vec.epilog.iter.check598 ], [ 0, %vector.main.loop.iter.check584 ]
  %n.vec602 = and i32 %.11011.i, 508              ; 3 uses
  %i.atq = trunc i32 %n.vec602 to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %bc.resume.val595, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body603

vec.epilog.vector.body603:                        ; preds = %vec.epilog.vector.body603, %vec.epilog.ph600
  %index604 = phi i32 [ %vec.epilog.resume.val594, %vec.epilog.ph600 ], [ %index.next606, %vec.epilog.vector.body603 ] ; 2 uses
  %vec.ind605 = phi <4 x i8> [ %induction, %vec.epilog.ph600 ], [ %vec.ind.next607, %vec.epilog.vector.body603 ] ; 2 uses
  %i.atr = and i32 %index604, 252
  %i.ats = zext nneg i32 %i.atr to i64
  %i.att = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ats
  store <4 x i8> %vec.ind605, ptr %i.att, align 4, !tbaa !34
  %index.next606 = add nuw i32 %index604, 4       ; 2 uses
  %vec.ind.next607 = add <4 x i8> %vec.ind605, splat (i8 4)
  %i.atu = icmp eq i32 %index.next606, %n.vec602
  br i1 %i.atu, label %vec.epilog.middle.block608, label %vec.epilog.vector.body603, !llvm.loop !86

vec.epilog.middle.block608:                       ; preds = %vec.epilog.vector.body603
  %cmp.n609 = icmp eq i32 %.11011.i, %n.vec602
  br i1 %cmp.n609, label %.preheader1393.i, label %.lr.ph1521.i.preheader

.lr.ph1521.i.preheader:                           ; preds = %vector.scevcheck581, %iter.check596, %vec.epilog.iter.check598, %vec.epilog.middle.block608
  %.010651519.i.ph = phi i8 [ 0, %iter.check596 ], [ 0, %vector.scevcheck581 ], [ %i.ati, %vec.epilog.iter.check598 ], [ %i.atq, %vec.epilog.middle.block608 ]
  br label %.lr.ph1521.i

.preheader1393.i:                                 ; preds = %.lr.ph1521.i, %middle.block592, %vec.epilog.middle.block608, %bb.di
  %i.atv = icmp sgt i32 %.01032.i, 0
  br i1 %i.atv, label %.lr.ph1528.i, label %._crit_edge1529.i

.lr.ph1528.i:                                     ; preds = %.preheader1393.i
  %wide.trip.count.i = zext nneg i32 %.01032.i to i64
  br label %bb.dj

.lr.ph1521.i:                                     ; preds = %.lr.ph1521.i.preheader, %.lr.ph1521.i
  %.010651519.i = phi i8 [ %i.aty, %.lr.ph1521.i ], [ %.010651519.i.ph, %.lr.ph1521.i.preheader ] ; 3 uses
  %i.atw = zext i8 %.010651519.i to i64
  %i.atx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.atw
  store i8 %.010651519.i, ptr %i.atx, align 1, !tbaa !34
  %i.aty = add i8 %.010651519.i, 1                ; 2 uses
  %i.atz = zext i8 %i.aty to i32
  %i.aua = icmp samesign ugt i32 %.11011.i, %i.atz
  br i1 %i.aua, label %.lr.ph1521.i, label %.preheader1393.i, !llvm.loop !87

bb.dj:                                            ; preds = %._crit_edge1526.i, %.lr.ph1528.i
  %indvars.iv1737.i = phi i64 [ 0, %.lr.ph1528.i ], [ %indvars.iv.next1738.i, %._crit_edge1526.i ] ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv1737.i
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !34 ; 7 uses
  %i.aud = zext i8 %i.auc to i64                  ; 27 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aud
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !34 ; 2 uses
  %.not13481522.i = icmp eq i8 %i.auc, 0
  br i1 %.not13481522.i, label %._crit_edge1526.i, label %iter.check565

iter.check565:                                    ; preds = %bb.dj
  %min.iters.check546 = icmp ult i8 %i.auc, 8
  br i1 %min.iters.check546, label %.lr.ph1525.i.preheader, label %vector.scevcheck542

vector.scevcheck542:                              ; preds = %iter.check565
  %1 = add i8 %i.auc, -1
  %i.aug = zext i8 %i.auc to i32
  %i.auh = add nsw i32 %i.aug, -1
  %2 = zext i8 %1 to i32
  %i.aui = icmp ult i32 %i.auh, %2
  br i1 %i.aui, label %.lr.ph1525.i.preheader, label %vector.memcheck543

vector.memcheck543:                               ; preds = %vector.scevcheck542
  %i.auj = zext i8 %i.auc to i64
  %i.auk = add nuw nsw i64 %i.auj, 4294967295
  %i.aul = and i64 %i.auk, 4294967295
  %i.aum = sub nsw i64 %i.aul, %i.aud
  %diff.check544 = icmp ult i64 %i.aum, 32
  br i1 %diff.check544, label %.lr.ph1525.i.preheader, label %vector.main.loop.iter.check547

vector.main.loop.iter.check547:                   ; preds = %vector.memcheck543
  %min.iters.check548 = icmp ult i8 %i.auc, 32
  br i1 %min.iters.check548, label %vec.epilog.ph569, label %vector.ph549

vector.ph549:                                     ; preds = %vector.main.loop.iter.check547
  %n.mod.vf550 = and i64 %i.aud, 24
  %n.vec551 = and i64 %i.aud, 224                 ; 8 uses
  %i.aun = and i64 %i.aud, 31
  %i.auo = add nuw nsw i64 %i.aud, 4294967295
  %i.aup = and i64 %i.auo, 4294967295
  %i.auq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aup ; 2 uses
  %i.aur = getelementptr inbounds i8, ptr %i.auq, i64 -15
  %i.aus = getelementptr inbounds i8, ptr %i.auq, i64 -31
  %wide.load554 = load <16 x i8>, ptr %i.aur, align 1, !tbaa !34
  %wide.load555 = load <16 x i8>, ptr %i.aus, align 1, !tbaa !34
  %i.aut = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.auu = getelementptr inbounds i8, ptr %i.aut, i64 -15
  %i.auv = getelementptr inbounds i8, ptr %i.aut, i64 -31
  store <16 x i8> %wide.load554, ptr %i.auu, align 1, !tbaa !34
  store <16 x i8> %wide.load555, ptr %i.auv, align 1, !tbaa !34
  %i.auw = icmp eq i64 %n.vec551, 32
  br i1 %i.auw, label %middle.block561, label %vector.body552.1

vector.body552.1:                                 ; preds = %vector.ph549
  %i.aux = add nuw nsw i64 %i.aud, 4294967263
  %i.auy = and i64 %i.aux, 4294967295
  %i.auz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.auy ; 2 uses
  %i.ava = getelementptr inbounds i8, ptr %i.auz, i64 -15
  %i.avb = getelementptr inbounds i8, ptr %i.auz, i64 -31
  %wide.load554.1 = load <16 x i8>, ptr %i.ava, align 1, !tbaa !34
  %wide.load555.1 = load <16 x i8>, ptr %i.avb, align 1, !tbaa !34
  %i.avc = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.avd = getelementptr i8, ptr %i.avc, i64 -47
  %i.ave = getelementptr i8, ptr %i.avc, i64 -63
  store <16 x i8> %wide.load554.1, ptr %i.avd, align 1, !tbaa !34
  store <16 x i8> %wide.load555.1, ptr %i.ave, align 1, !tbaa !34
  %i.avf = icmp eq i64 %n.vec551, 64
  br i1 %i.avf, label %middle.block561, label %vector.body552.2

vector.body552.2:                                 ; preds = %vector.body552.1
  %i.avg = add nuw nsw i64 %i.aud, 4294967231
  %i.avh = and i64 %i.avg, 4294967295
  %i.avi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.avh ; 2 uses
  %i.avj = getelementptr inbounds i8, ptr %i.avi, i64 -15
  %i.avk = getelementptr inbounds i8, ptr %i.avi, i64 -31
  %wide.load554.2 = load <16 x i8>, ptr %i.avj, align 1, !tbaa !34
  %wide.load555.2 = load <16 x i8>, ptr %i.avk, align 1, !tbaa !34
  %i.avl = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.avm = getelementptr i8, ptr %i.avl, i64 -79
  %i.avn = getelementptr i8, ptr %i.avl, i64 -95
  store <16 x i8> %wide.load554.2, ptr %i.avm, align 1, !tbaa !34
  store <16 x i8> %wide.load555.2, ptr %i.avn, align 1, !tbaa !34
  %i.avo = icmp eq i64 %n.vec551, 96
  br i1 %i.avo, label %middle.block561, label %vector.body552.3

vector.body552.3:                                 ; preds = %vector.body552.2
  %i.avp = add nuw nsw i64 %i.aud, 4294967199
  %i.avq = and i64 %i.avp, 4294967295
  %i.avr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.avq ; 2 uses
  %i.avs = getelementptr inbounds i8, ptr %i.avr, i64 -15
  %i.avt = getelementptr inbounds i8, ptr %i.avr, i64 -31
  %wide.load554.3 = load <16 x i8>, ptr %i.avs, align 1, !tbaa !34
  %wide.load555.3 = load <16 x i8>, ptr %i.avt, align 1, !tbaa !34
  %i.avu = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.avv = getelementptr i8, ptr %i.avu, i64 -111
  %i.avw = getelementptr i8, ptr %i.avu, i64 -127
  store <16 x i8> %wide.load554.3, ptr %i.avv, align 1, !tbaa !34
  store <16 x i8> %wide.load555.3, ptr %i.avw, align 1, !tbaa !34
  %i.avx = icmp eq i64 %n.vec551, 128
  br i1 %i.avx, label %middle.block561, label %vector.body552.4

vector.body552.4:                                 ; preds = %vector.body552.3
  %i.avy = add nuw nsw i64 %i.aud, 4294967167
  %i.avz = and i64 %i.avy, 4294967295
  %i.awa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.avz ; 2 uses
  %i.awb = getelementptr inbounds i8, ptr %i.awa, i64 -15
  %i.awc = getelementptr inbounds i8, ptr %i.awa, i64 -31
  %wide.load554.4 = load <16 x i8>, ptr %i.awb, align 1, !tbaa !34
  %wide.load555.4 = load <16 x i8>, ptr %i.awc, align 1, !tbaa !34
  %i.awd = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.awe = getelementptr i8, ptr %i.awd, i64 -143
  %i.awf = getelementptr i8, ptr %i.awd, i64 -159
  store <16 x i8> %wide.load554.4, ptr %i.awe, align 1, !tbaa !34
  store <16 x i8> %wide.load555.4, ptr %i.awf, align 1, !tbaa !34
  %i.awg = icmp eq i64 %n.vec551, 160
  br i1 %i.awg, label %middle.block561, label %vector.body552.5

vector.body552.5:                                 ; preds = %vector.body552.4
  %i.awh = add nuw nsw i64 %i.aud, 4294967135
  %i.awi = and i64 %i.awh, 4294967295
  %i.awj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.awi ; 2 uses
  %i.awk = getelementptr inbounds i8, ptr %i.awj, i64 -15
  %i.awl = getelementptr inbounds i8, ptr %i.awj, i64 -31
  %wide.load554.5 = load <16 x i8>, ptr %i.awk, align 1, !tbaa !34
  %wide.load555.5 = load <16 x i8>, ptr %i.awl, align 1, !tbaa !34
  %i.awm = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.awn = getelementptr i8, ptr %i.awm, i64 -175
  %i.awo = getelementptr i8, ptr %i.awm, i64 -191
  store <16 x i8> %wide.load554.5, ptr %i.awn, align 1, !tbaa !34
  store <16 x i8> %wide.load555.5, ptr %i.awo, align 1, !tbaa !34
  %i.awp = icmp eq i64 %n.vec551, 192
  br i1 %i.awp, label %middle.block561, label %vector.body552.6

vector.body552.6:                                 ; preds = %vector.body552.5
  %i.awq = add nuw nsw i64 %i.aud, 4294967103
  %i.awr = and i64 %i.awq, 4294967295
  %i.aws = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.awr ; 2 uses
  %i.awt = getelementptr inbounds i8, ptr %i.aws, i64 -15
  %i.awu = getelementptr inbounds i8, ptr %i.aws, i64 -31
  %wide.load554.6 = load <16 x i8>, ptr %i.awt, align 1, !tbaa !34
  %wide.load555.6 = load <16 x i8>, ptr %i.awu, align 1, !tbaa !34
  %i.awv = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.aww = getelementptr i8, ptr %i.awv, i64 -207
  %i.awx = getelementptr i8, ptr %i.awv, i64 -223
  store <16 x i8> %wide.load554.6, ptr %i.aww, align 1, !tbaa !34
  store <16 x i8> %wide.load555.6, ptr %i.awx, align 1, !tbaa !34
  br label %middle.block561

middle.block561:                                  ; preds = %vector.body552.6, %vector.body552.5, %vector.body552.4, %vector.body552.3, %vector.body552.2, %vector.body552.1, %vector.ph549
  %cmp.n562 = icmp eq i64 %n.vec551, %i.aud
  br i1 %cmp.n562, label %._crit_edge1526.i, label %vec.epilog.iter.check567

vec.epilog.iter.check567:                         ; preds = %middle.block561
  %min.epilog.iters.check568 = icmp eq i64 %n.mod.vf550, 0
  br i1 %min.epilog.iters.check568, label %.lr.ph1525.i.preheader, label %vec.epilog.ph569, !prof !88

vec.epilog.ph569:                                 ; preds = %vector.main.loop.iter.check547, %vec.epilog.iter.check567
  %vec.epilog.resume.val563 = phi i64 [ %n.vec551, %vec.epilog.iter.check567 ], [ 0, %vector.main.loop.iter.check547 ]
  %n.vec571 = and i64 %i.aud, 248                 ; 2 uses
  %i.awy = and i64 %i.aud, 7
  br label %vec.epilog.vector.body572

vec.epilog.vector.body572:                        ; preds = %vec.epilog.vector.body572, %vec.epilog.ph569
  %index573 = phi i64 [ %vec.epilog.resume.val563, %vec.epilog.ph569 ], [ %index.next577, %vec.epilog.vector.body572 ] ; 2 uses
  %i.awz = sub i64 %i.aud, %index573              ; 2 uses
  %i.axa = add nuw nsw i64 %i.awz, 4294967295
  %i.axb = and i64 %i.axa, 4294967295
  %i.axc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.axb
  %i.axd = getelementptr inbounds i8, ptr %i.axc, i64 -7
  %wide.load574 = load <8 x i8>, ptr %i.axd, align 1, !tbaa !34
  %i.axe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.awz
  %i.axf = getelementptr inbounds i8, ptr %i.axe, i64 -7
  store <8 x i8> %wide.load574, ptr %i.axf, align 1, !tbaa !34
  %index.next577 = add nuw i64 %index573, 8       ; 2 uses
  %i.axg = icmp eq i64 %index.next577, %n.vec571
  br i1 %i.axg, label %vec.epilog.middle.block578, label %vec.epilog.vector.body572, !llvm.loop !89

vec.epilog.middle.block578:                       ; preds = %vec.epilog.vector.body572
  %cmp.n579 = icmp eq i64 %n.vec571, %i.aud
  br i1 %cmp.n579, label %._crit_edge1526.i, label %.lr.ph1525.i.preheader

.lr.ph1525.i.preheader:                           ; preds = %vector.memcheck543, %vector.scevcheck542, %iter.check565, %vec.epilog.iter.check567, %vec.epilog.middle.block578
  %indvars.iv.i.ph = phi i64 [ %i.aud, %iter.check565 ], [ %i.aud, %vector.scevcheck542 ], [ %i.aud, %vector.memcheck543 ], [ %i.aun, %vec.epilog.iter.check567 ], [ %i.awy, %vec.epilog.middle.block578 ] ; 6 uses
  %3 = trunc nuw i64 %indvars.iv.i.ph to i8
  %xtraiter = and i8 %3, 1
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1525.i.prol.loopexit, label %.lr.ph1525.i.prol

.lr.ph1525.i.prol:                                ; preds = %.lr.ph1525.i.preheader
  %i.axh = add nuw nsw i64 %indvars.iv.i.ph, 4294967295
  %i.axi = and i64 %i.axh, 4294967295
  %i.axj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.axi
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !34
  %i.axl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.ph
  store i8 %i.axk, ptr %i.axl, align 1, !tbaa !34
  %indvars.iv.next.i.prol.a = add nsw i64 %indvars.iv.i.ph, -1
  br label %.lr.ph1525.i.prol.loopexit

.lr.ph1525.i.prol.loopexit:                       ; preds = %.lr.ph1525.i.prol, %.lr.ph1525.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph1525.i.preheader ], [ %indvars.iv.next.i.prol.a, %.lr.ph1525.i.prol ]
  %4 = icmp eq i64 %indvars.iv.i.ph, 1
  br i1 %4, label %._crit_edge1526.i, label %.lr.ph1525.i

.lr.ph1525.i:                                     ; preds = %.lr.ph1525.i.prol.loopexit, %.lr.ph1525.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph1525.i ], [ %indvars.iv.i.unr, %.lr.ph1525.i.prol.loopexit ] ; 5 uses
  %i.axm = add nuw nsw i64 %indvars.iv.i, 4294967295
  %i.axn = and i64 %i.axm, 4294967295
  %i.axo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.axn
  %i.axp = load i8, ptr %i.axo, align 1, !tbaa !34
  %i.axq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.axp, ptr %i.axq, align 1, !tbaa !34
  %i.axr = add nsw i64 %indvars.iv.i, 4294967294
  %i.axs = and i64 %i.axr, 4294967295
  %i.axt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.axs
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !34
  %i.axv = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  %i.axw = getelementptr i8, ptr %i.axv, i64 -1
  store i8 %i.axu, ptr %i.axw, align 1, !tbaa !34
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.axx = and i64 %indvars.iv.next.i.1, 255
  %.not1348.i.1 = icmp eq i64 %i.axx, 0
  br i1 %.not1348.i.1, label %._crit_edge1526.i, label %.lr.ph1525.i, !llvm.loop !90

._crit_edge1526.i:                                ; preds = %.lr.ph1525.i.prol.loopexit, %.lr.ph1525.i, %middle.block561, %vec.epilog.middle.block578, %bb.dj
  store i8 %i.auf, ptr %i.a, align 16, !tbaa !34
  %i.axy = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv1737.i
  store i8 %i.auf, ptr %i.axy, align 1, !tbaa !34
  %indvars.iv.next1738.i = add nuw nsw i64 %indvars.iv1737.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next1738.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge1529.i, label %bb.dj, !llvm.loop !91

._crit_edge1529.i:                                ; preds = %._crit_edge1526.i, %.preheader1393.i
  %.12.lcssa.i = phi i32 [ 0, %.preheader1393.i ], [ %.01032.i, %._crit_edge1526.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.ed, %._crit_edge1529.i
  %i.axz = phi i32 [ %i.arc, %._crit_edge1529.i ], [ %i.ban, %bb.ed ]
  %i.aya = phi i32 [ %i.ard, %._crit_edge1529.i ], [ %i.bao, %bb.ed ]
  %i.ayb = phi i32 [ %i.are, %._crit_edge1529.i ], [ %i.bap, %bb.ed ]
  %i.ayc = phi i32 [ %i.arf, %._crit_edge1529.i ], [ %i.baq, %bb.ed ] ; 3 uses
  %i.ayd = phi i32 [ %i.arg, %._crit_edge1529.i ], [ %i.bar, %bb.ed ]
  %i.aye = phi i32 [ %i.arh, %._crit_edge1529.i ], [ %i.bas, %bb.ed ]
  %i.ayf = phi i32 [ %i.ari, %._crit_edge1529.i ], [ %i.bat, %bb.ed ] ; 3 uses
  %i.ayg = phi i32 [ %i.arj, %._crit_edge1529.i ], [ %i.bau, %bb.ed ] ; 3 uses
  %i.ayh = phi i32 [ %i.arl, %._crit_edge1529.i ], [ %i.bav, %bb.ed ] ; 3 uses
  %i.ayi = phi i32 [ %i.arm, %._crit_edge1529.i ], [ %i.baw, %bb.ed ] ; 2 uses
  %i.ayj = phi i32 [ %i.arn, %._crit_edge1529.i ], [ %i.bax, %bb.ed ] ; 3 uses
  %i.ayk = phi i32 [ %i.aro, %._crit_edge1529.i ], [ %i.bay, %bb.ed ] ; 3 uses
  %i.ayl = phi i32 [ %i.arp, %._crit_edge1529.i ], [ %i.baz, %bb.ed ] ; 2 uses
  %i.aym = phi i32 [ %i.arq, %._crit_edge1529.i ], [ %i.bba, %bb.ed ] ; 2 uses
  %i.ayn = phi ptr [ %i.arr, %._crit_edge1529.i ], [ %i.bbb, %bb.ed ] ; 2 uses
  %i.ayo = phi ptr [ %i.ars, %._crit_edge1529.i ], [ %i.bbc, %bb.ed ] ; 2 uses
  %i.ayp = phi ptr [ %i.art, %._crit_edge1529.i ], [ %i.bbd, %bb.ed ] ; 2 uses
  %.01155.i = phi i32 [ %i.ark, %._crit_edge1529.i ], [ %.21157.i, %bb.ed ] ; 3 uses
  %.31035.i = phi i32 [ %.01032.i, %._crit_edge1529.i ], [ %.51037.i, %bb.ed ] ; 4 uses
  %.41014.i = phi i32 [ %.11011.i, %._crit_edge1529.i ], [ %.61016.i, %bb.ed ] ; 7 uses
  %.5988.i = phi i32 [ %.2985.i, %._crit_edge1529.i ], [ %.7990.i, %bb.ed ] ; 9 uses
  %.0964.i = phi i32 [ 0, %._crit_edge1529.i ], [ %i.bfp, %bb.ed ] ; 2 uses
  %.9944.i = phi i32 [ %.6941.i, %._crit_edge1529.i ], [ %.11946.i, %bb.ed ] ; 3 uses
  %.13.i = phi i32 [ %.12.lcssa.i, %._crit_edge1529.i ], [ %.15.i, %bb.ed ]
  %i.ayq = icmp slt i32 %.0964.i, %.41014.i
  br i1 %i.ayq, label %bb.dl, label %.preheader1392.i

.preheader1392.i:                                 ; preds = %bb.dk
  %i.ayr = icmp sgt i32 %.41014.i, 0
  br i1 %i.ayr, label %.preheader1391.lr.ph.i, label %._crit_edge1539.i

.preheader1391.lr.ph.i:                           ; preds = %.preheader1392.i
  %i.ays = icmp slt i32 %.5988.i, 1               ; 2 uses
  %wide.trip.count.i.i = zext i32 %.5988.i to i64 ; 7 uses
  %wide.trip.count1751.i = zext nneg i32 %.41014.i to i64
  %min.iters.check525 = icmp ult i32 %.5988.i, 8
  %n.vec528 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n539 = icmp eq i64 %n.vec528, %wide.trip.count.i.i
  %xtraiter751 = and i64 %wide.trip.count.i.i, 1
  %i.ayt = icmp eq i32 %.5988.i, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  %lcmp.mod754 = trunc i32 %.5988.i to i1
  %xtraiter755 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.ayu = icmp ult i32 %.5988.i, 4
  %unroll_iter758 = and i64 %wide.trip.count.i.i, 2147483644
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %lcmp.mod757 = icmp ne i64 %xtraiter755, 0
  br label %.preheader1391.i

bb.dl:                                            ; preds = %bb.dk, %bb.au
  %i.ayv = phi i32 [ %i.axz, %bb.dk ], [ %.pre1854.i, %bb.au ] ; 2 uses
  %i.ayw = phi i32 [ %i.aya, %bb.dk ], [ %.pre1856.i, %bb.au ] ; 2 uses
  %i.ayx = phi i32 [ %i.ayb, %bb.dk ], [ %.pre1858.i, %bb.au ] ; 2 uses
  %i.ayy = phi i32 [ %i.ayc, %bb.dk ], [ %.pre1860.i, %bb.au ] ; 2 uses
  %i.ayz = phi i32 [ %i.ayd, %bb.dk ], [ %.pre1862.i, %bb.au ] ; 2 uses
  %i.aza = phi i32 [ %i.aye, %bb.dk ], [ %.pre1864.i, %bb.au ] ; 2 uses
  %i.azb = phi i32 [ %i.ayf, %bb.dk ], [ %.pre1866.i, %bb.au ] ; 2 uses
  %i.azc = phi i32 [ %i.ayg, %bb.dk ], [ %.pre1868.i, %bb.au ] ; 2 uses
  %i.azd = phi i32 [ %i.ayh, %bb.dk ], [ %.pre1872.i, %bb.au ] ; 2 uses
  %i.aze = phi i32 [ %i.ayi, %bb.dk ], [ %.pre1874.i, %bb.au ] ; 2 uses
  %i.azf = phi i32 [ %i.ayj, %bb.dk ], [ %.pre1876.i, %bb.au ] ; 2 uses
  %i.azg = phi i32 [ %i.ayk, %bb.dk ], [ %.pre1878.i, %bb.au ] ; 2 uses
  %i.azh = phi i32 [ %i.ayl, %bb.dk ], [ %.pre1880.i, %bb.au ] ; 2 uses
  %i.azi = phi i32 [ %i.aym, %bb.dk ], [ %.pre1882.i, %bb.au ] ; 2 uses
  %i.azj = phi ptr [ %i.ayn, %bb.dk ], [ %.pre1884.i, %bb.au ] ; 2 uses
  %i.azk = phi ptr [ %i.ayo, %bb.dk ], [ %.pre1886.i, %bb.au ] ; 2 uses
  %i.azl = phi ptr [ %i.ayp, %bb.dk ], [ %.pre1888.i, %bb.au ] ; 2 uses
  %.11156.i = phi i32 [ %.01155.i, %bb.dk ], [ %.pre1870.i, %bb.au ]
  %.41036.i = phi i32 [ %.31035.i, %bb.dk ], [ %.pre1852.i, %bb.au ] ; 2 uses
  %.51015.i = phi i32 [ %.41014.i, %bb.dk ], [ %.pre1850.i, %bb.au ] ; 2 uses
  %.6989.i = phi i32 [ %.5988.i, %bb.dk ], [ %.pre1848.i, %bb.au ] ; 2 uses
  %.1965.i = phi i32 [ %.0964.i, %bb.dk ], [ %.pre1846.i, %bb.au ] ; 2 uses
  %.10945.i = phi i32 [ %.9944.i, %bb.dk ], [ %.pre1844.i, %bb.au ] ; 2 uses
  %.14.i = phi i32 [ %.13.i, %bb.dk ], [ %.pre.i36, %bb.au ]
  store i32 33, ptr %i.g, align 8, !tbaa !19
  %.promoted1633.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %i.azm = icmp sgt i32 %.promoted1633.i, 4
  br i1 %i.azm, label %.._crit_edge1636_crit_edge.i, label %.lr.ph1635.i

.._crit_edge1636_crit_edge.i:                     ; preds = %bb.dl
  %.pre1946.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1636.i

.lr.ph1635.i:                                     ; preds = %bb.dl
  %i.azn = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 8 ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azn, i64 12 ; 2 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azn, i64 16 ; 2 uses
  %.promoted1639.i = load i32, ptr %i.azo, align 8, !tbaa !76
  br label %bb.dm

._crit_edge1636.i:                                ; preds = %bb.dp, %.._crit_edge1636_crit_edge.i
  %i.azr = phi i32 [ %.pre1946.i, %.._crit_edge1636_crit_edge.i ], [ %i.bad, %bb.dp ]
  %.lcssa1421.i = phi i32 [ %.promoted1633.i, %.._crit_edge1636_crit_edge.i ], [ %i.bae, %bb.dp ]
  %i.azs = add nsw i32 %.lcssa1421.i, -5          ; 2 uses
  %i.azt = lshr i32 %i.azr, %i.azs
  %i.azu = and i32 %i.azt, 31
  store i32 %i.azs, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  br label %bb.dq

bb.dm:                                            ; preds = %bb.dp, %.lr.ph1635.i
  %i.azv = phi i32 [ %.promoted1639.i, %.lr.ph1635.i ], [ %i.bag, %bb.dp ] ; 2 uses
  %i.azw = phi i32 [ %.promoted1633.i, %.lr.ph1635.i ], [ %i.bae, %bb.dp ] ; 2 uses
  %i.azx = icmp eq i32 %i.azv, 0
  br i1 %i.azx, label %BZ2_decompress.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.azy = load i32, ptr %i.v, align 8, !tbaa !21
  %i.azz = shl i32 %i.azy, 8
  %i.baa = load ptr, ptr %i.azn, align 8, !tbaa !77 ; 2 uses
  %i.bab = load i8, ptr %i.baa, align 1, !tbaa !34
  %i.bac = zext i8 %i.bab to i32
  %i.bad = or disjoint i32 %i.azz, %i.bac         ; 2 uses
  store i32 %i.bad, ptr %i.v, align 8, !tbaa !21
  %i.bae = add nsw i32 %i.azw, 8                  ; 3 uses
  store i32 %i.bae, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.baf = getelementptr inbounds nuw i8, ptr %i.baa, i64 1
  store ptr %i.baf, ptr %i.azn, align 8, !tbaa !77
  %i.bag = add i32 %i.azv, -1                     ; 2 uses
  store i32 %i.bag, ptr %i.azo, align 8, !tbaa !76
  %i.bah = load i32, ptr %i.azp, align 4, !tbaa !23
  %i.bai = add i32 %i.bah, 1                      ; 2 uses
  store i32 %i.bai, ptr %i.azp, align 4, !tbaa !23
  %i.baj = icmp eq i32 %i.bai, 0
  br i1 %i.baj, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.bak = load i32, ptr %i.azq, align 8, !tbaa !24
  %i.bal = add i32 %i.bak, 1
  store i32 %i.bal, ptr %i.azq, align 8, !tbaa !24
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.bam = icmp sgt i32 %i.azw, -4
  br i1 %i.bam, label %._crit_edge1636.i, label %bb.dm

bb.dq:                                            ; preds = %bb.ec, %._crit_edge1636.i
  %i.ban = phi i32 [ %i.ayv, %._crit_edge1636.i ], [ %i.bbx, %bb.ec ] ; 2 uses
  %i.bao = phi i32 [ %i.ayw, %._crit_edge1636.i ], [ %i.bby, %bb.ec ] ; 2 uses
  %i.bap = phi i32 [ %i.ayx, %._crit_edge1636.i ], [ %i.bbz, %bb.ec ] ; 2 uses
  %i.baq = phi i32 [ %i.ayy, %._crit_edge1636.i ], [ %i.bca, %bb.ec ] ; 2 uses
  %i.bar = phi i32 [ %i.ayz, %._crit_edge1636.i ], [ %i.bcb, %bb.ec ] ; 2 uses
  %i.bas = phi i32 [ %i.aza, %._crit_edge1636.i ], [ %i.bcc, %bb.ec ] ; 2 uses
  %i.bat = phi i32 [ %i.azb, %._crit_edge1636.i ], [ %i.bcd, %bb.ec ] ; 2 uses
  %i.bau = phi i32 [ %i.azc, %._crit_edge1636.i ], [ %i.bce, %bb.ec ] ; 2 uses
  %i.bav = phi i32 [ %i.azd, %._crit_edge1636.i ], [ %i.bcf, %bb.ec ] ; 2 uses
  %i.baw = phi i32 [ %i.aze, %._crit_edge1636.i ], [ %i.bcg, %bb.ec ] ; 2 uses
  %i.bax = phi i32 [ %i.azf, %._crit_edge1636.i ], [ %i.bch, %bb.ec ] ; 2 uses
  %i.bay = phi i32 [ %i.azg, %._crit_edge1636.i ], [ %i.bci, %bb.ec ] ; 2 uses
  %i.baz = phi i32 [ %i.azh, %._crit_edge1636.i ], [ %i.bcj, %bb.ec ] ; 2 uses
  %i.bba = phi i32 [ %i.azi, %._crit_edge1636.i ], [ %i.bck, %bb.ec ] ; 2 uses
  %i.bbb = phi ptr [ %i.azj, %._crit_edge1636.i ], [ %i.bcl, %bb.ec ] ; 2 uses
  %i.bbc = phi ptr [ %i.azk, %._crit_edge1636.i ], [ %i.bcm, %bb.ec ] ; 2 uses
  %i.bbd = phi ptr [ %i.azl, %._crit_edge1636.i ], [ %i.bcn, %bb.ec ] ; 2 uses
  %.21157.i = phi i32 [ %i.azu, %._crit_edge1636.i ], [ %.41159.i, %bb.ec ] ; 2 uses
  %.51037.i = phi i32 [ %.41036.i, %._crit_edge1636.i ], [ %.71039.i, %bb.ec ] ; 2 uses
  %.61016.i = phi i32 [ %.51015.i, %._crit_edge1636.i ], [ %.81018.i, %bb.ec ] ; 2 uses
  %.7990.i = phi i32 [ %.6989.i, %._crit_edge1636.i ], [ %.9992.i, %bb.ec ] ; 3 uses
  %.2966.i = phi i32 [ %.1965.i, %._crit_edge1636.i ], [ %.4968.i, %bb.ec ] ; 2 uses
  %.11946.i = phi i32 [ %.10945.i, %._crit_edge1636.i ], [ %.13948.i, %bb.ec ] ; 2 uses
  %.15.i = phi i32 [ 0, %._crit_edge1636.i ], [ %i.bfo, %bb.ec ] ; 3 uses
  %i.bbe = icmp slt i32 %.15.i, %.7990.i
  br i1 %i.bbe, label %bb.dr, label %bb.ed

bb.dr:                                            ; preds = %._crit_edge1650.i, %bb.dq
  %i.bbf = phi i32 [ %i.ban, %bb.dq ], [ %i.bdq, %._crit_edge1650.i ] ; 2 uses
  %i.bbg = phi i32 [ %i.bao, %bb.dq ], [ %i.bdr, %._crit_edge1650.i ] ; 2 uses
  %i.bbh = phi i32 [ %i.bap, %bb.dq ], [ %i.bds, %._crit_edge1650.i ] ; 2 uses
  %i.bbi = phi i32 [ %i.baq, %bb.dq ], [ %i.bdt, %._crit_edge1650.i ] ; 2 uses
  %i.bbj = phi i32 [ %i.bar, %bb.dq ], [ %i.bdu, %._crit_edge1650.i ] ; 2 uses
  %i.bbk = phi i32 [ %i.bas, %bb.dq ], [ %i.bdv, %._crit_edge1650.i ] ; 2 uses
  %i.bbl = phi i32 [ %i.bat, %bb.dq ], [ %i.bdw, %._crit_edge1650.i ] ; 2 uses
  %i.bbm = phi i32 [ %i.bau, %bb.dq ], [ %i.bdx, %._crit_edge1650.i ] ; 2 uses
  %i.bbn = phi i32 [ %i.bav, %bb.dq ], [ %i.bdy, %._crit_edge1650.i ] ; 2 uses
  %i.bbo = phi i32 [ %i.baw, %bb.dq ], [ %i.bdz, %._crit_edge1650.i ] ; 2 uses
  %i.bbp = phi i32 [ %i.bax, %bb.dq ], [ %i.bea, %._crit_edge1650.i ] ; 2 uses
  %i.bbq = phi i32 [ %i.bay, %bb.dq ], [ %i.beb, %._crit_edge1650.i ] ; 2 uses
  %i.bbr = phi i32 [ %i.baz, %bb.dq ], [ %i.bec, %._crit_edge1650.i ] ; 2 uses
  %i.bbs = phi i32 [ %i.bba, %bb.dq ], [ %i.bed, %._crit_edge1650.i ] ; 2 uses
  %i.bbt = phi ptr [ %i.bbb, %bb.dq ], [ %i.bee, %._crit_edge1650.i ] ; 2 uses
  %i.bbu = phi ptr [ %i.bbc, %bb.dq ], [ %i.bef, %._crit_edge1650.i ] ; 2 uses
  %i.bbv = phi ptr [ %i.bbd, %bb.dq ], [ %i.beg, %._crit_edge1650.i ] ; 2 uses
  %.31158.i = phi i32 [ %.21157.i, %bb.dq ], [ %.61161.i, %._crit_edge1650.i ] ; 3 uses
  %.61038.i = phi i32 [ %.51037.i, %bb.dq ], [ %.81040.i, %._crit_edge1650.i ] ; 2 uses
  %.71017.i = phi i32 [ %.61016.i, %bb.dq ], [ %.91019.i, %._crit_edge1650.i ] ; 2 uses
  %.8991.i = phi i32 [ %.7990.i, %bb.dq ], [ %.10993.i, %._crit_edge1650.i ] ; 2 uses
  %.3967.i = phi i32 [ %.2966.i, %bb.dq ], [ %.5969.i, %._crit_edge1650.i ] ; 2 uses
  %.12947.i = phi i32 [ %.11946.i, %bb.dq ], [ %.14949.i, %._crit_edge1650.i ] ; 2 uses
  %.16.i = phi i32 [ %.15.i, %bb.dq ], [ %.18.i, %._crit_edge1650.i ] ; 2 uses
  %i.bbw = add i32 %.31158.i, -21
  %or.cond3.i = icmp ult i32 %i.bbw, -20
  br i1 %or.cond3.i, label %BZ2_decompress.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.au
  %i.bbx = phi i32 [ %i.bbf, %bb.dr ], [ %.pre1854.i, %bb.au ] ; 3 uses
  %i.bby = phi i32 [ %i.bbg, %bb.dr ], [ %.pre1856.i, %bb.au ] ; 3 uses
  %i.bbz = phi i32 [ %i.bbh, %bb.dr ], [ %.pre1858.i, %bb.au ] ; 3 uses
  %i.bca = phi i32 [ %i.bbi, %bb.dr ], [ %.pre1860.i, %bb.au ] ; 3 uses
  %i.bcb = phi i32 [ %i.bbj, %bb.dr ], [ %.pre1862.i, %bb.au ] ; 3 uses
  %i.bcc = phi i32 [ %i.bbk, %bb.dr ], [ %.pre1864.i, %bb.au ] ; 3 uses
  %i.bcd = phi i32 [ %i.bbl, %bb.dr ], [ %.pre1866.i, %bb.au ] ; 3 uses
  %i.bce = phi i32 [ %i.bbm, %bb.dr ], [ %.pre1868.i, %bb.au ] ; 3 uses
  %i.bcf = phi i32 [ %i.bbn, %bb.dr ], [ %.pre1872.i, %bb.au ] ; 3 uses
  %i.bcg = phi i32 [ %i.bbo, %bb.dr ], [ %.pre1874.i, %bb.au ] ; 3 uses
  %i.bch = phi i32 [ %i.bbp, %bb.dr ], [ %.pre1876.i, %bb.au ] ; 3 uses
  %i.bci = phi i32 [ %i.bbq, %bb.dr ], [ %.pre1878.i, %bb.au ] ; 3 uses
  %i.bcj = phi i32 [ %i.bbr, %bb.dr ], [ %.pre1880.i, %bb.au ] ; 3 uses
  %i.bck = phi i32 [ %i.bbs, %bb.dr ], [ %.pre1882.i, %bb.au ] ; 3 uses
  %i.bcl = phi ptr [ %i.bbt, %bb.dr ], [ %.pre1884.i, %bb.au ] ; 3 uses
  %i.bcm = phi ptr [ %i.bbu, %bb.dr ], [ %.pre1886.i, %bb.au ] ; 3 uses
  %i.bcn = phi ptr [ %i.bbv, %bb.dr ], [ %.pre1888.i, %bb.au ] ; 3 uses
  %.41159.i = phi i32 [ %.31158.i, %bb.dr ], [ %.pre1870.i, %bb.au ] ; 4 uses
  %.71039.i = phi i32 [ %.61038.i, %bb.dr ], [ %.pre1852.i, %bb.au ] ; 3 uses
  %.81018.i = phi i32 [ %.71017.i, %bb.dr ], [ %.pre1850.i, %bb.au ] ; 3 uses
  %.9992.i = phi i32 [ %.8991.i, %bb.dr ], [ %.pre1848.i, %bb.au ] ; 3 uses
  %.4968.i = phi i32 [ %.3967.i, %bb.dr ], [ %.pre1846.i, %bb.au ] ; 4 uses
  %.13948.i = phi i32 [ %.12947.i, %bb.dr ], [ %.pre1844.i, %bb.au ] ; 3 uses
  %.17.i = phi i32 [ %.16.i, %bb.dr ], [ %.pre.i36, %bb.au ] ; 4 uses
  store i32 34, ptr %i.g, align 8, !tbaa !19
  %.promoted1640.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %i.bco = icmp sgt i32 %.promoted1640.i, 0
  br i1 %i.bco, label %.._crit_edge1643_crit_edge.i, label %.lr.ph1642.i

.._crit_edge1643_crit_edge.i:                     ; preds = %bb.ds
  %.pre1948.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1643.i

.lr.ph1642.i:                                     ; preds = %bb.ds
  %i.bcp = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8 ; 2 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcp, i64 12 ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcp, i64 16 ; 2 uses
  %.promoted1646.i = load i32, ptr %i.bcq, align 8, !tbaa !76
  br label %bb.dt

._crit_edge1643.i:                                ; preds = %bb.dw, %.._crit_edge1643_crit_edge.i
  %i.bct = phi i32 [ %.pre1948.i, %.._crit_edge1643_crit_edge.i ], [ %i.bdg, %bb.dw ]
  %.lcssa1417.i = phi i32 [ %.promoted1640.i, %.._crit_edge1643_crit_edge.i ], [ %i.bdh, %bb.dw ]
  %i.bcu = add nsw i32 %.lcssa1417.i, -1          ; 3 uses
  store i32 %i.bcu, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bcv = shl nuw i32 1, %i.bcu
  %i.bcw = and i32 %i.bcv, %i.bct
  %i.bcx = icmp eq i32 %i.bcw, 0
  br i1 %i.bcx, label %bb.ec, label %bb.dx

bb.dt:                                            ; preds = %bb.dw, %.lr.ph1642.i
  %i.bcy = phi i32 [ %.promoted1646.i, %.lr.ph1642.i ], [ %i.bdj, %bb.dw ] ; 2 uses
  %i.bcz = phi i32 [ %.promoted1640.i, %.lr.ph1642.i ], [ %i.bdh, %bb.dw ] ; 2 uses
  %i.bda = icmp eq i32 %i.bcy, 0
  br i1 %i.bda, label %BZ2_decompress.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bdb = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bdc = shl i32 %i.bdb, 8
  %i.bdd = load ptr, ptr %i.bcp, align 8, !tbaa !77 ; 2 uses
  %i.bde = load i8, ptr %i.bdd, align 1, !tbaa !34
  %i.bdf = zext i8 %i.bde to i32
  %i.bdg = or disjoint i32 %i.bdc, %i.bdf         ; 2 uses
  store i32 %i.bdg, ptr %i.v, align 8, !tbaa !21
  %i.bdh = add nsw i32 %i.bcz, 8                  ; 3 uses
  store i32 %i.bdh, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdd, i64 1
  store ptr %i.bdi, ptr %i.bcp, align 8, !tbaa !77
  %i.bdj = add i32 %i.bcy, -1                     ; 2 uses
  store i32 %i.bdj, ptr %i.bcq, align 8, !tbaa !76
  %i.bdk = load i32, ptr %i.bcr, align 4, !tbaa !23
  %i.bdl = add i32 %i.bdk, 1                      ; 2 uses
  store i32 %i.bdl, ptr %i.bcr, align 4, !tbaa !23
  %i.bdm = icmp eq i32 %i.bdl, 0
  br i1 %i.bdm, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.bdn = load i32, ptr %i.bcs, align 8, !tbaa !24
  %i.bdo = add i32 %i.bdn, 1
  store i32 %i.bdo, ptr %i.bcs, align 8, !tbaa !24
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.bdp = icmp sgt i32 %i.bcz, -8
  br i1 %i.bdp, label %._crit_edge1643.i, label %bb.dt

bb.dx:                                            ; preds = %._crit_edge1643.i, %._crit_edge1949.i
  %i.bdq = phi i32 [ %i.bbx, %._crit_edge1643.i ], [ %.pre1854.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdr = phi i32 [ %i.bby, %._crit_edge1643.i ], [ %.pre1856.i, %._crit_edge1949.i ] ; 2 uses
  %i.bds = phi i32 [ %i.bbz, %._crit_edge1643.i ], [ %.pre1858.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdt = phi i32 [ %i.bca, %._crit_edge1643.i ], [ %.pre1860.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdu = phi i32 [ %i.bcb, %._crit_edge1643.i ], [ %.pre1862.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdv = phi i32 [ %i.bcc, %._crit_edge1643.i ], [ %.pre1864.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdw = phi i32 [ %i.bcd, %._crit_edge1643.i ], [ %.pre1866.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdx = phi i32 [ %i.bce, %._crit_edge1643.i ], [ %.pre1868.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdy = phi i32 [ %i.bcf, %._crit_edge1643.i ], [ %.pre1872.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdz = phi i32 [ %i.bcg, %._crit_edge1643.i ], [ %.pre1874.i, %._crit_edge1949.i ] ; 2 uses
  %i.bea = phi i32 [ %i.bch, %._crit_edge1643.i ], [ %.pre1876.i, %._crit_edge1949.i ] ; 2 uses
  %i.beb = phi i32 [ %i.bci, %._crit_edge1643.i ], [ %.pre1878.i, %._crit_edge1949.i ] ; 2 uses
  %i.bec = phi i32 [ %i.bcj, %._crit_edge1643.i ], [ %.pre1880.i, %._crit_edge1949.i ] ; 2 uses
  %i.bed = phi i32 [ %i.bck, %._crit_edge1643.i ], [ %.pre1882.i, %._crit_edge1949.i ] ; 2 uses
  %i.bee = phi ptr [ %i.bcl, %._crit_edge1643.i ], [ %.pre1884.i, %._crit_edge1949.i ] ; 2 uses
  %i.bef = phi ptr [ %i.bcm, %._crit_edge1643.i ], [ %.pre1886.i, %._crit_edge1949.i ] ; 2 uses
  %i.beg = phi ptr [ %i.bcn, %._crit_edge1643.i ], [ %.pre1888.i, %._crit_edge1949.i ] ; 2 uses
  %.promoted1647.i = phi i32 [ %i.bcu, %._crit_edge1643.i ], [ %.promoted1647.pre.i, %._crit_edge1949.i ] ; 3 uses
  %.51160.i = phi i32 [ %.41159.i, %._crit_edge1643.i ], [ %.pre1870.i, %._crit_edge1949.i ] ; 2 uses
  %.81040.i = phi i32 [ %.71039.i, %._crit_edge1643.i ], [ %.pre1852.i, %._crit_edge1949.i ] ; 2 uses
  %.91019.i = phi i32 [ %.81018.i, %._crit_edge1643.i ], [ %.pre1850.i, %._crit_edge1949.i ] ; 2 uses
  %.10993.i = phi i32 [ %.9992.i, %._crit_edge1643.i ], [ %.pre1848.i, %._crit_edge1949.i ] ; 2 uses
  %.5969.i = phi i32 [ %.4968.i, %._crit_edge1643.i ], [ %.pre1846.i, %._crit_edge1949.i ] ; 2 uses
  %.14949.i = phi i32 [ %.13948.i, %._crit_edge1643.i ], [ %.pre1844.i, %._crit_edge1949.i ] ; 2 uses
  %.18.i = phi i32 [ %.17.i, %._crit_edge1643.i ], [ %.pre.i36, %._crit_edge1949.i ] ; 2 uses
  store i32 35, ptr %i.g, align 8, !tbaa !19
  %i.beh = icmp sgt i32 %.promoted1647.i, 0
  br i1 %i.beh, label %.._crit_edge1650_crit_edge.i, label %.lr.ph1649.i

.._crit_edge1650_crit_edge.i:                     ; preds = %bb.dx
  %.pre1953.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1650.i

.lr.ph1649.i:                                     ; preds = %bb.dx
  %i.bei = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 8 ; 2 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bei, i64 12 ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bei, i64 16 ; 2 uses
  %.promoted1653.i = load i32, ptr %i.bej, align 8, !tbaa !76
  br label %bb.dy

._crit_edge1650.i:                                ; preds = %bb.eb, %.._crit_edge1650_crit_edge.i
  %i.bem = phi i32 [ %.pre1953.i, %.._crit_edge1650_crit_edge.i ], [ %i.bez, %bb.eb ]
  %.lcssa1413.i = phi i32 [ %.promoted1647.i, %.._crit_edge1650_crit_edge.i ], [ %i.bfa, %bb.eb ]
  %i.ben = add nsw i32 %.lcssa1413.i, -1          ; 2 uses
  store i32 %i.ben, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.beo = shl nuw i32 1, %i.ben
  %i.bep = and i32 %i.beo, %i.bem
  %i.beq = icmp eq i32 %i.bep, 0
  %.61161.v.i = select i1 %i.beq, i32 1, i32 -1
  %.61161.i = add nsw i32 %.61161.v.i, %.51160.i
  br label %bb.dr

bb.dy:                                            ; preds = %bb.eb, %.lr.ph1649.i
  %i.ber = phi i32 [ %.promoted1653.i, %.lr.ph1649.i ], [ %i.bfc, %bb.eb ] ; 2 uses
  %i.bes = phi i32 [ %.promoted1647.i, %.lr.ph1649.i ], [ %i.bfa, %bb.eb ] ; 2 uses
  %i.bet = icmp eq i32 %i.ber, 0
  br i1 %i.bet, label %BZ2_decompress.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.beu = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bev = shl i32 %i.beu, 8
  %i.bew = load ptr, ptr %i.bei, align 8, !tbaa !77 ; 2 uses
  %i.bex = load i8, ptr %i.bew, align 1, !tbaa !34
  %i.bey = zext i8 %i.bex to i32
  %i.bez = or disjoint i32 %i.bev, %i.bey         ; 2 uses
  store i32 %i.bez, ptr %i.v, align 8, !tbaa !21
  %i.bfa = add nsw i32 %i.bes, 8                  ; 3 uses
  store i32 %i.bfa, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bew, i64 1
  store ptr %i.bfb, ptr %i.bei, align 8, !tbaa !77
  %i.bfc = add i32 %i.ber, -1                     ; 2 uses
  store i32 %i.bfc, ptr %i.bej, align 8, !tbaa !76
  %i.bfd = load i32, ptr %i.bek, align 4, !tbaa !23
  %i.bfe = add i32 %i.bfd, 1                      ; 2 uses
  store i32 %i.bfe, ptr %i.bek, align 4, !tbaa !23
  %i.bff = icmp eq i32 %i.bfe, 0
  br i1 %i.bff, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.bfg = load i32, ptr %i.bel, align 8, !tbaa !24
  %i.bfh = add i32 %i.bfg, 1
  store i32 %i.bfh, ptr %i.bel, align 8, !tbaa !24
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.bfi = icmp sgt i32 %i.bes, -8
  br i1 %i.bfi, label %._crit_edge1650.i, label %bb.dy

bb.ec:                                            ; preds = %._crit_edge1643.i
  %i.bfj = trunc i32 %.41159.i to i8
  %i.bfk = sext i32 %.4968.i to i64
  %i.bfl = getelementptr inbounds [258 x i8], ptr %i.ac, i64 %i.bfk
  %i.bfm = sext i32 %.17.i to i64
  %i.bfn = getelementptr inbounds i8, ptr %i.bfl, i64 %i.bfm
  store i8 %i.bfj, ptr %i.bfn, align 1, !tbaa !34
  %i.bfo = add nsw i32 %.17.i, 1
  br label %bb.dq, !llvm.loop !92

bb.ed:                                            ; preds = %bb.dq
  %i.bfp = add nsw i32 %.2966.i, 1
  br label %bb.dk, !llvm.loop !93

.preheader1391.i:                                 ; preds = %CreateDecodeTables.exit.i, %.preheader1391.lr.ph.i
  %indvars.iv1747.i = phi i64 [ 0, %.preheader1391.lr.ph.i ], [ %indvars.iv.next1748.i, %CreateDecodeTables.exit.i ] ; 8 uses
  br i1 %i.ays, label %.preheader68.i.thread.i, label %.lr.ph1534.i

.preheader68.i.thread.i:                          ; preds = %.preheader1391.i
  %i.bfq = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1747.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.bfq, i8 0, i64 92, i1 false), !tbaa !4
  br label %.preheader66.i.i

.lr.ph1534.i:                                     ; preds = %.preheader1391.i
  %i.bfr = getelementptr inbounds nuw [258 x i8], ptr %i.ac, i64 %indvars.iv1747.i ; 10 uses
  br i1 %min.iters.check525, label %scalar.ph524.preheader, label %vector.body529

vector.body529:                                   ; preds = %.lr.ph1534.i, %vector.body529
  %index530 = phi i64 [ %index.next536, %vector.body529 ], [ 0, %.lr.ph1534.i ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bfy, %vector.body529 ], [ splat (i32 32), %.lr.ph1534.i ]
  %vec.phi531 = phi <4 x i32> [ %i.bfz, %vector.body529 ], [ splat (i32 32), %.lr.ph1534.i ]
  %vec.phi532 = phi <4 x i32> [ %i.bfw, %vector.body529 ], [ zeroinitializer, %.lr.ph1534.i ]
  %vec.phi533 = phi <4 x i32> [ %i.bfx, %vector.body529 ], [ zeroinitializer, %.lr.ph1534.i ]
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %index530 ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 4
  %wide.load534 = load <4 x i8>, ptr %i.bfs, align 1, !tbaa !34
  %wide.load535 = load <4 x i8>, ptr %i.bft, align 1, !tbaa !34
  %i.bfu = zext <4 x i8> %wide.load534 to <4 x i32> ; 2 uses
  %i.bfv = zext <4 x i8> %wide.load535 to <4 x i32> ; 2 uses
  %i.bfw = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi532, <4 x i32> %i.bfu) ; 2 uses
  %i.bfx = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi533, <4 x i32> %i.bfv) ; 2 uses
  %i.bfy = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.bfu) ; 2 uses
  %i.bfz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi531, <4 x i32> %i.bfv) ; 2 uses
  %index.next536 = add nuw i64 %index530, 8       ; 2 uses
  %i.bga = icmp eq i64 %index.next536, %n.vec528
  br i1 %i.bga, label %middle.block537, label %vector.body529, !llvm.loop !94

middle.block537:                                  ; preds = %vector.body529
  %rdx.minmax = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bfy, <4 x i32> %i.bfz)
  %i.bgb = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax538 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.bfw, <4 x i32> %i.bfx)
  %i.bgc = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax538) ; 2 uses
  br i1 %cmp.n539, label %.preheader69.us.i.preheader.i, label %scalar.ph524.preheader

scalar.ph524.preheader:                           ; preds = %.lr.ph1534.i, %middle.block537
  %indvars.iv1741.i.ph = phi i64 [ 0, %.lr.ph1534.i ], [ %n.vec528, %middle.block537 ]
  %.09221533.i.ph = phi i32 [ 32, %.lr.ph1534.i ], [ %i.bgb, %middle.block537 ]
  %.09251532.i.ph = phi i32 [ 0, %.lr.ph1534.i ], [ %i.bgc, %middle.block537 ]
  br label %scalar.ph524

scalar.ph524:                                     ; preds = %scalar.ph524.preheader, %scalar.ph524
  %indvars.iv1741.i = phi i64 [ %indvars.iv.next1742.i, %scalar.ph524 ], [ %indvars.iv1741.i.ph, %scalar.ph524.preheader ] ; 2 uses
  %.09221533.i = phi i32 [ %.1.i, %scalar.ph524 ], [ %.09221533.i.ph, %scalar.ph524.preheader ]
  %.09251532.i = phi i32 [ %spec.select.i, %scalar.ph524 ], [ %.09251532.i.ph, %scalar.ph524.preheader ]
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %indvars.iv1741.i
  %i.bge = load i8, ptr %i.bgd, align 1, !tbaa !34
  %i.bgf = zext i8 %i.bge to i32                  ; 2 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.09251532.i, i32 %i.bgf) ; 2 uses
  %.1.i = tail call i32 @llvm.umin.i32(i32 %.09221533.i, i32 %i.bgf) ; 2 uses
  %indvars.iv.next1742.i = add nuw nsw i64 %indvars.iv1741.i, 1 ; 2 uses
  %exitcond1746.not.i = icmp eq i64 %indvars.iv.next1742.i, %wide.trip.count.i.i
  br i1 %exitcond1746.not.i, label %.preheader69.us.i.preheader.i, label %scalar.ph524, !llvm.loop !95

.preheader69.us.i.preheader.i:                    ; preds = %scalar.ph524, %middle.block537
  %spec.select.i.lcssa = phi i32 [ %i.bgc, %middle.block537 ], [ %spec.select.i, %scalar.ph524 ] ; 2 uses
  %.1.i.lcssa = phi i32 [ %i.bgb, %middle.block537 ], [ %.1.i, %scalar.ph524 ] ; 2 uses
  %i.bgg = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %indvars.iv1747.i ; 3 uses
  br label %.preheader69.us.i.i

.preheader69.us.i.i:                              ; preds = %._crit_edge.us.i.i, %.preheader69.us.i.preheader.i
  %.05774.us.i.i = phi i32 [ %i.bhf, %._crit_edge.us.i.i ], [ %.1.i.lcssa, %.preheader69.us.i.preheader.i ] ; 5 uses
  %.05873.us.i.i = phi i32 [ %.260.us.i.i.lcssa, %._crit_edge.us.i.i ], [ 0, %.preheader69.us.i.preheader.i ] ; 2 uses
  br i1 %i.ayt, label %.epil.preheader, label %.preheader69.us.i.i.new

.preheader69.us.i.i.new:                          ; preds = %.preheader69.us.i.i, %bb.eh
  %indvars.iv.i1359.i = phi i64 [ %indvars.iv.next.i1360.i.1, %bb.eh ], [ 0, %.preheader69.us.i.i ] ; 4 uses
  %.15970.us.i.i = phi i32 [ %.260.us.i.i.1, %bb.eh ], [ %.05873.us.i.i, %.preheader69.us.i.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.eh ], [ 0, %.preheader69.us.i.i ]
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %indvars.iv.i1359.i
  %i.bgi = load i8, ptr %i.bgh, align 1, !tbaa !34
  %i.bgj = zext i8 %i.bgi to i32
  %i.bgk = icmp eq i32 %.05774.us.i.i, %i.bgj
  br i1 %i.bgk, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.preheader69.us.i.i.new
  %i.bgl = sext i32 %.15970.us.i.i to i64
  %i.bgm = getelementptr inbounds [4 x i8], ptr %i.bgg, i64 %i.bgl
  %i.bgn = trunc nuw nsw i64 %indvars.iv.i1359.i to i32
  store i32 %i.bgn, ptr %i.bgm, align 4, !tbaa !4
  %i.bgo = add nsw i32 %.15970.us.i.i, 1
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %.preheader69.us.i.i.new
  %.260.us.i.i = phi i32 [ %i.bgo, %bb.ee ], [ %.15970.us.i.i, %.preheader69.us.i.i.new ] ; 3 uses
  %indvars.iv.next.i1360.i = or disjoint i64 %indvars.iv.i1359.i, 1 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %indvars.iv.next.i1360.i
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !34
  %i.bgr = zext i8 %i.bgq to i32
  %i.bgs = icmp eq i32 %.05774.us.i.i, %i.bgr
  br i1 %i.bgs, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.bgt = sext i32 %.260.us.i.i to i64
  %i.bgu = getelementptr inbounds [4 x i8], ptr %i.bgg, i64 %i.bgt
  %i.bgv = trunc nuw nsw i64 %indvars.iv.next.i1360.i to i32
  store i32 %i.bgv, ptr %i.bgu, align 4, !tbaa !4
  %i.bgw = add nsw i32 %.260.us.i.i, 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.260.us.i.i.1 = phi i32 [ %i.bgw, %bb.eg ], [ %.260.us.i.i, %bb.ef ] ; 3 uses
  %indvars.iv.next.i1360.i.1 = add nuw nsw i64 %indvars.iv.i1359.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader69.us.i.i.new, !llvm.loop !96

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %bb.eh
  br i1 %lcmp.mod752.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader69.us.i.i
  %indvars.iv.i1359.i.epil.init = phi i64 [ 0, %.preheader69.us.i.i ], [ %indvars.iv.next.i1360.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.15970.us.i.i.epil.init = phi i32 [ %.05873.us.i.i, %.preheader69.us.i.i ], [ %.260.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod754)
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %indvars.iv.i1359.i.epil.init
  %i.bgy = load i8, ptr %i.bgx, align 1, !tbaa !34
  %i.bgz = zext i8 %i.bgy to i32
  %i.bha = icmp eq i32 %.05774.us.i.i, %i.bgz
  br i1 %i.bha, label %bb.ei, label %._crit_edge.us.i.i

bb.ei:                                            ; preds = %.epil.preheader
  %i.bhb = sext i32 %.15970.us.i.i.epil.init to i64
  %i.bhc = getelementptr inbounds [4 x i8], ptr %i.bgg, i64 %i.bhb
  %i.bhd = trunc nuw nsw i64 %indvars.iv.i1359.i.epil.init to i32
  store i32 %i.bhd, ptr %i.bhc, align 4, !tbaa !4
  %i.bhe = add nsw i32 %.15970.us.i.i.epil.init, 1
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %.epil.preheader, %bb.ei, %._crit_edge.us.i.i.unr-lcssa
  %.260.us.i.i.lcssa = phi i32 [ %.260.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bhe, %bb.ei ], [ %.15970.us.i.i.epil.init, %.epil.preheader ]
  %i.bhf = add nuw nsw i32 %.05774.us.i.i, 1
  %exitcond88.not.i.i = icmp eq i32 %.05774.us.i.i, %spec.select.i.lcssa
  br i1 %exitcond88.not.i.i, label %.preheader68.i.i, label %.preheader69.us.i.i, !llvm.loop !97

.preheader68.i.i:                                 ; preds = %._crit_edge.us.i.i
  %i.bhg = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1747.i ; 28 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.bhg, i8 0, i64 92, i1 false), !tbaa !4
  br i1 %i.ayu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.preheader66.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod756.not, label %.preheader66.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader66.loopexit.i.i.unr-lcssa, %.preheader68.i.i
  %indvars.iv92.i.i.epil.init = phi i64 [ 0, %.preheader68.i.i ], [ %indvars.iv.next93.i.i.3, %.preheader66.loopexit.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod757)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv92.i.i.epil = phi i64 [ %indvars.iv.next93.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv92.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %indvars.iv92.i.i.epil
  %i.bhi = load i8, ptr %i.bhh, align 1, !tbaa !34
  %i.bhj = zext i8 %i.bhi to i64
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bhj
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 4 ; 2 uses
  %i.bhm = load i32, ptr %i.bhl, align 4, !tbaa !4
  %i.bhn = add nsw i32 %i.bhm, 1
  store i32 %i.bhn, ptr %i.bhl, align 4, !tbaa !4
  %indvars.iv.next93.i.i.epil = add nuw nsw i64 %indvars.iv92.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter755
  br i1 %epil.iter.cmp.not, label %.preheader66.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !98

.preheader66.loopexit.i.i:                        ; preds = %.lr.ph.i.i.epil, %.preheader66.loopexit.i.i.unr-lcssa
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.bhg, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !4
  %.phi.trans.insert114.i.i = getelementptr i8, ptr %i.bhg, i64 8
  %.pre115.i.i = load i32, ptr %.phi.trans.insert114.i.i, align 4, !tbaa !4
  %.phi.trans.insert116.i.i = getelementptr i8, ptr %i.bhg, i64 12
  %.pre117.i.i = load i32, ptr %.phi.trans.insert116.i.i, align 4, !tbaa !4
  %.phi.trans.insert118.i.i = getelementptr i8, ptr %i.bhg, i64 16
  %.pre119.i.i = load i32, ptr %.phi.trans.insert118.i.i, align 4, !tbaa !4
  %.phi.trans.insert120.i.i = getelementptr i8, ptr %i.bhg, i64 20
  %.pre121.i.i = load i32, ptr %.phi.trans.insert120.i.i, align 4, !tbaa !4
  %.phi.trans.insert122.i.i = getelementptr i8, ptr %i.bhg, i64 24
  %.pre123.i.i = load i32, ptr %.phi.trans.insert122.i.i, align 4, !tbaa !4
  %.phi.trans.insert124.i.i = getelementptr i8, ptr %i.bhg, i64 28
  %.pre125.i.i = load i32, ptr %.phi.trans.insert124.i.i, align 4, !tbaa !4
  %.phi.trans.insert126.i.i = getelementptr i8, ptr %i.bhg, i64 32
  %.pre127.i.i = load i32, ptr %.phi.trans.insert126.i.i, align 4, !tbaa !4
  %.phi.trans.insert128.i.i = getelementptr i8, ptr %i.bhg, i64 36
  %.pre129.i.i = load i32, ptr %.phi.trans.insert128.i.i, align 4, !tbaa !4
  %.phi.trans.insert130.i.i = getelementptr i8, ptr %i.bhg, i64 40
  %.pre131.i.i = load i32, ptr %.phi.trans.insert130.i.i, align 4, !tbaa !4
  %.phi.trans.insert132.i.i = getelementptr i8, ptr %i.bhg, i64 44
  %.pre133.i.i = load i32, ptr %.phi.trans.insert132.i.i, align 4, !tbaa !4
  %.phi.trans.insert134.i.i = getelementptr i8, ptr %i.bhg, i64 48
  %.pre135.i.i = load i32, ptr %.phi.trans.insert134.i.i, align 4, !tbaa !4
  %.phi.trans.insert136.i.i = getelementptr i8, ptr %i.bhg, i64 52
  %.pre137.i.i = load i32, ptr %.phi.trans.insert136.i.i, align 4, !tbaa !4
  %.phi.trans.insert138.i.i = getelementptr i8, ptr %i.bhg, i64 56
  %.pre139.i.i = load i32, ptr %.phi.trans.insert138.i.i, align 4, !tbaa !4
  %.phi.trans.insert140.i.i = getelementptr i8, ptr %i.bhg, i64 60
  %.pre141.i.i = load i32, ptr %.phi.trans.insert140.i.i, align 4, !tbaa !4
  %.phi.trans.insert142.i.i = getelementptr i8, ptr %i.bhg, i64 64
  %.pre143.i.i = load i32, ptr %.phi.trans.insert142.i.i, align 4, !tbaa !4
  %.phi.trans.insert144.i.i = getelementptr i8, ptr %i.bhg, i64 68
  %.pre145.i.i = load i32, ptr %.phi.trans.insert144.i.i, align 4, !tbaa !4
  %.phi.trans.insert146.i.i = getelementptr i8, ptr %i.bhg, i64 72
  %.pre147.i.i = load i32, ptr %.phi.trans.insert146.i.i, align 4, !tbaa !4
  %.phi.trans.insert148.i.i = getelementptr i8, ptr %i.bhg, i64 76
  %.pre149.i.i = load i32, ptr %.phi.trans.insert148.i.i, align 4, !tbaa !4
  %.phi.trans.insert150.i.i = getelementptr i8, ptr %i.bhg, i64 80
  %.pre151.i.i = load i32, ptr %.phi.trans.insert150.i.i, align 4, !tbaa !4
  %.phi.trans.insert1913.i = getelementptr i8, ptr %i.bhg, i64 84
  %.pre1914.i = load i32, ptr %.phi.trans.insert1913.i, align 4, !tbaa !4
  %.phi.trans.insert1915.i = getelementptr i8, ptr %i.bhg, i64 88
  %.pre1916.i = load i32, ptr %.phi.trans.insert1915.i, align 4, !tbaa !4
  br label %.preheader66.i.i

.preheader66.i.i:                                 ; preds = %.preheader66.loopexit.i.i, %.preheader68.i.thread.i
  %.0925.lcssa20082018.i = phi i32 [ %spec.select.i.lcssa, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ] ; 4 uses
  %.0922.lcssa20102017.i = phi i32 [ %.1.i.lcssa, %.preheader66.loopexit.i.i ], [ 32, %.preheader68.i.thread.i ] ; 5 uses
  %i.bho = phi i32 [ %.pre1916.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhp = phi i32 [ %.pre1914.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhq = phi i32 [ %.pre151.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhr = phi i32 [ %.pre149.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhs = phi i32 [ %.pre147.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bht = phi i32 [ %.pre145.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhu = phi i32 [ %.pre143.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhv = phi i32 [ %.pre141.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhw = phi i32 [ %.pre139.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhx = phi i32 [ %.pre137.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhy = phi i32 [ %.pre135.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhz = phi i32 [ %.pre133.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bia = phi i32 [ %.pre131.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bib = phi i32 [ %.pre129.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bic = phi i32 [ %.pre127.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bid = phi i32 [ %.pre125.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bie = phi i32 [ %.pre123.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bif = phi i32 [ %.pre121.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.big = phi i32 [ %.pre119.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bih = phi i32 [ %.pre117.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bii = phi i32 [ %.pre115.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bij = phi i32 [ %.pre.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ] ; 2 uses
  %i.bik = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1747.i ; 28 uses
  %i.bil = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %indvars.iv1747.i ; 6 uses
  %i.bim = getelementptr i8, ptr %i.bik, i64 4
  store i32 %i.bij, ptr %i.bim, align 4, !tbaa !4
  %i.bin = getelementptr i8, ptr %i.bik, i64 8
  %i.bio = add nsw i32 %i.bij, %i.bii             ; 2 uses
  store i32 %i.bio, ptr %i.bin, align 4, !tbaa !4
  %i.bip = getelementptr i8, ptr %i.bik, i64 12
  %i.biq = add nsw i32 %i.bio, %i.bih             ; 2 uses
  store i32 %i.biq, ptr %i.bip, align 4, !tbaa !4
  %i.bir = getelementptr i8, ptr %i.bik, i64 16
  %i.bis = add nsw i32 %i.biq, %i.big             ; 2 uses
  store i32 %i.bis, ptr %i.bir, align 4, !tbaa !4
  %i.bit = getelementptr i8, ptr %i.bik, i64 20
  %i.biu = add nsw i32 %i.bis, %i.bif             ; 2 uses
  store i32 %i.biu, ptr %i.bit, align 4, !tbaa !4
  %i.biv = getelementptr i8, ptr %i.bik, i64 24
  %i.biw = add nsw i32 %i.biu, %i.bie             ; 2 uses
  store i32 %i.biw, ptr %i.biv, align 4, !tbaa !4
  %i.bix = getelementptr i8, ptr %i.bik, i64 28
  %i.biy = add nsw i32 %i.biw, %i.bid             ; 2 uses
  store i32 %i.biy, ptr %i.bix, align 4, !tbaa !4
  %i.biz = getelementptr i8, ptr %i.bik, i64 32
  %i.bja = add nsw i32 %i.biy, %i.bic             ; 2 uses
  store i32 %i.bja, ptr %i.biz, align 4, !tbaa !4
  %i.bjb = getelementptr i8, ptr %i.bik, i64 36
  %i.bjc = add nsw i32 %i.bja, %i.bib             ; 2 uses
  store i32 %i.bjc, ptr %i.bjb, align 4, !tbaa !4
  %i.bjd = getelementptr i8, ptr %i.bik, i64 40
  %i.bje = add nsw i32 %i.bjc, %i.bia             ; 2 uses
  store i32 %i.bje, ptr %i.bjd, align 4, !tbaa !4
  %i.bjf = getelementptr i8, ptr %i.bik, i64 44
  %i.bjg = add nsw i32 %i.bje, %i.bhz             ; 2 uses
  store i32 %i.bjg, ptr %i.bjf, align 4, !tbaa !4
  %i.bjh = getelementptr i8, ptr %i.bik, i64 48
  %i.bji = add nsw i32 %i.bjg, %i.bhy             ; 2 uses
  store i32 %i.bji, ptr %i.bjh, align 4, !tbaa !4
  %i.bjj = getelementptr i8, ptr %i.bik, i64 52
  %i.bjk = add nsw i32 %i.bji, %i.bhx             ; 2 uses
  store i32 %i.bjk, ptr %i.bjj, align 4, !tbaa !4
  %i.bjl = getelementptr i8, ptr %i.bik, i64 56
  %i.bjm = add nsw i32 %i.bjk, %i.bhw             ; 2 uses
  store i32 %i.bjm, ptr %i.bjl, align 4, !tbaa !4
  %i.bjn = getelementptr i8, ptr %i.bik, i64 60
  %i.bjo = add nsw i32 %i.bjm, %i.bhv             ; 2 uses
  store i32 %i.bjo, ptr %i.bjn, align 4, !tbaa !4
  %i.bjp = getelementptr i8, ptr %i.bik, i64 64
  %i.bjq = add nsw i32 %i.bjo, %i.bhu             ; 2 uses
  store i32 %i.bjq, ptr %i.bjp, align 4, !tbaa !4
  %i.bjr = getelementptr i8, ptr %i.bik, i64 68
  %i.bjs = add nsw i32 %i.bjq, %i.bht             ; 2 uses
  store i32 %i.bjs, ptr %i.bjr, align 4, !tbaa !4
  %i.bjt = getelementptr i8, ptr %i.bik, i64 72
  %i.bju = add nsw i32 %i.bjs, %i.bhs             ; 2 uses
  store i32 %i.bju, ptr %i.bjt, align 4, !tbaa !4
  %i.bjv = getelementptr i8, ptr %i.bik, i64 76
  %i.bjw = add nsw i32 %i.bju, %i.bhr             ; 2 uses
  store i32 %i.bjw, ptr %i.bjv, align 4, !tbaa !4
  %i.bjx = getelementptr i8, ptr %i.bik, i64 80
  %i.bjy = add nsw i32 %i.bjw, %i.bhq             ; 2 uses
  store i32 %i.bjy, ptr %i.bjx, align 4, !tbaa !4
  %i.bjz = getelementptr i8, ptr %i.bik, i64 84
  %i.bka = add nsw i32 %i.bjy, %i.bhp             ; 2 uses
  store i32 %i.bka, ptr %i.bjz, align 4, !tbaa !4
  %i.bkb = getelementptr i8, ptr %i.bik, i64 88
  %i.bkc = add nsw i32 %i.bka, %i.bho
  store i32 %i.bkc, ptr %i.bkb, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.bil, i8 0, i64 92, i1 false), !tbaa !4
  br i1 %i.ays, label %.preheader.i.i, label %.lr.ph82.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.preheader68.i.i, %.lr.ph.i.i
  %indvars.iv92.i.i = phi i64 [ %indvars.iv.next93.i.i.3, %.lr.ph.i.i ], [ 0, %.preheader68.i.i ] ; 5 uses
  %niter759 = phi i64 [ %niter759.next.3, %.lr.ph.i.i ], [ 0, %.preheader68.i.i ]
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %indvars.iv92.i.i
  %i.bke = load i8, ptr %i.bkd, align 1, !tbaa !34
  %i.bkf = zext i8 %i.bke to i64
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bkf
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 4 ; 2 uses
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !4
  %i.bkj = add nsw i32 %i.bki, 1
  store i32 %i.bkj, ptr %i.bkh, align 4, !tbaa !4
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %indvars.iv92.i.i
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkk, i64 1
  %i.bkm = load i8, ptr %i.bkl, align 1, !tbaa !34
  %i.bkn = zext i8 %i.bkm to i64
  %i.bko = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bkn
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 4 ; 2 uses
  %i.bkq = load i32, ptr %i.bkp, align 4, !tbaa !4
  %i.bkr = add nsw i32 %i.bkq, 1
  store i32 %i.bkr, ptr %i.bkp, align 4, !tbaa !4
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %indvars.iv92.i.i
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 2
  %i.bku = load i8, ptr %i.bkt, align 1, !tbaa !34
  %i.bkv = zext i8 %i.bku to i64
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bkv
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 4 ; 2 uses
  %i.bky = load i32, ptr %i.bkx, align 4, !tbaa !4
  %i.bkz = add nsw i32 %i.bky, 1
  store i32 %i.bkz, ptr %i.bkx, align 4, !tbaa !4
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %indvars.iv92.i.i
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 3
  %i.blc = load i8, ptr %i.blb, align 1, !tbaa !34
  %i.bld = zext i8 %i.blc to i64
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bld
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ble, i64 4 ; 2 uses
  %i.blg = load i32, ptr %i.blf, align 4, !tbaa !4
  %i.blh = add nsw i32 %i.blg, 1
  store i32 %i.blh, ptr %i.blf, align 4, !tbaa !4
  %indvars.iv.next93.i.i.3 = add nuw nsw i64 %indvars.iv92.i.i, 4 ; 2 uses
  %niter759.next.3 = add i64 %niter759, 4         ; 2 uses
  %niter759.ncmp.3 = icmp eq i64 %niter759.next.3, %unroll_iter758
  br i1 %niter759.ncmp.3, label %.preheader66.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !100

.lr.ph82.preheader.i.i:                           ; preds = %.preheader66.i.i
  %i.bli = zext nneg i32 %.0922.lcssa20102017.i to i64 ; 4 uses
  %i.blj = add nuw nsw i32 %.0925.lcssa20082018.i, 1
  %wide.trip.count107.i.i = zext nneg i32 %i.blj to i64
  %.phi.trans.insert1917.i = getelementptr inbounds nuw [4 x i8], ptr %i.bik, i64 %i.bli
  %.pre1918.i = load i32, ptr %.phi.trans.insert1917.i, align 4, !tbaa !4 ; 2 uses
  %i.blk = sub nsw i64 %wide.trip.count107.i.i, %i.bli ; 3 uses
  %xtraiter760 = and i64 %i.blk, 1
  %i.bll = icmp eq i32 %.0925.lcssa20082018.i, %.0922.lcssa20102017.i
  br i1 %i.bll, label %.lr.ph82.i.i.epil.preheader, label %.lr.ph82.preheader.i.i.new

.lr.ph82.preheader.i.i.new:                       ; preds = %.lr.ph82.preheader.i.i
  %unroll_iter764 = and i64 %i.blk, -2
  br label %.lr.ph82.i.i

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph82.i.i
  %lcmp.mod762.not = icmp eq i64 %xtraiter760, 0
  br i1 %lcmp.mod762.not, label %.preheader.i.i, label %.lr.ph82.i.i.epil.preheader

.lr.ph82.i.i.epil.preheader:                      ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph82.preheader.i.i
  %.epil.init = phi i32 [ %.pre1918.i, %.lr.ph82.preheader.i.i ], [ %i.bmn, %.preheader.i.i.loopexit.unr-lcssa ]
  %indvars.iv104.i.i.epil.init = phi i64 [ %i.bli, %.lr.ph82.preheader.i.i ], [ %indvars.iv.next105.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.081.i.i.epil.init = phi i32 [ 0, %.lr.ph82.preheader.i.i ], [ %i.bms, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod763 = trunc i64 %i.blk to i1
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.bik, i64 %indvars.iv104.i.i.epil.init
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blm, i64 4
  %i.blo = load i32, ptr %i.bln, align 4, !tbaa !4
  %i.blp = sub nsw i32 %i.blo, %.epil.init
  %i.blq = add nsw i32 %i.blp, %.081.i.i.epil.init
  %i.blr = add nsw i32 %i.blq, -1
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.bil, i64 %indvars.iv104.i.i.epil.init
  store i32 %i.blr, ptr %i.bls, align 4, !tbaa !4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph82.i.i.epil.preheader, %.preheader.i.i.loopexit.unr-lcssa, %.preheader66.i.i
  %.not63.not83.i.i = icmp samesign ult i32 %.0922.lcssa20102017.i, %.0925.lcssa20082018.i
  br i1 %.not63.not83.i.i, label %.lr.ph85.preheader.i.i, label %CreateDecodeTables.exit.i

.lr.ph85.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.blt = zext i32 %.0922.lcssa20102017.i to i64 ; 4 uses
  %wide.trip.count112.i.i = zext nneg i32 %.0925.lcssa20082018.i to i64 ; 2 uses
  %i.blu = sub nsw i64 %wide.trip.count112.i.i, %i.blt ; 3 uses
  %min.iters.check513 = icmp ult i64 %i.blu, 4
  br i1 %min.iters.check513, label %.lr.ph85.i.i.preheader, label %vector.ph514

vector.ph514:                                     ; preds = %.lr.ph85.preheader.i.i
  %n.vec516 = and i64 %i.blu, -4                  ; 3 uses
  %i.blv = add nsw i64 %n.vec516, %i.blt
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %vector.ph514
  %index518 = phi i64 [ 0, %vector.ph514 ], [ %index.next521, %vector.body517 ] ; 2 uses
  %i.blw = add i64 %index518, %i.blt              ; 2 uses
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.bil, i64 %i.blw
  %wide.load519 = load <4 x i32>, ptr %i.blx, align 4, !tbaa !4
  %i.bly = shl <4 x i32> %wide.load519, splat (i32 1)
  %i.blz = add <4 x i32> %i.bly, splat (i32 2)
  %i.bma = getelementptr inbounds nuw [4 x i8], ptr %i.bik, i64 %i.blw
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 4 ; 2 uses
  %wide.load520 = load <4 x i32>, ptr %i.bmb, align 4, !tbaa !4
  %i.bmc = sub <4 x i32> %i.blz, %wide.load520
  store <4 x i32> %i.bmc, ptr %i.bmb, align 4, !tbaa !4
  %index.next521 = add nuw i64 %index518, 4       ; 2 uses
  %i.bmd = icmp eq i64 %index.next521, %n.vec516
  br i1 %i.bmd, label %middle.block522, label %vector.body517, !llvm.loop !101

middle.block522:                                  ; preds = %vector.body517
  %cmp.n523 = icmp eq i64 %i.blu, %n.vec516
  br i1 %cmp.n523, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i.preheader

.lr.ph85.i.i.preheader:                           ; preds = %.lr.ph85.preheader.i.i, %middle.block522
  %indvars.iv109.i.i.ph = phi i64 [ %i.blt, %.lr.ph85.preheader.i.i ], [ %i.blv, %middle.block522 ]
  br label %.lr.ph85.i.i

.lr.ph82.i.i:                                     ; preds = %.lr.ph82.i.i, %.lr.ph82.preheader.i.i.new
  %i.bme = phi i32 [ %.pre1918.i, %.lr.ph82.preheader.i.i.new ], [ %i.bmn, %.lr.ph82.i.i ]
  %indvars.iv104.i.i = phi i64 [ %i.bli, %.lr.ph82.preheader.i.i.new ], [ %indvars.iv.next105.i.i.1, %.lr.ph82.i.i ] ; 3 uses
  %.081.i.i = phi i32 [ 0, %.lr.ph82.preheader.i.i.new ], [ %i.bms, %.lr.ph82.i.i ]
  %niter765 = phi i64 [ 0, %.lr.ph82.preheader.i.i.new ], [ %niter765.next.1, %.lr.ph82.i.i ]
  %indvars.iv.next105.i.i = add nuw nsw i64 %indvars.iv104.i.i, 1 ; 2 uses
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %i.bik, i64 %indvars.iv.next105.i.i
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !4 ; 2 uses
  %i.bmh = sub nsw i32 %i.bmg, %i.bme
  %i.bmi = add nsw i32 %i.bmh, %.081.i.i          ; 2 uses
  %i.bmj = add nsw i32 %i.bmi, -1
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %i.bil, i64 %indvars.iv104.i.i
  store i32 %i.bmj, ptr %i.bmk, align 4, !tbaa !4
  %i.bml = shl i32 %i.bmi, 1
  %indvars.iv.next105.i.i.1 = add nuw nsw i64 %indvars.iv104.i.i, 2 ; 3 uses
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %i.bik, i64 %indvars.iv.next105.i.i.1
  %i.bmn = load i32, ptr %i.bmm, align 4, !tbaa !4 ; 3 uses
  %i.bmo = sub nsw i32 %i.bmn, %i.bmg
  %i.bmp = add nsw i32 %i.bmo, %i.bml             ; 2 uses
  %i.bmq = add nsw i32 %i.bmp, -1
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %i.bil, i64 %indvars.iv.next105.i.i
  store i32 %i.bmq, ptr %i.bmr, align 4, !tbaa !4
  %i.bms = shl i32 %i.bmp, 1                      ; 2 uses
  %niter765.next.1 = add i64 %niter765, 2         ; 2 uses
  %niter765.ncmp.1 = icmp eq i64 %niter765.next.1, %unroll_iter764
  br i1 %niter765.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph82.i.i, !llvm.loop !102

.lr.ph85.i.i:                                     ; preds = %.lr.ph85.i.i.preheader, %.lr.ph85.i.i
  %indvars.iv109.i.i = phi i64 [ %indvars.iv.next110.i.i, %.lr.ph85.i.i ], [ %indvars.iv109.i.i.ph, %.lr.ph85.i.i.preheader ] ; 2 uses
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 3 uses
  %i.bmt = getelementptr inbounds nuw [4 x i8], ptr %i.bil, i64 %indvars.iv109.i.i
  %i.bmu = load i32, ptr %i.bmt, align 4, !tbaa !4
  %i.bmv = shl i32 %i.bmu, 1
  %i.bmw = add i32 %i.bmv, 2
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %i.bik, i64 %indvars.iv.next110.i.i ; 2 uses
  %i.bmy = load i32, ptr %i.bmx, align 4, !tbaa !4
  %i.bmz = sub i32 %i.bmw, %i.bmy
  store i32 %i.bmz, ptr %i.bmx, align 4, !tbaa !4
  %exitcond113.not.i.i = icmp eq i64 %indvars.iv.next110.i.i, %wide.trip.count112.i.i
  br i1 %exitcond113.not.i.i, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i, !llvm.loop !103

CreateDecodeTables.exit.i:                        ; preds = %.lr.ph85.i.i, %middle.block522, %.preheader.i.i
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv1747.i
  store i32 %.0922.lcssa20102017.i, ptr %i.bna, align 4, !tbaa !4
  %indvars.iv.next1748.i = add nuw nsw i64 %indvars.iv1747.i, 1 ; 2 uses
  %exitcond1752.not.i = icmp eq i64 %indvars.iv.next1748.i, %wide.trip.count1751.i
  br i1 %exitcond1752.not.i, label %._crit_edge1539.i, label %.preheader1391.i, !llvm.loop !104

._crit_edge1539.i:                                ; preds = %CreateDecodeTables.exit.i, %.preheader1392.i
  %.6970.lcssa.i = phi i32 [ 0, %.preheader1392.i ], [ %.41014.i, %CreateDecodeTables.exit.i ] ; 2 uses
  %i.bnb = load i32, ptr %i.y, align 8, !tbaa !82
  %i.bnc = load i32, ptr %i.t, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !tbaa !4
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.bb, align 1, !tbaa !34
  store i32 4080, ptr %i.bc, align 4, !tbaa !4
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.bd, align 4, !tbaa !34
  store i32 4064, ptr %i.be, align 4, !tbaa !4
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.bf, align 4, !tbaa !34
  store i32 4048, ptr %i.bg, align 4, !tbaa !4
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.bh, align 4, !tbaa !34
  store i32 4032, ptr %i.bi, align 4, !tbaa !4
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.bj, align 4, !tbaa !34
  store i32 4016, ptr %i.bk, align 4, !tbaa !4
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.bl, align 4, !tbaa !34
  store i32 4000, ptr %i.bm, align 4, !tbaa !4
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.bn, align 4, !tbaa !34
  store i32 3984, ptr %i.bo, align 4, !tbaa !4
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.bp, align 4, !tbaa !34
  store i32 3968, ptr %i.bq, align 4, !tbaa !4
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.br, align 4, !tbaa !34
  store i32 3952, ptr %i.bs, align 4, !tbaa !4
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.bt, align 4, !tbaa !34
  store i32 3936, ptr %i.bu, align 4, !tbaa !4
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.bv, align 4, !tbaa !34
  store i32 3920, ptr %i.bw, align 4, !tbaa !4
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.bx, align 4, !tbaa !34
  store i32 3904, ptr %i.by, align 4, !tbaa !4
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.bz, align 4, !tbaa !34
  store i32 3888, ptr %i.ca, align 4, !tbaa !4
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.cb, align 4, !tbaa !34
  store i32 3872, ptr %i.cc, align 4, !tbaa !4
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.cd, align 4, !tbaa !34
  store i32 3856, ptr %i.ce, align 4, !tbaa !4
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.cf, align 4, !tbaa !34
  store i32 3840, ptr %i.aj, align 4, !tbaa !4
  %i.bnd = add nsw i32 %i.bnb, 1                  ; 2 uses
  %i.bne = mul nsw i32 %i.bnc, 100000             ; 2 uses
  %i.bnf = icmp slt i32 %.31035.i, 1
  br i1 %i.bnf, label %BZ2_decompress.exit, label %bb.ej

bb.ej:                                            ; preds = %._crit_edge1539.i
  %i.bng = load i8, ptr %i.ab, align 1, !tbaa !34 ; 2 uses
  %i.bnh = zext i8 %i.bng to i64                  ; 4 uses
  %i.bni = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bnh
  %i.bnj = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bnh
  %i.bnk = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bnh
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bnh
  %i.bnm = load i32, ptr %i.bnl, align 4, !tbaa !4 ; 2 uses
  %i.bnn = zext i8 %i.bng to i32
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.au
  %i.bno = phi i32 [ %i.ayc, %bb.ej ], [ %.pre1860.i, %bb.au ] ; 3 uses
  %i.bnp = phi i32 [ %i.ayf, %bb.ej ], [ %.pre1866.i, %bb.au ] ; 3 uses
  %i.bnq = phi i32 [ %i.ayg, %bb.ej ], [ %.pre1868.i, %bb.au ] ; 3 uses
  %i.bnr = phi i32 [ %i.ayh, %bb.ej ], [ %.pre1872.i, %bb.au ] ; 3 uses
  %i.bns = phi i32 [ %i.ayj, %bb.ej ], [ %.pre1876.i, %bb.au ] ; 2 uses
  %i.bnt = phi i32 [ %i.ayk, %bb.ej ], [ %.pre1878.i, %bb.au ] ; 3 uses
  %.11258.i = phi i32 [ %i.bnn, %bb.ej ], [ %.pre1880.i, %bb.au ] ; 3 uses
  %.11243.i = phi i32 [ %i.bnm, %bb.ej ], [ %.pre1882.i, %bb.au ] ; 3 uses
  %.11228.i = phi ptr [ %i.bnk, %bb.ej ], [ %.pre1884.i, %bb.au ] ; 3 uses
  %.11213.i = phi ptr [ %i.bni, %bb.ej ], [ %.pre1886.i, %bb.au ] ; 3 uses
  %.11198.i = phi ptr [ %i.bnj, %bb.ej ], [ %.pre1888.i, %bb.au ] ; 3 uses
  %.01174.i = phi i32 [ %i.bnm, %bb.ej ], [ %.pre1874.i, %bb.au ] ; 7 uses
  %.71162.i = phi i32 [ %.01155.i, %bb.ej ], [ %.pre1870.i, %bb.au ] ; 3 uses
  %.01118.i = phi i32 [ 0, %bb.ej ], [ %.pre1864.i, %bb.au ] ; 3 uses
  %.01106.i = phi i32 [ %i.bne, %bb.ej ], [ %.pre1862.i, %bb.au ] ; 3 uses
  %.11083.i = phi i32 [ 49, %bb.ej ], [ %.pre1858.i, %bb.au ] ; 3 uses
  %.11068.i = phi i32 [ 0, %bb.ej ], [ %.pre1856.i, %bb.au ] ; 3 uses
  %.01053.i = phi i32 [ %i.bnd, %bb.ej ], [ %.pre1854.i, %bb.au ] ; 3 uses
  %.91041.i = phi i32 [ %.31035.i, %bb.ej ], [ %.pre1852.i, %bb.au ] ; 3 uses
  %.101020.i = phi i32 [ %.41014.i, %bb.ej ], [ %.pre1850.i, %bb.au ] ; 3 uses
  %.11994.i = phi i32 [ %.5988.i, %bb.ej ], [ %.pre1848.i, %bb.au ] ; 3 uses
  %.7971.i = phi i32 [ %.6970.lcssa.i, %bb.ej ], [ %.pre1846.i, %bb.au ] ; 3 uses
  %.15950.i = phi i32 [ %.9944.i, %bb.ej ], [ %.pre1844.i, %bb.au ] ; 3 uses
  %.21.i = phi i32 [ 256, %bb.ej ], [ %.pre.i36, %bb.au ] ; 3 uses
  store i32 36, ptr %i.g, align 8, !tbaa !19
  %.promoted1546.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %.not13281547.i = icmp slt i32 %.promoted1546.i, %.01174.i
  br i1 %.not13281547.i, label %.lr.ph1549.i, label %.._crit_edge1550_crit_edge.i

.._crit_edge1550_crit_edge.i:                     ; preds = %bb.ek
  %.pre1920.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1550.i

.lr.ph1549.i:                                     ; preds = %bb.ek
  %i.bnu = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 8 ; 2 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnu, i64 12 ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnu, i64 16 ; 2 uses
  %.promoted1553.i = load i32, ptr %i.bnv, align 8, !tbaa !76 ; 2 uses
  %i.bny = icmp eq i32 %.promoted1553.i, 0
  br i1 %i.bny, label %BZ2_decompress.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph1549.i
  %.promoted = load i32, ptr %i.v, align 8, !tbaa !21
  %.promoted857 = load ptr, ptr %i.bnu, align 8, !tbaa !77
  %.promoted858 = load i32, ptr %i.bnw, align 4, !tbaa !23
  br label %.lr.ph

._crit_edge1550.i:                                ; preds = %bb.en, %.._crit_edge1550_crit_edge.i
  %i.bnz = phi i32 [ %.pre1920.i, %.._crit_edge1550_crit_edge.i ], [ %i.bon, %bb.en ]
  %.lcssa1453.i = phi i32 [ %.promoted1546.i, %.._crit_edge1550_crit_edge.i ], [ %i.boo, %bb.en ]
  %i.boa = sub nsw i32 %.lcssa1453.i, %.01174.i   ; 3 uses
  %i.bob = lshr i32 %i.bnz, %i.boa
  %notmask.i = shl nsw i32 -1, %.01174.i
  %i.boc = xor i32 %notmask.i, -1
  %i.bod = and i32 %i.bob, %i.boc
  store i32 %i.boa, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  br label %bb.eo

bb.el:                                            ; preds = %bb.en
  %i.boe = icmp eq i32 %i.boq, 0
  br i1 %i.boe, label %BZ2_decompress.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.el
  %i.bof = phi i32 [ %i.bor, %bb.el ], [ %.promoted858, %.lr.ph.preheader ]
  %i.bog = phi ptr [ %i.bop, %bb.el ], [ %.promoted857, %.lr.ph.preheader ] ; 2 uses
  %i.boh = phi i32 [ %i.bon, %bb.el ], [ %.promoted, %.lr.ph.preheader ]
  %i.boi = phi i32 [ %i.boo, %bb.el ], [ %.promoted1546.i, %.lr.ph.preheader ]
  %i.boj = phi i32 [ %i.boq, %bb.el ], [ %.promoted1553.i, %.lr.ph.preheader ]
  %i.bok = shl i32 %i.boh, 8
  %i.bol = load i8, ptr %i.bog, align 1, !tbaa !34
  %i.bom = zext i8 %i.bol to i32
  %i.bon = or disjoint i32 %i.bok, %i.bom         ; 3 uses
  store i32 %i.bon, ptr %i.v, align 8, !tbaa !21
  %i.boo = add nsw i32 %i.boi, 8                  ; 4 uses
  store i32 %i.boo, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bog, i64 1 ; 2 uses
  store ptr %i.bop, ptr %i.bnu, align 8, !tbaa !77
  %i.boq = add i32 %i.boj, -1                     ; 3 uses
  store i32 %i.boq, ptr %i.bnv, align 8, !tbaa !76
  %i.bor = add i32 %i.bof, 1                      ; 3 uses
  store i32 %i.bor, ptr %i.bnw, align 4, !tbaa !23
  %i.bos = icmp eq i32 %i.bor, 0
  br i1 %i.bos, label %bb.em, label %bb.en

bb.em:                                            ; preds = %.lr.ph
  %i.bot = load i32, ptr %i.bnx, align 8, !tbaa !24
  %i.bou = add i32 %i.bot, 1
  store i32 %i.bou, ptr %i.bnx, align 8, !tbaa !24
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.lr.ph
  %.not1328.i = icmp slt i32 %i.boo, %.01174.i
  br i1 %.not1328.i, label %bb.el, label %._crit_edge1550.i

bb.eo:                                            ; preds = %._crit_edge1629.i, %._crit_edge1550.i
  %i.bov = phi i32 [ %i.bno, %._crit_edge1550.i ], [ %i.bpe, %._crit_edge1629.i ] ; 3 uses
  %i.bow = phi i32 [ %i.bnp, %._crit_edge1550.i ], [ %i.bpf, %._crit_edge1629.i ] ; 4 uses
  %i.box = phi i32 [ %i.bnq, %._crit_edge1550.i ], [ %i.bpg, %._crit_edge1629.i ] ; 4 uses
  %i.boy = phi i32 [ %i.bnr, %._crit_edge1550.i ], [ %i.bph, %._crit_edge1629.i ] ; 4 uses
  %.promoted16261942.i = phi i32 [ %i.boa, %._crit_edge1550.i ], [ %i.bpo, %._crit_edge1629.i ]
  %.01272.i = phi i32 [ %i.bnt, %._crit_edge1550.i ], [ %i.bpq, %._crit_edge1629.i ] ; 4 uses
  %.21259.i = phi i32 [ %.11258.i, %._crit_edge1550.i ], [ %.31260.i, %._crit_edge1629.i ] ; 4 uses
  %.21244.i = phi i32 [ %.11243.i, %._crit_edge1550.i ], [ %.31245.i, %._crit_edge1629.i ] ; 4 uses
  %.21229.i = phi ptr [ %.11228.i, %._crit_edge1550.i ], [ %.31230.i, %._crit_edge1629.i ] ; 5 uses
  %.21214.i = phi ptr [ %.11213.i, %._crit_edge1550.i ], [ %.31215.i, %._crit_edge1629.i ] ; 5 uses
  %.21199.i = phi ptr [ %.11198.i, %._crit_edge1550.i ], [ %.31200.i, %._crit_edge1629.i ] ; 5 uses
  %.01186.i = phi i32 [ %i.bod, %._crit_edge1550.i ], [ %i.bps, %._crit_edge1629.i ] ; 6 uses
  %.11175.i = phi i32 [ %.01174.i, %._crit_edge1550.i ], [ %.21176.i, %._crit_edge1629.i ] ; 6 uses
  %.81163.i = phi i32 [ %.71162.i, %._crit_edge1550.i ], [ %.91164.i, %._crit_edge1629.i ] ; 4 uses
  %.11119.i = phi i32 [ %.01118.i, %._crit_edge1550.i ], [ %.21120.i, %._crit_edge1629.i ] ; 4 uses
  %.11107.i = phi i32 [ %.01106.i, %._crit_edge1550.i ], [ %.21108.i, %._crit_edge1629.i ] ; 4 uses
  %.21084.i = phi i32 [ %.11083.i, %._crit_edge1550.i ], [ %.31085.i, %._crit_edge1629.i ] ; 4 uses
  %.21069.i = phi i32 [ %.11068.i, %._crit_edge1550.i ], [ %.31070.i, %._crit_edge1629.i ] ; 4 uses
  %.11054.i = phi i32 [ %.01053.i, %._crit_edge1550.i ], [ %.21055.i, %._crit_edge1629.i ] ; 4 uses
  %.101042.i = phi i32 [ %.91041.i, %._crit_edge1550.i ], [ %.111043.i, %._crit_edge1629.i ] ; 4 uses
  %.111021.i = phi i32 [ %.101020.i, %._crit_edge1550.i ], [ %.121022.i, %._crit_edge1629.i ] ; 4 uses
  %.12995.i = phi i32 [ %.11994.i, %._crit_edge1550.i ], [ %.13996.i, %._crit_edge1629.i ] ; 4 uses
  %.8972.i = phi i32 [ %.7971.i, %._crit_edge1550.i ], [ %.9973.i, %._crit_edge1629.i ] ; 4 uses
  %.16951.i = phi i32 [ %.15950.i, %._crit_edge1550.i ], [ %.17952.i, %._crit_edge1629.i ] ; 4 uses
  %.22.i = phi i32 [ %.21.i, %._crit_edge1550.i ], [ %.23.i, %._crit_edge1629.i ] ; 4 uses
  %i.boz = icmp sgt i32 %.11175.i, 20
  br i1 %i.boz, label %BZ2_decompress.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.bpa = sext i32 %.11175.i to i64              ; 2 uses
  %i.bpb = getelementptr inbounds [4 x i8], ptr %.21229.i, i64 %i.bpa
  %i.bpc = load i32, ptr %i.bpb, align 4, !tbaa !4
  %.not1329.i = icmp sgt i32 %.01186.i, %i.bpc
  br i1 %.not1329.i, label %bb.eq, label %bb.ew

bb.eq:                                            ; preds = %bb.ep
  %i.bpd = add nsw i32 %.11175.i, 1
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %._crit_edge1939.i
  %i.bpe = phi i32 [ %i.bov, %bb.eq ], [ %.pre1860.i, %._crit_edge1939.i ] ; 2 uses
  %i.bpf = phi i32 [ %i.bow, %bb.eq ], [ %.pre1866.i, %._crit_edge1939.i ] ; 2 uses
  %i.bpg = phi i32 [ %i.box, %bb.eq ], [ %.pre1868.i, %._crit_edge1939.i ] ; 2 uses
  %i.bph = phi i32 [ %i.boy, %bb.eq ], [ %.pre1872.i, %._crit_edge1939.i ] ; 2 uses
  %.promoted1626.i = phi i32 [ %.promoted16261942.i, %bb.eq ], [ %.promoted1626.pre.i, %._crit_edge1939.i ] ; 3 uses
  %.11273.i = phi i32 [ %.01272.i, %bb.eq ], [ %.pre1878.i, %._crit_edge1939.i ]
  %.31260.i = phi i32 [ %.21259.i, %bb.eq ], [ %.pre1880.i, %._crit_edge1939.i ] ; 2 uses
  %.31245.i = phi i32 [ %.21244.i, %bb.eq ], [ %.pre1882.i, %._crit_edge1939.i ] ; 2 uses
  %.31230.i = phi ptr [ %.21229.i, %bb.eq ], [ %.pre1884.i, %._crit_edge1939.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@nsis_BZ2_bzDecompress:bb.a
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brk, i64 12 ; 2 uses
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brk, i64 16 ; 2 uses
  %.promoted1597.i = load i32, ptr %i.brl, align 8, !tbaa !76 ; 2 uses
  %i.bro = icmp eq i32 %.promoted1597.i, 0
  br i1 %i.bro, label %BZ2_decompress.exit, label %.lr.ph480.preheader

.lr.ph480.preheader:                              ; preds = %.lr.ph1593.i
  %.promoted868.a = load i32, ptr %i.v, align 8, !tbaa !21
  %.promoted869 = load ptr, ptr %i.brk, align 8, !tbaa !77
  %.promoted870 = load i32, ptr %i.brm, align 4, !tbaa !23
  br label %.lr.ph480

._crit_edge1594.i:                                ; preds = %bb.fg, %.._crit_edge1594_crit_edge.i
  %i.brp = phi i32 [ %.pre1930.i, %.._crit_edge1594_crit_edge.i ], [ %i.bsd, %bb.fg ]
  %.lcssa1440.i = phi i32 [ %.promoted1590.i, %.._crit_edge1594_crit_edge.i ], [ %i.bse, %bb.fg ]
  %i.brq = sub nsw i32 %.lcssa1440.i, %.51179.i   ; 3 uses
  %i.brr = lshr i32 %i.brp, %i.brq
  %notmask1339.i = shl nsw i32 -1, %.51179.i
  %i.brs = xor i32 %notmask1339.i, -1
  %i.brt = and i32 %i.brr, %i.brs
  store i32 %i.brq, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  br label %bb.fh

bb.fe:                                            ; preds = %bb.fg
  %i.bru = icmp eq i32 %i.bsg, 0
  br i1 %i.bru, label %BZ2_decompress.exit, label %.lr.ph480

.lr.ph480:                                        ; preds = %.lr.ph480.preheader, %bb.fe
  %i.brv = phi i32 [ %i.bsh, %bb.fe ], [ %.promoted870, %.lr.ph480.preheader ]
  %i.brw = phi ptr [ %i.bsf, %bb.fe ], [ %.promoted869, %.lr.ph480.preheader ] ; 2 uses
  %i.brx = phi i32 [ %i.bsd, %bb.fe ], [ %.promoted868.a, %.lr.ph480.preheader ]
  %i.bry = phi i32 [ %i.bse, %bb.fe ], [ %.promoted1590.i, %.lr.ph480.preheader ]
  %i.brz = phi i32 [ %i.bsg, %bb.fe ], [ %.promoted1597.i, %.lr.ph480.preheader ]
  %i.bsa = shl i32 %i.brx, 8
  %i.bsb = load i8, ptr %i.brw, align 1, !tbaa !34
  %i.bsc = zext i8 %i.bsb to i32
  %i.bsd = or disjoint i32 %i.bsa, %i.bsc         ; 3 uses
  store i32 %i.bsd, ptr %i.v, align 8, !tbaa !21
  %i.bse = add nsw i32 %i.bry, 8                  ; 4 uses
  store i32 %i.bse, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.brw, i64 1 ; 2 uses
  store ptr %i.bsf, ptr %i.brk, align 8, !tbaa !77
  %i.bsg = add i32 %i.brz, -1                     ; 3 uses
  store i32 %i.bsg, ptr %i.brl, align 8, !tbaa !76
  %i.bsh = add i32 %i.brv, 1                      ; 3 uses
  store i32 %i.bsh, ptr %i.brm, align 4, !tbaa !23
  %i.bsi = icmp eq i32 %i.bsh, 0
  br i1 %i.bsi, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %.lr.ph480
  %i.bsj = load i32, ptr %i.brn, align 8, !tbaa !24
  %i.bsk = add i32 %i.bsj, 1
  store i32 %i.bsk, ptr %i.brn, align 8, !tbaa !24
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.lr.ph480
  %.not1338.i = icmp slt i32 %i.bse, %.51179.i
  br i1 %.not1338.i, label %bb.fe, label %._crit_edge1594.i

bb.fh:                                            ; preds = %._crit_edge1611.i, %._crit_edge1594.i
  %i.bsl = phi i32 [ %i.brj, %._crit_edge1594.i ], [ %i.bsr, %._crit_edge1611.i ] ; 10 uses
  %.promoted16081934.i = phi i32 [ %i.brq, %._crit_edge1594.i ], [ %i.bsy, %._crit_edge1611.i ]
  %.51277.i = phi i32 [ %.41276.i, %._crit_edge1594.i ], [ %i.bta, %._crit_edge1611.i ] ; 10 uses
  %.81265.i = phi i32 [ %.71264.i, %._crit_edge1594.i ], [ %.91266.i, %._crit_edge1611.i ] ; 10 uses
  %.81250.i = phi i32 [ %.71249.i, %._crit_edge1594.i ], [ %.91251.i, %._crit_edge1611.i ] ; 10 uses
  %.81235.i = phi ptr [ %.71234.i, %._crit_edge1594.i ], [ %.91236.i, %._crit_edge1611.i ] ; 11 uses
  %.81220.i = phi ptr [ %.71219.i, %._crit_edge1594.i ], [ %.91221.i, %._crit_edge1611.i ] ; 11 uses
  %.81205.i = phi ptr [ %.71204.i, %._crit_edge1594.i ], [ %.91206.i, %._crit_edge1611.i ] ; 11 uses
  %.51191.i = phi i32 [ %i.brt, %._crit_edge1594.i ], [ %i.btc, %._crit_edge1611.i ] ; 12 uses
  %.61180.i = phi i32 [ %.51179.i, %._crit_edge1594.i ], [ %.71181.i, %._crit_edge1611.i ] ; 12 uses
  %.131168.i = phi i32 [ %.121167.i, %._crit_edge1594.i ], [ %.141169.i, %._crit_edge1611.i ] ; 10 uses
  %.31149.i = phi i32 [ %.21148.i, %._crit_edge1594.i ], [ %.41150.i, %._crit_edge1611.i ] ; 10 uses
  %.41137.i = phi i32 [ %.31136.i, %._crit_edge1594.i ], [ %.51138.i, %._crit_edge1611.i ] ; 6 uses
  %.61124.i = phi i32 [ %.51123.i, %._crit_edge1594.i ], [ %.71125.i, %._crit_edge1611.i ] ; 10 uses
  %.61112.i = phi i32 [ %.51111.i, %._crit_edge1594.i ], [ %.71113.i, %._crit_edge1611.i ] ; 12 uses
  %.31100.i = phi i32 [ %.21099.i, %._crit_edge1594.i ], [ %.41101.i, %._crit_edge1611.i ] ; 3 uses
  %.81090.i = phi i32 [ %.71089.i, %._crit_edge1594.i ], [ %.91091.i, %._crit_edge1611.i ] ; 10 uses
  %.81075.i = phi i32 [ %.71074.i, %._crit_edge1594.i ], [ %.91076.i, %._crit_edge1611.i ] ; 10 uses
  %.61059.i = phi i32 [ %.51058.i, %._crit_edge1594.i ], [ %.71060.i, %._crit_edge1611.i ] ; 10 uses
  %.151047.i = phi i32 [ %.141046.i, %._crit_edge1594.i ], [ %.161048.i, %._crit_edge1611.i ] ; 10 uses
  %.161026.i = phi i32 [ %.151025.i, %._crit_edge1594.i ], [ %.171027.i, %._crit_edge1611.i ] ; 10 uses
  %.171000.i = phi i32 [ %.16999.i, %._crit_edge1594.i ], [ %.181001.i, %._crit_edge1611.i ] ; 10 uses
  %.13977.i = phi i32 [ %.12976.i, %._crit_edge1594.i ], [ %.14978.i, %._crit_edge1611.i ] ; 10 uses
  %.21956.i = phi i32 [ %.20955.i, %._crit_edge1594.i ], [ %.22957.i, %._crit_edge1611.i ] ; 10 uses
  %.27.i = phi i32 [ %.26.i, %._crit_edge1594.i ], [ %.28.i, %._crit_edge1611.i ] ; 10 uses
  %i.bsm = icmp sgt i32 %.61180.i, 20
  br i1 %i.bsm, label %BZ2_decompress.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bsn = sext i32 %.61180.i to i64              ; 2 uses
  %i.bso = getelementptr inbounds [4 x i8], ptr %.81235.i, i64 %i.bsn
  %i.bsp = load i32, ptr %i.bso, align 4, !tbaa !4
  %.not1340.i = icmp sgt i32 %.51191.i, %i.bsp
  br i1 %.not1340.i, label %bb.fj, label %bb.fp

bb.fj:                                            ; preds = %bb.fi
  %i.bsq = add nsw i32 %.61180.i, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %._crit_edge1931.i
  %i.bsr = phi i32 [ %i.bsl, %bb.fj ], [ %.pre1872.i, %._crit_edge1931.i ] ; 2 uses
  %.promoted1608.i = phi i32 [ %.promoted16081934.i, %bb.fj ], [ %.promoted1608.pre.i, %._crit_edge1931.i ] ; 3 uses
  %.61278.i = phi i32 [ %.51277.i, %bb.fj ], [ %.pre1878.i, %._crit_edge1931.i ]
  %.91266.i = phi i32 [ %.81265.i, %bb.fj ], [ %.pre1880.i, %._crit_edge1931.i ] ; 2 uses
  %.91251.i = phi i32 [ %.81250.i, %bb.fj ], [ %.pre1882.i, %._crit_edge1931.i ] ; 2 uses
  %.91236.i = phi ptr [ %.81235.i, %bb.fj ], [ %.pre1884.i, %._crit_edge1931.i ] ; 2 uses
  %.91221.i = phi ptr [ %.81220.i, %bb.fj ], [ %.pre1886.i, %._crit_edge1931.i ] ; 2 uses
  %.91206.i = phi ptr [ %.81205.i, %bb.fj ], [ %.pre1888.i, %._crit_edge1931.i ] ; 2 uses
  %.61192.i = phi i32 [ %.51191.i, %bb.fj ], [ %.pre1876.i, %._crit_edge1931.i ] ; 2 uses
  %.71181.i = phi i32 [ %i.bsq, %bb.fj ], [ %.pre1874.i, %._crit_edge1931.i ] ; 2 uses
  %.141169.i = phi i32 [ %.131168.i, %bb.fj ], [ %.pre1870.i, %._crit_edge1931.i ] ; 2 uses
  %.41150.i = phi i32 [ %.31149.i, %bb.fj ], [ %.pre1868.i, %._crit_edge1931.i ] ; 2 uses
  %.51138.i = phi i32 [ %.41137.i, %bb.fj ], [ %.pre1866.i, %._crit_edge1931.i ] ; 2 uses
  %.71125.i = phi i32 [ %.61124.i, %bb.fj ], [ %.pre1864.i, %._crit_edge1931.i ] ; 2 uses
  %.71113.i = phi i32 [ %.61112.i, %bb.fj ], [ %.pre1862.i, %._crit_edge1931.i ] ; 2 uses
  %.41101.i = phi i32 [ %.31100.i, %bb.fj ], [ %.pre1860.i, %._crit_edge1931.i ] ; 2 uses
  %.91091.i = phi i32 [ %.81090.i, %bb.fj ], [ %.pre1858.i, %._crit_edge1931.i ] ; 2 uses
  %.91076.i = phi i32 [ %.81075.i, %bb.fj ], [ %.pre1856.i, %._crit_edge1931.i ] ; 2 uses
  %.71060.i = phi i32 [ %.61059.i, %bb.fj ], [ %.pre1854.i, %._crit_edge1931.i ] ; 2 uses
  %.161048.i = phi i32 [ %.151047.i, %bb.fj ], [ %.pre1852.i, %._crit_edge1931.i ] ; 2 uses
  %.171027.i = phi i32 [ %.161026.i, %bb.fj ], [ %.pre1850.i, %._crit_edge1931.i ] ; 2 uses
  %.181001.i = phi i32 [ %.171000.i, %bb.fj ], [ %.pre1848.i, %._crit_edge1931.i ] ; 2 uses
  %.14978.i = phi i32 [ %.13977.i, %bb.fj ], [ %.pre1846.i, %._crit_edge1931.i ] ; 2 uses
  %.22957.i = phi i32 [ %.21956.i, %bb.fj ], [ %.pre1844.i, %._crit_edge1931.i ] ; 2 uses
  %.28.i = phi i32 [ %.27.i, %bb.fj ], [ %.pre.i36, %._crit_edge1931.i ] ; 2 uses
  store i32 39, ptr %i.g, align 8, !tbaa !19
  %i.bss = icmp sgt i32 %.promoted1608.i, 0
  br i1 %i.bss, label %.._crit_edge1611_crit_edge.i, label %.lr.ph1610.i

.._crit_edge1611_crit_edge.i:                     ; preds = %bb.fk
  %.pre1936.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1611.i

.lr.ph1610.i:                                     ; preds = %bb.fk
  %i.bst = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 8 ; 2 uses
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bst, i64 12 ; 2 uses
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bst, i64 16 ; 2 uses
  %.promoted1614.i = load i32, ptr %i.bsu, align 8, !tbaa !76
  br label %bb.fl

._crit_edge1611.i:                                ; preds = %bb.fo, %.._crit_edge1611_crit_edge.i
  %i.bsx = phi i32 [ %.pre1936.i, %.._crit_edge1611_crit_edge.i ], [ %i.btl, %bb.fo ]
  %.lcssa1432.i = phi i32 [ %.promoted1608.i, %.._crit_edge1611_crit_edge.i ], [ %i.btm, %bb.fo ]
  %i.bsy = add nsw i32 %.lcssa1432.i, -1          ; 3 uses
  %i.bsz = lshr i32 %i.bsx, %i.bsy
  %i.bta = and i32 %i.bsz, 1                      ; 2 uses
  store i32 %i.bsy, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.btb = shl i32 %.61192.i, 1
  %i.btc = or disjoint i32 %i.bta, %i.btb
  br label %bb.fh

bb.fl:                                            ; preds = %bb.fo, %.lr.ph1610.i
  %i.btd = phi i32 [ %.promoted1614.i, %.lr.ph1610.i ], [ %i.bto, %bb.fo ] ; 2 uses
  %i.bte = phi i32 [ %.promoted1608.i, %.lr.ph1610.i ], [ %i.btm, %bb.fo ] ; 2 uses
  %i.btf = icmp eq i32 %i.btd, 0
  br i1 %i.btf, label %BZ2_decompress.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.btg = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bth = shl i32 %i.btg, 8
  %i.bti = load ptr, ptr %i.bst, align 8, !tbaa !77 ; 2 uses
  %i.btj = load i8, ptr %i.bti, align 1, !tbaa !34
  %i.btk = zext i8 %i.btj to i32
  %i.btl = or disjoint i32 %i.bth, %i.btk         ; 2 uses
  store i32 %i.btl, ptr %i.v, align 8, !tbaa !21
  %i.btm = add nsw i32 %i.bte, 8                  ; 3 uses
  store i32 %i.btm, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.btn = getelementptr inbounds nuw i8, ptr %i.bti, i64 1
  store ptr %i.btn, ptr %i.bst, align 8, !tbaa !77
  %i.bto = add i32 %i.btd, -1                     ; 2 uses
  store i32 %i.bto, ptr %i.bsu, align 8, !tbaa !76
  %i.btp = load i32, ptr %i.bsv, align 4, !tbaa !23
  %i.btq = add i32 %i.btp, 1                      ; 2 uses
  store i32 %i.btq, ptr %i.bsv, align 4, !tbaa !23
  %i.btr = icmp eq i32 %i.btq, 0
  br i1 %i.btr, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.bts = load i32, ptr %i.bsw, align 8, !tbaa !24
  %i.btt = add i32 %i.bts, 1
  store i32 %i.btt, ptr %i.bsw, align 8, !tbaa !24
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.btu = icmp sgt i32 %i.bte, -8
  br i1 %i.btu, label %._crit_edge1611.i, label %bb.fl

bb.fp:                                            ; preds = %bb.fi
  %i.btv = getelementptr inbounds [4 x i8], ptr %.81220.i, i64 %i.bsn
  %i.btw = load i32, ptr %i.btv, align 4, !tbaa !4
  %i.btx = sub nsw i32 %.51191.i, %i.btw          ; 2 uses
  %or.cond1354.i = icmp ugt i32 %i.btx, 257
  br i1 %or.cond1354.i, label %BZ2_decompress.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bty = zext nneg i32 %i.btx to i64
  %i.btz = getelementptr inbounds nuw [4 x i8], ptr %.81205.i, i64 %i.bty
  %i.bua = load i32, ptr %i.btz, align 4, !tbaa !4 ; 8 uses
  %i.bub = icmp ult i32 %i.bua, 2
  br i1 %i.bub, label %bb.ez, label %bb.fr, !llvm.loop !105

bb.fr:                                            ; preds = %bb.fq
  %i.buc = add nsw i32 %.41137.i, 1               ; 5 uses
  %i.bud = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.bue = sext i32 %i.bud to i64
  %i.buf = getelementptr inbounds i8, ptr %i.ai, i64 %i.bue
  %i.bug = load i8, ptr %i.buf, align 1, !tbaa !34
  %i.buh = zext i8 %i.bug to i64
  %i.bui = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.buh
  %i.buj = load i8, ptr %i.bui, align 1, !tbaa !34 ; 3 uses
  %i.buk = zext i8 %i.buj to i64
  %i.bul = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.buk ; 2 uses
  %i.bum = load i32, ptr %i.bul, align 4, !tbaa !4
  %i.bun = add nsw i32 %i.bum, %i.buc
  store i32 %i.bun, ptr %i.bul, align 4, !tbaa !4
  %i.buo = load i8, ptr %i.h, align 4, !tbaa !27
  %.not1341.i = icmp eq i8 %i.buo, 0
  %i.bup = icmp sgt i32 %.41137.i, -1             ; 2 uses
  br i1 %.not1341.i, label %.preheader1375.i, label %.preheader1378.i

.preheader1378.i:                                 ; preds = %bb.fr
  br i1 %i.bup, label %.lr.ph1600.i, label %.loopexit1376.i

.lr.ph1600.i:                                     ; preds = %.preheader1378.i
  %i.buq = zext i8 %i.buj to i16
  %i.bur = sext i32 %.61124.i to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.61124.i, i32 %.61112.i) ; 2 uses
  %wide.trip.count1800.i = sext i32 %smax.i to i64
  br label %bb.fs

.preheader1375.i:                                 ; preds = %bb.fr
  br i1 %i.bup, label %.lr.ph1605.i, label %.loopexit1376.i

.lr.ph1605.i:                                     ; preds = %.preheader1375.i
  %i.bus = zext i8 %i.buj to i32
  %i.but = sext i32 %.61124.i to i64
  %smax1806.i = tail call i32 @llvm.smax.i32(i32 %.61124.i, i32 %.61112.i) ; 2 uses
  %wide.trip.count1807.i = sext i32 %smax1806.i to i64
  br label %bb.fu

bb.fs:                                            ; preds = %bb.ft, %.lr.ph1600.i
  %indvars.iv1796.i = phi i64 [ %i.bur, %.lr.ph1600.i ], [ %indvars.iv.next1797.i, %bb.ft ] ; 3 uses
  %.611391598.i = phi i32 [ %i.buc, %.lr.ph1600.i ], [ %i.buw, %bb.ft ] ; 3 uses
  %exitcond1801.not.i = icmp eq i64 %indvars.iv1796.i, %wide.trip.count1800.i
  br i1 %exitcond1801.not.i, label %BZ2_decompress.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.buu = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.buv = getelementptr inbounds [2 x i8], ptr %i.buu, i64 %indvars.iv1796.i
  store i16 %i.buq, ptr %i.buv, align 2, !tbaa !42
  %indvars.iv.next1797.i = add nsw i64 %indvars.iv1796.i, 1 ; 2 uses
  %i.buw = add nsw i32 %.611391598.i, -1          ; 2 uses
  %i.bux = icmp sgt i32 %.611391598.i, 1
  br i1 %i.bux, label %bb.fs, label %.loopexit1376.loopexit1687.i, !llvm.loop !106

bb.fu:                                            ; preds = %bb.fv, %.lr.ph1605.i
  %indvars.iv1802.i = phi i64 [ %i.but, %.lr.ph1605.i ], [ %indvars.iv.next1803.i, %bb.fv ] ; 3 uses
  %.711401603.i = phi i32 [ %i.buc, %.lr.ph1605.i ], [ %i.bva, %bb.fv ] ; 3 uses
  %exitcond1808.not.i = icmp eq i64 %indvars.iv1802.i, %wide.trip.count1807.i
  br i1 %exitcond1808.not.i, label %BZ2_decompress.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.buy = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.buz = getelementptr inbounds [4 x i8], ptr %i.buy, i64 %indvars.iv1802.i
  store i32 %i.bus, ptr %i.buz, align 4, !tbaa !4
  %indvars.iv.next1803.i = add nsw i64 %indvars.iv1802.i, 1 ; 2 uses
  %i.bva = add nsw i32 %.711401603.i, -1          ; 2 uses
  %i.bvb = icmp sgt i32 %.711401603.i, 1
  br i1 %i.bvb, label %bb.fu, label %.loopexit1376.loopexit.i, !llvm.loop !107

.loopexit1376.loopexit.i:                         ; preds = %bb.fv
  %i.bvc = trunc nsw i64 %indvars.iv.next1803.i to i32
  br label %.loopexit1376.i

.loopexit1376.loopexit1687.i:                     ; preds = %bb.ft
  %i.bvd = trunc nsw i64 %indvars.iv.next1797.i to i32
  br label %.loopexit1376.i

bb.fw:                                            ; preds = %bb.ey
  %.not1330.i = icmp slt i32 %.31121.i, %.31109.i
  br i1 %.not1330.i, label %bb.fx, label %BZ2_decompress.exit

bb.fx:                                            ; preds = %bb.fw
  %i.bve = add i32 %.01097.i, -1                  ; 6 uses
  %i.bvf = icmp ult i32 %.01097.i, 17
  br i1 %i.bvf, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.bvg = load i32, ptr %i.aj, align 4, !tbaa !4 ; 17 uses
  %i.bvh = add i32 %i.bvg, %i.bve
  %i.bvi = zext i32 %i.bvh to i64
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bvi
  %i.bvk = load i8, ptr %i.bvj, align 1, !tbaa !34 ; 2 uses
  %i.bvl = icmp samesign ugt i32 %i.bve, 3
  br i1 %i.bvl, label %.lr.ph1569.preheader.i, label %iter.check

.lr.ph1569.preheader.i:                           ; preds = %bb.fy
  %i.bvm = zext nneg i32 %i.bve to i64            ; 2 uses
  %i.bvn = add nsw i32 %.01097.i, -5              ; 2 uses
  %i.bvo = lshr i32 %i.bvn, 2
  %i.bvp = add nuw nsw i32 %i.bvo, 1
  %xtraiter766 = and i32 %i.bvp, 3                ; 2 uses
  %lcmp.mod767.not = icmp eq i32 %xtraiter766, 0
  br i1 %lcmp.mod767.not, label %.lr.ph1569.i.prol.loopexit, label %.lr.ph1569.i.prol

.lr.ph1569.i.prol:                                ; preds = %.lr.ph1569.preheader.i, %.lr.ph1569.i.prol
  %indvars.iv1788.i.prol = phi i64 [ %indvars.iv.next1789.i.prol, %.lr.ph1569.i.prol ], [ %i.bvm, %.lr.ph1569.preheader.i ] ; 2 uses
  %prol.iter.a = phi i32 [ %prol.iter.next, %.lr.ph1569.i.prol ], [ 0, %.lr.ph1569.preheader.i ]
  %i.bvq = trunc i64 %indvars.iv1788.i.prol to i32
  %i.bvr = add i32 %i.bvg, %i.bvq
  %i.bvs = sext i32 %i.bvr to i64
  %i.bvt = getelementptr i8, ptr %i.ai, i64 %i.bvs ; 2 uses
  %i.bvu = getelementptr i8, ptr %i.bvt, i64 -3
  %i.bvv = getelementptr i8, ptr %i.bvt, i64 -4
  %i.bvw = load <4 x i8>, ptr %i.bvv, align 1, !tbaa !34
  store <4 x i8> %i.bvw, ptr %i.bvu, align 1, !tbaa !34
  %indvars.iv.next1789.i.prol = add nsw i64 %indvars.iv1788.i.prol, -4 ; 3 uses
  %prol.iter.next = add i32 %prol.iter.a, 1       ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i32 %prol.iter.next, %xtraiter766
  br i1 %prol.iter.cmp.not.a, label %.lr.ph1569.i.prol.loopexit.unr-lcssa, label %.lr.ph1569.i.prol, !llvm.loop !108

.lr.ph1569.i.prol.loopexit.unr-lcssa:             ; preds = %.lr.ph1569.i.prol
  %i.bvx = trunc i64 %indvars.iv.next1789.i.prol to i32
  br label %.lr.ph1569.i.prol.loopexit

.lr.ph1569.i.prol.loopexit:                       ; preds = %.lr.ph1569.i.prol.loopexit.unr-lcssa, %.lr.ph1569.preheader.i
  %indvars.iv1788.i.unr = phi i64 [ %i.bvm, %.lr.ph1569.preheader.i ], [ %indvars.iv.next1789.i.prol, %.lr.ph1569.i.prol.loopexit.unr-lcssa ]
  %.lcssa712.unr = phi i32 [ poison, %.lr.ph1569.preheader.i ], [ %i.bvx, %.lr.ph1569.i.prol.loopexit.unr-lcssa ]
  %i.bvy = icmp ult i32 %i.bvn, 12
  br i1 %i.bvy, label %.preheader1384.i, label %.lr.ph1569.preheader.i.new

.lr.ph1569.preheader.i.new:                       ; preds = %.lr.ph1569.i.prol.loopexit
  %invariant.op = add i32 -4, %i.bvg
  %invariant.op859 = add i32 -8, %i.bvg
  %invariant.op861 = add i32 -12, %i.bvg
  br label %.lr.ph1569.i

.preheader1384.i:                                 ; preds = %.lr.ph1569.i, %.lr.ph1569.i.prol.loopexit
  %.lcssa712 = phi i32 [ %.lcssa712.unr, %.lr.ph1569.i.prol.loopexit ], [ %i.byy, %.lr.ph1569.i ] ; 2 uses
  %.not13311571.i = icmp eq i32 %.lcssa712, 0
  br i1 %.not13311571.i, label %._crit_edge1574.i, label %iter.check

iter.check:                                       ; preds = %.preheader1384.i, %bb.fy
  %.0923.lcssa2021.i = phi i32 [ %.lcssa712, %.preheader1384.i ], [ %i.bve, %bb.fy ] ; 8 uses
  %i.bvz = zext nneg i32 %.0923.lcssa2021.i to i64 ; 5 uses
  %i.bwa = add nsw i32 %.0923.lcssa2021.i, -1     ; 3 uses
  %i.bwb = zext i32 %i.bwa to i64
  %i.bwc = add nuw nsw i64 %i.bwb, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bwa, 7
  br i1 %min.iters.check, label %.lr.ph1573.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bwd = add i32 %.0923.lcssa2021.i, %i.bvg
  %i.bwe = add i32 %i.bvg, 1
  %i.bwf = icmp ugt i32 %i.bwe, %i.bwd
  %i.bwg = sub nsw i32 0, %.0923.lcssa2021.i
  %i.bwh = icmp ugt i32 %i.bvg, %i.bwg
  %i.bwi = or i1 %i.bwf, %i.bwh
  br i1 %i.bwi, label %.lr.ph1573.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bwj = add nsw i32 %.0923.lcssa2021.i, -1
  %i.bwk = add i32 %i.bwj, %i.bvg
  %i.bwl = zext i32 %i.bwk to i64
  %i.bwm = add i32 %.0923.lcssa2021.i, %i.bvg
  %i.bwn = zext i32 %i.bwm to i64
  %i.bwo = sub nsw i64 %i.bwl, %i.bwn
  %diff.check = icmp ult i64 %i.bwo, 32
  br i1 %diff.check, label %.lr.ph1573.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check492 = icmp ult i32 %i.bwa, 31
  br i1 %min.iters.check492, label %vec.epilog.ph, label %vector.ph493

vector.ph493:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bwc, 24
  %n.vec = and i64 %i.bwc, 8589934560             ; 4 uses
  %i.bwp = sub nsw i64 %i.bvz, %n.vec
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph493
  %index495 = phi i64 [ 0, %vector.ph493 ], [ %index.next501, %vector.body494 ] ; 2 uses
  %i.bwq = trunc i64 %index495 to i32
  %i.bwr = sub i32 %.0923.lcssa2021.i, %i.bwq
  %i.bws = add i32 %i.bvg, %i.bwr                 ; 2 uses
  %i.bwt = add i32 %i.bws, -1
  %i.bwu = zext i32 %i.bwt to i64
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bwu ; 2 uses
  %i.bww = getelementptr inbounds i8, ptr %i.bwv, i64 -15
  %i.bwx = getelementptr inbounds i8, ptr %i.bwv, i64 -31
  %wide.load496 = load <16 x i8>, ptr %i.bww, align 1, !tbaa !34
  %wide.load497 = load <16 x i8>, ptr %i.bwx, align 1, !tbaa !34
  %i.bwy = zext i32 %i.bws to i64
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bwy ; 2 uses
  %i.bxa = getelementptr inbounds i8, ptr %i.bwz, i64 -15
  %i.bxb = getelementptr inbounds i8, ptr %i.bwz, i64 -31
  store <16 x i8> %wide.load496, ptr %i.bxa, align 1, !tbaa !34
  store <16 x i8> %wide.load497, ptr %i.bxb, align 1, !tbaa !34
  %index.next501 = add nuw i64 %index495, 32      ; 2 uses
  %i.bxc = icmp eq i64 %index.next501, %n.vec
  br i1 %i.bxc, label %middle.block502, label %vector.body494, !llvm.loop !109

middle.block502:                                  ; preds = %vector.body494
  %cmp.n = icmp eq i64 %i.bwc, %n.vec
  br i1 %cmp.n, label %._crit_edge1574.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block502
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1573.i.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec504 = and i64 %i.bwc, 8589934584          ; 3 uses
  %i.bxd = sub nsw i64 %i.bvz, %n.vec504
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index505 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next509, %vec.epilog.vector.body ] ; 2 uses
  %i.bxe = trunc i64 %index505 to i32
  %i.bxf = sub i32 %.0923.lcssa2021.i, %i.bxe
  %i.bxg = add i32 %i.bvg, %i.bxf                 ; 2 uses
  %i.bxh = add i32 %i.bxg, -1
  %i.bxi = zext i32 %i.bxh to i64
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bxi
  %i.bxk = getelementptr inbounds i8, ptr %i.bxj, i64 -7
  %wide.load506 = load <8 x i8>, ptr %i.bxk, align 1, !tbaa !34
  %i.bxl = zext i32 %i.bxg to i64
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bxl
  %i.bxn = getelementptr inbounds i8, ptr %i.bxm, i64 -7
  store <8 x i8> %wide.load506, ptr %i.bxn, align 1, !tbaa !34
  %index.next509 = add nuw i64 %index505, 8       ; 2 uses
  %i.bxo = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.bxo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !110

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n510 = icmp eq i64 %i.bwc, %n.vec504
  br i1 %cmp.n510, label %._crit_edge1574.i, label %.lr.ph1573.i.preheader

.lr.ph1573.i.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1792.i.ph = phi i64 [ %i.bvz, %iter.check ], [ %i.bvz, %vector.scevcheck ], [ %i.bvz, %vector.memcheck ], [ %i.bwp, %vec.epilog.iter.check ], [ %i.bxd, %vec.epilog.middle.block ] ; 4 uses
  %i.bxp = trunc i64 %indvars.iv1792.i.ph to i32  ; 2 uses
  %xtraiter768 = and i32 %i.bxp, 1
  %lcmp.mod769.not = icmp eq i32 %xtraiter768, 0
  br i1 %lcmp.mod769.not, label %.lr.ph1573.i.prol.loopexit, label %.lr.ph1573.i.prol

.lr.ph1573.i.prol:                                ; preds = %.lr.ph1573.i.preheader
  %i.bxq = trunc nuw i64 %indvars.iv1792.i.ph to i32
  %i.bxr = add i32 %i.bvg, %i.bxq                 ; 2 uses
  %i.bxs = add i32 %i.bxr, -1
  %i.bxt = zext i32 %i.bxs to i64
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bxt
  %i.bxv = load i8, ptr %i.bxu, align 1, !tbaa !34
  %i.bxw = zext i32 %i.bxr to i64
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bxw
  store i8 %i.bxv, ptr %i.bxx, align 1, !tbaa !34
  %indvars.iv.next1793.i.prol = add nsw i64 %indvars.iv1792.i.ph, -1
  br label %.lr.ph1573.i.prol.loopexit

.lr.ph1573.i.prol.loopexit:                       ; preds = %.lr.ph1573.i.prol, %.lr.ph1573.i.preheader
  %indvars.iv1792.i.unr = phi i64 [ %indvars.iv1792.i.ph, %.lr.ph1573.i.preheader ], [ %indvars.iv.next1793.i.prol, %.lr.ph1573.i.prol ]
  %i.bxy = icmp eq i32 %i.bxp, 1
  br i1 %i.bxy, label %._crit_edge1574.i, label %.lr.ph1573.i.preheader.new

.lr.ph1573.i.preheader.new:                       ; preds = %.lr.ph1573.i.prol.loopexit
  %invariant.op863 = add i32 -1, %i.bvg
  br label %.lr.ph1573.i

.lr.ph1569.i:                                     ; preds = %.lr.ph1569.i, %.lr.ph1569.preheader.i.new
  %indvars.iv1788.i = phi i64 [ %indvars.iv1788.i.unr, %.lr.ph1569.preheader.i.new ], [ %indvars.iv.next1789.i.3, %.lr.ph1569.i ] ; 5 uses
  %i.bxz = trunc i64 %indvars.iv1788.i to i32
  %i.bya = add i32 %i.bvg, %i.bxz
  %i.byb = sext i32 %i.bya to i64
  %i.byc = getelementptr i8, ptr %i.ai, i64 %i.byb ; 2 uses
  %i.byd = getelementptr i8, ptr %i.byc, i64 -3
  %i.bye = getelementptr i8, ptr %i.byc, i64 -4
  %i.byf = load <4 x i8>, ptr %i.bye, align 1, !tbaa !34
  store <4 x i8> %i.byf, ptr %i.byd, align 1, !tbaa !34
  %i.byg = trunc i64 %indvars.iv1788.i to i32
  %.reass = add i32 %i.byg, %invariant.op
  %i.byh = sext i32 %.reass to i64
  %i.byi = getelementptr i8, ptr %i.ai, i64 %i.byh ; 2 uses
  %i.byj = getelementptr i8, ptr %i.byi, i64 -3
  %i.byk = getelementptr i8, ptr %i.byi, i64 -4
  %i.byl = load <4 x i8>, ptr %i.byk, align 1, !tbaa !34
  store <4 x i8> %i.byl, ptr %i.byj, align 1, !tbaa !34
  %i.bym = trunc i64 %indvars.iv1788.i to i32
  %.reass860 = add i32 %i.bym, %invariant.op859
  %i.byn = sext i32 %.reass860 to i64
  %i.byo = getelementptr i8, ptr %i.ai, i64 %i.byn ; 2 uses
  %i.byp = getelementptr i8, ptr %i.byo, i64 -3
  %i.byq = getelementptr i8, ptr %i.byo, i64 -4
  %i.byr = load <4 x i8>, ptr %i.byq, align 1, !tbaa !34
  store <4 x i8> %i.byr, ptr %i.byp, align 1, !tbaa !34
  %i.bys = trunc i64 %indvars.iv1788.i to i32
  %.reass862 = add i32 %i.bys, %invariant.op861
  %i.byt = sext i32 %.reass862 to i64
  %i.byu = getelementptr i8, ptr %i.ai, i64 %i.byt ; 2 uses
  %i.byv = getelementptr i8, ptr %i.byu, i64 -3
  %i.byw = getelementptr i8, ptr %i.byu, i64 -4
  %i.byx = load <4 x i8>, ptr %i.byw, align 1, !tbaa !34
  store <4 x i8> %i.byx, ptr %i.byv, align 1, !tbaa !34
  %indvars.iv.next1789.i.3 = add nsw i64 %indvars.iv1788.i, -16 ; 2 uses
  %i.byy = trunc i64 %indvars.iv.next1789.i.3 to i32 ; 2 uses
  %i.byz = icmp ugt i32 %i.byy, 3
  br i1 %i.byz, label %.lr.ph1569.i, label %.preheader1384.i, !llvm.loop !111

.lr.ph1573.i:                                     ; preds = %.lr.ph1573.i, %.lr.ph1573.i.preheader.new
  %indvars.iv1792.i = phi i64 [ %indvars.iv1792.i.unr, %.lr.ph1573.i.preheader.new ], [ %indvars.iv.next1793.i.1, %.lr.ph1573.i ] ; 3 uses
  %i.bza = trunc nuw i64 %indvars.iv1792.i to i32
  %i.bzb = add i32 %i.bvg, %i.bza                 ; 2 uses
  %i.bzc = add i32 %i.bzb, -1
  %i.bzd = zext i32 %i.bzc to i64
  %i.bze = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bzd
  %i.bzf = load i8, ptr %i.bze, align 1, !tbaa !34
  %i.bzg = zext i32 %i.bzb to i64
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bzg
  store i8 %i.bzf, ptr %i.bzh, align 1, !tbaa !34
  %i.bzi = trunc i64 %indvars.iv1792.i to i32
  %.reass864 = add i32 %i.bzi, %invariant.op863   ; 2 uses
  %i.bzj = add i32 %.reass864, -1
  %i.bzk = zext i32 %i.bzj to i64
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bzk
  %i.bzm = load i8, ptr %i.bzl, align 1, !tbaa !34
  %i.bzn = zext i32 %.reass864 to i64
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bzn
  store i8 %i.bzm, ptr %i.bzo, align 1, !tbaa !34
  %indvars.iv.next1793.i.1 = add nsw i64 %indvars.iv1792.i, -2 ; 2 uses
  %i.bzp = and i64 %indvars.iv.next1793.i.1, 4294967295
  %.not1331.i.1 = icmp eq i64 %i.bzp, 0
  br i1 %.not1331.i.1, label %._crit_edge1574.i, label %.lr.ph1573.i, !llvm.loop !112

._crit_edge1574.i:                                ; preds = %.lr.ph1573.i.prol.loopexit, %.lr.ph1573.i, %middle.block502, %vec.epilog.middle.block, %.preheader1384.i
  %i.bzq = sext i32 %i.bvg to i64
  %i.bzr = getelementptr inbounds i8, ptr %i.ai, i64 %i.bzq
  store i8 %i.bvk, ptr %i.bzr, align 1, !tbaa !34
  br label %.loopexit1387.i

bb.fz:                                            ; preds = %bb.fx
  %i.bzs = lshr i32 %i.bve, 4
  %i.bzt = and i32 %i.bve, 15                     ; 2 uses
  %i.bzu = zext nneg i32 %i.bzs to i64            ; 2 uses
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bzu ; 3 uses
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !4 ; 3 uses
  %i.bzx = add nsw i32 %i.bzw, %i.bzt
  %i.bzy = sext i32 %i.bzx to i64
  %i.bzz = getelementptr inbounds i8, ptr %i.ai, i64 %i.bzy
  %i.caa = load i8, ptr %i.bzz, align 1, !tbaa !34 ; 3 uses
  %.not1675.i = icmp eq i32 %i.bzt, 0
  br i1 %.not1675.i, label %.lr.ph1561.preheader.i, label %.lr.ph1556.preheader.i

.lr.ph1556.preheader.i:                           ; preds = %bb.fz
  %i.cab = sext i32 %i.bzw to i64
  %i.cac = add i32 %.01097.i, 15
  %i.cad = and i32 %i.cac, 15
  %i.cae = zext nneg i32 %i.cad to i64
  %i.caf = add nsw i64 %i.cab, %i.cae
  br label %.lr.ph1556.i

.lr.ph1556.i:                                     ; preds = %.lr.ph1556.i, %.lr.ph1556.preheader.i
  %indvars.iv1770.i = phi i64 [ %i.caf, %.lr.ph1556.preheader.i ], [ %indvars.iv.next1771.i, %.lr.ph1556.i ] ; 2 uses
  %i.cag = getelementptr i8, ptr %i.ai, i64 %indvars.iv1770.i ; 2 uses
  %i.cah = getelementptr i8, ptr %i.cag, i64 -1
  %i.cai = load i8, ptr %i.cah, align 1, !tbaa !34
  store i8 %i.cai, ptr %i.cag, align 1, !tbaa !34
  %indvars.iv.next1771.i = add nsw i64 %indvars.iv1770.i, -1 ; 2 uses
  %i.caj = load i32, ptr %i.bzv, align 4, !tbaa !4 ; 2 uses
  %i.cak = sext i32 %i.caj to i64
  %i.cal = icmp sgt i64 %indvars.iv.next1771.i, %i.cak
  br i1 %i.cal, label %.lr.ph1556.i, label %.lr.ph1561.preheader.i, !llvm.loop !113

.lr.ph1561.preheader.i:                           ; preds = %.lr.ph1556.i, %bb.fz
  %.lcssa1452.i = phi i32 [ %i.bzw, %bb.fz ], [ %i.caj, %.lr.ph1556.i ]
  %i.cam = add nsw i32 %.lcssa1452.i, 1
  store i32 %i.cam, ptr %i.bzv, align 4, !tbaa !4
  br label %.lr.ph1561.i

.lr.ph1561.i:                                     ; preds = %.lr.ph1561.i, %.lr.ph1561.preheader.i
  %indvars.iv1774.i = phi i64 [ %i.bzu, %.lr.ph1561.preheader.i ], [ %indvars.iv.next1775.i, %.lr.ph1561.i ] ; 3 uses
  %i.can = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1774.i ; 3 uses
  %i.cao = load i32, ptr %i.can, align 4, !tbaa !4
  %i.cap = add nsw i32 %i.cao, -1                 ; 2 uses
  store i32 %i.cap, ptr %i.can, align 4, !tbaa !4
  %i.caq = getelementptr i8, ptr %i.can, i64 -4
  %i.car = load i32, ptr %i.caq, align 4, !tbaa !4
  %i.cas = sext i32 %i.car to i64
  %i.cat = getelementptr i8, ptr %i.ai, i64 %i.cas
  %i.cau = getelementptr i8, ptr %i.cat, i64 15
  %i.cav = load i8, ptr %i.cau, align 1, !tbaa !34
  %i.caw = sext i32 %i.cap to i64
  %i.cax = getelementptr inbounds i8, ptr %i.ai, i64 %i.caw
  store i8 %i.cav, ptr %i.cax, align 1, !tbaa !34
  %indvars.iv.next1775.i = add nsw i64 %indvars.iv1774.i, -1
  %i.cay = icmp samesign ugt i64 %indvars.iv1774.i, 1
  br i1 %i.cay, label %.lr.ph1561.i, label %._crit_edge1562.i, !llvm.loop !114

._crit_edge1562.i:                                ; preds = %.lr.ph1561.i
  %i.caz = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.cba = add nsw i32 %i.caz, -1                 ; 2 uses
  store i32 %i.cba, ptr %i.aj, align 4, !tbaa !4
  %i.cbb = sext i32 %i.cba to i64
  %i.cbc = getelementptr inbounds i8, ptr %i.ai, i64 %i.cbb
  store i8 %i.caa, ptr %i.cbc, align 1, !tbaa !34
  %i.cbd = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.cbe = icmp eq i32 %i.cbd, 0
  br i1 %i.cbe, label %.preheader1385.i, label %.loopexit1387.i

.preheader1385.i:                                 ; preds = %._crit_edge1562.i, %.preheader1385.i
  %indvars.iv1782.i = phi i64 [ %indvars.iv.next1783.i, %.preheader1385.i ], [ 15, %._crit_edge1562.i ] ; 3 uses
  %indvars.iv1780.i = phi i64 [ %indvars.iv.next1781.i, %.preheader1385.i ], [ 4095, %._crit_edge1562.i ] ; 3 uses
  %i.cbf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1782.i ; 17 uses
  %i.cbg = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cbh = sext i32 %i.cbg to i64
  %i.cbi = getelementptr i8, ptr %i.ai, i64 %i.cbh
  %i.cbj = getelementptr i8, ptr %i.cbi, i64 15
  %i.cbk = load i8, ptr %i.cbj, align 1, !tbaa !34
  %i.cbl = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv1780.i ; 15 uses
  store i8 %i.cbk, ptr %i.cbl, align 1, !tbaa !34
  %i.cbm = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cbn = sext i32 %i.cbm to i64
  %i.cbo = getelementptr i8, ptr %i.ai, i64 %i.cbn
  %i.cbp = getelementptr i8, ptr %i.cbo, i64 14
  %i.cbq = load i8, ptr %i.cbp, align 1, !tbaa !34
  %i.cbr = getelementptr i8, ptr %i.cbl, i64 -1
  store i8 %i.cbq, ptr %i.cbr, align 1, !tbaa !34
  %i.cbs = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cbt = sext i32 %i.cbs to i64
  %i.cbu = getelementptr i8, ptr %i.ai, i64 %i.cbt
  %i.cbv = getelementptr i8, ptr %i.cbu, i64 13
  %i.cbw = load i8, ptr %i.cbv, align 1, !tbaa !34
  %i.cbx = getelementptr i8, ptr %i.cbl, i64 -2
  store i8 %i.cbw, ptr %i.cbx, align 1, !tbaa !34
  %i.cby = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cbz = sext i32 %i.cby to i64
  %i.cca = getelementptr i8, ptr %i.ai, i64 %i.cbz
  %i.ccb = getelementptr i8, ptr %i.cca, i64 12
  %i.ccc = load i8, ptr %i.ccb, align 1, !tbaa !34
  %i.ccd = getelementptr i8, ptr %i.cbl, i64 -3
  store i8 %i.ccc, ptr %i.ccd, align 1, !tbaa !34
  %i.cce = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.ccf = sext i32 %i.cce to i64
  %i.ccg = getelementptr i8, ptr %i.ai, i64 %i.ccf
  %i.cch = getelementptr i8, ptr %i.ccg, i64 11
  %i.cci = load i8, ptr %i.cch, align 1, !tbaa !34
  %i.ccj = getelementptr i8, ptr %i.cbl, i64 -4
  store i8 %i.cci, ptr %i.ccj, align 1, !tbaa !34
  %i.cck = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.ccl = sext i32 %i.cck to i64
  %i.ccm = getelementptr i8, ptr %i.ai, i64 %i.ccl
  %i.ccn = getelementptr i8, ptr %i.ccm, i64 10
  %i.cco = load i8, ptr %i.ccn, align 1, !tbaa !34
  %i.ccp = getelementptr i8, ptr %i.cbl, i64 -5
  store i8 %i.cco, ptr %i.ccp, align 1, !tbaa !34
  %i.ccq = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.ccr = sext i32 %i.ccq to i64
  %i.ccs = getelementptr i8, ptr %i.ai, i64 %i.ccr
  %i.cct = getelementptr i8, ptr %i.ccs, i64 9
  %i.ccu = load i8, ptr %i.cct, align 1, !tbaa !34
  %i.ccv = getelementptr i8, ptr %i.cbl, i64 -6
  store i8 %i.ccu, ptr %i.ccv, align 1, !tbaa !34
  %i.ccw = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.ccx = sext i32 %i.ccw to i64
  %i.ccy = getelementptr i8, ptr %i.ai, i64 %i.ccx
  %i.ccz = getelementptr i8, ptr %i.ccy, i64 8
  %i.cda = load i8, ptr %i.ccz, align 1, !tbaa !34
  %i.cdb = getelementptr i8, ptr %i.cbl, i64 -7
  store i8 %i.cda, ptr %i.cdb, align 1, !tbaa !34
  %i.cdc = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = getelementptr i8, ptr %i.ai, i64 %i.cdd
  %i.cdf = getelementptr i8, ptr %i.cde, i64 7
  %i.cdg = load i8, ptr %i.cdf, align 1, !tbaa !34
  %i.cdh = getelementptr i8, ptr %i.cbl, i64 -8
  store i8 %i.cdg, ptr %i.cdh, align 1, !tbaa !34
  %i.cdi = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cdj = sext i32 %i.cdi to i64
  %i.cdk = getelementptr i8, ptr %i.ai, i64 %i.cdj
  %i.cdl = getelementptr i8, ptr %i.cdk, i64 6
  %i.cdm = load i8, ptr %i.cdl, align 1, !tbaa !34
  %i.cdn = getelementptr i8, ptr %i.cbl, i64 -9
  store i8 %i.cdm, ptr %i.cdn, align 1, !tbaa !34
  %i.cdo = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cdp = sext i32 %i.cdo to i64
  %i.cdq = getelementptr i8, ptr %i.ai, i64 %i.cdp
  %i.cdr = getelementptr i8, ptr %i.cdq, i64 5
  %i.cds = load i8, ptr %i.cdr, align 1, !tbaa !34
  %i.cdt = getelementptr i8, ptr %i.cbl, i64 -10
  store i8 %i.cds, ptr %i.cdt, align 1, !tbaa !34
  %i.cdu = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cdv = sext i32 %i.cdu to i64
  %i.cdw = getelementptr i8, ptr %i.ai, i64 %i.cdv
  %i.cdx = getelementptr i8, ptr %i.cdw, i64 4
  %i.cdy = load i8, ptr %i.cdx, align 1, !tbaa !34
  %i.cdz = getelementptr i8, ptr %i.cbl, i64 -11
  store i8 %i.cdy, ptr %i.cdz, align 1, !tbaa !34
  %i.cea = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.ceb = sext i32 %i.cea to i64
  %i.cec = getelementptr i8, ptr %i.ai, i64 %i.ceb
  %i.ced = getelementptr i8, ptr %i.cec, i64 3
  %i.cee = load i8, ptr %i.ced, align 1, !tbaa !34
  %i.cef = getelementptr i8, ptr %i.cbl, i64 -12
  store i8 %i.cee, ptr %i.cef, align 1, !tbaa !34
  %i.ceg = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.ceh = sext i32 %i.ceg to i64
  %i.cei = getelementptr i8, ptr %i.ai, i64 %i.ceh
  %i.cej = getelementptr i8, ptr %i.cei, i64 2
  %i.cek = load i8, ptr %i.cej, align 1, !tbaa !34
  %i.cel = getelementptr i8, ptr %i.cbl, i64 -13
  store i8 %i.cek, ptr %i.cel, align 1, !tbaa !34
  %i.cem = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cen = sext i32 %i.cem to i64
  %i.ceo = getelementptr i8, ptr %i.ai, i64 %i.cen
  %i.cep = getelementptr i8, ptr %i.ceo, i64 1
  %i.ceq = load i8, ptr %i.cep, align 1, !tbaa !34
  %i.cer = getelementptr i8, ptr %i.cbl, i64 -14
  store i8 %i.ceq, ptr %i.cer, align 1, !tbaa !34
  %indvars.iv.next1777.14.i = add nsw i64 %indvars.iv1780.i, -15 ; 2 uses
  %i.ces = load i32, ptr %i.cbf, align 4, !tbaa !4
  %i.cet = sext i32 %i.ces to i64
  %i.ceu = getelementptr inbounds i8, ptr %i.ai, i64 %i.cet
  %i.cev = load i8, ptr %i.ceu, align 1, !tbaa !34
  %i.cew = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv.next1777.14.i
  store i8 %i.cev, ptr %i.cew, align 1, !tbaa !34
  %i.cex = trunc nsw i64 %indvars.iv.next1777.14.i to i32
  %indvars.iv.next1781.i = add nsw i64 %indvars.iv1780.i, -16
  store i32 %i.cex, ptr %i.cbf, align 4, !tbaa !4
  %indvars.iv.next1783.i = add nsw i64 %indvars.iv1782.i, -1
  %.not2003.i = icmp eq i64 %indvars.iv1782.i, 0
  br i1 %.not2003.i, label %.loopexit1387.i, label %.preheader1385.i, !llvm.loop !115

.loopexit1387.i:                                  ; preds = %.preheader1385.i, %._crit_edge1562.i, %._crit_edge1574.i
  %.0920.i = phi i8 [ %i.bvk, %._crit_edge1574.i ], [ %i.caa, %._crit_edge1562.i ], [ %i.caa, %.preheader1385.i ]
  %i.cey = zext i8 %.0920.i to i64
  %i.cez = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cey
  %i.cfa = load i8, ptr %i.cez, align 1, !tbaa !34 ; 3 uses
  %i.cfb = zext i8 %i.cfa to i64
  %i.cfc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cfb ; 2 uses
  %i.cfd = load i32, ptr %i.cfc, align 4, !tbaa !4
  %i.cfe = add nsw i32 %i.cfd, 1
  store i32 %i.cfe, ptr %i.cfc, align 4, !tbaa !4
  %i.cff = load i8, ptr %i.h, align 4, !tbaa !27
  %.not1332.i = icmp eq i8 %i.cff, 0
  %i.cfg = sext i32 %.31121.i to i64              ; 2 uses
  br i1 %.not1332.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.loopexit1387.i
  %i.cfh = zext i8 %i.cfa to i16
  %i.cfi = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.cfj = getelementptr inbounds [2 x i8], ptr %i.cfi, i64 %i.cfg
  store i16 %i.cfh, ptr %i.cfj, align 2, !tbaa !42
  br label %bb.gc

bb.gb:                                            ; preds = %.loopexit1387.i
  %i.cfk = zext i8 %i.cfa to i32
  %i.cfl = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.cfm = getelementptr inbounds [4 x i8], ptr %i.cfl, i64 %i.cfg
  store i32 %i.cfk, ptr %i.cfm, align 4, !tbaa !4
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.cfn = add nsw i32 %.31121.i, 1               ; 2 uses
  %i.cfo = icmp eq i32 %.41086.i, 0
  br i1 %i.cfo, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.cfp = add nsw i32 %.41071.i, 1               ; 4 uses
  %.not1333.i = icmp slt i32 %i.cfp, %.121044.i
  br i1 %.not1333.i, label %bb.ge, label %BZ2_decompress.exit

bb.ge:                                            ; preds = %bb.gd
  %i.cfq = sext i32 %i.cfp to i64
  %i.cfr = getelementptr inbounds i8, ptr %i.ab, i64 %i.cfq
  %i.cfs = load i8, ptr %i.cfr, align 1, !tbaa !34 ; 2 uses
  %i.cft = zext i8 %i.cfs to i32
  %i.cfu = zext i8 %i.cfs to i64                  ; 4 uses
  %i.cfv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cfu
  %i.cfw = load i32, ptr %i.cfv, align 4, !tbaa !4
  %i.cfx = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.cfu
  %i.cfy = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.cfu
  %i.cfz = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.cfu
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gc
  %.101267.i = phi i32 [ %i.cft, %bb.ge ], [ %.41261.i, %bb.gc ]
  %.101252.i = phi i32 [ %i.cfw, %bb.ge ], [ %.41246.i, %bb.gc ] ; 2 uses
  %.101237.i = phi ptr [ %i.cfx, %bb.ge ], [ %.41231.i, %bb.gc ]
  %.101222.i = phi ptr [ %i.cfz, %bb.ge ], [ %.41216.i, %bb.gc ]
  %.101207.i = phi ptr [ %i.cfy, %bb.ge ], [ %.41201.i, %bb.gc ]
  %.101092.i = phi i32 [ 50, %bb.ge ], [ %.41086.i, %bb.gc ]
  %.101077.i = phi i32 [ %i.cfp, %bb.ge ], [ %.41071.i, %bb.gc ]
  %i.cga = add nsw i32 %.101092.i, -1
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.au
  %i.cgb = phi i32 [ %i.bqr, %bb.gf ], [ %.pre1872.i, %bb.au ] ; 3 uses
  %.71279.i = phi i32 [ %.21274.i, %bb.gf ], [ %.pre1878.i, %bb.au ] ; 3 uses
  %.111268.i = phi i32 [ %.101267.i, %bb.gf ], [ %.pre1880.i, %bb.au ] ; 3 uses
  %.111253.i = phi i32 [ %.101252.i, %bb.gf ], [ %.pre1882.i, %bb.au ] ; 3 uses
  %.111238.i = phi ptr [ %.101237.i, %bb.gf ], [ %.pre1884.i, %bb.au ] ; 3 uses
  %.111223.i = phi ptr [ %.101222.i, %bb.gf ], [ %.pre1886.i, %bb.au ] ; 3 uses
  %.111208.i = phi ptr [ %.101207.i, %bb.gf ], [ %.pre1888.i, %bb.au ] ; 3 uses
  %.71193.i = phi i32 [ %.21188.i, %bb.gf ], [ %.pre1876.i, %bb.au ] ; 2 uses
  %.81182.i = phi i32 [ %.101252.i, %bb.gf ], [ %.pre1874.i, %bb.au ] ; 7 uses
  %.151170.i = phi i32 [ %.101165.i, %bb.gf ], [ %.pre1870.i, %bb.au ] ; 3 uses
  %.51151.i = phi i32 [ %.01146.i, %bb.gf ], [ %.pre1868.i, %bb.au ] ; 3 uses
  %.91142.i = phi i32 [ %.01133.i, %bb.gf ], [ %.pre1866.i, %bb.au ] ; 3 uses
  %.111129.i = phi i32 [ %i.cfn, %bb.gf ], [ %.pre1864.i, %bb.au ] ; 3 uses
  %.81114.i = phi i32 [ %.31109.i, %bb.gf ], [ %.pre1862.i, %bb.au ] ; 3 uses
  %.51102.i = phi i32 [ %.01097.i, %bb.gf ], [ %.pre1860.i, %bb.au ] ; 3 uses
  %.111093.i = phi i32 [ %i.cga, %bb.gf ], [ %.pre1858.i, %bb.au ] ; 3 uses
  %.111078.i = phi i32 [ %.101077.i, %bb.gf ], [ %.pre1856.i, %bb.au ] ; 3 uses
  %.81061.i = phi i32 [ %.31056.i, %bb.gf ], [ %.pre1854.i, %bb.au ] ; 3 uses
  %.171049.i = phi i32 [ %.121044.i, %bb.gf ], [ %.pre1852.i, %bb.au ] ; 3 uses
  %.181028.i = phi i32 [ %.131023.i, %bb.gf ], [ %.pre1850.i, %bb.au ] ; 3 uses
  %.191002.i = phi i32 [ %.14997.i, %bb.gf ], [ %.pre1848.i, %bb.au ] ; 3 uses
  %.15979.i = phi i32 [ %.10974.i, %bb.gf ], [ %.pre1846.i, %bb.au ] ; 3 uses
  %.23958.i = phi i32 [ %.18953.i, %bb.gf ], [ %.pre1844.i, %bb.au ] ; 3 uses
  %.29.i = phi i32 [ %.24.i, %bb.gf ], [ %.pre.i36, %bb.au ] ; 3 uses
  store i32 40, ptr %i.g, align 8, !tbaa !19
  %.promoted1575.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %.not13341576.i = icmp slt i32 %.promoted1575.i, %.81182.i
  br i1 %.not13341576.i, label %.lr.ph1578.i, label %.._crit_edge1579_crit_edge.i

.._crit_edge1579_crit_edge.i:                     ; preds = %bb.gg
  %.pre1922.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1579.i

.lr.ph1578.i:                                     ; preds = %bb.gg
  %i.cgc = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cgc, i64 8 ; 2 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cgc, i64 12 ; 2 uses
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cgc, i64 16 ; 2 uses
  %.promoted1582.i = load i32, ptr %i.cgd, align 8, !tbaa !76 ; 2 uses
  %i.cgg = icmp eq i32 %.promoted1582.i, 0
  br i1 %i.cgg, label %BZ2_decompress.exit, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %.lr.ph1578.i
  %.promoted865 = load i32, ptr %i.v, align 8, !tbaa !21
  %.promoted866 = load ptr, ptr %i.cgc, align 8, !tbaa !77
  %.promoted867 = load i32, ptr %i.cge, align 4, !tbaa !23
  br label %.lr.ph479

._crit_edge1579.i:                                ; preds = %bb.gj, %.._crit_edge1579_crit_edge.i
  %i.cgh = phi i32 [ %.pre1922.i, %.._crit_edge1579_crit_edge.i ], [ %i.cgv, %bb.gj ]
  %.lcssa1448.i = phi i32 [ %.promoted1575.i, %.._crit_edge1579_crit_edge.i ], [ %i.cgw, %bb.gj ]
  %i.cgi = sub nsw i32 %.lcssa1448.i, %.81182.i   ; 3 uses
  %i.cgj = lshr i32 %i.cgh, %i.cgi
  %notmask1335.i = shl nsw i32 -1, %.81182.i
  %i.cgk = xor i32 %notmask1335.i, -1
  %i.cgl = and i32 %i.cgj, %i.cgk
  store i32 %i.cgi, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  br label %bb.gk

bb.gh:                                            ; preds = %bb.gj
  %i.cgm = icmp eq i32 %i.cgy, 0
  br i1 %i.cgm, label %BZ2_decompress.exit, label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %bb.gh
  %i.cgn = phi i32 [ %i.cgz, %bb.gh ], [ %.promoted867, %.lr.ph479.preheader ]
  %i.cgo = phi ptr [ %i.cgx, %bb.gh ], [ %.promoted866, %.lr.ph479.preheader ] ; 2 uses
  %i.cgp = phi i32 [ %i.cgv, %bb.gh ], [ %.promoted865, %.lr.ph479.preheader ]
  %i.cgq = phi i32 [ %i.cgw, %bb.gh ], [ %.promoted1575.i, %.lr.ph479.preheader ]
  %i.cgr = phi i32 [ %i.cgy, %bb.gh ], [ %.promoted1582.i, %.lr.ph479.preheader ]
  %i.cgs = shl i32 %i.cgp, 8
  %i.cgt = load i8, ptr %i.cgo, align 1, !tbaa !34
  %i.cgu = zext i8 %i.cgt to i32
  %i.cgv = or disjoint i32 %i.cgs, %i.cgu         ; 3 uses
  store i32 %i.cgv, ptr %i.v, align 8, !tbaa !21
  %i.cgw = add nsw i32 %i.cgq, 8                  ; 4 uses
  store i32 %i.cgw, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgo, i64 1 ; 2 uses
  store ptr %i.cgx, ptr %i.cgc, align 8, !tbaa !77
  %i.cgy = add i32 %i.cgr, -1                     ; 3 uses
  store i32 %i.cgy, ptr %i.cgd, align 8, !tbaa !76
  %i.cgz = add i32 %i.cgn, 1                      ; 3 uses
  store i32 %i.cgz, ptr %i.cge, align 4, !tbaa !23
  %i.cha = icmp eq i32 %i.cgz, 0
  br i1 %i.cha, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %.lr.ph479
  %i.chb = load i32, ptr %i.cgf, align 8, !tbaa !24
  %i.chc = add i32 %i.chb, 1
  store i32 %i.chc, ptr %i.cgf, align 8, !tbaa !24
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph479
  %.not1334.i = icmp slt i32 %i.cgw, %.81182.i
  br i1 %.not1334.i, label %bb.gh, label %._crit_edge1579.i

bb.gk:                                            ; preds = %._crit_edge1586.i, %._crit_edge1579.i
  %i.chd = phi i32 [ %i.cgb, %._crit_edge1579.i ], [ %i.chj, %._crit_edge1586.i ] ; 4 uses
  %.promoted15831926.i = phi i32 [ %i.cgi, %._crit_edge1579.i ], [ %i.chq, %._crit_edge1586.i ]
  %.81280.i = phi i32 [ %.71279.i, %._crit_edge1579.i ], [ %i.chs, %._crit_edge1586.i ] ; 4 uses
  %.121269.i = phi i32 [ %.111268.i, %._crit_edge1579.i ], [ %.131270.i, %._crit_edge1586.i ] ; 4 uses
  %.121254.i = phi i32 [ %.111253.i, %._crit_edge1579.i ], [ %.131255.i, %._crit_edge1586.i ] ; 4 uses
  %.121239.i = phi ptr [ %.111238.i, %._crit_edge1579.i ], [ %.131240.i, %._crit_edge1586.i ] ; 5 uses
  %.121224.i = phi ptr [ %.111223.i, %._crit_edge1579.i ], [ %.131225.i, %._crit_edge1586.i ] ; 5 uses
  %.121209.i = phi ptr [ %.111208.i, %._crit_edge1579.i ], [ %.131210.i, %._crit_edge1586.i ] ; 5 uses
  %.81194.i = phi i32 [ %i.cgl, %._crit_edge1579.i ], [ %i.chu, %._crit_edge1586.i ] ; 6 uses
  %.91183.i = phi i32 [ %.81182.i, %._crit_edge1579.i ], [ %.101184.i, %._crit_edge1586.i ] ; 6 uses
  %.161171.i = phi i32 [ %.151170.i, %._crit_edge1579.i ], [ %.171172.i, %._crit_edge1586.i ] ; 4 uses
  %.61152.i = phi i32 [ %.51151.i, %._crit_edge1579.i ], [ %.71153.i, %._crit_edge1586.i ] ; 4 uses
  %.101143.i = phi i32 [ %.91142.i, %._crit_edge1579.i ], [ %.111144.i, %._crit_edge1586.i ] ; 4 uses
  %.121130.i = phi i32 [ %.111129.i, %._crit_edge1579.i ], [ %.131131.i, %._crit_edge1586.i ] ; 4 uses
  %.91115.i = phi i32 [ %.81114.i, %._crit_edge1579.i ], [ %.101116.i, %._crit_edge1586.i ] ; 4 uses
  %.61103.i = phi i32 [ %.51102.i, %._crit_edge1579.i ], [ %.71104.i, %._crit_edge1586.i ] ; 3 uses
  %.121094.i = phi i32 [ %.111093.i, %._crit_edge1579.i ], [ %.131095.i, %._crit_edge1586.i ] ; 4 uses
  %.121079.i = phi i32 [ %.111078.i, %._crit_edge1579.i ], [ %.131080.i, %._crit_edge1586.i ] ; 4 uses
  %.91062.i = phi i32 [ %.81061.i, %._crit_edge1579.i ], [ %.101063.i, %._crit_edge1586.i ] ; 4 uses
  %.181050.i = phi i32 [ %.171049.i, %._crit_edge1579.i ], [ %.191051.i, %._crit_edge1586.i ] ; 4 uses
  %.191029.i = phi i32 [ %.181028.i, %._crit_edge1579.i ], [ %.201030.i, %._crit_edge1586.i ] ; 4 uses
  %.201003.i = phi i32 [ %.191002.i, %._crit_edge1579.i ], [ %.211004.i, %._crit_edge1586.i ] ; 4 uses
  %.16980.i = phi i32 [ %.15979.i, %._crit_edge1579.i ], [ %.17981.i, %._crit_edge1586.i ] ; 4 uses
  %.24959.i = phi i32 [ %.23958.i, %._crit_edge1579.i ], [ %.25960.i, %._crit_edge1586.i ] ; 4 uses
  %.30.i = phi i32 [ %.29.i, %._crit_edge1579.i ], [ %.31.i, %._crit_edge1586.i ] ; 4 uses
  %i.che = icmp sgt i32 %.91183.i, 20
  br i1 %i.che, label %BZ2_decompress.exit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.chf = sext i32 %.91183.i to i64              ; 2 uses
  %i.chg = getelementptr inbounds [4 x i8], ptr %.121239.i, i64 %i.chf
  %i.chh = load i32, ptr %i.chg, align 4, !tbaa !4
  %.not1336.i = icmp sgt i32 %.81194.i, %i.chh
  br i1 %.not1336.i, label %bb.gm, label %bb.gs

bb.gm:                                            ; preds = %bb.gl
  %i.chi = add nsw i32 %.91183.i, 1
  br label %bb.gn

end_hunk_2
begin_hunk_3_@nsis_BZ2_bzDecompress:bb.a
  store i32 %i.cid, ptr %i.v, align 8, !tbaa !21
  %i.cie = add nsw i32 %i.chw, 8                  ; 3 uses
  store i32 %i.cie, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cia, i64 1
  store ptr %i.cif, ptr %i.chl, align 8, !tbaa !77
  %i.cig = add i32 %i.chv, -1                     ; 2 uses
  store i32 %i.cig, ptr %i.chm, align 8, !tbaa !76
  %i.cih = load i32, ptr %i.chn, align 4, !tbaa !23
  %i.cii = add i32 %i.cih, 1                      ; 2 uses
  store i32 %i.cii, ptr %i.chn, align 4, !tbaa !23
  %i.cij = icmp eq i32 %i.cii, 0
  br i1 %i.cij, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.cik = load i32, ptr %i.cho, align 8, !tbaa !24
  %i.cil = add i32 %i.cik, 1
  store i32 %i.cil, ptr %i.cho, align 8, !tbaa !24
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.cim = icmp sgt i32 %i.chw, -8
  br i1 %i.cim, label %._crit_edge1586.i, label %bb.go

bb.gs:                                            ; preds = %bb.gl
  %i.cin = getelementptr inbounds [4 x i8], ptr %.121224.i, i64 %i.chf
  %i.cio = load i32, ptr %i.cin, align 4, !tbaa !4
  %i.cip = sub nsw i32 %.81194.i, %i.cio          ; 2 uses
  %or.cond1355.i = icmp ugt i32 %i.cip, 257
  br i1 %or.cond1355.i, label %BZ2_decompress.exit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ciq = zext nneg i32 %i.cip to i64
  %i.cir = getelementptr inbounds nuw [4 x i8], ptr %.121209.i, i64 %i.ciq
  %i.cis = load i32, ptr %i.cir, align 4, !tbaa !4
  br label %.loopexit1376.i

bb.gu:                                            ; preds = %.loopexit1376.i
  %i.cit = load i32, ptr %i.w, align 8, !tbaa !78 ; 2 uses
  %i.ciu = icmp sgt i32 %i.cit, -1
  %.not1344.i = icmp slt i32 %i.cit, %.31121.i
  %or.cond1356.i = select i1 %i.ciu, i1 %.not1344.i, i1 false
  br i1 %or.cond1356.i, label %vector.ph483, label %BZ2_decompress.exit

vector.ph483:                                     ; preds = %bb.gu
  store i32 0, ptr %i.o, align 8, !tbaa !4
  %wide.load486 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !4
  %wide.load487 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !4
  store <4 x i32> %wide.load486, ptr %i.ci, align 4, !tbaa !4
  store <4 x i32> %wide.load487, ptr %i.cj, align 4, !tbaa !4
  %wide.load486.1 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !4
  %wide.load487.1 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !4
  store <4 x i32> %wide.load486.1, ptr %i.cm, align 4, !tbaa !4
  store <4 x i32> %wide.load487.1, ptr %i.cn, align 4, !tbaa !4
  %wide.load486.2 = load <4 x i32>, ptr %i.co, align 4, !tbaa !4
  %wide.load487.2 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !4
  store <4 x i32> %wide.load486.2, ptr %i.cq, align 4, !tbaa !4
  store <4 x i32> %wide.load487.2, ptr %i.cr, align 4, !tbaa !4
  %wide.load486.3 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !4
  %wide.load487.3 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !4
  store <4 x i32> %wide.load486.3, ptr %i.cu, align 4, !tbaa !4
  store <4 x i32> %wide.load487.3, ptr %i.cv, align 4, !tbaa !4
  %wide.load486.4 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !4
  %wide.load487.4 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !4
  store <4 x i32> %wide.load486.4, ptr %i.cy, align 4, !tbaa !4
  store <4 x i32> %wide.load487.4, ptr %i.cz, align 4, !tbaa !4
  %wide.load486.5 = load <4 x i32>, ptr %i.da, align 4, !tbaa !4
  %wide.load487.5 = load <4 x i32>, ptr %i.db, align 4, !tbaa !4
  store <4 x i32> %wide.load486.5, ptr %i.dc, align 4, !tbaa !4
  store <4 x i32> %wide.load487.5, ptr %i.dd, align 4, !tbaa !4
  %wide.load486.6 = load <4 x i32>, ptr %i.de, align 4, !tbaa !4
  %wide.load487.6 = load <4 x i32>, ptr %i.df, align 4, !tbaa !4
  store <4 x i32> %wide.load486.6, ptr %i.dg, align 4, !tbaa !4
  store <4 x i32> %wide.load487.6, ptr %i.dh, align 4, !tbaa !4
  %wide.load486.7 = load <4 x i32>, ptr %i.di, align 4, !tbaa !4
  %wide.load487.7 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4
  store <4 x i32> %wide.load486.7, ptr %i.dk, align 4, !tbaa !4
  store <4 x i32> %wide.load487.7, ptr %i.dl, align 4, !tbaa !4
  %wide.load486.8 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !4
  %wide.load487.8 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !4
  store <4 x i32> %wide.load486.8, ptr %i.do, align 4, !tbaa !4
  store <4 x i32> %wide.load487.8, ptr %i.dp, align 4, !tbaa !4
  %wide.load486.9 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !4
  %wide.load487.9 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !4
  store <4 x i32> %wide.load486.9, ptr %i.ds, align 4, !tbaa !4
  store <4 x i32> %wide.load487.9, ptr %i.dt, align 4, !tbaa !4
  %wide.load486.10 = load <4 x i32>, ptr %i.du, align 4, !tbaa !4
  %wide.load487.10 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !4
  store <4 x i32> %wide.load486.10, ptr %i.dw, align 4, !tbaa !4
  store <4 x i32> %wide.load487.10, ptr %i.dx, align 4, !tbaa !4
  %wide.load486.11 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !4
  %wide.load487.11 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !4
  store <4 x i32> %wide.load486.11, ptr %i.ea, align 4, !tbaa !4
  store <4 x i32> %wide.load487.11, ptr %i.eb, align 4, !tbaa !4
  %wide.load486.12 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !4
  %wide.load487.12 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !4
  store <4 x i32> %wide.load486.12, ptr %i.ee, align 4, !tbaa !4
  store <4 x i32> %wide.load487.12, ptr %i.ef, align 4, !tbaa !4
  %wide.load486.13 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !4
  %wide.load487.13 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !4
  store <4 x i32> %wide.load486.13, ptr %i.ei, align 4, !tbaa !4
  store <4 x i32> %wide.load487.13, ptr %i.ej, align 4, !tbaa !4
  %wide.load486.14 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !4
  %wide.load487.14 = load <4 x i32>, ptr %i.el, align 4, !tbaa !4
  store <4 x i32> %wide.load486.14, ptr %i.em, align 4, !tbaa !4
  store <4 x i32> %wide.load487.14, ptr %i.en, align 4, !tbaa !4
  %wide.load486.15 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !4
  %wide.load487.15 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !4
  store <4 x i32> %wide.load486.15, ptr %i.eq, align 4, !tbaa !4
  store <4 x i32> %wide.load487.15, ptr %i.er, align 4, !tbaa !4
  %wide.load486.16 = load <4 x i32>, ptr %i.es, align 4, !tbaa !4
  %wide.load487.16 = load <4 x i32>, ptr %i.et, align 4, !tbaa !4
  store <4 x i32> %wide.load486.16, ptr %i.eu, align 4, !tbaa !4
  store <4 x i32> %wide.load487.16, ptr %i.ev, align 4, !tbaa !4
  %wide.load486.17 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !4
  %wide.load487.17 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !4
  store <4 x i32> %wide.load486.17, ptr %i.ey, align 4, !tbaa !4
  store <4 x i32> %wide.load487.17, ptr %i.ez, align 4, !tbaa !4
  %wide.load486.18 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !4
  %wide.load487.18 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !4
  store <4 x i32> %wide.load486.18, ptr %i.fc, align 4, !tbaa !4
  store <4 x i32> %wide.load487.18, ptr %i.fd, align 4, !tbaa !4
  %wide.load486.19 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !4
  %wide.load487.19 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !4
  store <4 x i32> %wide.load486.19, ptr %i.fg, align 4, !tbaa !4
  store <4 x i32> %wide.load487.19, ptr %i.fh, align 4, !tbaa !4
  %wide.load486.20 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !4
  %wide.load487.20 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !4
  store <4 x i32> %wide.load486.20, ptr %i.fk, align 4, !tbaa !4
  store <4 x i32> %wide.load487.20, ptr %i.fl, align 4, !tbaa !4
  %wide.load486.21 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !4
  %wide.load487.21 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !4
  store <4 x i32> %wide.load486.21, ptr %i.fo, align 4, !tbaa !4
  store <4 x i32> %wide.load487.21, ptr %i.fp, align 4, !tbaa !4
  %wide.load486.22 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !4
  %wide.load487.22 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !4
  store <4 x i32> %wide.load486.22, ptr %i.fs, align 4, !tbaa !4
  store <4 x i32> %wide.load487.22, ptr %i.ft, align 4, !tbaa !4
  %wide.load486.23 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !4
  %wide.load487.23 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !4
  store <4 x i32> %wide.load486.23, ptr %i.fw, align 4, !tbaa !4
  store <4 x i32> %wide.load487.23, ptr %i.fx, align 4, !tbaa !4
  %wide.load486.24 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !4
  %wide.load487.24 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !4
  store <4 x i32> %wide.load486.24, ptr %i.ga, align 4, !tbaa !4
  store <4 x i32> %wide.load487.24, ptr %i.gb, align 4, !tbaa !4
  %wide.load486.25 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !4
  %wide.load487.25 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !4
  store <4 x i32> %wide.load486.25, ptr %i.ge, align 4, !tbaa !4
  store <4 x i32> %wide.load487.25, ptr %i.gf, align 4, !tbaa !4
  %wide.load486.26 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !4
  %wide.load487.26 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !4
  store <4 x i32> %wide.load486.26, ptr %i.gi, align 4, !tbaa !4
  store <4 x i32> %wide.load487.26, ptr %i.gj, align 4, !tbaa !4
  %wide.load486.27 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !4
  %wide.load487.27 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !4
  store <4 x i32> %wide.load486.27, ptr %i.gm, align 4, !tbaa !4
  store <4 x i32> %wide.load487.27, ptr %i.gn, align 4, !tbaa !4
  %wide.load486.28 = load <4 x i32>, ptr %i.go, align 4, !tbaa !4
  %wide.load487.28 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !4
  store <4 x i32> %wide.load486.28, ptr %i.gq, align 4, !tbaa !4
  store <4 x i32> %wide.load487.28, ptr %i.gr, align 4, !tbaa !4
  %wide.load486.29 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !4
  %wide.load487.29 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !4
  store <4 x i32> %wide.load486.29, ptr %i.gu, align 4, !tbaa !4
  store <4 x i32> %wide.load487.29, ptr %i.gv, align 4, !tbaa !4
  %wide.load486.30 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !4
  %wide.load487.30 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !4
  store <4 x i32> %wide.load486.30, ptr %i.gy, align 4, !tbaa !4
  store <4 x i32> %wide.load487.30, ptr %i.gz, align 4, !tbaa !4
  %wide.load486.31 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !4
  %wide.load487.31 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !4
  store <4 x i32> %wide.load486.31, ptr %i.hc, align 4, !tbaa !4
  store <4 x i32> %wide.load487.31, ptr %i.hd, align 4, !tbaa !4
  %load_initial = load i32, ptr %i.o, align 4
  br label %.preheader1373.i

.preheader1373.i:                                 ; preds = %.preheader1373.i, %vector.ph483
  %store_forwarded = phi i32 [ %load_initial, %vector.ph483 ], [ %i.cjj, %.preheader1373.i ]
  %indvars.iv1815.i = phi i64 [ 1, %vector.ph483 ], [ %indvars.iv.next1816.i.3, %.preheader1373.i ] ; 5 uses
  %i.civ = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv1815.i ; 2 uses
  %i.ciw = load i32, ptr %i.civ, align 4, !tbaa !4
  %i.cix = add nsw i32 %i.ciw, %store_forwarded   ; 2 uses
  store i32 %i.cix, ptr %i.civ, align 4, !tbaa !4
  %i.ciy = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv1815.i
  %i.ciz = getelementptr i8, ptr %i.ciy, i64 4    ; 2 uses
  %i.cja = load i32, ptr %i.ciz, align 4, !tbaa !4
  %i.cjb = add nsw i32 %i.cja, %i.cix             ; 2 uses
  store i32 %i.cjb, ptr %i.ciz, align 4, !tbaa !4
  %i.cjc = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv1815.i
  %i.cjd = getelementptr i8, ptr %i.cjc, i64 8    ; 2 uses
  %i.cje = load i32, ptr %i.cjd, align 4, !tbaa !4
  %i.cjf = add nsw i32 %i.cje, %i.cjb             ; 2 uses
  store i32 %i.cjf, ptr %i.cjd, align 4, !tbaa !4
  %i.cjg = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv1815.i
  %i.cjh = getelementptr i8, ptr %i.cjg, i64 12   ; 2 uses
  %i.cji = load i32, ptr %i.cjh, align 4, !tbaa !4
  %i.cjj = add nsw i32 %i.cji, %i.cjf             ; 2 uses
  store i32 %i.cjj, ptr %i.cjh, align 4, !tbaa !4
  %indvars.iv.next1816.i.3 = add nuw nsw i64 %indvars.iv1815.i, 4 ; 2 uses
  %exitcond1819.not.i.3 = icmp eq i64 %indvars.iv.next1816.i.3, 257
  br i1 %exitcond1819.not.i.3, label %.preheader1371.i, label %.preheader1373.i, !llvm.loop !116

.preheader1371.i:                                 ; preds = %.preheader1373.i, %bb.gw
  %indvars.iv1820.i = phi i64 [ %indvars.iv.next1821.i.3, %bb.gw ], [ 0, %.preheader1373.i ] ; 7 uses
  %i.cjk = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv1820.i
  %i.cjl = load i32, ptr %i.cjk, align 4, !tbaa !4 ; 2 uses
  %i.cjm = icmp slt i32 %i.cjl, 0
  %i.cjn = icmp sgt i32 %i.cjl, %.31121.i
  %or.cond1357.i = select i1 %i.cjm, i1 true, i1 %i.cjn
  br i1 %or.cond1357.i, label %.loopexit.loopexit1683.i, label %bb.gv

bb.gv:                                            ; preds = %.preheader1371.i
  %exitcond1824.not.i = icmp eq i64 %indvars.iv1820.i, 256
  br i1 %exitcond1824.not.i, label %bb.gx, label %.preheader1371.i.1

.preheader1371.i.1:                               ; preds = %bb.gv
  %indvars.iv.next1821.i = or disjoint i64 %indvars.iv1820.i, 1 ; 2 uses
  %i.cjo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next1821.i
  %i.cjp = load i32, ptr %i.cjo, align 4, !tbaa !4 ; 2 uses
  %i.cjq = icmp slt i32 %i.cjp, 0
  %i.cjr = icmp sgt i32 %i.cjp, %.31121.i
  %or.cond1357.i.1 = select i1 %i.cjq, i1 true, i1 %i.cjr
  br i1 %or.cond1357.i.1, label %.loopexit.loopexit1683.i, label %.preheader1371.i.2

.preheader1371.i.2:                               ; preds = %.preheader1371.i.1
  %indvars.iv.next1821.i.1 = or disjoint i64 %indvars.iv1820.i, 2 ; 2 uses
  %i.cjs = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next1821.i.1
  %i.cjt = load i32, ptr %i.cjs, align 4, !tbaa !4 ; 2 uses
  %i.cju = icmp slt i32 %i.cjt, 0
  %i.cjv = icmp sgt i32 %i.cjt, %.31121.i
  %or.cond1357.i.2 = select i1 %i.cju, i1 true, i1 %i.cjv
  br i1 %or.cond1357.i.2, label %.loopexit.loopexit1683.i, label %.preheader1371.i.3

.preheader1371.i.3:                               ; preds = %.preheader1371.i.2
  %indvars.iv.next1821.i.2 = or disjoint i64 %indvars.iv1820.i, 3 ; 2 uses
  %i.cjw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next1821.i.2
  %i.cjx = load i32, ptr %i.cjw, align 4, !tbaa !4 ; 2 uses
  %i.cjy = icmp slt i32 %i.cjx, 0
  %i.cjz = icmp sgt i32 %i.cjx, %.31121.i
  %or.cond1357.i.3 = select i1 %i.cjy, i1 true, i1 %i.cjz
  br i1 %or.cond1357.i.3, label %.loopexit.loopexit1683.i, label %bb.gw

bb.gw:                                            ; preds = %.preheader1371.i.3
  %indvars.iv.next1821.i.3 = add nuw nsw i64 %indvars.iv1820.i, 4
  br label %.preheader1371.i

bb.gx:                                            ; preds = %bb.gv
  store i32 0, ptr %i.i, align 8, !tbaa !31
  store i8 0, ptr %i.j, align 4, !tbaa !32
  store i32 2, ptr %i.g, align 8, !tbaa !19
  %i.cka = load i8, ptr %i.h, align 4, !tbaa !27
  %.not1345.i = icmp eq i8 %i.cka, 0
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
  %i.ckb = load i32, ptr %i.ma, align 4, !tbaa !4
  store i32 %i.ckb, ptr %i.mb, align 4, !tbaa !4
  %wide.trip.count1834.i = zext nneg i32 %.31121.i to i64
  br label %bb.gy

.preheader.i45:                                   ; preds = %bb.gx
  %i.ckc = load ptr, ptr %i.s, align 8, !tbaa !46 ; 8 uses
  %wide.trip.count1840.i = zext nneg i32 %.31121.i to i64 ; 2 uses
  %xtraiter772 = and i64 %wide.trip.count1840.i, 1
  %i.ckd = icmp eq i32 %.31121.i, 1
  br i1 %i.ckd, label %.epil.preheader771, label %.preheader.i45.new

.preheader.i45.new:                               ; preds = %.preheader.i45
  %unroll_iter776 = and i64 %wide.trip.count1840.i, 2147483646
  br label %bb.hi

bb.gy:                                            ; preds = %bb.hb, %vector.body
  %indvars.iv1830.i = phi i64 [ 0, %vector.body ], [ %indvars.iv.next1831.i, %bb.hb ] ; 4 uses
  %i.cke = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.ckf = getelementptr inbounds nuw [2 x i8], ptr %i.cke, i64 %indvars.iv1830.i ; 2 uses
  %i.ckg = load i16, ptr %i.ckf, align 2, !tbaa !42
  %i.ckh = and i16 %i.ckg, 255
  %i.cki = zext nneg i16 %i.ckh to i64
  %i.ckj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cki ; 3 uses
  %i.ckk = load i32, ptr %i.ckj, align 4, !tbaa !4 ; 3 uses
  %i.ckl = trunc i32 %i.ckk to i16
  store i16 %i.ckl, ptr %i.ckf, align 2, !tbaa !42
  %i.ckm = and i64 %indvars.iv1830.i, 1
  %i.ckn = icmp eq i64 %i.ckm, 0
  %i.cko = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.ckp = lshr i64 %indvars.iv1830.i, 1
  %i.ckq = and i64 %i.ckp, 2147483647
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.cko, i64 %i.ckq ; 2 uses
  %i.cks = load i8, ptr %i.ckr, align 1, !tbaa !34 ; 2 uses
  br i1 %i.ckn, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.ckt = and i8 %i.cks, -16
  %i.cku = lshr i32 %i.ckk, 16
  %i.ckv = trunc i32 %i.cku to i8
  %i.ckw = or i8 %i.ckt, %i.ckv
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gy
  %i.ckx = and i8 %i.cks, 15
  %i.cky = lshr i32 %i.ckk, 12
  %i.ckz = trunc i32 %i.cky to i8
  %i.cla = and i8 %i.ckz, -16
  %i.clb = or disjoint i8 %i.ckx, %i.cla
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.sink2093.i = phi i8 [ %i.clb, %bb.ha ], [ %i.ckw, %bb.gz ]
  store i8 %.sink2093.i, ptr %i.ckr, align 1, !tbaa !34
  %i.clc = load i32, ptr %i.ckj, align 4, !tbaa !4
  %i.cld = add nsw i32 %i.clc, 1
  store i32 %i.cld, ptr %i.ckj, align 4, !tbaa !4
  %indvars.iv.next1831.i = add nuw nsw i64 %indvars.iv1830.i, 1 ; 2 uses
  %exitcond1835.not.i = icmp eq i64 %indvars.iv.next1831.i, %wide.trip.count1834.i
  br i1 %exitcond1835.not.i, label %._crit_edge1621.i, label %bb.gy, !llvm.loop !117

._crit_edge1621.i:                                ; preds = %bb.hb
  %i.cle = load i32, ptr %i.w, align 8, !tbaa !78 ; 4 uses
  %i.clf = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.clg = sext i32 %i.cle to i64
  %i.clh = getelementptr inbounds [2 x i8], ptr %i.clf, i64 %i.clg
  %i.cli = load i16, ptr %i.clh, align 2, !tbaa !42
  %i.clj = zext i16 %i.cli to i32
  %i.clk = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.cll = ashr i32 %i.cle, 1
  %i.clm = sext i32 %i.cll to i64
  %i.cln = getelementptr inbounds i8, ptr %i.clk, i64 %i.clm
  %i.clo = load i8, ptr %i.cln, align 1, !tbaa !34
  %i.clp = zext i8 %i.clo to i32
  %i.clq = shl i32 %i.cle, 2
  %i.clr = and i32 %i.clq, 4
  %i.cls = lshr i32 %i.clp, %i.clr
  %i.clt = shl nuw nsw i32 %i.cls, 16
  %i.clu = and i32 %i.clt, 983040
  %i.clv = or disjoint i32 %i.clu, %i.clj
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hf, %._crit_edge1621.i
  %.26961.i = phi i32 [ %i.clv, %._crit_edge1621.i ], [ %i.cmm, %bb.hf ] ; 9 uses
  %.37.i = phi i32 [ %i.cle, %._crit_edge1621.i ], [ %.26961.i, %bb.hf ] ; 3 uses
  %i.clw = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.clx = zext nneg i32 %.26961.i to i64         ; 2 uses
  %i.cly = getelementptr inbounds nuw [2 x i8], ptr %i.clw, i64 %i.clx ; 2 uses
  %i.clz = load i16, ptr %i.cly, align 2, !tbaa !42
  %i.cma = zext i16 %i.clz to i32
  %i.cmb = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.cmc = lshr i32 %.26961.i, 1
  %i.cmd = zext nneg i32 %i.cmc to i64            ; 2 uses
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmb, i64 %i.cmd ; 3 uses
  %i.cmf = load i8, ptr %i.cme, align 1, !tbaa !34
  %i.cmg = zext i8 %i.cmf to i32
  %i.cmh = shl nuw nsw i32 %.26961.i, 2
  %i.cmi = and i32 %i.cmh, 4                      ; 2 uses
  %i.cmj = lshr i32 %i.cmg, %i.cmi
  %i.cmk = shl nuw nsw i32 %i.cmj, 16
  %i.cml = and i32 %i.cmk, 983040
  %i.cmm = or disjoint i32 %i.cml, %i.cma         ; 2 uses
  %i.cmn = trunc i32 %.37.i to i16
  store i16 %i.cmn, ptr %i.cly, align 2, !tbaa !42
  %i.cmo = and i32 %.26961.i, 1
  %i.cmp = icmp eq i32 %i.cmo, 0
  %i.cmq = load i8, ptr %i.cme, align 1, !tbaa !34 ; 2 uses
  br i1 %i.cmp, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.cmr = and i8 %i.cmq, -16
  %i.cms = lshr i32 %.37.i, 16
  %i.cmt = trunc i32 %i.cms to i8
  %i.cmu = or i8 %i.cmr, %i.cmt
  br label %bb.hf

bb.he:                                            ; preds = %bb.hc
  %i.cmv = and i8 %i.cmq, 15
  %i.cmw = lshr i32 %.37.i, 12
  %i.cmx = trunc i32 %i.cmw to i8
  %i.cmy = and i8 %i.cmx, -16
  %i.cmz = or disjoint i8 %i.cmv, %i.cmy
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %storemerge.i = phi i8 [ %i.cmz, %bb.he ], [ %i.cmu, %bb.hd ]
  store i8 %storemerge.i, ptr %i.cme, align 1, !tbaa !34
  %i.cna = load i32, ptr %i.w, align 8, !tbaa !78
  %.not1347.i = icmp eq i32 %.26961.i, %i.cna
  br i1 %.not1347.i, label %bb.hg, label %bb.hc, !llvm.loop !118

bb.hg:                                            ; preds = %bb.hf
  store i32 %.26961.i, ptr %i.n, align 4, !tbaa !38
  store i32 0, ptr %i.k, align 4, !tbaa !35
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %bb.hg
  %.09.i.i39 = phi i32 [ 256, %bb.hg ], [ %..09.i.i41, %bb.hh ] ; 2 uses
  %.0.i.i40 = phi i32 [ 0, %bb.hg ], [ %.0..i.i42, %bb.hh ] ; 2 uses
  %i.cnb = add nsw i32 %.0.i.i40, %.09.i.i39
  %i.cnc = ashr i32 %i.cnb, 1                     ; 3 uses
  %i.cnd = sext i32 %i.cnc to i64
  %i.cne = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.cnd
  %i.cnf = load i32, ptr %i.cne, align 4, !tbaa !4
  %.not.i1362.i = icmp slt i32 %.26961.i, %i.cnf  ; 2 uses
  %..09.i.i41 = select i1 %.not.i1362.i, i32 %i.cnc, i32 %.09.i.i39 ; 2 uses
  %.0..i.i42 = select i1 %.not.i1362.i, i32 %.0.i.i40, i32 %i.cnc ; 3 uses
  %i.cng = sub nsw i32 %..09.i.i41, %.0..i.i42
  %.not11.i.i43 = icmp eq i32 %i.cng, 1
  br i1 %.not11.i.i43, label %indexIntoF.exit.i44, label %bb.hh, !llvm.loop !39

indexIntoF.exit.i44:                              ; preds = %bb.hh
  store i32 %.0..i.i42, ptr %i.m, align 8, !tbaa !37
  %i.cnh = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.cni = getelementptr inbounds nuw [2 x i8], ptr %i.cnh, i64 %i.clx
  %i.cnj = load i16, ptr %i.cni, align 2, !tbaa !42
  %i.cnk = zext i16 %i.cnj to i32
  %i.cnl = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.cnl, i64 %i.cmd
  %i.cnn = load i8, ptr %i.cnm, align 1, !tbaa !34
  %i.cno = zext i8 %i.cnn to i32
  %i.cnp = lshr i32 %i.cno, %i.cmi
  %i.cnq = shl nuw nsw i32 %i.cnp, 16
  %i.cnr = and i32 %i.cnq, 983040
  %i.cns = or disjoint i32 %i.cnr, %i.cnk
  store i32 %i.cns, ptr %i.n, align 4, !tbaa !38
  store i32 1, ptr %i.k, align 4, !tbaa !35
  br label %BZ2_decompress.exit

bb.hi:                                            ; preds = %bb.hi, %.preheader.i45.new
  %indvars.iv1836.i = phi i64 [ 0, %.preheader.i45.new ], [ %indvars.iv.next1837.i.1, %bb.hi ] ; 4 uses
  %niter777 = phi i64 [ 0, %.preheader.i45.new ], [ %niter777.next.1, %bb.hi ]
  %i.cnt = getelementptr inbounds nuw [4 x i8], ptr %i.ckc, i64 %indvars.iv1836.i
  %i.cnu = load i32, ptr %i.cnt, align 4, !tbaa !4
  %i.cnv = trunc nuw nsw i64 %indvars.iv1836.i to i32
  %i.cnw = shl i32 %i.cnv, 8
  %i.cnx = and i32 %i.cnu, 255
  %i.cny = zext nneg i32 %i.cnx to i64
  %i.cnz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cny ; 3 uses
  %i.coa = load i32, ptr %i.cnz, align 4, !tbaa !4
  %i.cob = sext i32 %i.coa to i64
  %i.coc = getelementptr inbounds [4 x i8], ptr %i.ckc, i64 %i.cob ; 2 uses
  %i.cod = load i32, ptr %i.coc, align 4, !tbaa !4
  %i.coe = or i32 %i.cod, %i.cnw
  store i32 %i.coe, ptr %i.coc, align 4, !tbaa !4
  %i.cof = load i32, ptr %i.cnz, align 4, !tbaa !4
  %i.cog = add nsw i32 %i.cof, 1
  store i32 %i.cog, ptr %i.cnz, align 4, !tbaa !4
  %indvars.iv.next1837.i = or disjoint i64 %indvars.iv1836.i, 1 ; 2 uses
  %i.coh = getelementptr inbounds nuw [4 x i8], ptr %i.ckc, i64 %indvars.iv.next1837.i
  %i.coi = load i32, ptr %i.coh, align 4, !tbaa !4
  %i.coj = trunc nuw nsw i64 %indvars.iv.next1837.i to i32
  %i.cok = shl i32 %i.coj, 8
  %i.col = and i32 %i.coi, 255
  %i.com = zext nneg i32 %i.col to i64
  %i.con = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.com ; 3 uses
  %i.coo = load i32, ptr %i.con, align 4, !tbaa !4
  %i.cop = sext i32 %i.coo to i64
  %i.coq = getelementptr inbounds [4 x i8], ptr %i.ckc, i64 %i.cop ; 2 uses
  %i.cor = load i32, ptr %i.coq, align 4, !tbaa !4
  %i.cos = or i32 %i.cor, %i.cok
  store i32 %i.cos, ptr %i.coq, align 4, !tbaa !4
  %i.cot = load i32, ptr %i.con, align 4, !tbaa !4
  %i.cou = add nsw i32 %i.cot, 1
  store i32 %i.cou, ptr %i.con, align 4, !tbaa !4
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
  %i.cov = getelementptr inbounds nuw [4 x i8], ptr %i.ckc, i64 %indvars.iv1836.i.epil.init
  %i.cow = load i32, ptr %i.cov, align 4, !tbaa !4
  %i.cox = trunc nuw nsw i64 %indvars.iv1836.i.epil.init to i32
  %i.coy = shl i32 %i.cox, 8
  %i.coz = and i32 %i.cow, 255
  %i.cpa = zext nneg i32 %i.coz to i64
  %i.cpb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cpa ; 3 uses
  %i.cpc = load i32, ptr %i.cpb, align 4, !tbaa !4
  %i.cpd = sext i32 %i.cpc to i64
  %i.cpe = getelementptr inbounds [4 x i8], ptr %i.ckc, i64 %i.cpd ; 2 uses
  %i.cpf = load i32, ptr %i.cpe, align 4, !tbaa !4
  %i.cpg = or i32 %i.cpf, %i.coy
  store i32 %i.cpg, ptr %i.cpe, align 4, !tbaa !4
  %i.cph = load i32, ptr %i.cpb, align 4, !tbaa !4
  %i.cpi = add nsw i32 %i.cph, 1
  store i32 %i.cpi, ptr %i.cpb, align 4, !tbaa !4
  br label %._crit_edge1624.i

._crit_edge1624.i:                                ; preds = %._crit_edge1624.i.unr-lcssa, %.epil.preheader771
  %i.cpj = load i32, ptr %i.w, align 8, !tbaa !78
  %i.cpk = sext i32 %i.cpj to i64
  %i.cpl = getelementptr inbounds [4 x i8], ptr %i.ckc, i64 %i.cpk
  %i.cpm = load i32, ptr %i.cpl, align 4, !tbaa !4
  %i.cpn = lshr i32 %i.cpm, 8                     ; 3 uses
  store i32 %i.cpn, ptr %i.n, align 4, !tbaa !38
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.cpo = load i32, ptr %i.t, align 8, !tbaa !51
  %i.cpp = mul nsw i32 %i.cpo, 100000
  %.not1346.i = icmp ult i32 %i.cpn, %i.cpp
  br i1 %.not1346.i, label %bb.hj, label %BZ2_decompress.exit.thread

bb.hj:                                            ; preds = %._crit_edge1624.i
  %i.cpq = zext nneg i32 %i.cpn to i64
  %i.cpr = getelementptr inbounds nuw [4 x i8], ptr %i.ckc, i64 %i.cpq
  %i.cps = load i32, ptr %i.cpr, align 4, !tbaa !4 ; 2 uses
  %i.cpt = and i32 %i.cps, 255
  store i32 %i.cpt, ptr %i.m, align 8, !tbaa !37
  %i.cpu = lshr i32 %i.cps, 8
  store i32 %i.cpu, ptr %i.n, align 4, !tbaa !38
  store i32 1, ptr %i.k, align 4, !tbaa !35
  br label %BZ2_decompress.exit

bb.hk:                                            ; preds = %._crit_edge.i
  store i32 1, ptr %i.g, align 8, !tbaa !19
  br label %BZ2_decompress.exit

.loopexit.loopexit1683.i:                         ; preds = %.preheader1371.i.3, %.preheader1371.i.2, %.preheader1371.i.1, %.preheader1371.i
  %indvars.iv1820.i.lcssa = phi i64 [ %indvars.iv1820.i, %.preheader1371.i ], [ %indvars.iv.next1821.i, %.preheader1371.i.1 ], [ %indvars.iv.next1821.i.1, %.preheader1371.i.2 ], [ %indvars.iv.next1821.i.2, %.preheader1371.i.3 ]
  %i.cpv = trunc nuw nsw i64 %indvars.iv1820.i.lcssa to i32
  br label %BZ2_decompress.exit

BZ2_decompress.exit:                              ; preds = %bb.ay, %bb.be, %bb.bj, %bb.bo, %bb.cr, %bb.cw, %bb.el, %bb.gh, %bb.go, %bb.fe, %bb.fs, %bb.fu, %bb.fl, %bb.es, %bb.dm, %bb.dt, %bb.dy, %bb.dg, %bb.cc, %bb.bv, %bb.dc, %.lr.ph1549.i, %.lr.ph1578.i, %.lr.ph1593.i, %bb.au, %bb.av, %bb.aw, %._crit_edge.i, %._crit_edge1500.i, %bb.bs, %makeMaps_d.exit.i, %._crit_edge1508.i, %._crit_edge1515.i, %bb.dr, %._crit_edge1539.i, %bb.eo, %bb.ew, %bb.fa, %bb.fh, %bb.fp, %bb.fw, %bb.gd, %bb.gk, %bb.gs, %bb.gu, %indexIntoF.exit.i44, %bb.hj, %bb.hk, %.loopexit.loopexit1683.i
  %i.cpw = phi i32 [ %i.bqr, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.xb, %bb.hk ], [ %i.bdy, %bb.dy ], [ %i.abb, %bb.bj ], [ %i.add, %._crit_edge1500.i ], [ %i.add, %bb.bs ], [ %i.anv, %._crit_edge1508.i ], [ %i.bcf, %bb.dt ], [ %.ph638, %bb.dc ], [ %i.yz, %bb.be ], [ %i.azd, %bb.dm ], [ %i.apq, %._crit_edge1515.i ], [ %i.brj, %.lr.ph1593.i ], [ %i.bsr, %bb.fl ], [ %i.bbn, %bb.dr ], [ %i.agh, %bb.bv ], [ %i.bph, %bb.es ], [ %i.add, %bb.bo ], [ %i.bsl, %bb.fs ], [ %i.chd, %bb.gs ], [ %i.bqr, %bb.gu ], [ %i.cgb, %.lr.ph1578.i ], [ %i.boy, %bb.ew ], [ %i.bnr, %bb.el ], [ %i.bnr, %.lr.ph1549.i ], [ %i.bsl, %bb.fp ], [ %i.bqr, %.loopexit.loopexit1683.i ], [ %i.bsl, %bb.fh ], [ %i.bqt, %bb.fa ], [ %i.cgb, %bb.gh ], [ %i.bqr, %bb.fw ], [ %i.anv, %bb.cr ], [ %i.apq, %bb.cw ], [ %i.chd, %bb.gk ], [ %i.bqr, %bb.gd ], [ %i.boy, %bb.eo ], [ %i.ayh, %._crit_edge1539.i ], [ %.pre1872.i, %bb.au ], [ %i.aih, %makeMaps_d.exit.i ], [ %i.ake, %bb.cc ], [ %.ph638, %bb.dg ], [ %i.xb, %._crit_edge.i ], [ 0, %bb.aw ], [ %i.bqr, %bb.hj ], [ %i.bsl, %bb.fu ], [ %i.brj, %bb.fe ], [ %i.chj, %bb.go ], [ %i.xb, %bb.ay ]
  %.101282.i = phi i32 [ %.21274.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.xe, %bb.hk ], [ %i.beb, %bb.dy ], [ %i.abe, %bb.bj ], [ %i.adg, %._crit_edge1500.i ], [ %i.adg, %bb.bs ], [ %i.any, %._crit_edge1508.i ], [ %i.bci, %bb.dt ], [ %.ph641, %bb.dc ], [ %i.zc, %bb.be ], [ %i.azg, %bb.dm ], [ %i.apt, %._crit_edge1515.i ], [ %.41276.i, %.lr.ph1593.i ], [ %.61278.i, %bb.fl ], [ %i.bbq, %bb.dr ], [ %i.agk, %bb.bv ], [ %.11273.i, %bb.es ], [ %i.adg, %bb.bo ], [ %.51277.i, %bb.fs ], [ %.81280.i, %bb.gs ], [ %.21274.i, %bb.gu ], [ %.71279.i, %.lr.ph1578.i ], [ %.01272.i, %bb.ew ], [ %i.bnt, %bb.el ], [ %i.bnt, %.lr.ph1549.i ], [ %.51277.i, %bb.fp ], [ %.21274.i, %.loopexit.loopexit1683.i ], [ %.51277.i, %bb.fh ], [ %.31275.i, %bb.fa ], [ %.71279.i, %bb.gh ], [ %.21274.i, %bb.fw ], [ %i.any, %bb.cr ], [ %i.apt, %bb.cw ], [ %.81280.i, %bb.gk ], [ %.21274.i, %bb.gd ], [ %.01272.i, %bb.eo ], [ %i.ayk, %._crit_edge1539.i ], [ %.pre1878.i, %bb.au ], [ %i.aik, %makeMaps_d.exit.i ], [ %i.akh, %bb.cc ], [ %.ph641, %bb.dg ], [ %i.xe, %._crit_edge.i ], [ 0, %bb.aw ], [ %.21274.i, %bb.hj ], [ %.51277.i, %bb.fu ], [ %.41276.i, %bb.fe ], [ %.91281.i, %bb.go ], [ %i.xe, %bb.ay ]
  %.141271.i = phi i32 [ %.41261.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.xf, %bb.hk ], [ %i.bec, %bb.dy ], [ %i.abf, %bb.bj ], [ %i.adh, %._crit_edge1500.i ], [ %i.adh, %bb.bs ], [ %i.anz, %._crit_edge1508.i ], [ %i.bcj, %bb.dt ], [ %.ph642, %bb.dc ], [ %i.zd, %bb.be ], [ %i.azh, %bb.dm ], [ %i.apu, %._crit_edge1515.i ], [ %.71264.i, %.lr.ph1593.i ], [ %.91266.i, %bb.fl ], [ %i.bbr, %bb.dr ], [ %i.agl, %bb.bv ], [ %.31260.i, %bb.es ], [ %i.adh, %bb.bo ], [ %.81265.i, %bb.fs ], [ %.121269.i, %bb.gs ], [ %.41261.i, %bb.gu ], [ %.111268.i, %.lr.ph1578.i ], [ %.21259.i, %bb.ew ], [ %.11258.i, %bb.el ], [ %.11258.i, %.lr.ph1549.i ], [ %.81265.i, %bb.fp ], [ %.41261.i, %.loopexit.loopexit1683.i ], [ %.81265.i, %bb.fh ], [ %.51262.i, %bb.fa ], [ %.111268.i, %bb.gh ], [ %.41261.i, %bb.fw ], [ %i.anz, %bb.cr ], [ %i.apu, %bb.cw ], [ %.121269.i, %bb.gk ], [ %.41261.i, %bb.gd ], [ %.21259.i, %bb.eo ], [ %i.ayl, %._crit_edge1539.i ], [ %.pre1880.i, %bb.au ], [ %i.ail, %makeMaps_d.exit.i ], [ %i.aki, %bb.cc ], [ %.ph642, %bb.dg ], [ %i.xf, %._crit_edge.i ], [ 0, %bb.aw ], [ %.41261.i, %bb.hj ], [ %.81265.i, %bb.fu ], [ %.71264.i, %bb.fe ], [ %.131270.i, %bb.go ], [ %i.xf, %bb.ay ]
  %.141256.i = phi i32 [ %.41246.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.xg, %bb.hk ], [ %i.bed, %bb.dy ], [ %i.abg, %bb.bj ], [ %i.adi, %._crit_edge1500.i ], [ %i.adi, %bb.bs ], [ %i.aoa, %._crit_edge1508.i ], [ %i.bck, %bb.dt ], [ %.ph643, %bb.dc ], [ %i.ze, %bb.be ], [ %i.azi, %bb.dm ], [ %i.apv, %._crit_edge1515.i ], [ %.71249.i, %.lr.ph1593.i ], [ %.91251.i, %bb.fl ], [ %i.bbs, %bb.dr ], [ %i.agm, %bb.bv ], [ %.31245.i, %bb.es ], [ %i.adi, %bb.bo ], [ %.81250.i, %bb.fs ], [ %.121254.i, %bb.gs ], [ %.41246.i, %bb.gu ], [ %.111253.i, %.lr.ph1578.i ], [ %.21244.i, %bb.ew ], [ %.11243.i, %bb.el ], [ %.11243.i, %.lr.ph1549.i ], [ %.81250.i, %bb.fp ], [ %.41246.i, %.loopexit.loopexit1683.i ], [ %.81250.i, %bb.fh ], [ %.51247.i, %bb.fa ], [ %.111253.i, %bb.gh ], [ %.41246.i, %bb.fw ], [ %i.aoa, %bb.cr ], [ %i.apv, %bb.cw ], [ %.121254.i, %bb.gk ], [ %.41246.i, %bb.gd ], [ %.21244.i, %bb.eo ], [ %i.aym, %._crit_edge1539.i ], [ %.pre1882.i, %bb.au ], [ %i.aim, %makeMaps_d.exit.i ], [ %i.akj, %bb.cc ], [ %.ph643, %bb.dg ], [ %i.xg, %._crit_edge.i ], [ 0, %bb.aw ], [ %.41246.i, %bb.hj ], [ %.81250.i, %bb.fu ], [ %.71249.i, %bb.fe ], [ %.131255.i, %bb.go ], [ %i.xg, %bb.ay ]
  %.141241.i = phi ptr [ %.41231.i, %indexIntoF.exit.i44 ], [ null, %bb.av ], [ %i.xh, %bb.hk ], [ %i.bee, %bb.dy ], [ %i.abh, %bb.bj ], [ %i.adj, %._crit_edge1500.i ], [ %i.adj, %bb.bs ], [ %i.aob, %._crit_edge1508.i ], [ %i.bcl, %bb.dt ], [ %.ph644, %bb.dc ], [ %i.zf, %bb.be ], [ %i.azj, %bb.dm ], [ %i.apw, %._crit_edge1515.i ], [ %.71234.i, %.lr.ph1593.i ], [ %.91236.i, %bb.fl ], [ %i.bbt, %bb.dr ], [ %i.agn, %bb.bv ], [ %.31230.i, %bb.es ], [ %i.adj, %bb.bo ], [ %.81235.i, %bb.fs ], [ %.121239.i, %bb.gs ], [ %.41231.i, %bb.gu ], [ %.111238.i, %.lr.ph1578.i ], [ %.21229.i, %bb.ew ], [ %.11228.i, %bb.el ], [ %.11228.i, %.lr.ph1549.i ], [ %.81235.i, %bb.fp ], [ %.41231.i, %.loopexit.loopexit1683.i ], [ %.81235.i, %bb.fh ], [ %.51232.i, %bb.fa ], [ %.111238.i, %bb.gh ], [ %.41231.i, %bb.fw ], [ %i.aob, %bb.cr ], [ %i.apw, %bb.cw ], [ %.121239.i, %bb.gk ], [ %.41231.i, %bb.gd ], [ %.21229.i, %bb.eo ], [ %i.ayn, %._crit_edge1539.i ], [ %.pre1884.i, %bb.au ], [ %i.ain, %makeMaps_d.exit.i ], [ %i.akk, %bb.cc ], [ %.ph644, %bb.dg ], [ %i.xh, %._crit_edge.i ], [ null, %bb.aw ], [ %.41231.i, %bb.hj ], [ %.81235.i, %bb.fu ], [ %.71234.i, %bb.fe ], [ %.131240.i, %bb.go ], [ %i.xh, %bb.ay ]
  %.141226.i = phi ptr [ %.41216.i, %indexIntoF.exit.i44 ], [ null, %bb.av ], [ %i.xi, %bb.hk ], [ %i.bef, %bb.dy ], [ %i.abi, %bb.bj ], [ %i.adk, %._crit_edge1500.i ], [ %i.adk, %bb.bs ], [ %i.aoc, %._crit_edge1508.i ], [ %i.bcm, %bb.dt ], [ %.ph645, %bb.dc ], [ %i.zg, %bb.be ], [ %i.azk, %bb.dm ], [ %i.apx, %._crit_edge1515.i ], [ %.71219.i, %.lr.ph1593.i ], [ %.91221.i, %bb.fl ], [ %i.bbu, %bb.dr ], [ %i.ago, %bb.bv ], [ %.31215.i, %bb.es ], [ %i.adk, %bb.bo ], [ %.81220.i, %bb.fs ], [ %.121224.i, %bb.gs ], [ %.41216.i, %bb.gu ], [ %.111223.i, %.lr.ph1578.i ], [ %.21214.i, %bb.ew ], [ %.11213.i, %bb.el ], [ %.11213.i, %.lr.ph1549.i ], [ %.81220.i, %bb.fp ], [ %.41216.i, %.loopexit.loopexit1683.i ], [ %.81220.i, %bb.fh ], [ %.51217.i, %bb.fa ], [ %.111223.i, %bb.gh ], [ %.41216.i, %bb.fw ], [ %i.aoc, %bb.cr ], [ %i.apx, %bb.cw ], [ %.121224.i, %bb.gk ], [ %.41216.i, %bb.gd ], [ %.21214.i, %bb.eo ], [ %i.ayo, %._crit_edge1539.i ], [ %.pre1886.i, %bb.au ], [ %i.aio, %makeMaps_d.exit.i ], [ %i.akl, %bb.cc ], [ %.ph645, %bb.dg ], [ %i.xi, %._crit_edge.i ], [ null, %bb.aw ], [ %.41216.i, %bb.hj ], [ %.81220.i, %bb.fu ], [ %.71219.i, %bb.fe ], [ %.131225.i, %bb.go ], [ %i.xi, %bb.ay ]
  %.141211.i = phi ptr [ %.41201.i, %indexIntoF.exit.i44 ], [ null, %bb.av ], [ %i.xj, %bb.hk ], [ %i.beg, %bb.dy ], [ %i.abj, %bb.bj ], [ %i.adl, %._crit_edge1500.i ], [ %i.adl, %bb.bs ], [ %i.aod, %._crit_edge1508.i ], [ %i.bcn, %bb.dt ], [ %.ph646, %bb.dc ], [ %i.zh, %bb.be ], [ %i.azl, %bb.dm ], [ %i.apy, %._crit_edge1515.i ], [ %.71204.i, %.lr.ph1593.i ], [ %.91206.i, %bb.fl ], [ %i.bbv, %bb.dr ], [ %i.agp, %bb.bv ], [ %.31200.i, %bb.es ], [ %i.adl, %bb.bo ], [ %.81205.i, %bb.fs ], [ %.121209.i, %bb.gs ], [ %.41201.i, %bb.gu ], [ %.111208.i, %.lr.ph1578.i ], [ %.21199.i, %bb.ew ], [ %.11198.i, %bb.el ], [ %.11198.i, %.lr.ph1549.i ], [ %.81205.i, %bb.fp ], [ %.41201.i, %.loopexit.loopexit1683.i ], [ %.81205.i, %bb.fh ], [ %.51202.i, %bb.fa ], [ %.111208.i, %bb.gh ], [ %.41201.i, %bb.fw ], [ %i.aod, %bb.cr ], [ %i.apy, %bb.cw ], [ %.121209.i, %bb.gk ], [ %.41201.i, %bb.gd ], [ %.21199.i, %bb.eo ], [ %i.ayp, %._crit_edge1539.i ], [ %.pre1888.i, %bb.au ], [ %i.aip, %makeMaps_d.exit.i ], [ %i.akm, %bb.cc ], [ %.ph646, %bb.dg ], [ %i.xj, %._crit_edge.i ], [ null, %bb.aw ], [ %.41201.i, %bb.hj ], [ %.81205.i, %bb.fu ], [ %.71204.i, %bb.fe ], [ %.131210.i, %bb.go ], [ %i.xj, %bb.ay ]
  %.101196.i = phi i32 [ %.21188.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.xd, %bb.hk ], [ %i.bea, %bb.dy ], [ %i.abd, %bb.bj ], [ %i.adf, %._crit_edge1500.i ], [ %i.adf, %bb.bs ], [ %i.anx, %._crit_edge1508.i ], [ %i.bch, %bb.dt ], [ %.ph640, %bb.dc ], [ %i.zb, %bb.be ], [ %i.azf, %bb.dm ], [ %i.aps, %._crit_edge1515.i ], [ %.41190.i, %.lr.ph1593.i ], [ %.61192.i, %bb.fl ], [ %i.bbp, %bb.dr ], [ %i.agj, %bb.bv ], [ %.11187.i, %bb.es ], [ %i.adf, %bb.bo ], [ %.51191.i, %bb.fs ], [ %.81194.i, %bb.gs ], [ %.21188.i, %bb.gu ], [ %.71193.i, %.lr.ph1578.i ], [ %.01186.i, %bb.ew ], [ %i.bns, %bb.el ], [ %i.bns, %.lr.ph1549.i ], [ %.51191.i, %bb.fp ], [ %.21188.i, %.loopexit.loopexit1683.i ], [ %.51191.i, %bb.fh ], [ %.31189.i, %bb.fa ], [ %.71193.i, %bb.gh ], [ %.21188.i, %bb.fw ], [ %i.anx, %bb.cr ], [ %i.aps, %bb.cw ], [ %.81194.i, %bb.gk ], [ %.21188.i, %bb.gd ], [ %.01186.i, %bb.eo ], [ %i.ayj, %._crit_edge1539.i ], [ %.pre1876.i, %bb.au ], [ %i.aij, %makeMaps_d.exit.i ], [ %i.akg, %bb.cc ], [ %.ph640, %bb.dg ], [ %i.xd, %._crit_edge.i ], [ 0, %bb.aw ], [ %.21188.i, %bb.hj ], [ %.51191.i, %bb.fu ], [ %.41190.i, %bb.fe ], [ %.91195.i, %bb.go ], [ %i.xd, %bb.ay ]
  %.111185.i = phi i32 [ %.31177.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.xc, %bb.hk ], [ %i.bdz, %bb.dy ], [ %i.abc, %bb.bj ], [ %i.ade, %._crit_edge1500.i ], [ %i.ade, %bb.bs ], [ %i.anw, %._crit_edge1508.i ], [ %i.bcg, %bb.dt ], [ %.ph639, %bb.dc ], [ %i.za, %bb.be ], [ %i.aze, %bb.dm ], [ %i.apr, %._crit_edge1515.i ], [ %.51179.i, %.lr.ph1593.i ], [ %.71181.i, %bb.fl ], [ %i.bbo, %bb.dr ], [ %i.agi, %bb.bv ], [ %.21176.i, %bb.es ], [ %i.ade, %bb.bo ], [ %.61180.i, %bb.fs ], [ %.91183.i, %bb.gs ], [ %.31177.i, %bb.gu ], [ %.81182.i, %.lr.ph1578.i ], [ %.11175.i, %bb.ew ], [ %.01174.i, %bb.el ], [ %.01174.i, %.lr.ph1549.i ], [ %.61180.i, %bb.fp ], [ %.31177.i, %.loopexit.loopexit1683.i ], [ %.61180.i, %bb.fh ], [ %.41178.i, %bb.fa ], [ %.81182.i, %bb.gh ], [ %.31177.i, %bb.fw ], [ %i.anw, %bb.cr ], [ %i.apr, %bb.cw ], [ %.91183.i, %bb.gk ], [ %.31177.i, %bb.gd ], [ %.11175.i, %bb.eo ], [ %i.ayi, %._crit_edge1539.i ], [ %.pre1874.i, %bb.au ], [ %i.aii, %makeMaps_d.exit.i ], [ %i.akf, %bb.cc ], [ %.ph639, %bb.dg ], [ %i.xc, %._crit_edge.i ], [ 0, %bb.aw ], [ %.31177.i, %bb.hj ], [ %.61180.i, %bb.fu ], [ %.51179.i, %bb.fe ], [ %.101184.i, %bb.go ], [ %i.xc, %bb.ay ]
  %.181173.i = phi i32 [ %.101165.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.xa, %bb.hk ], [ %.51160.i, %bb.dy ], [ %i.aba, %bb.bj ], [ %i.adc, %._crit_edge1500.i ], [ %i.adc, %bb.bs ], [ %i.anu, %._crit_edge1508.i ], [ %.41159.i, %bb.dt ], [ %.ph637, %bb.dc ], [ %i.yy, %bb.be ], [ %.11156.i, %bb.dm ], [ %i.app, %._crit_edge1515.i ], [ %.121167.i, %.lr.ph1593.i ], [ %.141169.i, %bb.fl ], [ %.31158.i, %bb.dr ], [ %i.agg, %bb.bv ], [ %.91164.i, %bb.es ], [ %i.adc, %bb.bo ], [ %.131168.i, %bb.fs ], [ %.161171.i, %bb.gs ], [ %.101165.i, %bb.gu ], [ %.151170.i, %.lr.ph1578.i ], [ %.81163.i, %bb.ew ], [ %.71162.i, %bb.el ], [ %.71162.i, %.lr.ph1549.i ], [ %.131168.i, %bb.fp ], [ %.101165.i, %.loopexit.loopexit1683.i ], [ %.131168.i, %bb.fh ], [ %.111166.i, %bb.fa ], [ %.151170.i, %bb.gh ], [ %.101165.i, %bb.fw ], [ %i.anu, %bb.cr ], [ %i.app, %bb.cw ], [ %.161171.i, %bb.gk ], [ %.101165.i, %bb.gd ], [ %.81163.i, %bb.eo ], [ %.01155.i, %._crit_edge1539.i ], [ %.pre1870.i, %bb.au ], [ %i.aig, %makeMaps_d.exit.i ], [ %i.akd, %bb.cc ], [ %.ph637, %bb.dg ], [ %i.xa, %._crit_edge.i ], [ 0, %bb.aw ], [ %.101165.i, %bb.hj ], [ %.131168.i, %bb.fu ], [ %.121167.i, %bb.fe ], [ %.171172.i, %bb.go ], [ %i.xa, %bb.ay ]
  %.81154.i = phi i32 [ %.01146.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wz, %bb.hk ], [ %i.bdx, %bb.dy ], [ %i.aaz, %bb.bj ], [ %i.adb, %._crit_edge1500.i ], [ %i.adb, %bb.bs ], [ %i.ant, %._crit_edge1508.i ], [ %i.bce, %bb.dt ], [ %.ph636, %bb.dc ], [ %i.yx, %bb.be ], [ %i.azc, %bb.dm ], [ %i.apo, %._crit_edge1515.i ], [ %.21148.i, %.lr.ph1593.i ], [ %.41150.i, %bb.fl ], [ %i.bbm, %bb.dr ], [ %i.agf, %bb.bv ], [ %i.bpg, %bb.es ], [ %i.adb, %bb.bo ], [ %.31149.i, %bb.fs ], [ %.61152.i, %bb.gs ], [ %.01146.i, %bb.gu ], [ %.51151.i, %.lr.ph1578.i ], [ %i.box, %bb.ew ], [ %i.bnq, %bb.el ], [ %i.bnq, %.lr.ph1549.i ], [ %.31149.i, %bb.fp ], [ %.01146.i, %.loopexit.loopexit1683.i ], [ %.31149.i, %bb.fh ], [ %i.bqv, %bb.fa ], [ %.51151.i, %bb.gh ], [ %.01146.i, %bb.fw ], [ %i.ant, %bb.cr ], [ %i.apo, %bb.cw ], [ %.61152.i, %bb.gk ], [ %.01146.i, %bb.gd ], [ %i.box, %bb.eo ], [ %i.ayg, %._crit_edge1539.i ], [ %.pre1868.i, %bb.au ], [ %i.aif, %makeMaps_d.exit.i ], [ %i.akc, %bb.cc ], [ %.ph636, %bb.dg ], [ %i.wz, %._crit_edge.i ], [ 0, %bb.aw ], [ %.01146.i, %bb.hj ], [ %.31149.i, %bb.fu ], [ %.21148.i, %bb.fe ], [ %.71153.i, %bb.go ], [ %i.wz, %bb.ay ]
  %.121145.i = phi i32 [ %.01133.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wy, %bb.hk ], [ %i.bdw, %bb.dy ], [ %i.aay, %bb.bj ], [ %i.ada, %._crit_edge1500.i ], [ %i.ada, %bb.bs ], [ %i.ans, %._crit_edge1508.i ], [ %i.bcd, %bb.dt ], [ %.ph635, %bb.dc ], [ %i.yw, %bb.be ], [ %i.azb, %bb.dm ], [ %i.apn, %._crit_edge1515.i ], [ %.31136.i, %.lr.ph1593.i ], [ %.51138.i, %bb.fl ], [ %i.bbl, %bb.dr ], [ %i.age, %bb.bv ], [ %i.bpf, %bb.es ], [ %i.ada, %bb.bo ], [ %.611391598.i, %bb.fs ], [ %.101143.i, %bb.gs ], [ %.01133.i, %bb.gu ], [ %.91142.i, %.lr.ph1578.i ], [ %i.bow, %bb.ew ], [ %i.bnp, %bb.el ], [ %i.bnp, %.lr.ph1549.i ], [ %.41137.i, %bb.fp ], [ %.01133.i, %.loopexit.loopexit1683.i ], [ %.41137.i, %bb.fh ], [ %.21135.i, %bb.fa ], [ %.91142.i, %bb.gh ], [ %.01133.i, %bb.fw ], [ %i.ans, %bb.cr ], [ %i.apn, %bb.cw ], [ %.101143.i, %bb.gk ], [ %.01133.i, %bb.gd ], [ %i.bow, %bb.eo ], [ %i.ayf, %._crit_edge1539.i ], [ %.pre1866.i, %bb.au ], [ %i.aie, %makeMaps_d.exit.i ], [ %i.akb, %bb.cc ], [ %.ph635, %bb.dg ], [ %i.wy, %._crit_edge.i ], [ 0, %bb.aw ], [ %.01133.i, %bb.hj ], [ %.711401603.i, %bb.fu ], [ %.31136.i, %bb.fe ], [ %.111144.i, %bb.go ], [ %i.wy, %bb.ay ]
  %.141132.i = phi i32 [ %.31121.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wx, %bb.hk ], [ %i.bdv, %bb.dy ], [ %i.aax, %bb.bj ], [ %i.acz, %._crit_edge1500.i ], [ %i.acz, %bb.bs ], [ %i.anr, %._crit_edge1508.i ], [ %i.bcc, %bb.dt ], [ %.ph634, %bb.dc ], [ %i.yv, %bb.be ], [ %i.aza, %bb.dm ], [ %i.apm, %._crit_edge1515.i ], [ %.51123.i, %.lr.ph1593.i ], [ %.71125.i, %bb.fl ], [ %i.bbk, %bb.dr ], [ %i.agd, %bb.bv ], [ %.21120.i, %bb.es ], [ %i.acz, %bb.bo ], [ %smax.i, %bb.fs ], [ %.121130.i, %bb.gs ], [ %.31121.i, %bb.gu ], [ %.111129.i, %.lr.ph1578.i ], [ %.11119.i, %bb.ew ], [ %.01118.i, %bb.el ], [ %.01118.i, %.lr.ph1549.i ], [ %.61124.i, %bb.fp ], [ %.31121.i, %.loopexit.loopexit1683.i ], [ %.61124.i, %bb.fh ], [ %.41122.i, %bb.fa ], [ %.111129.i, %bb.gh ], [ %.31121.i, %bb.fw ], [ %i.anr, %bb.cr ], [ %i.apm, %bb.cw ], [ %.121130.i, %bb.gk ], [ %i.cfn, %bb.gd ], [ %.11119.i, %bb.eo ], [ 0, %._crit_edge1539.i ], [ %.pre1864.i, %bb.au ], [ %i.aid, %makeMaps_d.exit.i ], [ %i.aka, %bb.cc ], [ %.ph634, %bb.dg ], [ %i.wx, %._crit_edge.i ], [ 0, %bb.aw ], [ %.31121.i, %bb.hj ], [ %smax1806.i, %bb.fu ], [ %.51123.i, %bb.fe ], [ %.131131.i, %bb.go ], [ %i.wx, %bb.ay ]
  %.111117.i = phi i32 [ %.31109.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.ww, %bb.hk ], [ %i.bdu, %bb.dy ], [ %i.aaw, %bb.bj ], [ %i.acy, %._crit_edge1500.i ], [ %i.acy, %bb.bs ], [ %i.anq, %._crit_edge1508.i ], [ %i.bcb, %bb.dt ], [ %.ph633, %bb.dc ], [ %i.yu, %bb.be ], [ %i.ayz, %bb.dm ], [ %i.apl, %._crit_edge1515.i ], [ %.51111.i, %.lr.ph1593.i ], [ %.71113.i, %bb.fl ], [ %i.bbj, %bb.dr ], [ %i.agc, %bb.bv ], [ %.21108.i, %bb.es ], [ %i.acy, %bb.bo ], [ %.61112.i, %bb.fs ], [ %.91115.i, %bb.gs ], [ %.31109.i, %bb.gu ], [ %.81114.i, %.lr.ph1578.i ], [ %.11107.i, %bb.ew ], [ %.01106.i, %bb.el ], [ %.01106.i, %.lr.ph1549.i ], [ %.61112.i, %bb.fp ], [ %.31109.i, %.loopexit.loopexit1683.i ], [ %.61112.i, %bb.fh ], [ %.41110.i, %bb.fa ], [ %.81114.i, %bb.gh ], [ %.31109.i, %bb.fw ], [ %i.anq, %bb.cr ], [ %i.apl, %bb.cw ], [ %.91115.i, %bb.gk ], [ %.31109.i, %bb.gd ], [ %.11107.i, %bb.eo ], [ %i.bne, %._crit_edge1539.i ], [ %.pre1862.i, %bb.au ], [ %i.aic, %makeMaps_d.exit.i ], [ %i.ajz, %bb.cc ], [ %.ph633, %bb.dg ], [ %i.ww, %._crit_edge.i ], [ 0, %bb.aw ], [ %.31109.i, %bb.hj ], [ %.61112.i, %bb.fu ], [ %.51111.i, %bb.fe ], [ %.101116.i, %bb.go ], [ %i.ww, %bb.ay ]
  %.81105.i = phi i32 [ %.01097.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wv, %bb.hk ], [ %i.bdt, %bb.dy ], [ %i.aav, %bb.bj ], [ %i.acx, %._crit_edge1500.i ], [ %i.acx, %bb.bs ], [ %i.anp, %._crit_edge1508.i ], [ %i.bca, %bb.dt ], [ %.ph632, %bb.dc ], [ %i.yt, %bb.be ], [ %i.ayy, %bb.dm ], [ %i.apk, %._crit_edge1515.i ], [ %.21099.i, %.lr.ph1593.i ], [ %.41101.i, %bb.fl ], [ %i.bbi, %bb.dr ], [ %i.agb, %bb.bv ], [ %i.bpe, %bb.es ], [ %i.acx, %bb.bo ], [ %i.bua, %bb.fs ], [ %.61103.i, %bb.gs ], [ %.01097.i, %bb.gu ], [ %.51102.i, %.lr.ph1578.i ], [ %i.bov, %bb.ew ], [ %i.bno, %bb.el ], [ %i.bno, %.lr.ph1549.i ], [ %.31100.i, %bb.fp ], [ %.01097.i, %.loopexit.loopexit1683.i ], [ %.31100.i, %bb.fh ], [ %.11098.i, %bb.fa ], [ %.51102.i, %bb.gh ], [ %.01097.i, %bb.fw ], [ %i.anp, %bb.cr ], [ %i.apk, %bb.cw ], [ %.61103.i, %bb.gk ], [ %.01097.i, %bb.gd ], [ %i.bov, %bb.eo ], [ %i.ayc, %._crit_edge1539.i ], [ %.pre1860.i, %bb.au ], [ %i.aib, %makeMaps_d.exit.i ], [ %i.ajy, %bb.cc ], [ %.ph632, %bb.dg ], [ %i.wv, %._crit_edge.i ], [ 0, %bb.aw ], [ %.01097.i, %bb.hj ], [ %i.bua, %bb.fu ], [ %.21099.i, %bb.fe ], [ %.71104.i, %bb.go ], [ %i.wv, %bb.ay ]
  %.141096.i = phi i32 [ %.41086.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wu, %bb.hk ], [ %i.bds, %bb.dy ], [ %i.aau, %bb.bj ], [ %i.acw, %._crit_edge1500.i ], [ %i.acw, %bb.bs ], [ %i.ano, %._crit_edge1508.i ], [ %i.bbz, %bb.dt ], [ %.ph631, %bb.dc ], [ %i.ys, %bb.be ], [ %i.ayx, %bb.dm ], [ %i.apj, %._crit_edge1515.i ], [ %.71089.i, %.lr.ph1593.i ], [ %.91091.i, %bb.fl ], [ %i.bbh, %bb.dr ], [ %i.aga, %bb.bv ], [ %.31085.i, %bb.es ], [ %i.acw, %bb.bo ], [ %.81090.i, %bb.fs ], [ %.121094.i, %bb.gs ], [ %.41086.i, %bb.gu ], [ %.111093.i, %.lr.ph1578.i ], [ %.21084.i, %bb.ew ], [ %.11083.i, %bb.el ], [ %.11083.i, %.lr.ph1549.i ], [ %.81090.i, %bb.fp ], [ %.41086.i, %.loopexit.loopexit1683.i ], [ %.81090.i, %bb.fh ], [ 0, %bb.fa ], [ %.111093.i, %bb.gh ], [ %.41086.i, %bb.fw ], [ %i.ano, %bb.cr ], [ %i.apj, %bb.cw ], [ %.121094.i, %bb.gk ], [ 0, %bb.gd ], [ %.21084.i, %bb.eo ], [ 0, %._crit_edge1539.i ], [ %.pre1858.i, %bb.au ], [ %i.aia, %makeMaps_d.exit.i ], [ %i.ajx, %bb.cc ], [ %.ph631, %bb.dg ], [ %i.wu, %._crit_edge.i ], [ 0, %bb.aw ], [ %.41086.i, %bb.hj ], [ %.81090.i, %bb.fu ], [ %.71089.i, %bb.fe ], [ %.131095.i, %bb.go ], [ %i.wu, %bb.ay ]
  %.141081.i = phi i32 [ %.41071.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wt, %bb.hk ], [ %i.bdr, %bb.dy ], [ %i.aat, %bb.bj ], [ %i.acv, %._crit_edge1500.i ], [ %i.acv, %bb.bs ], [ %i.ann, %._crit_edge1508.i ], [ %i.bby, %bb.dt ], [ %.ph630, %bb.dc ], [ %i.yr, %bb.be ], [ %i.ayw, %bb.dm ], [ %i.api, %._crit_edge1515.i ], [ %.71074.i, %.lr.ph1593.i ], [ %.91076.i, %bb.fl ], [ %i.bbg, %bb.dr ], [ %i.afz, %bb.bv ], [ %.31070.i, %bb.es ], [ %i.acv, %bb.bo ], [ %.81075.i, %bb.fs ], [ %.121079.i, %bb.gs ], [ %.41071.i, %bb.gu ], [ %.111078.i, %.lr.ph1578.i ], [ %.21069.i, %bb.ew ], [ %.11068.i, %bb.el ], [ %.11068.i, %.lr.ph1549.i ], [ %.81075.i, %bb.fp ], [ %.41071.i, %.loopexit.loopexit1683.i ], [ %.81075.i, %bb.fh ], [ %i.bqx, %bb.fa ], [ %.111078.i, %bb.gh ], [ %.41071.i, %bb.fw ], [ %i.ann, %bb.cr ], [ %i.api, %bb.cw ], [ %.121079.i, %bb.gk ], [ %i.cfp, %bb.gd ], [ %.21069.i, %bb.eo ], [ 0, %._crit_edge1539.i ], [ %.pre1856.i, %bb.au ], [ %i.ahz, %makeMaps_d.exit.i ], [ %i.ajw, %bb.cc ], [ %.ph630, %bb.dg ], [ %i.wt, %._crit_edge.i ], [ 0, %bb.aw ], [ %.41071.i, %bb.hj ], [ %.81075.i, %bb.fu ], [ %.71074.i, %bb.fe ], [ %.131080.i, %bb.go ], [ %i.wt, %bb.ay ]
  %.111064.i = phi i32 [ %.01097.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.ws, %bb.hk ], [ %i.bdq, %bb.dy ], [ %i.aas, %bb.bj ], [ %i.acu, %._crit_edge1500.i ], [ %i.acu, %bb.bs ], [ %i.anm, %._crit_edge1508.i ], [ %i.bbx, %bb.dt ], [ %.ph629, %bb.dc ], [ %i.yq, %bb.be ], [ %i.ayv, %bb.dm ], [ %i.aph, %._crit_edge1515.i ], [ %.51058.i, %.lr.ph1593.i ], [ %.71060.i, %bb.fl ], [ %i.bbf, %bb.dr ], [ %i.afy, %bb.bv ], [ %.21055.i, %bb.es ], [ %i.acu, %bb.bo ], [ %.61059.i, %bb.fs ], [ %.91062.i, %bb.gs ], [ %.01097.i, %bb.gu ], [ %.81061.i, %.lr.ph1578.i ], [ %.11054.i, %bb.ew ], [ %.01053.i, %bb.el ], [ %.01053.i, %.lr.ph1549.i ], [ %.61059.i, %bb.fp ], [ %.01097.i, %.loopexit.loopexit1683.i ], [ %.61059.i, %bb.fh ], [ %.41057.i, %bb.fa ], [ %.81061.i, %bb.gh ], [ %.31056.i, %bb.fw ], [ %i.anm, %bb.cr ], [ %i.aph, %bb.cw ], [ %.91062.i, %bb.gk ], [ %.31056.i, %bb.gd ], [ %.11054.i, %bb.eo ], [ %i.bnd, %._crit_edge1539.i ], [ %.pre1854.i, %bb.au ], [ %i.ahy, %makeMaps_d.exit.i ], [ %i.ajv, %bb.cc ], [ %.ph629, %bb.dg ], [ %i.ws, %._crit_edge.i ], [ 0, %bb.aw ], [ %.01097.i, %bb.hj ], [ %.61059.i, %bb.fu ], [ %.51058.i, %bb.fe ], [ %.101063.i, %bb.go ], [ %i.ws, %bb.ay ]
  %.201052.i = phi i32 [ %.121044.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wr, %bb.hk ], [ %.81040.i, %bb.dy ], [ %i.aar, %bb.bj ], [ %i.act, %._crit_edge1500.i ], [ %i.act, %bb.bs ], [ %i.anl, %._crit_edge1508.i ], [ %.71039.i, %bb.dt ], [ %.21034.i.ph, %bb.dc ], [ %i.yp, %bb.be ], [ %.41036.i, %bb.dm ], [ 0, %._crit_edge1515.i ], [ %.141046.i, %.lr.ph1593.i ], [ %.161048.i, %bb.fl ], [ %.61038.i, %bb.dr ], [ %i.afx, %bb.bv ], [ %.111043.i, %bb.es ], [ %i.act, %bb.bo ], [ %.151047.i, %bb.fs ], [ %.181050.i, %bb.gs ], [ %.121044.i, %bb.gu ], [ %.171049.i, %.lr.ph1578.i ], [ %.101042.i, %bb.ew ], [ %.91041.i, %bb.el ], [ %.91041.i, %.lr.ph1549.i ], [ %.151047.i, %bb.fp ], [ %.121044.i, %.loopexit.loopexit1683.i ], [ %.151047.i, %bb.fh ], [ %.131045.i, %bb.fa ], [ %.171049.i, %bb.gh ], [ %.121044.i, %bb.fw ], [ %i.anl, %bb.cr ], [ %i.apg, %bb.cw ], [ %.181050.i, %bb.gk ], [ %.121044.i, %bb.gd ], [ %.101042.i, %bb.eo ], [ %.31035.i, %._crit_edge1539.i ], [ %.pre1852.i, %bb.au ], [ %i.ahx, %makeMaps_d.exit.i ], [ %i.aju, %bb.cc ], [ %.21034.i.ph, %bb.dg ], [ %i.wr, %._crit_edge.i ], [ 0, %bb.aw ], [ %.121044.i, %bb.hj ], [ %.151047.i, %bb.fu ], [ %.141046.i, %bb.fe ], [ %.191051.i, %bb.go ], [ %i.wr, %bb.ay ]
  %.211031.i = phi i32 [ %.131023.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wq, %bb.hk ], [ %.91019.i, %bb.dy ], [ %i.aaq, %bb.bj ], [ %i.acs, %._crit_edge1500.i ], [ %i.acs, %bb.bs ], [ %i.aom, %._crit_edge1508.i ], [ %.81018.i, %bb.dt ], [ %.31013.i.ph, %bb.dc ], [ %i.yo, %bb.be ], [ %.51015.i, %bb.dm ], [ %.01010.i, %._crit_edge1515.i ], [ %.151025.i, %.lr.ph1593.i ], [ %.171027.i, %bb.fl ], [ %.71017.i, %bb.dr ], [ %i.afw, %bb.bv ], [ %.121022.i, %bb.es ], [ %i.acs, %bb.bo ], [ %.161026.i, %bb.fs ], [ %.191029.i, %bb.gs ], [ %.131023.i, %bb.gu ], [ %.181028.i, %.lr.ph1578.i ], [ %.111021.i, %bb.ew ], [ %.101020.i, %bb.el ], [ %.101020.i, %.lr.ph1549.i ], [ %.161026.i, %bb.fp ], [ %.131023.i, %.loopexit.loopexit1683.i ], [ %.161026.i, %bb.fh ], [ %.141024.i, %bb.fa ], [ %.181028.i, %bb.gh ], [ %.131023.i, %bb.fw ], [ %i.ank, %bb.cr ], [ %.01010.i, %bb.cw ], [ %.191029.i, %bb.gk ], [ %.131023.i, %bb.gd ], [ %.111021.i, %bb.eo ], [ %.41014.i, %._crit_edge1539.i ], [ %.pre1850.i, %bb.au ], [ %i.ahw, %makeMaps_d.exit.i ], [ %i.ajt, %bb.cc ], [ %.31013.i.ph, %bb.dg ], [ %i.wq, %._crit_edge.i ], [ 0, %bb.aw ], [ %.131023.i, %bb.hj ], [ %.161026.i, %bb.fu ], [ %.151025.i, %bb.fe ], [ %.201030.i, %bb.go ], [ %i.wq, %bb.ay ]
  %.221005.i = phi i32 [ %.14997.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wp, %bb.hk ], [ %.10993.i, %bb.dy ], [ %i.aap, %bb.bj ], [ %i.acr, %._crit_edge1500.i ], [ %i.acr, %bb.bs ], [ %.0983.i, %._crit_edge1508.i ], [ %.9992.i, %bb.dt ], [ %.4987.i.ph, %bb.dc ], [ %i.yn, %bb.be ], [ %.6989.i, %bb.dm ], [ %.1984.i, %._crit_edge1515.i ], [ %.16999.i, %.lr.ph1593.i ], [ %.181001.i, %bb.fl ], [ %.8991.i, %bb.dr ], [ %i.afv, %bb.bv ], [ %.13996.i, %bb.es ], [ %i.acr, %bb.bo ], [ %.171000.i, %bb.fs ], [ %.201003.i, %bb.gs ], [ %.14997.i, %bb.gu ], [ %.191002.i, %.lr.ph1578.i ], [ %.12995.i, %bb.ew ], [ %.11994.i, %bb.el ], [ %.11994.i, %.lr.ph1549.i ], [ %.171000.i, %bb.fp ], [ %.14997.i, %.loopexit.loopexit1683.i ], [ %.171000.i, %bb.fh ], [ %.15998.i, %bb.fa ], [ %.191002.i, %bb.gh ], [ %.14997.i, %bb.fw ], [ %.0983.i, %bb.cr ], [ %.1984.i, %bb.cw ], [ %.201003.i, %bb.gk ], [ %.14997.i, %bb.gd ], [ %.12995.i, %bb.eo ], [ %.5988.i, %._crit_edge1539.i ], [ %.pre1848.i, %bb.au ], [ %i.ahv, %makeMaps_d.exit.i ], [ %i.ajs, %bb.cc ], [ %.4987.i.ph, %bb.dg ], [ %i.wp, %._crit_edge.i ], [ 0, %bb.aw ], [ %.14997.i, %bb.hj ], [ %.171000.i, %bb.fu ], [ %.16999.i, %bb.fe ], [ %.211004.i, %bb.go ], [ %i.wp, %bb.ay ]
  %.18982.i = phi i32 [ %.10974.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wo, %bb.hk ], [ %.5969.i, %bb.dy ], [ %i.aao, %bb.bj ], [ %i.acq, %._crit_edge1500.i ], [ %i.acq, %bb.bs ], [ %i.anj, %._crit_edge1508.i ], [ %.4968.i, %bb.dt ], [ %.ph, %bb.dc ], [ %i.ym, %bb.be ], [ %.1965.i, %bb.dm ], [ %i.apf, %._crit_edge1515.i ], [ %.12976.i, %.lr.ph1593.i ], [ %.14978.i, %bb.fl ], [ %.3967.i, %bb.dr ], [ %i.afu, %bb.bv ], [ %.9973.i, %bb.es ], [ %i.acq, %bb.bo ], [ %.13977.i, %bb.fs ], [ %.16980.i, %bb.gs ], [ %.10974.i, %bb.gu ], [ %.15979.i, %.lr.ph1578.i ], [ %.8972.i, %bb.ew ], [ %.7971.i, %bb.el ], [ %.7971.i, %.lr.ph1549.i ], [ %.13977.i, %bb.fp ], [ %.10974.i, %.loopexit.loopexit1683.i ], [ %.13977.i, %bb.fh ], [ %.11975.i, %bb.fa ], [ %.15979.i, %bb.gh ], [ %.10974.i, %bb.fw ], [ %i.anj, %bb.cr ], [ %i.apf, %bb.cw ], [ %.16980.i, %bb.gk ], [ %.10974.i, %bb.gd ], [ %.8972.i, %bb.eo ], [ %.6970.lcssa.i, %._crit_edge1539.i ], [ %.pre1846.i, %bb.au ], [ %i.ahu, %makeMaps_d.exit.i ], [ %i.ajr, %bb.cc ], [ %.ph, %bb.dg ], [ %i.wo, %._crit_edge.i ], [ 0, %bb.aw ], [ %.10974.i, %bb.hj ], [ %.13977.i, %bb.fu ], [ %.12976.i, %bb.fe ], [ %.17981.i, %bb.go ], [ %i.wo, %bb.ay ]
  %.28963.i = phi i32 [ %i.cmm, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wn, %bb.hk ], [ %.14949.i, %bb.dy ], [ %i.aan, %bb.bj ], [ %i.acp, %._crit_edge1500.i ], [ %i.acp, %bb.bs ], [ %.4939.i, %._crit_edge1508.i ], [ %.13948.i, %bb.dt ], [ %.8943.i, %bb.dc ], [ %i.yl, %bb.be ], [ %.10945.i, %bb.dm ], [ %.5940.i, %._crit_edge1515.i ], [ %.20955.i, %.lr.ph1593.i ], [ %.22957.i, %bb.fl ], [ %.12947.i, %bb.dr ], [ %i.aft, %bb.bv ], [ %.17952.i, %bb.es ], [ %i.acp, %bb.bo ], [ %.21956.i, %bb.fs ], [ %.24959.i, %bb.gs ], [ %.18953.i, %bb.gu ], [ %.23958.i, %.lr.ph1578.i ], [ %.16951.i, %bb.ew ], [ %.15950.i, %bb.el ], [ %.15950.i, %.lr.ph1549.i ], [ %.21956.i, %bb.fp ], [ %.18953.i, %.loopexit.loopexit1683.i ], [ %.21956.i, %bb.fh ], [ %.19954.i, %bb.fa ], [ %.23958.i, %bb.gh ], [ %.18953.i, %bb.fw ], [ %.4939.i, %bb.cr ], [ %.5940.i, %bb.cw ], [ %.24959.i, %bb.gk ], [ %.18953.i, %bb.gd ], [ %.16951.i, %bb.eo ], [ %.9944.i, %._crit_edge1539.i ], [ %.pre1844.i, %bb.au ], [ %.0935.i, %makeMaps_d.exit.i ], [ %.2937.i, %bb.cc ], [ %i.asx, %bb.dg ], [ %i.wn, %._crit_edge.i ], [ 0, %bb.aw ], [ %.18953.i, %bb.hj ], [ %.21956.i, %bb.fu ], [ %.20955.i, %bb.fe ], [ %.25960.i, %bb.go ], [ %i.wn, %bb.ay ]
  %.40.i = phi i32 [ %.26961.i, %indexIntoF.exit.i44 ], [ 0, %bb.av ], [ %i.wm, %bb.hk ], [ %.18.i, %bb.dy ], [ %i.aam, %bb.bj ], [ %i.aco, %._crit_edge1500.i ], [ %i.aco, %bb.bs ], [ %.7.i, %._crit_edge1508.i ], [ %.17.i, %bb.dt ], [ %.11.i.ph, %bb.dc ], [ %i.yk, %bb.be ], [ %.14.i, %bb.dm ], [ %.8.i, %._crit_edge1515.i ], [ %.26.i, %.lr.ph1593.i ], [ %.28.i, %bb.fl ], [ %.16.i, %bb.dr ], [ %.1934.i, %bb.bv ], [ %.23.i, %bb.es ], [ %i.aco, %bb.bo ], [ %.27.i, %bb.fs ], [ %.30.i, %bb.gs ], [ %.24.i, %bb.gu ], [ %.29.i, %.lr.ph1578.i ], [ %.22.i, %bb.ew ], [ %.21.i, %bb.el ], [ %.21.i, %.lr.ph1549.i ], [ %.27.i, %bb.fp ], [ %i.cpv, %.loopexit.loopexit1683.i ], [ %.27.i, %bb.fh ], [ %.25.i, %bb.fa ], [ %.29.i, %bb.gh ], [ %.24.i, %bb.fw ], [ %.7.i, %bb.cr ], [ %.8.i, %bb.cw ], [ %.30.i, %bb.gk ], [ %.24.i, %bb.gd ], [ %.22.i, %bb.eo ], [ 256, %._crit_edge1539.i ], [ %.pre.i36, %bb.au ], [ %.3.i47, %makeMaps_d.exit.i ], [ %.5.i, %bb.cc ], [ %.11.i.ph, %bb.dg ], [ %i.wm, %._crit_edge.i ], [ 0, %bb.aw ], [ %.31121.i, %bb.hj ], [ %.27.i, %bb.fu ], [ %.26.i, %bb.fe ], [ %.31.i, %bb.go ], [ %i.wm, %bb.ay ]
  %i.cpx = phi i1 [ false, %indexIntoF.exit.i44 ], [ false, %bb.av ], [ true, %bb.hk ], [ false, %bb.dy ], [ false, %bb.bj ], [ false, %._crit_edge1500.i ], [ false, %bb.bs ], [ false, %._crit_edge1508.i ], [ false, %bb.dt ], [ false, %bb.dc ], [ false, %bb.be ], [ false, %bb.dm ], [ false, %._crit_edge1515.i ], [ false, %.lr.ph1593.i ], [ false, %bb.fl ], [ false, %bb.dr ], [ false, %bb.bv ], [ false, %bb.es ], [ false, %bb.bo ], [ false, %bb.fs ], [ false, %bb.gs ], [ false, %bb.gu ], [ false, %.lr.ph1578.i ], [ false, %bb.ew ], [ false, %bb.el ], [ false, %.lr.ph1549.i ], [ false, %bb.fp ], [ false, %.loopexit.loopexit1683.i ], [ false, %bb.fh ], [ false, %bb.fa ], [ false, %bb.gh ], [ false, %bb.fw ], [ false, %bb.cr ], [ false, %bb.cw ], [ false, %bb.gk ], [ false, %bb.gd ], [ false, %bb.eo ], [ false, %._crit_edge1539.i ], [ false, %bb.au ], [ false, %makeMaps_d.exit.i ], [ false, %bb.cc ], [ false, %bb.dg ], [ false, %._crit_edge.i ], [ false, %bb.aw ], [ false, %bb.hj ], [ false, %bb.fu ], [ false, %bb.fe ], [ false, %bb.go ], [ false, %bb.ay ]
  %.0921.i = phi i32 [ 0, %indexIntoF.exit.i44 ], [ -3, %bb.av ], [ 4, %bb.hk ], [ 0, %bb.dy ], [ 0, %bb.bj ], [ -4, %._crit_edge1500.i ], [ -4, %bb.bs ], [ -4, %._crit_edge1508.i ], [ 0, %bb.dt ], [ 0, %bb.dc ], [ 0, %bb.be ], [ 0, %bb.dm ], [ -4, %._crit_edge1515.i ], [ 0, %.lr.ph1593.i ], [ 0, %bb.fl ], [ -4, %bb.dr ], [ 0, %bb.bv ], [ 0, %bb.es ], [ 0, %bb.bo ], [ -4, %bb.fs ], [ -4, %bb.gs ], [ -4, %bb.gu ], [ 0, %.lr.ph1578.i ], [ -4, %bb.ew ], [ 0, %bb.el ], [ 0, %.lr.ph1549.i ], [ -4, %bb.fp ], [ -4, %.loopexit.loopexit1683.i ], [ -4, %bb.fh ], [ -4, %bb.fa ], [ 0, %bb.gh ], [ -4, %bb.fw ], [ 0, %bb.cr ], [ 0, %bb.cw ], [ -4, %bb.gk ], [ -4, %bb.gd ], [ -4, %bb.eo ], [ -4, %._crit_edge1539.i ], [ -4, %bb.au ], [ -4, %makeMaps_d.exit.i ], [ 0, %bb.cc ], [ -4, %bb.dg ], [ -4, %._crit_edge.i ], [ -3, %bb.aw ], [ 0, %bb.hj ], [ -4, %bb.fu ], [ 0, %bb.fe ], [ 0, %bb.go ], [ 0, %bb.ay ]
  store i32 %.40.i, ptr %i.u, align 4, !tbaa !52
  store i32 %.28963.i, ptr %.phi.trans.insert1843.i, align 8, !tbaa !53
  store i32 %.18982.i, ptr %.phi.trans.insert1845.i, align 4, !tbaa !54
  store i32 %.221005.i, ptr %.phi.trans.insert1847.i, align 8, !tbaa !55
  store i32 %.211031.i, ptr %.phi.trans.insert1849.i, align 4, !tbaa !56
  store i32 %.201052.i, ptr %.phi.trans.insert1851.i, align 8, !tbaa !57
  store i32 %.111064.i, ptr %.phi.trans.insert1853.i, align 4, !tbaa !58
  store i32 %.141081.i, ptr %.phi.trans.insert1855.i, align 8, !tbaa !59
  store i32 %.141096.i, ptr %.phi.trans.insert1857.i, align 4, !tbaa !60
  store i32 %.81105.i, ptr %.phi.trans.insert1859.i, align 8, !tbaa !61
  store i32 %.111117.i, ptr %.phi.trans.insert1861.i, align 4, !tbaa !62
  store i32 %.141132.i, ptr %i.l, align 8, !tbaa !36
  store i32 %.121145.i, ptr %.phi.trans.insert1865.i, align 4, !tbaa !63
  store i32 %.81154.i, ptr %.phi.trans.insert1867.i, align 8, !tbaa !64
  store i32 %.181173.i, ptr %.phi.trans.insert1869.i, align 4, !tbaa !65
  store i32 %i.cpw, ptr %.phi.trans.insert1871.i, align 8, !tbaa !66
  store i32 %.111185.i, ptr %.phi.trans.insert1873.i, align 4, !tbaa !67
  store i32 %.101196.i, ptr %.phi.trans.insert1875.i, align 8, !tbaa !68
  store i32 %.101282.i, ptr %.phi.trans.insert1877.i, align 4, !tbaa !69
  store i32 %.141271.i, ptr %.phi.trans.insert1879.i, align 8, !tbaa !70
  store i32 %.141256.i, ptr %.phi.trans.insert1881.i, align 4, !tbaa !71
  store ptr %.141241.i, ptr %.phi.trans.insert1883.i, align 8, !tbaa !72
  store ptr %.141226.i, ptr %.phi.trans.insert1885.i, align 8, !tbaa !73
  store ptr %.141211.i, ptr %.phi.trans.insert1887.i, align 8, !tbaa !74
  br i1 %i.cpx, label %unRLE_obuf_to_output_SMALL.exit.thread, label %BZ2_decompress.exit.thread

BZ2_decompress.exit.thread:                       ; preds = %._crit_edge1624.i, %BZ2_decompress.exit
  %.0.i3855 = phi i32 [ %.0921.i, %BZ2_decompress.exit ], [ 1, %._crit_edge1624.i ]
  %i.cpy = load i32, ptr %i.g, align 8, !tbaa !19
  %.not31 = icmp eq i32 %i.cpy, 2
  br i1 %.not31, label %.outer, label %unRLE_obuf_to_output_SMALL.exit.thread

unRLE_obuf_to_output_SMALL.exit.thread:           ; preds = %bb.d, %BZ2_decompress.exit, %unRLE_obuf_to_output_SMALL.exit, %bb.ar, %BZ2_decompress.exit.thread, %bb.k, %bb.an, %bb.aj, %bb.ag, %bb.ad, %bb.ab, %bb.am, %bb.c, %bb.b, %bb.a
  %.3 = phi i32 [ -4, %bb.an ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ], [ -4, %bb.k ], [ -4, %bb.am ], [ -4, %bb.ab ], [ -4, %bb.ad ], [ -4, %bb.ag ], [ -4, %bb.aj ], [ -1, %bb.d ], [ 4, %BZ2_decompress.exit ], [ %.0.i3855, %BZ2_decompress.exit.thread ], [ 0, %bb.ar ], [ 0, %unRLE_obuf_to_output_SMALL.exit ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @nsis_BZ2_bzDecompressEnd(ptr noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 5 uses
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
!88 = !{!"branch_weights", i32 8, i32 24}
!89 = distinct !{!89, !40, !48, !49}
!90 = distinct !{!90, !40, !48}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !40, !48, !49}
!95 = distinct !{!95, !40, !49, !48}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !40}
!101 = distinct !{!101, !40, !48, !49}
!102 = distinct !{!102, !40}
!103 = distinct !{!103, !40, !49, !48}
!104 = distinct !{!104, !40}
!105 = distinct !{!105, !40}
!106 = distinct !{!106, !40}
!107 = distinct !{!107, !40}
!108 = distinct !{!108, !99}
!109 = distinct !{!109, !40, !48, !49}
!110 = distinct !{!110, !40, !48, !49}
!111 = distinct !{!111, !40}
!112 = distinct !{!112, !40, !48}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !40}
!115 = distinct !{!115, !40}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40}
!119 = distinct !{!119, !40}
end_hunk_3
