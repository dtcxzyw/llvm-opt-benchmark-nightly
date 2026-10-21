Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/lossless_enc_avx2?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@CombinedShannonEntropy_AVX2:bb.a
  %i.bl = and i32 %i.bk, %.05974                  ; 2 uses
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %VP8LFastSLog2.exit67, %bb.b
  %.164.lcssa = phi i64 [ %.06377, %bb.b ], [ %i.bj, %VP8LFastSLog2.exit67 ] ; 2 uses
  %.162.lcssa = phi i32 [ %.06178, %bb.b ], [ %i.bb, %VP8LFastSLog2.exit67 ] ; 4 uses
  %.1.lcssa = phi i32 [ %.06079, %bb.b ], [ %.2, %VP8LFastSLog2.exit67 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.bm = icmp samesign ult i64 %indvars.iv, 224
  br i1 %i.bm, label %bb.b, label %bb.h, !llvm.loop !33

bb.h:                                             ; preds = %._crit_edge
  %i.bn = icmp ult i32 %.162.lcssa, 256
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = zext nneg i32 %.162.lcssa to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !35
  br label %VP8LFastSLog2.exit68

bb.j:                                             ; preds = %bb.h
  %i.br = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !9
  %i.bs = tail call i64 %i.br(i32 noundef %.162.lcssa) #7, !inline_history !31
  br label %VP8LFastSLog2.exit68

VP8LFastSLog2.exit68:                             ; preds = %bb.i, %bb.j
  %i.bt = phi i64 [ %i.bq, %bb.i ], [ %i.bs, %bb.j ]
  %i.bu = icmp ult i32 %.1.lcssa, 256
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %VP8LFastSLog2.exit68
  %i.bv = zext nneg i32 %.1.lcssa to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !35
  br label %VP8LFastSLog2.exit69

bb.l:                                             ; preds = %VP8LFastSLog2.exit68
  %i.by = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !9
  %i.bz = tail call i64 %i.by(i32 noundef %.1.lcssa) #7, !inline_history !31
  br label %VP8LFastSLog2.exit69

VP8LFastSLog2.exit69:                             ; preds = %bb.k, %bb.l
  %i.ca = phi i64 [ %i.bx, %bb.k ], [ %i.bz, %bb.l ]
  %i.cb = sub i64 %i.bt, %.164.lcssa
  %i.cc = add i64 %i.cb, %i.ca
  ret i64 %i.cc
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @VectorMismatch_AVX2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 23
  br i1 %i.a, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a, %bb.b
  %.040 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]     ; 3 uses
  %.038.in = phi ptr [ %i.q, %bb.b ], [ %0, %bb.a ]
  %.036.in = phi ptr [ %i.r, %bb.b ], [ %1, %bb.a ]
  %.03653 = load <8 x i32>, ptr %.036.in, align 1, !tbaa !10
  %.03852 = load <8 x i32>, ptr %.038.in, align 1, !tbaa !10
  %i.b = icmp eq <8 x i32> %.03852, %.03653
  %i.c = sext <8 x i1> %i.b to <8 x i32>
  %i.d = bitcast <8 x i32> %i.c to <32 x i8>
  %i.e = icmp sgt <32 x i8> %i.d, splat (i8 -1)
  %i.f = bitcast <32 x i1> %i.e to i32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.preheader
  %i.g = add nsw i32 %.040, 8                     ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h
  %i.j = load <8 x i32>, ptr %i.i, align 1, !tbaa !10
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.h
  %i.l = load <8 x i32>, ptr %i.k, align 1, !tbaa !10
  %i.m = icmp eq <8 x i32> %i.l, %i.j
  %i.n = sext <8 x i1> %i.m to <8 x i32>
  %i.o = add nsw i32 %.040, 16                    ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %1, i64 %i.p
  %i.s = bitcast <8 x i32> %i.n to <32 x i8>
  %i.t = icmp sgt <32 x i8> %i.s, splat (i8 -1)
  %i.u = bitcast <32 x i1> %i.t to i32
  %.not44 = icmp eq i32 %i.u, 0                   ; 2 uses
  %. = select i1 %.not44, i32 %i.o, i32 %i.g      ; 3 uses
  %i.v = add nsw i32 %., 24
  %i.w = icmp slt i32 %i.v, %2
  %or.cond = select i1 %.not44, i1 %i.w, i1 false
  br i1 %or.cond, label %.preheader, label %.thread, !llvm.loop !36

