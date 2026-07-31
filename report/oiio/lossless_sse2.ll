inline.NumInlined: 35
inline.NumDeleted: 12
begin_hunk_0_@Predictor7_SSE2:bb.a
  %i.j = and <16 x i8> %i.i, <i8 1, i8 1, i8 1, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.k = sub <16 x i8> %i.g, %i.j
  %i.l = bitcast <16 x i8> %i.k to <4 x i32>
  %i.m = extractelement <4 x i32> %i.l, i64 0
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @Predictor8_SSE2(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.b, i64 0 ; 2 uses
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.c, i64 0 ; 2 uses
  %i.f = bitcast <4 x i32> %i.d to <16 x i8>
  %i.g = bitcast <4 x i32> %i.e to <16 x i8>
  %i.h = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.f, <16 x i8> %i.g)
  %i.i = xor <4 x i32> %i.e, %i.d
  %i.j = bitcast <4 x i32> %i.i to <16 x i8>
  %i.k = and <16 x i8> %i.j, <i8 1, i8 1, i8 1, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.l = sub <16 x i8> %i.h, %i.k
  %i.m = bitcast <16 x i8> %i.l to <4 x i32>
  %i.n = extractelement <4 x i32> %i.m, i64 0
  ret i32 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @Predictor9_SSE2(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.a, i64 0 ; 2 uses
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.c, i64 0 ; 2 uses
  %i.f = bitcast <4 x i32> %i.d to <16 x i8>
  %i.g = bitcast <4 x i32> %i.e to <16 x i8>
  %i.h = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.f, <16 x i8> %i.g)
  %i.i = xor <4 x i32> %i.e, %i.d
  %i.j = bitcast <4 x i32> %i.i to <16 x i8>
  %i.k = and <16 x i8> %i.j, <i8 1, i8 1, i8 1, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.l = sub <16 x i8> %i.h, %i.k
  %i.m = bitcast <16 x i8> %i.l to <4 x i32>
  %i.n = extractelement <4 x i32> %i.m, i64 0
  ret i32 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @Predictor10_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = getelementptr inbounds i8, ptr %1, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = load i32, ptr %1, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.a, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.c, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.m = bitcast <16 x i8> %i.l to <8 x i16>
  %i.n = bitcast <16 x i8> %i.i to <8 x i16>
  %i.o = add nuw nsw <8 x i16> %i.m, %i.n
  %i.p = lshr <8 x i16> %i.o, splat (i16 1)
  %i.q = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.d, i64 0
  %i.r = bitcast <4 x i32> %i.q to <16 x i8>
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.t = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.f, i64 0
  %i.u = bitcast <4 x i32> %i.t to <16 x i8>
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.w = bitcast <16 x i8> %i.v to <8 x i16>
  %i.x = bitcast <16 x i8> %i.s to <8 x i16>
  %i.y = add nuw nsw <8 x i16> %i.w, %i.x
  %i.z = lshr <8 x i16> %i.y, splat (i16 1)
  %i.aa = add nuw nsw <8 x i16> %i.z, %i.p
  %i.ab = lshr <8 x i16> %i.aa, splat (i16 1)
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> poison)
  %i.ad = bitcast <16 x i8> %i.ac to <4 x i32>
  %i.ae = extractelement <4 x i32> %i.ad, i64 0
  ret i32 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @Predictor11_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.a, i64 0
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.b, i64 0
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  %i.h = bitcast <4 x i32> %i.e to <16 x i8>      ; 2 uses
  %i.i = bitcast <4 x i32> %i.g to <16 x i8>      ; 4 uses
  %i.j = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.h, <16 x i8> %i.i)
  %i.k = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.i, <16 x i8> %i.h)
  %i.l = bitcast <4 x i32> %i.f to <16 x i8>      ; 2 uses
  %i.m = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.l, <16 x i8> %i.i)
  %i.n = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.i, <16 x i8> %i.l)
  %i.o = or <16 x i8> %i.j, %i.k
  %i.p = or <16 x i8> %i.m, %i.n
  %i.q = shufflevector <16 x i8> %i.o, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <16 x i8> %i.p, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.s = bitcast <16 x i8> %i.r to <8 x i16>
  %i.t = bitcast <16 x i8> %i.q to <8 x i16>
  %i.u = sub nsw <8 x i16> %i.s, %i.t
  %i.v = shufflevector <8 x i16> %i.u, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.w = sext <4 x i16> %i.v to <4 x i32>
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.w)
  %i.y = icmp slt i32 %i.x, 1
  %i.z = select i1 %i.y, i32 %i.a, i32 %i.b
  ret i32 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @Predictor12_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = load i32, ptr %1, align 4, !tbaa !3
  %i.c = getelementptr inbounds i8, ptr %1, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.f = bitcast <4 x i32> %i.e to <16 x i8>
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.h = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.i = bitcast <4 x i32> %i.h to <16 x i8>
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.k = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.l = bitcast <4 x i32> %i.k to <16 x i8>
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.n = bitcast <16 x i8> %i.g to <8 x i16>
  %i.o = bitcast <16 x i8> %i.j to <8 x i16>
  %i.p = add nuw nsw <8 x i16> %i.o, %i.n
  %i.q = bitcast <16 x i8> %i.m to <8 x i16>
  %i.r = sub <8 x i16> %i.p, %i.q
  %i.s = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.r, <8 x i16> poison)
  %i.t = bitcast <16 x i8> %i.s to <4 x i32>
  %i.u = extractelement <4 x i32> %i.t, i64 0
  ret i32 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @Predictor13_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = load i32, ptr %1, align 4, !tbaa !3
  %i.c = getelementptr inbounds i8, ptr %1, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.a, i64 0
  %i.f = bitcast <4 x i32> %i.e to <16 x i8>
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.b, i64 0
  %i.i = bitcast <4 x i32> %i.h to <16 x i8>
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.k = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.d, i64 0
  %i.l = bitcast <4 x i32> %i.k to <16 x i8>
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.n = bitcast <16 x i8> %i.j to <8 x i16>
  %i.o = bitcast <16 x i8> %i.g to <8 x i16>
  %i.p = add nuw nsw <8 x i16> %i.n, %i.o
  %i.q = lshr <8 x i16> %i.p, splat (i16 1)       ; 3 uses
  %i.r = bitcast <16 x i8> %i.m to <8 x i16>      ; 2 uses
  %i.s = sub nsw <8 x i16> %i.q, %i.r
  %i.t = icmp samesign ult <8 x i16> %i.q, %i.r
  %.neg.i = zext <8 x i1> %i.t to <8 x i16>
  %i.u = add nsw <8 x i16> %i.s, %.neg.i
  %i.v = ashr <8 x i16> %i.u, splat (i16 1)
  %i.w = add nsw <8 x i16> %i.v, %i.q
  %i.x = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.w, <8 x i16> poison)
  %i.y = bitcast <16 x i8> %i.x to <4 x i32>
  %i.z = extractelement <4 x i32> %i.y, i64 0
  ret i32 %i.z
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd0_SSE2(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not20 = icmp slt i32 %2, 4
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next23, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = add <16 x i8> %i.c, <i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1>
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv22
  store <16 x i8> %i.d, ptr %i.e, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %._crit_edge.loopexit ] ; 3 uses
  %.not19 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = load ptr, ptr @VP8LPredictorsAdd_C, align 16, !tbaa !7
  %i.h = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %i.j = sub nsw i32 %2, %.0.lcssa
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h
  tail call void %i.g(ptr noundef %i.i, ptr noundef null, i32 noundef %i.j, ptr noundef %i.k) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd1_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not31 = icmp slt i32 %2, 4
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %3, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3
  %i.c = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.e = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv34 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next35, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.027.in32 = phi <4 x i32> [ %i.d, %.lr.ph.preheader ], [ %i.p, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv34
  %i.g = load <16 x i8>, ptr %i.f, align 1, !tbaa !9 ; 2 uses
  %i.h = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.g, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.i = add <16 x i8> %i.h, %i.g                 ; 2 uses
  %i.j = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.k = bitcast <4 x i32> %.027.in32 to <16 x i8>
  %i.l = add <16 x i8> %i.i, %i.k
  %i.m = add <16 x i8> %i.l, %i.j                 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv34
  store <16 x i8> %i.m, ptr %i.n, align 1, !tbaa !9
  %i.o = bitcast <16 x i8> %i.m to <4 x i32>
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.e
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.q = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ] ; 3 uses
  %.not30 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not30, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 8), align 8, !tbaa !7
  %i.s = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  %i.v = sub nsw i32 %2, %.0.lcssa
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s
  tail call void %i.r(ptr noundef %i.t, ptr noundef %i.u, i32 noundef %i.v, ptr noundef %i.w) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd2_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not24 = icmp slt i32 %2, 4
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv26 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next27, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv26
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv26
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.f = add <16 x i8> %i.e, %i.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv26
  store <16 x i8> %i.f, ptr %i.g, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit ] ; 3 uses
  %.not23 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 16), align 16, !tbaa !7
  %i.j = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.m = sub nsw i32 %2, %.0.lcssa
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j
  tail call void %i.i(ptr noundef %i.k, ptr noundef %i.l, i32 noundef %i.m, ptr noundef %i.n) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd3_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not24 = icmp slt i32 %2, 4
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv26 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next27, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv26
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9
  %i.g = add <16 x i8> %i.f, %i.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv26
  store <16 x i8> %i.g, ptr %i.h, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 3 uses
  %.not23 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 24), align 8, !tbaa !7
  %i.k = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.n = sub nsw i32 %2, %.0.lcssa
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  tail call void %i.j(ptr noundef %i.l, ptr noundef %i.m, i32 noundef %i.n, ptr noundef %i.o) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd4_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not24 = icmp slt i32 %2, 4
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv26 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next27, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv26
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr [4 x i8], ptr %1, i64 %indvars.iv26
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9
  %i.g = add <16 x i8> %i.f, %i.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv26
  store <16 x i8> %i.g, ptr %i.h, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 3 uses
  %.not23 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 32), align 16, !tbaa !7
  %i.k = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.n = sub nsw i32 %2, %.0.lcssa
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  tail call void %i.j(ptr noundef %i.l, ptr noundef %i.m, i32 noundef %i.n, ptr noundef %i.o) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PredictorAdd5_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noalias nofree noundef captures(none) %3) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %3, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.aj, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %store_forwarded, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.f, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.m = bitcast <16 x i8> %i.l to <8 x i16>
  %i.n = bitcast <16 x i8> %i.i to <8 x i16>
  %i.o = add nuw nsw <8 x i16> %i.m, %i.n
  %i.p = lshr <8 x i16> %i.o, splat (i16 1)
  %i.q = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.d, i64 0
  %i.r = bitcast <4 x i32> %i.q to <16 x i8>
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.t = bitcast <16 x i8> %i.s to <8 x i16>
  %i.u = add nuw nsw <8 x i16> %i.p, %i.t
  %i.v = lshr <8 x i16> %i.u, splat (i16 1)
  %i.w = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.v, <8 x i16> poison)
  %i.x = bitcast <16 x i8> %i.w to <4 x i32>
  %i.y = extractelement <4 x i32> %i.x, i64 0     ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = and i32 %i.aa, -16711936
  %i.ac = and i32 %i.y, -16711936
  %i.ad = add i32 %i.ac, %i.ab
  %i.ae = and i32 %i.aa, 16711935
  %i.af = and i32 %i.y, 16711935
  %i.ag = add nuw nsw i32 %i.af, %i.ae
  %i.ah = and i32 %i.ad, -16711936
  %i.ai = and i32 %i.ag, 16711935
  %i.aj = or disjoint i32 %i.ah, %i.ai            ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PredictorAdd6_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noalias nofree noundef captures(none) %3) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %3, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.aa, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %store_forwarded, i64 0 ; 2 uses
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.e, i64 0 ; 2 uses
  %i.h = bitcast <4 x i32> %i.f to <16 x i8>
  %i.i = bitcast <4 x i32> %i.g to <16 x i8>
  %i.j = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.h, <16 x i8> %i.i)
  %i.k = xor <4 x i32> %i.g, %i.f
  %i.l = bitcast <4 x i32> %i.k to <16 x i8>
  %i.m = and <16 x i8> %i.l, <i8 1, i8 1, i8 1, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.n = sub <16 x i8> %i.j, %i.m
  %i.o = bitcast <16 x i8> %i.n to <4 x i32>
  %i.p = extractelement <4 x i32> %i.o, i64 0     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.s = and i32 %i.r, -16711936
  %i.t = and i32 %i.p, -16711936
  %i.u = add i32 %i.t, %i.s
  %i.v = and i32 %i.r, 16711935
  %i.w = and i32 %i.p, 16711935
  %i.x = add nuw nsw i32 %i.w, %i.v
  %i.y = and i32 %i.u, -16711936
  %i.z = and i32 %i.x, 16711935
  %i.aa = or disjoint i32 %i.y, %i.z              ; 2 uses
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PredictorAdd7_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noalias nofree noundef captures(none) %3) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %3, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.z, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %store_forwarded, i64 0 ; 2 uses
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0 ; 2 uses
  %i.g = bitcast <4 x i32> %i.e to <16 x i8>
  %i.h = bitcast <4 x i32> %i.f to <16 x i8>
  %i.i = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.g, <16 x i8> %i.h)
  %i.j = xor <4 x i32> %i.f, %i.e
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %i.l = and <16 x i8> %i.k, <i8 1, i8 1, i8 1, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.m = sub <16 x i8> %i.i, %i.l
  %i.n = bitcast <16 x i8> %i.m to <4 x i32>
  %i.o = extractelement <4 x i32> %i.n, i64 0     ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %i.r = and i32 %i.q, -16711936
  %i.s = and i32 %i.o, -16711936
  %i.t = add i32 %i.s, %i.r
  %i.u = and i32 %i.q, 16711935
  %i.v = and i32 %i.o, 16711935
  %i.w = add nuw nsw i32 %i.v, %i.u
  %i.x = and i32 %i.t, -16711936
  %i.y = and i32 %i.w, 16711935
  %i.z = or disjoint i32 %i.x, %i.y               ; 2 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd8_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not30 = icmp slt i32 %2, 4
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv32 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next33, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr [4 x i8], ptr %1, i64 %indvars.iv32 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4
  %i.d = load <2 x i64>, ptr %i.c, align 1, !tbaa !9 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.b, align 1, !tbaa !9 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv32
  %i.g = load <16 x i8>, ptr %i.f, align 1, !tbaa !9
  %i.h = bitcast <2 x i64> %i.e to <16 x i8>
  %i.i = bitcast <2 x i64> %i.d to <16 x i8>
  %i.j = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.h, <16 x i8> %i.i)
  %i.k = xor <2 x i64> %i.e, %i.d
  %i.l = bitcast <2 x i64> %i.k to <16 x i8>
  %i.m = and <16 x i8> %i.l, splat (i8 1)
  %i.n = add <16 x i8> %i.j, %i.g
  %i.o = sub <16 x i8> %i.n, %i.m
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv32
  store <16 x i8> %i.o, ptr %i.p, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.q = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 64), align 16, !tbaa !7
  %i.s = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  %i.v = sub nsw i32 %2, %.0.lcssa
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s
  tail call void %i.r(ptr noundef %i.t, ptr noundef %i.u, i32 noundef %i.v, ptr noundef %i.w) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd9_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not30 = icmp slt i32 %2, 4
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv32 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next33, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load <2 x i64>, ptr %i.c, align 1, !tbaa !9 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.b, align 1, !tbaa !9 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv32
  %i.g = load <16 x i8>, ptr %i.f, align 1, !tbaa !9
  %i.h = bitcast <2 x i64> %i.e to <16 x i8>
  %i.i = bitcast <2 x i64> %i.d to <16 x i8>
  %i.j = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.h, <16 x i8> %i.i)
  %i.k = xor <2 x i64> %i.e, %i.d
  %i.l = bitcast <2 x i64> %i.k to <16 x i8>
  %i.m = and <16 x i8> %i.l, splat (i8 1)
  %i.n = add <16 x i8> %i.j, %i.g
  %i.o = sub <16 x i8> %i.n, %i.m
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv32
  store <16 x i8> %i.o, ptr %i.p, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.q = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 72), align 8, !tbaa !7
  %i.s = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  %i.v = sub nsw i32 %2, %.0.lcssa
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s
  tail call void %i.r(ptr noundef %i.t, ptr noundef %i.u, i32 noundef %i.v, ptr noundef %i.w) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd10_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not108 = icmp slt i32 %2, 4
  br i1 %.not108, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %3, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3
  %i.c = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.b, i64 0
  %i.d = bitcast <4 x i32> %i.c to <2 x i64>
  %i.e = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv111 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next112, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.0107109 = phi <2 x i64> [ %i.d, %.lr.ph.preheader ], [ %i.bx, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv111
  %i.g = load <16 x i8>, ptr %i.f, align 1, !tbaa !9 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %1, i64 %indvars.iv111 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load <2 x i64>, ptr %i.i, align 1, !tbaa !9 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.h, align 1, !tbaa !9 ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv111
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load <2 x i64>, ptr %i.m, align 1, !tbaa !9 ; 2 uses
  %i.o = bitcast <2 x i64> %i.k to <16 x i8>
  %i.p = bitcast <2 x i64> %i.n to <16 x i8>
  %i.q = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.o, <16 x i8> %i.p)
  %i.r = xor <2 x i64> %i.n, %i.k
  %i.s = bitcast <2 x i64> %i.r to <16 x i8>
  %i.t = and <16 x i8> %i.s, splat (i8 1)
  %i.u = sub <16 x i8> %i.q, %i.t                 ; 3 uses
  %i.v = bitcast <2 x i64> %.0107109 to <16 x i8>
  %i.w = bitcast <2 x i64> %i.j to <16 x i8>      ; 2 uses
  %i.x = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.v, <16 x i8> %i.w)
  %i.y = xor <2 x i64> %i.j, %.0107109
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = and <16 x i8> %i.z, splat (i8 1)
  %i.ab = sub <16 x i8> %i.x, %i.aa               ; 2 uses
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.u, <16 x i8> %i.ab)
  %i.ad = xor <16 x i8> %i.u, %i.ab
  %i.ae = and <16 x i8> %i.ad, splat (i8 1)
  %i.af = sub <16 x i8> %i.ac, %i.ae
  %i.ag = add <16 x i8> %i.af, %i.g               ; 3 uses
  %i.ah = bitcast <16 x i8> %i.ag to <4 x i32>
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv111 ; 2 uses
  %i.aj = shufflevector <16 x i8> %i.u, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 3 uses
  %i.ak = shufflevector <16 x i8> %i.w, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 3 uses
  %i.al = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.am = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ag, <16 x i8> %i.ak)
  %i.an = xor <16 x i8> %i.ag, %i.ak
  %i.ao = and <16 x i8> %i.an, splat (i8 1)
  %i.ap = sub <16 x i8> %i.am, %i.ao              ; 2 uses
  %i.aq = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.aj, <16 x i8> %i.ap)
  %i.ar = xor <16 x i8> %i.ap, %i.aj
  %i.as = and <16 x i8> %i.ar, splat (i8 1)
  %i.at = sub <16 x i8> %i.aq, %i.as
  %i.au = add <16 x i8> %i.at, %i.al              ; 3 uses
  %i.av = bitcast <16 x i8> %i.au to <4 x i32>
  %i.aw = shufflevector <4 x i32> %i.ah, <4 x i32> %i.av, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.aw, ptr %i.ai, align 4, !tbaa !3
  %i.ax = shufflevector <16 x i8> %i.aj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 3 uses
  %i.ay = shufflevector <16 x i8> %i.ak, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 3 uses
  %i.az = shufflevector <16 x i8> %i.al, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.ba = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.au, <16 x i8> %i.ay)
  %i.bb = xor <16 x i8> %i.au, %i.ay
  %i.bc = and <16 x i8> %i.bb, splat (i8 1)
  %i.bd = sub <16 x i8> %i.ba, %i.bc              ; 2 uses
  %i.be = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ax, <16 x i8> %i.bd)
  %i.bf = xor <16 x i8> %i.bd, %i.ax
  %i.bg = and <16 x i8> %i.bf, splat (i8 1)
  %i.bh = sub <16 x i8> %i.be, %i.bg
  %i.bi = add <16 x i8> %i.bh, %i.az              ; 3 uses
  %i.bj = bitcast <16 x i8> %i.bi to <4 x i32>
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bl = shufflevector <16 x i8> %i.ax, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.bm = shufflevector <16 x i8> %i.ay, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.bn = shufflevector <16 x i8> %i.az, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bo = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.bi, <16 x i8> %i.bm)
  %i.bp = xor <16 x i8> %i.bi, %i.bm
  %i.bq = and <16 x i8> %i.bp, splat (i8 1)
  %i.br = sub <16 x i8> %i.bo, %i.bq              ; 2 uses
  %i.bs = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.bl, <16 x i8> %i.br)
  %i.bt = xor <16 x i8> %i.br, %i.bl
  %i.bu = and <16 x i8> %i.bt, splat (i8 1)
  %i.bv = sub <16 x i8> %i.bs, %i.bu
  %i.bw = add <16 x i8> %i.bv, %i.bn              ; 2 uses
  %i.bx = bitcast <16 x i8> %i.bw to <2 x i64>
  %i.by = bitcast <16 x i8> %i.bw to <4 x i32>
  %i.bz = shufflevector <4 x i32> %i.bj, <4 x i32> %i.by, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.bz, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.e
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ca = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ca, %._crit_edge.loopexit ] ; 3 uses
  %.not38 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not38, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 80), align 16, !tbaa !7
  %i.cc = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc
  %i.cf = sub nsw i32 %2, %.0.lcssa
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc
  tail call void %i.cb(ptr noundef %i.cd, ptr noundef %i.ce, i32 noundef %i.cf, ptr noundef %i.cg) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd11_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not125 = icmp slt i32 %2, 4
  br i1 %.not125, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %3, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3
  %i.c = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.b, i64 0
  %i.d = bitcast <4 x i32> %i.c to <2 x i64>
  %i.e = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.0121126 = phi <2 x i64> [ %i.d, %.lr.ph.preheader ], [ %i.cr, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv128 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.f, align 1, !tbaa !9 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -4
  %i.i = load <2 x i64>, ptr %i.h, align 1, !tbaa !9 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv128
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !9 ; 2 uses
  %i.l = bitcast <2 x i64> %i.g to <4 x i32>      ; 6 uses
  %i.m = shufflevector <4 x i32> %i.l, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.n = bitcast <2 x i64> %i.i to <4 x i32>      ; 2 uses
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> %i.l, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.p = shufflevector <4 x i32> %i.l, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.q = shufflevector <4 x i32> %i.n, <4 x i32> %i.l, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.r = bitcast <4 x i32> %i.m to <16 x i8>
  %i.s = bitcast <4 x i32> %i.o to <16 x i8>      ; 2 uses
  %i.t = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.r, <16 x i8> %i.s)
  %i.u = bitcast <4 x i32> %i.p to <16 x i8>
  %i.v = bitcast <4 x i32> %i.q to <16 x i8>
  %i.w = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.u, <16 x i8> %i.v)
  %i.x = bitcast <2 x i64> %i.t to <4 x i32>
  %i.y = bitcast <2 x i64> %i.w to <4 x i32>
  %i.z = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.x, <4 x i32> %i.y) ; 2 uses
  %i.aa = bitcast <2 x i64> %.0121126 to <4 x i32> ; 2 uses
  %i.ab = shufflevector <4 x i32> %i.aa, <4 x i32> %i.l, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ac = bitcast <4 x i32> %i.ab to <16 x i8>
  %i.ad = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ac, <16 x i8> %i.s)
  %i.ae = bitcast <2 x i64> %i.ad to <4 x i32>
  %i.af = bitcast <8 x i16> %i.z to <4 x i32>
  %i.ag = icmp sgt <4 x i32> %i.ae, %i.af
  %i.ah = select <4 x i1> %i.ag, <4 x i32> %i.aa, <4 x i32> %i.l
  %i.ai = bitcast <4 x i32> %i.ah to <16 x i8>
  %i.aj = add <16 x i8> %i.k, %i.ai
  %i.ak = bitcast <16 x i8> %i.aj to <4 x i32>    ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv128 ; 2 uses
  %i.am = bitcast <2 x i64> %i.g to <16 x i8>
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.ao = bitcast <2 x i64> %i.i to <16 x i8>
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 3 uses
  %i.aq = shufflevector <16 x i8> %i.k, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.ar = bitcast <8 x i16> %i.z to <16 x i8>
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.at = bitcast <16 x i8> %i.an to <4 x i32>    ; 3 uses
  %i.au = shufflevector <4 x i32> %i.ak, <4 x i32> %i.at, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.av = bitcast <16 x i8> %i.ap to <4 x i32>
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> %i.at, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ax = bitcast <4 x i32> %i.au to <16 x i8>
  %i.ay = bitcast <4 x i32> %i.aw to <16 x i8>
  %i.az = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ax, <16 x i8> %i.ay)
  %i.ba = bitcast <2 x i64> %i.az to <4 x i32>
  %i.bb = bitcast <16 x i8> %i.as to <4 x i32>
  %i.bc = icmp sgt <4 x i32> %i.ba, %i.bb
  %i.bd = select <4 x i1> %i.bc, <4 x i32> %i.ak, <4 x i32> %i.at
  %i.be = bitcast <4 x i32> %i.bd to <16 x i8>
  %i.bf = add <16 x i8> %i.aq, %i.be
  %i.bg = bitcast <16 x i8> %i.bf to <4 x i32>    ; 3 uses
  %i.bh = shufflevector <4 x i32> %i.ak, <4 x i32> %i.bg, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.bh, ptr %i.al, align 4, !tbaa !3
  %i.bi = shufflevector <16 x i8> %i.an, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.bj = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bk = shufflevector <16 x i8> %i.aq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.as, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.bm = bitcast <16 x i8> %i.bi to <4 x i32>    ; 3 uses
  %i.bn = shufflevector <4 x i32> %i.bg, <4 x i32> %i.bm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bo = bitcast <16 x i8> %i.bj to <4 x i32>
  %i.bp = shufflevector <4 x i32> %i.bo, <4 x i32> %i.bm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bq = bitcast <4 x i32> %i.bn to <16 x i8>
  %i.br = bitcast <4 x i32> %i.bp to <16 x i8>
  %i.bs = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bq, <16 x i8> %i.br)
  %i.bt = bitcast <2 x i64> %i.bs to <4 x i32>
  %i.bu = bitcast <16 x i8> %i.bl to <4 x i32>
  %i.bv = icmp sgt <4 x i32> %i.bt, %i.bu
  %i.bw = select <4 x i1> %i.bv, <4 x i32> %i.bg, <4 x i32> %i.bm
  %i.bx = bitcast <4 x i32> %i.bw to <16 x i8>
  %i.by = add <16 x i8> %i.bk, %i.bx
  %i.bz = bitcast <16 x i8> %i.by to <4 x i32>    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cb = shufflevector <16 x i8> %i.bi, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.cc = shufflevector <16 x i8> %i.bk, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.cd = shufflevector <16 x i8> %i.bl, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.ce = bitcast <16 x i8> %i.cb to <4 x i32>    ; 3 uses
  %i.cf = shufflevector <4 x i32> %i.bz, <4 x i32> %i.ce, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cg = bitcast <16 x i8> %i.ap to <4 x i32>
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> %i.ce, <4 x i32> <i32 2, i32 4, i32 3, i32 5>
  %i.ci = bitcast <4 x i32> %i.cf to <16 x i8>
  %i.cj = bitcast <4 x i32> %i.ch to <16 x i8>
  %i.ck = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ci, <16 x i8> %i.cj)
  %i.cl = bitcast <2 x i64> %i.ck to <4 x i32>
  %i.cm = bitcast <16 x i8> %i.cd to <4 x i32>
  %i.cn = icmp sgt <4 x i32> %i.cl, %i.cm
  %i.co = select <4 x i1> %i.cn, <4 x i32> %i.bz, <4 x i32> %i.ce
  %i.cp = bitcast <4 x i32> %i.co to <16 x i8>
  %i.cq = add <16 x i8> %i.cc, %i.cp              ; 2 uses
  %i.cr = bitcast <16 x i8> %i.cq to <2 x i64>
  %i.cs = bitcast <16 x i8> %i.cq to <4 x i32>
  %i.ct = shufflevector <4 x i32> %i.bz, <4 x i32> %i.cs, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.ct, ptr %i.ca, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.e
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cu = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.cu, %._crit_edge.loopexit ] ; 3 uses
  %.not124 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not124, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 88), align 8, !tbaa !7
  %i.cw = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cw
  %i.cz = sub nsw i32 %2, %.0.lcssa
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cw
  tail call void %i.cv(ptr noundef %i.cx, ptr noundef %i.cy, i32 noundef %i.cz, ptr noundef %i.da) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorAdd12_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #2 {