bb.c:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %2, 7
  br i1 %i.x, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.y = load <8 x i32>, ptr %0, align 1, !tbaa !10
  %i.z = load <8 x i32>, ptr %1, align 1, !tbaa !10
  %i.aa = icmp eq <8 x i32> %i.y, %i.z
  %i.ab = sext <8 x i1> %i.aa to <8 x i32>
  %i.ac = bitcast <8 x i32> %i.ab to <32 x i8>
  %i.ad = icmp sgt <32 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <32 x i1> %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i32 %2, 15
  br i1 %i.ag, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load <8 x i32>, ptr %i.ah, align 1, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load <8 x i32>, ptr %i.aj, align 1, !tbaa !10
  %i.al = icmp eq <8 x i32> %i.ai, %i.ak
  %i.am = sext <8 x i1> %i.al to <8 x i32>
  %i.an = bitcast <8 x i32> %i.am to <32 x i8>
  %i.ao = icmp sgt <32 x i8> %i.an, splat (i8 -1)
  %i.ap = bitcast <32 x i1> %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  %spec.select = select i1 %i.aq, i32 16, i32 8
  br label %.thread

.thread:                                          ; preds = %.preheader, %bb.b, %bb.f, %bb.c, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.select, %bb.f ], [ 8, %bb.e ], [ %.040, %.preheader ], [ %., %bb.b ] ; 3 uses
  %i.ar = icmp slt i32 %.3, %2
  br i1 %i.ar, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.thread
  %i.as = sext i32 %.3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.as, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %i.av = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.g, label %.critedge.loopexit.split.loop.exit59

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge.loopexit.split.loop.exit59:             ; preds = %.lr.ph
  %i.ay = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.loopexit.split.loop.exit59, %.thread
  %.4.lcssa = phi i32 [ %.3, %.thread ], [ %i.ay, %.critedge.loopexit.split.loop.exit59 ], [ %2, %bb.g ]
  ret i32 %.4.lcssa
}