bb.a:
  %.not86 = icmp slt i32 %2, 4
  br i1 %.not86, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %3, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3
  %i.c = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.b, i64 0
  %i.d = bitcast <4 x i32> %i.c to <16 x i8>
  %i.e = shufflevector <16 x i8> %i.d, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv89 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next90, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.082.in87 = phi <16 x i8> [ %i.e, %.lr.ph.preheader ], [ %i.bc, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv89
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !9 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv89 ; 2 uses
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !9 ; 2 uses
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.l = shufflevector <16 x i8> %i.j, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.m = getelementptr i8, ptr %i.i, i64 -4
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !9 ; 2 uses
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.p = shufflevector <16 x i8> %i.n, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.q = bitcast <16 x i8> %i.k to <8 x i16>
  %i.r = bitcast <16 x i8> %i.o to <8 x i16>
  %i.s = sub nsw <8 x i16> %i.q, %i.r             ; 2 uses
  %i.t = bitcast <16 x i8> %i.l to <8 x i16>
  %i.u = bitcast <16 x i8> %i.p to <8 x i16>
  %i.v = sub nsw <8 x i16> %i.t, %i.u             ; 2 uses
  %i.w = bitcast <16 x i8> %.082.in87 to <8 x i16>
  %i.x = add nsw <8 x i16> %i.s, %i.w             ; 2 uses
  %i.y = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.x, <8 x i16> %i.x)
  %i.z = add <16 x i8> %i.y, %i.h                 ; 2 uses
  %i.aa = bitcast <16 x i8> %i.z to <4 x i32>
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv89 ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.z, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ad = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.ae = bitcast <16 x i8> %i.ac to <8 x i16>
  %i.af = shufflevector <8 x i16> %i.s, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.ag = add nsw <8 x i16> %i.af, %i.ae          ; 2 uses
  %i.ah = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ag, <8 x i16> %i.ag)
  %i.ai = add <16 x i8> %i.ah, %i.ad              ; 2 uses
  %i.aj = bitcast <16 x i8> %i.ai to <4 x i32>
  %i.ak = shufflevector <4 x i32> %i.aa, <4 x i32> %i.aj, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.ak, ptr %i.ab, align 4, !tbaa !3
  %i.al = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.am = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.an = bitcast <16 x i8> %i.al to <8 x i16>
  %i.ao = add nsw <8 x i16> %i.v, %i.an           ; 2 uses
  %i.ap = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ao, <8 x i16> %i.ao)
  %i.aq = add <16 x i8> %i.ap, %i.am              ; 2 uses
  %i.ar = bitcast <16 x i8> %i.aq to <4 x i32>
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.at = shufflevector <16 x i8> %i.aq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.au = shufflevector <16 x i8> %i.am, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.av = bitcast <16 x i8> %i.at to <8 x i16>
  %i.aw = shufflevector <8 x i16> %i.v, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.ax = add nsw <8 x i16> %i.aw, %i.av          ; 2 uses
  %i.ay = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ax, <8 x i16> %i.ax)
  %i.az = add <16 x i8> %i.ay, %i.au              ; 2 uses
  %i.ba = bitcast <16 x i8> %i.az to <4 x i32>
  %i.bb = shufflevector <4 x i32> %i.ar, <4 x i32> %i.ba, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.bb, ptr %i.as, align 4, !tbaa !3
  %i.bc = shufflevector <16 x i8> %i.az, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.f
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !23

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bd = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.bd, %._crit_edge.loopexit ] ; 3 uses
  %.not85 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not85, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 96), align 16, !tbaa !7
  %i.bf = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  %i.bi = sub nsw i32 %2, %.0.lcssa
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bf
  tail call void %i.be(ptr noundef %i.bg, ptr noundef %i.bh, i32 noundef %i.bi, ptr noundef %i.bj) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PredictorAdd13_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noalias nofree noundef captures(none) %3) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %3, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.am, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %store_forwarded, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.d, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.m = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.f, i64 0
  %i.n = bitcast <4 x i32> %i.m to <16 x i8>
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.p = bitcast <16 x i8> %i.l to <8 x i16>
  %i.q = bitcast <16 x i8> %i.i to <8 x i16>
  %i.r = add nuw nsw <8 x i16> %i.p, %i.q
  %i.s = lshr <8 x i16> %i.r, splat (i16 1)       ; 3 uses
  %i.t = bitcast <16 x i8> %i.o to <8 x i16>      ; 2 uses
  %i.u = sub nsw <8 x i16> %i.s, %i.t
  %i.v = icmp samesign ult <8 x i16> %i.s, %i.t
  %.neg.i.i = zext <8 x i1> %i.v to <8 x i16>
  %i.w = add nsw <8 x i16> %i.u, %.neg.i.i
  %i.x = ashr <8 x i16> %i.w, splat (i16 1)
  %i.y = add nsw <8 x i16> %i.x, %i.s
  %i.z = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.y, <8 x i16> poison)
  %i.aa = bitcast <16 x i8> %i.z to <4 x i32>
  %i.ab = extractelement <4 x i32> %i.aa, i64 0   ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.ae = and i32 %i.ad, -16711936
  %i.af = and i32 %i.ab, -16711936
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = and i32 %i.ad, 16711935
  %i.ai = and i32 %i.ab, 16711935
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  %i.ak = and i32 %i.ag, -16711936
  %i.al = and i32 %i.aj, 16711935
  %i.am = or disjoint i32 %i.ak, %i.al            ; 2 uses
  store i32 %i.am, ptr %i.b, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AddGreenToBlueAndRed_SSE2(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
bb.a:
  %.not23 = icmp slt i32 %1, 4
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv25 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next26, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv25
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !9 ; 2 uses
  %i.d = bitcast <2 x i64> %i.c to <8 x i16>
  %i.e = lshr <8 x i16> %i.d, splat (i16 8)
  %i.f = shufflevector <8 x i16> %i.e, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6>
  %i.g = bitcast <2 x i64> %i.c to <16 x i8>
  %i.h = bitcast <8 x i16> %i.f to <16 x i8>
  %i.i = add <16 x i8> %i.h, %i.g
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv25
  store <16 x i8> %i.i, ptr %i.j, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !25

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.k = and i32 %1, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 3 uses
  %.not22 = icmp eq i32 %.0.lcssa, %1
  br i1 %.not22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.l = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = sub nsw i32 %1, %.0.lcssa
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  tail call void @VP8LAddGreenToBlueAndRed_C(ptr noundef %i.m, i32 noundef %i.n, ptr noundef %i.o) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TransformColorInverse_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
bb.a:
  %.not39 = icmp slt i32 %2, 4
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = zext i8 %i.b to i16
  %i.d = shl nuw i16 %i.c, 8
  %i.e = ashr exact i16 %i.d, 5
  %i.f = sext i16 %i.e to i32
  %i.g = shl nsw i32 %i.f, 16
  %i.h = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.j = load i8, ptr %0, align 1, !tbaa !28
  %i.k = zext i8 %i.j to i16
  %i.l = shl nuw i16 %i.k, 8
  %i.m = ashr exact i16 %i.l, 5
  %i.n = sext i16 %i.m to i32
  %i.o = shl nsw i32 %i.n, 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = zext i8 %i.q to i16
  %i.s = shl nuw i16 %i.r, 8
  %i.t = ashr exact i16 %i.s, 5
  %i.u = zext i16 %i.t to i32
  %i.v = or disjoint i32 %i.o, %i.u
  %i.w = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = bitcast <4 x i32> %i.x to <8 x i16>
  %i.z = bitcast <4 x i32> %i.i to <8 x i16>
  %i.aa = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv41 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next42, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41
  %i.ac = load <2 x i64>, ptr %i.ab, align 1, !tbaa !9 ; 2 uses
  %i.ad = and <2 x i64> %i.ac, splat (i64 -71777214294589696) ; 2 uses
  %i.ae = bitcast <2 x i64> %i.ad to <8 x i16>
  %i.af = shufflevector <8 x i16> %i.ae, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6>
  %i.ag = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.af, <8 x i16> %i.y)
  %i.ah = bitcast <2 x i64> %i.ac to <16 x i8>
  %i.ai = bitcast <8 x i16> %i.ag to <16 x i8>
  %i.aj = add <16 x i8> %i.ai, %i.ah
  %i.ak = bitcast <16 x i8> %i.aj to <8 x i16>
  %i.al = shl <8 x i16> %i.ak, splat (i16 8)      ; 2 uses
  %i.am = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.al, <8 x i16> %i.z)
  %i.an = bitcast <8 x i16> %i.am to <4 x i32>
  %i.ao = lshr exact <4 x i32> %i.an, splat (i32 8)
  %i.ap = bitcast <4 x i32> %i.ao to <16 x i8>
  %i.aq = bitcast <8 x i16> %i.al to <16 x i8>
  %i.ar = add <16 x i8> %i.aq, %i.ap
  %i.as = bitcast <16 x i8> %i.ar to <8 x i16>
  %i.at = lshr <8 x i16> %i.as, splat (i16 8)
  %i.au = bitcast <8 x i16> %i.at to <2 x i64>
  %i.av = or disjoint <2 x i64> %i.ad, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv41
  store <2 x i64> %i.av, ptr %i.aw, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.aa
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 4
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ax = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ax, %._crit_edge.loopexit ] ; 3 uses
  %.not38 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ay = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay
  %i.ba = sub nsw i32 %2, %.0.lcssa
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ay
  tail call void @VP8LTransformColorInverse_C(ptr noundef nonnull %0, ptr noundef %i.az, i32 noundef %i.ba, ptr noundef %i.bb) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertBGRAToRGB_SSE2(ptr noalias noundef %0, i32 noundef %1, ptr noalias noundef %2) #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 31
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.063 = phi ptr [ %i.gm, %.lr.ph ], [ %2, %bb.a ] ; 7 uses
  %.02362 = phi ptr [ %i.gl, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.02461 = phi i32 [ %i.gn, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.b = load <16 x i8>, ptr %.02362, align 1, !tbaa !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02362, i64 16
  %i.d = load <16 x i8>, ptr %i.c, align 1, !tbaa !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02362, i64 32
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02362, i64 48
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !9 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02362, i64 64
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02362, i64 80
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02362, i64 96
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02362, i64 112
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !9 ; 2 uses
  %i.q = shufflevector <16 x i8> %i.b, <16 x i8> %i.d, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.r = bitcast <16 x i8> %i.q to <2 x i64>      ; 2 uses
  %i.s = shufflevector <16 x i8> %i.b, <16 x i8> %i.d, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = bitcast <16 x i8> %i.s to <2 x i64>
  %i.u = shufflevector <16 x i8> %i.f, <16 x i8> %i.h, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.v = bitcast <16 x i8> %i.u to <2 x i64>      ; 2 uses
  %i.w = shufflevector <16 x i8> %i.f, <16 x i8> %i.h, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = bitcast <16 x i8> %i.w to <2 x i64>
  %i.y = shufflevector <2 x i64> %i.t, <2 x i64> %i.x, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.z = shufflevector <2 x i64> %i.r, <2 x i64> %i.v, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aa = shufflevector <2 x i64> %i.r, <2 x i64> %i.v, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ab = shufflevector <16 x i8> %i.j, <16 x i8> %i.l, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ac = bitcast <16 x i8> %i.ab to <2 x i64>    ; 2 uses
  %i.ad = shufflevector <16 x i8> %i.j, <16 x i8> %i.l, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ae = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.af = shufflevector <16 x i8> %i.n, <16 x i8> %i.p, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ag = bitcast <16 x i8> %i.af to <2 x i64>    ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.n, <16 x i8> %i.p, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ai = bitcast <16 x i8> %i.ah to <2 x i64>
  %i.aj = shufflevector <2 x i64> %i.ae, <2 x i64> %i.ai, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ak = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ag, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.al = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ag, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.am = bitcast <2 x i64> %i.y to <8 x i16>
  %i.an = bitcast <2 x i64> %i.aj to <8 x i16>
  %i.ao = bitcast <2 x i64> %i.y to <8 x i16>
  %i.ap = and <8 x i16> %i.ao, splat (i16 255)
  %i.aq = bitcast <2 x i64> %i.aj to <8 x i16>
  %i.ar = and <8 x i16> %i.aq, splat (i16 255)
  %i.as = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ap, <8 x i16> %i.ar) ; 2 uses
  %i.at = bitcast <2 x i64> %i.z to <8 x i16>
  %i.au = bitcast <2 x i64> %i.ak to <8 x i16>
  %i.av = bitcast <2 x i64> %i.z to <8 x i16>
  %i.aw = and <8 x i16> %i.av, splat (i16 255)
  %i.ax = bitcast <2 x i64> %i.ak to <8 x i16>
  %i.ay = and <8 x i16> %i.ax, splat (i16 255)
  %i.az = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aw, <8 x i16> %i.ay) ; 2 uses
  %i.ba = bitcast <2 x i64> %i.aa to <8 x i16>
  %i.bb = bitcast <2 x i64> %i.al to <8 x i16>
  %i.bc = bitcast <2 x i64> %i.aa to <8 x i16>
  %i.bd = and <8 x i16> %i.bc, splat (i16 255)
  %i.be = bitcast <2 x i64> %i.al to <8 x i16>
  %i.bf = and <8 x i16> %i.be, splat (i16 255)
  %i.bg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bd, <8 x i16> %i.bf) ; 2 uses
  %i.bh = lshr <8 x i16> %i.am, splat (i16 8)
  %i.bi = lshr <8 x i16> %i.an, splat (i16 8)
  %i.bj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bh, <8 x i16> %i.bi) ; 2 uses
  %i.bk = lshr <8 x i16> %i.at, splat (i16 8)
  %i.bl = lshr <8 x i16> %i.au, splat (i16 8)
  %i.bm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bk, <8 x i16> %i.bl) ; 2 uses
  %i.bn = lshr <8 x i16> %i.ba, splat (i16 8)
  %i.bo = lshr <8 x i16> %i.bb, splat (i16 8)
  %i.bp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bn, <8 x i16> %i.bo) ; 2 uses
  %i.bq = bitcast <16 x i8> %i.as to <8 x i16>
  %i.br = bitcast <16 x i8> %i.as to <8 x i16>
  %i.bs = and <8 x i16> %i.br, splat (i16 255)
  %i.bt = bitcast <16 x i8> %i.az to <8 x i16>
  %i.bu = bitcast <16 x i8> %i.az to <8 x i16>
  %i.bv = and <8 x i16> %i.bu, splat (i16 255)
  %i.bw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bs, <8 x i16> %i.bv) ; 2 uses
  %i.bx = bitcast <16 x i8> %i.bg to <8 x i16>
  %i.by = bitcast <16 x i8> %i.bg to <8 x i16>
  %i.bz = and <8 x i16> %i.by, splat (i16 255)
  %i.ca = bitcast <16 x i8> %i.bj to <8 x i16>
  %i.cb = bitcast <16 x i8> %i.bj to <8 x i16>
  %i.cc = and <8 x i16> %i.cb, splat (i16 255)
  %i.cd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bz, <8 x i16> %i.cc) ; 2 uses
  %i.ce = bitcast <16 x i8> %i.bm to <8 x i16>
  %i.cf = bitcast <16 x i8> %i.bm to <8 x i16>
  %i.cg = and <8 x i16> %i.cf, splat (i16 255)
  %i.ch = bitcast <16 x i8> %i.bp to <8 x i16>
  %i.ci = bitcast <16 x i8> %i.bp to <8 x i16>
  %i.cj = and <8 x i16> %i.ci, splat (i16 255)
  %i.ck = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cg, <8 x i16> %i.cj) ; 2 uses
  %i.cl = lshr <8 x i16> %i.bq, splat (i16 8)
  %i.cm = lshr <8 x i16> %i.bt, splat (i16 8)
  %i.cn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cl, <8 x i16> %i.cm) ; 2 uses
  %i.co = lshr <8 x i16> %i.bx, splat (i16 8)
  %i.cp = lshr <8 x i16> %i.ca, splat (i16 8)
  %i.cq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.co, <8 x i16> %i.cp) ; 2 uses
  %i.cr = lshr <8 x i16> %i.ce, splat (i16 8)
  %i.cs = lshr <8 x i16> %i.ch, splat (i16 8)
  %i.ct = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cr, <8 x i16> %i.cs) ; 2 uses
  %i.cu = bitcast <16 x i8> %i.bw to <8 x i16>
  %i.cv = bitcast <16 x i8> %i.cd to <8 x i16>
  %i.cw = bitcast <16 x i8> %i.bw to <8 x i16>
  %i.cx = and <8 x i16> %i.cw, splat (i16 255)
  %i.cy = bitcast <16 x i8> %i.cd to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, splat (i16 255)
  %i.da = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cx, <8 x i16> %i.cz) ; 2 uses
  %i.db = bitcast <16 x i8> %i.ck to <8 x i16>
  %i.dc = bitcast <16 x i8> %i.cn to <8 x i16>
  %i.dd = bitcast <16 x i8> %i.ck to <8 x i16>
  %i.de = and <8 x i16> %i.dd, splat (i16 255)
  %i.df = bitcast <16 x i8> %i.cn to <8 x i16>
  %i.dg = and <8 x i16> %i.df, splat (i16 255)
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.de, <8 x i16> %i.dg) ; 2 uses
  %i.di = bitcast <16 x i8> %i.cq to <8 x i16>
  %i.dj = bitcast <16 x i8> %i.cq to <8 x i16>
  %i.dk = and <8 x i16> %i.dj, splat (i16 255)
  %i.dl = bitcast <16 x i8> %i.ct to <8 x i16>
  %i.dm = bitcast <16 x i8> %i.ct to <8 x i16>
  %i.dn = and <8 x i16> %i.dm, splat (i16 255)
  %i.do = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dk, <8 x i16> %i.dn) ; 2 uses
  %i.dp = lshr <8 x i16> %i.cu, splat (i16 8)
  %i.dq = lshr <8 x i16> %i.cv, splat (i16 8)
  %i.dr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dp, <8 x i16> %i.dq) ; 2 uses
  %i.ds = lshr <8 x i16> %i.db, splat (i16 8)
  %i.dt = lshr <8 x i16> %i.dc, splat (i16 8)
  %i.du = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ds, <8 x i16> %i.dt) ; 2 uses
  %i.dv = lshr <8 x i16> %i.di, splat (i16 8)
  %i.dw = lshr <8 x i16> %i.dl, splat (i16 8)
  %i.dx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dv, <8 x i16> %i.dw) ; 2 uses
  %i.dy = bitcast <16 x i8> %i.da to <8 x i16>
  %i.dz = bitcast <16 x i8> %i.da to <8 x i16>
  %i.ea = and <8 x i16> %i.dz, splat (i16 255)
  %i.eb = bitcast <16 x i8> %i.dh to <8 x i16>
  %i.ec = bitcast <16 x i8> %i.dh to <8 x i16>
  %i.ed = and <8 x i16> %i.ec, splat (i16 255)
  %i.ee = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ea, <8 x i16> %i.ed) ; 2 uses
  %i.ef = bitcast <16 x i8> %i.do to <8 x i16>
  %i.eg = bitcast <16 x i8> %i.do to <8 x i16>
  %i.eh = and <8 x i16> %i.eg, splat (i16 255)
  %i.ei = bitcast <16 x i8> %i.dr to <8 x i16>
  %i.ej = bitcast <16 x i8> %i.dr to <8 x i16>
  %i.ek = and <8 x i16> %i.ej, splat (i16 255)
  %i.el = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eh, <8 x i16> %i.ek) ; 2 uses
  %i.em = bitcast <16 x i8> %i.du to <8 x i16>
  %i.en = bitcast <16 x i8> %i.du to <8 x i16>
  %i.eo = and <8 x i16> %i.en, splat (i16 255)
  %i.ep = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.eq = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.er = and <8 x i16> %i.eq, splat (i16 255)
  %i.es = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eo, <8 x i16> %i.er) ; 2 uses
  %i.et = lshr <8 x i16> %i.dy, splat (i16 8)
  %i.eu = lshr <8 x i16> %i.eb, splat (i16 8)
  %i.ev = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.et, <8 x i16> %i.eu) ; 2 uses
  %i.ew = lshr <8 x i16> %i.ef, splat (i16 8)
  %i.ex = lshr <8 x i16> %i.ei, splat (i16 8)
  %i.ey = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ew, <8 x i16> %i.ex) ; 2 uses
  %i.ez = lshr <8 x i16> %i.em, splat (i16 8)
  %i.fa = lshr <8 x i16> %i.ep, splat (i16 8)
  %i.fb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ez, <8 x i16> %i.fa) ; 2 uses
  %i.fc = bitcast <16 x i8> %i.ee to <8 x i16>
  %i.fd = bitcast <16 x i8> %i.ee to <8 x i16>
  %i.fe = and <8 x i16> %i.fd, splat (i16 255)
  %i.ff = bitcast <16 x i8> %i.el to <8 x i16>
  %i.fg = bitcast <16 x i8> %i.el to <8 x i16>
  %i.fh = and <8 x i16> %i.fg, splat (i16 255)
  %i.fi = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fe, <8 x i16> %i.fh)
  %i.fj = bitcast <16 x i8> %i.es to <8 x i16>
  %i.fk = bitcast <16 x i8> %i.es to <8 x i16>
  %i.fl = and <8 x i16> %i.fk, splat (i16 255)
  %i.fm = bitcast <16 x i8> %i.ev to <8 x i16>
  %i.fn = bitcast <16 x i8> %i.ev to <8 x i16>
  %i.fo = and <8 x i16> %i.fn, splat (i16 255)
  %i.fp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fl, <8 x i16> %i.fo)
  %i.fq = bitcast <16 x i8> %i.ey to <8 x i16>
  %i.fr = bitcast <16 x i8> %i.ey to <8 x i16>
  %i.fs = and <8 x i16> %i.fr, splat (i16 255)
  %i.ft = bitcast <16 x i8> %i.fb to <8 x i16>
end_hunk_0