; Function Attrs: nounwind uwtable
define internal void @BundleColorMap_AVX2(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not103127 = icmp slt i32 %1, 32               ; 4 uses
  switch i32 %2, label %.preheader [
    i32 0, label %.preheader105
    i32 1, label %.preheader107
    i32 2, label %.preheader109
  ]

.preheader109:                                    ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader109
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader107:                                    ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %.preheader107
  %i.b = zext nneg i32 %1 to i64
  br label %.lr.ph118

.preheader105:                                    ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.preheader105
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph124

.preheader:                                       ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph130.preheader

.lr.ph130.preheader:                              ; preds = %.preheader
  %i.d = zext nneg i32 %1 to i64
  br label %.lr.ph130

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %indvars.iv157 = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next158, %.lr.ph124 ] ; 2 uses
  %indvars.iv155 = phi i64 [ 32, %.lr.ph124.preheader ], [ %indvars.iv.next156, %.lr.ph124 ]
  %.0123 = phi ptr [ %3, %.lr.ph124.preheader ], [ %i.v, %.lr.ph124 ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv157
  %i.f = load <32 x i8>, ptr %i.e, align 1, !tbaa !10 ; 2 uses
  %i.g = shufflevector <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i8> %i.f, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.h = bitcast <32 x i8> %i.g to <16 x i16>     ; 2 uses
  %i.i = shufflevector <16 x i16> %i.h, <16 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.j = shufflevector <16 x i16> %i.h, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.k = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.f, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.l = bitcast <32 x i8> %i.k to <16 x i16>     ; 2 uses
  %i.m = shufflevector <16 x i16> %i.l, <16 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.n = shufflevector <16 x i16> %i.l, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0123, i64 64
  %i.p = bitcast <16 x i16> %i.i to <8 x i32>
  %4 = shufflevector <16 x i16> %i.i, <16 x i16> %i.j, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x i16> %4, ptr %.0123, align 1, !tbaa !10
  %i.q = bitcast <16 x i16> %i.j to <8 x i32>
  %5 = shufflevector <8 x i32> %i.p, <8 x i32> %i.q, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %5, ptr %i.o, align 1, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %.0123, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %.0123, i64 32
  %i.t = bitcast <16 x i16> %i.m to <8 x i32>
  %6 = shufflevector <16 x i16> %i.m, <16 x i16> %i.n, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x i16> %6, ptr %i.s, align 1, !tbaa !10
  %i.u = bitcast <16 x i16> %i.n to <8 x i32>
  %7 = shufflevector <8 x i32> %i.t, <8 x i32> %i.u, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %7, ptr %i.r, align 1, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %.0123, i64 128 ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 32 ; 2 uses
  %.not102 = icmp samesign ugt i64 %indvars.iv.next156, %i.c
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 32
  br i1 %.not102, label %.loopexit.loopexit133, label %.lr.ph124, !llvm.loop !38

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %.lr.ph118
  %indvars.iv150 = phi i64 [ 0, %.lr.ph118.preheader ], [ %indvars.iv.next151, %.lr.ph118 ] ; 2 uses
  %indvars.iv148 = phi i64 [ 32, %.lr.ph118.preheader ], [ %indvars.iv.next149, %.lr.ph118 ]
  %.1117 = phi ptr [ %3, %.lr.ph118.preheader ], [ %i.af, %.lr.ph118 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv150
  %i.x = load <16 x i16>, ptr %i.w, align 1, !tbaa !10
  %i.y = mul <16 x i16> %i.x, splat (i16 272)
  %i.z = and <16 x i16> %i.y, splat (i16 -256)    ; 2 uses
  %i.aa = shufflevector <16 x i16> %i.z, <16 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ab = shufflevector <16 x i16> %i.z, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1117, i64 32
  %i.ad = bitcast <16 x i16> %i.aa to <8 x i32>
  %8 = shufflevector <16 x i16> %i.aa, <16 x i16> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x i16> %8, ptr %.1117, align 1, !tbaa !10
  %i.ae = bitcast <16 x i16> %i.ab to <8 x i32>
  %9 = shufflevector <8 x i32> %i.ad, <8 x i32> %i.ae, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %9, ptr %i.ac, align 1, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %.1117, i64 64 ; 2 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 32 ; 2 uses
  %.not101 = icmp samesign ugt i64 %indvars.iv.next149, %i.b
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 32
  br i1 %.not101, label %.loopexit.loopexit134, label %.lr.ph118, !llvm.loop !39

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv143 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next144, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 32, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.2113 = phi ptr [ %3, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv143
  %i.ah = load <16 x i16>, ptr %i.ag, align 1, !tbaa !10
  %i.ai = mul <16 x i16> %i.ah, splat (i16 260)
  %.inner = and <16 x i16> %i.ai, splat (i16 3840) ; 2 uses
  %i.aj = bitcast <16 x i16> %.inner to <8 x i32>
  %i.ak = lshr <8 x i32> %i.aj, splat (i32 12)
  %i.al = bitcast <8 x i32> %i.ak to <4 x i64>
  %i.am = bitcast <16 x i16> %.inner to <4 x i64>
  %i.an = or <4 x i64> %i.am, splat (i64 -72057589759737856)
  %i.ao = or disjoint <4 x i64> %i.an, %i.al
  store <4 x i64> %i.ao, ptr %.2113, align 1, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %.2113, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 32
  br i1 %.not, label %.loopexit.loopexit135, label %.lr.ph, !llvm.loop !40

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %.lr.ph130
  %indvars.iv164 = phi i64 [ 0, %.lr.ph130.preheader ], [ %indvars.iv.next165, %.lr.ph130 ] ; 2 uses
  %indvars.iv162 = phi i64 [ 32, %.lr.ph130.preheader ], [ %indvars.iv.next163, %.lr.ph130 ]
  %.3129 = phi ptr [ %3, %.lr.ph130.preheader ], [ %i.bc, %.lr.ph130 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv164
  %i.ar = load <4 x i64>, ptr %i.aq, align 1, !tbaa !10
  %i.as = shl <4 x i64> %i.ar, splat (i64 7)
  %i.at = bitcast <4 x i64> %i.as to <32 x i8>
  %i.au = icmp slt <32 x i8> %i.at, zeroinitializer
  %i.av = bitcast <32 x i1> %i.au to i32
  %i.aw = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ay = shl <4 x i32> %i.ax, <i32 8, i32 0, i32 0, i32 0>
  %i.az = lshr <4 x i32> %i.ay, <i32 0, i32 0, i32 8, i32 16>
  %i.ba = and <4 x i32> %i.az, splat (i32 65280)
  %i.bb = or disjoint <4 x i32> %i.ba, splat (i32 -16777216)
  store <4 x i32> %i.bb, ptr %.3129, align 4, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.3129, i64 16 ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 32 ; 2 uses
  %.not103 = icmp samesign ugt i64 %indvars.iv.next163, %i.d
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 32
  br i1 %.not103, label %.loopexit.loopexit, label %.lr.ph130, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %.lr.ph130
  %i.bd = add nuw i32 %1, 2147483616
  %i.be = and i32 %i.bd, 2147483616
  %narrow172 = add nuw i32 %i.be, 32
  br label %.loopexit

.loopexit.loopexit133:                            ; preds = %.lr.ph124
  %i.bf = add nuw i32 %1, 2147483616
  %i.bg = and i32 %i.bf, 2147483616
  %narrow171 = add nuw i32 %i.bg, 32
  br label %.loopexit

.loopexit.loopexit134:                            ; preds = %.lr.ph118
  %i.bh = add nuw i32 %1, 2147483616
  %i.bi = and i32 %i.bh, 2147483616
  %narrow170 = add nuw i32 %i.bi, 32
  br label %.loopexit

.loopexit.loopexit135:                            ; preds = %.lr.ph
  %i.bj = add nuw i32 %1, 2147483616
  %i.bk = and i32 %i.bj, 2147483616
  %narrow = add nuw i32 %i.bk, 32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit135, %.loopexit.loopexit134, %.loopexit.loopexit133, %.loopexit.loopexit, %.preheader109, %.preheader107, %.preheader105, %.preheader
  %.495 = phi i32 [ %narrow172, %.loopexit.loopexit ], [ %narrow170, %.loopexit.loopexit134 ], [ %narrow171, %.loopexit.loopexit133 ], [ 0, %.preheader ], [ 0, %.preheader105 ], [ 0, %.preheader107 ], [ 0, %.preheader109 ], [ %narrow, %.loopexit.loopexit135 ] ; 3 uses
  %.4 = phi ptr [ %i.bc, %.loopexit.loopexit ], [ %i.af, %.loopexit.loopexit134 ], [ %i.v, %.loopexit.loopexit133 ], [ %3, %.preheader ], [ %3, %.preheader105 ], [ %3, %.preheader107 ], [ %3, %.preheader109 ], [ %i.ap, %.loopexit.loopexit135 ]
  %.not104 = icmp eq i32 %.495, %1
  br i1 %.not104, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.bl = load ptr, ptr @VP8LBundleColorMap_SSE, align 8, !tbaa !9
  %i.bm = zext nneg i32 %.495 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm
  %i.bo = sub nsw i32 %1, %.495
  tail call void %i.bl(ptr noundef %i.bn, i32 noundef %i.bo, i32 noundef %2, ptr noundef %.4) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub0_AVX2(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not20 = icmp slt i32 %2, 8
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next23, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.d = add <32 x i8> %i.c, <i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1>
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv22
  store <32 x i8> %i.d, ptr %i.e, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = add nuw i32 %2, 2147483640
  %i.g = and i32 %i.f, 2147483640
  %narrow = add nuw i32 %i.g, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not19 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = load ptr, ptr @VP8LPredictorsSub_SSE, align 16, !tbaa !9
  %i.i = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = sub nuw nsw i32 %2, %.0.lcssa
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.i
  tail call void %i.h(ptr noundef %i.j, ptr noundef null, i32 noundef %i.k, ptr noundef %i.l) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub1_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 8
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27 ; 2 uses
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.d = getelementptr i8, ptr %i.b, i64 -4
  %i.e = load <32 x i8>, ptr %i.d, align 1, !tbaa !10
  %i.f = sub <32 x i8> %i.c, %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv27
  store <32 x i8> %i.f, ptr %i.g, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = add nuw i32 %2, 2147483640
  %i.i = and i32 %i.h, 2147483640
  %narrow = add nuw i32 %i.i, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 8), align 8, !tbaa !9
  %i.k = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = icmp eq ptr %1, null
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.o = select i1 %i.m, ptr null, ptr %i.n
  %i.p = sub nuw nsw i32 %2, %.0.lcssa
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  tail call void %i.j(ptr noundef %i.l, ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub2_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 8
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph
end_hunk_0
