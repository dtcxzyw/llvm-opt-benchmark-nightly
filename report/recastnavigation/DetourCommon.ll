Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourCommon?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z28dtClosestHeightPointTrianglePKfS0_S0_S0_Rf:bb.a
  %i.aq = insertelement <2 x float> %i.ap, float %i.am, i64 1
  %i.ar = fsub <2 x float> %i.aq, %i.u            ; 2 uses
  %i.as = fneg <2 x float> %i.ar
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fmul <2 x float> %i.v, %i.at
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ar, <2 x float> %i.au) ; 2 uses
  %i.aw = fneg <2 x float> %i.av
  %i.ax = insertelement <2 x i1> poison, i1 %i.an, i64 0
  %i.ay = shufflevector <2 x i1> %i.ax, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.az = select <2 x i1> %i.ay, <2 x float> %i.aw, <2 x float> %i.av ; 3 uses
  %i.ba = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  %i.bb = fcmp ult float %i.ba, 0.000000e+00
  %i.bc = extractelement <2 x float> %i.az, i64 0 ; 2 uses
  %i.bd = fcmp ult float %i.bc, 0.000000e+00
  %or.cond.not36 = select i1 %i.bb, i1 true, i1 %i.bd
  %i.be = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.az)
  %i.bf = fcmp ugt float %i.be, %.024
  %or.cond29 = select i1 %or.cond.not36, i1 true, i1 %i.bf
  br i1 %or.cond29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = fmul float %i.o, %i.bc
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.g, float %i.ba, float %i.bg)
  %i.bi = fdiv float %i.bh, %.024
  %i.bj = fadd float %i.f, %i.bi
  store float %i.bj, ptr %4, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define noundef zeroext i1 @_Z16dtPointInPolygonPKfS0_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %2, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.025 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.02124 = phi i32 [ %i.b, %.lr.ph ], [ %i.y, %bb.d ]
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.f = mul nsw i32 %.02124, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.k = fcmp ogt float %i.j, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !12 ; 2 uses
  %i.n = fcmp ule float %i.m, %i.d
  %.not = xor i1 %i.k, %i.n
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load float, ptr %0, align 4, !tbaa !12
  %i.p = load float, ptr %i.h, align 4, !tbaa !12
  %i.q = load float, ptr %i.e, align 4, !tbaa !12 ; 2 uses
  %i.r = fsub float %i.p, %i.q
  %i.s = fsub float %i.d, %i.j
  %i.t = fmul float %i.s, %i.r
  %i.u = fsub float %i.m, %i.j
  %i.v = fdiv float %i.t, %i.u
  %i.w = fadd float %i.q, %i.v
  %i.x = fcmp olt float %i.o, %i.w
  %spec.select = xor i1 %.025, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i1 [ %.025, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %bb.d ]
  ret i1 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_Z24dtDistancePtPolyEdgesSqrPKfS0_iPfS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %2, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit ] ; 3 uses
  %.032 = phi i1 [ false, %.lr.ph ], [ %.1, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit ] ; 2 uses
  %.02831 = phi i32 [ %i.b, %.lr.ph ], [ %i.bf, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.e = mul nsw i32 %.02831, 3
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !12 ; 4 uses
  %i.j = load float, ptr %i.c, align 4, !tbaa !12 ; 4 uses
  %i.k = fcmp ogt float %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !12 ; 3 uses
  %i.n = fcmp ule float %i.m, %i.j
  %.not = xor i1 %i.k, %i.n
  %.pre = load float, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %.pre33 = load float, ptr %i.g, align 4, !tbaa !12 ; 2 uses
  %.pre34 = load float, ptr %0, align 4, !tbaa !12 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fsub float %.pre33, %.pre
  %i.p = fsub float %i.j, %i.i
  %i.q = fmul float %i.p, %i.o
  %i.r = fsub float %i.m, %i.i
  %i.s = fdiv float %i.q, %i.r
  %i.t = fadd float %.pre, %i.s
  %i.u = fcmp olt float %.pre34, %i.t
  %spec.select = xor i1 %.032, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i1 [ %.032, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.v = sext i32 %.02831 to i64                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %4, i64 %i.v ; 2 uses
  %i.x = insertelement <2 x float> poison, float %.pre34, i64 0
  %i.y = insertelement <2 x float> %i.x, float %.pre, i64 1
  %i.z = insertelement <2 x float> poison, float %.pre33, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fsub <2 x float> %i.y, %i.aa            ; 3 uses
  %i.ac = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.i, i64 1
  %i.ae = insertelement <2 x float> poison, float %i.m, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fsub <2 x float> %i.ad, %i.af           ; 3 uses
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x float> %i.ah, %i.ag
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ab, <2 x float> %i.ai) ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %i.an = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.ao = fdiv float %i.an, %i.al
  %storemerge.i = select i1 %i.am, float %i.ao, float %i.an ; 4 uses
  store float %storemerge.i, ptr %i.w, align 4, !tbaa !12
  %i.ap = fcmp olt float %storemerge.i, 0.000000e+00
  br i1 %i.ap, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = fcmp ogt float %storemerge.i, 1.000000e+00
  br i1 %i.aq, label %.sink.split.i, label %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi float [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.e ] ; 2 uses
  store float %.sink.i, ptr %i.w, align 4, !tbaa !12
  br label %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit

_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit:         ; preds = %bb.e, %.sink.split.i
  %i.ar = phi float [ %storemerge.i, %bb.e ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  %i.as = load float, ptr %i.g, align 4, !tbaa !12
  %i.at = extractelement <2 x float> %i.ab, i64 1
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.at, float %i.as)
  %i.av = load float, ptr %0, align 4, !tbaa !12
  %i.aw = fsub float %i.au, %i.av                 ; 2 uses
  %i.ax = load float, ptr %i.l, align 4, !tbaa !12
  %i.ay = extractelement <2 x float> %i.ag, i64 1
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ay, float %i.ax)
  %i.ba = load float, ptr %i.c, align 4, !tbaa !12
  %i.bb = fsub float %i.az, %i.ba                 ; 2 uses
  %i.bc = fmul float %i.bb, %i.bb
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.bc)
  %i.be = getelementptr inbounds [4 x i8], ptr %3, i64 %i.v
  store float %i.bd, ptr %i.be, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit ]
  ret i1 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define noundef zeroext i1 @_Z19dtOverlapPolyPoly2DPKfiS0_i(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %.not123 = icmp sgt i32 %1, 0
  br i1 %.not123, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !12 ; 4 uses
  %.not150 = icmp eq i32 %1, 1
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %i.e = load float, ptr %2, align 4, !tbaa !12   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !12 ; 3 uses
  %i.h = icmp sgt i32 %3, 1                       ; 2 uses
  %wide.trip.count.i58 = zext nneg i32 %3 to i64  ; 2 uses
  br i1 %.not150, label %.lr.ph.split, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  %.041125.us = phi i32 [ %i.x, %bb.b ], [ %i.a, %.lr.ph ]
  %i.i = mul nsw i32 %.041125.us, 3
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.j ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !12
  %i.q = fsub float %i.n, %i.p                    ; 4 uses
  %i.r = load float, ptr %i.l, align 4, !tbaa !12
  %i.s = load float, ptr %i.k, align 4, !tbaa !12
  %i.t = fsub float %i.r, %i.s
  %i.u = fneg float %i.t                          ; 4 uses
  %i.v = fmul float %i.d, %i.u
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.b, float %i.v) ; 2 uses
  br label %.lr.ph.i.us

bb.b:                                             ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit64.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.preheader.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.preheader.i.us
  %.0113.us = phi float [ %i.w, %.lr.ph.preheader.i.us ], [ %i.af, %.lr.ph.i.us ] ; 2 uses
  %.0111.us = phi float [ %i.w, %.lr.ph.preheader.i.us ], [ %i.ah, %.lr.ph.i.us ] ; 2 uses
  %indvars.iv.i.us = phi i64 [ 1, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph.i.us ] ; 2 uses
  %.idx.i.us = mul nuw nsw i64 %indvars.iv.i.us, 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.us ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = fmul float %i.ab, %i.u
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.z, float %i.ac) ; 4 uses
  %i.ae = fcmp olt float %.0113.us, %i.ad
  %i.af = select i1 %i.ae, float %.0113.us, float %i.ad ; 2 uses
  %i.ag = fcmp ogt float %.0111.us, %i.ad
  %i.ah = select i1 %i.ag, float %.0111.us, float %i.ad ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %_ZL11projectPolyPKfS0_iRfS1_.exit.loopexit.us, label %.lr.ph.i.us

.lr.ph.i59.us:                                    ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit.loopexit.us, %.lr.ph.i59.us
  %.0109.us = phi float [ %i.ap, %.lr.ph.i59.us ], [ %i.ax, %_ZL11projectPolyPKfS0_iRfS1_.exit.loopexit.us ] ; 2 uses
  %.0107.us = phi float [ %i.ar, %.lr.ph.i59.us ], [ %i.ax, %_ZL11projectPolyPKfS0_iRfS1_.exit.loopexit.us ] ; 2 uses
  %indvars.iv.i60.us = phi i64 [ %indvars.iv.next.i62.us, %.lr.ph.i59.us ], [ 1, %_ZL11projectPolyPKfS0_iRfS1_.exit.loopexit.us ] ; 2 uses
  %.idx.i61.us = mul nuw nsw i64 %indvars.iv.i60.us, 12
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i61.us ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fmul float %i.al, %i.u
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.aj, float %i.am) ; 4 uses
  %i.ao = fcmp olt float %.0109.us, %i.an
  %i.ap = select i1 %i.ao, float %.0109.us, float %i.an ; 2 uses
  %i.aq = fcmp ogt float %.0107.us, %i.an
  %i.ar = select i1 %i.aq, float %.0107.us, float %i.an ; 2 uses
  %indvars.iv.next.i62.us = add nuw nsw i64 %indvars.iv.i60.us, 1 ; 2 uses
  %exitcond.not.i63.us = icmp eq i64 %indvars.iv.next.i62.us, %wide.trip.count.i58
  br i1 %exitcond.not.i63.us, label %_ZL11projectPolyPKfS0_iRfS1_.exit64.us, label %.lr.ph.i59.us

_ZL11projectPolyPKfS0_iRfS1_.exit64.us:           ; preds = %.lr.ph.i59.us, %_ZL11projectPolyPKfS0_iRfS1_.exit.loopexit.us
  %.1110.us = phi float [ %i.ax, %_ZL11projectPolyPKfS0_iRfS1_.exit.loopexit.us ], [ %i.ap, %.lr.ph.i59.us ]
  %.1108.us = phi float [ %i.ax, %_ZL11projectPolyPKfS0_iRfS1_.exit.loopexit.us ], [ %i.ar, %.lr.ph.i59.us ]
  %i.as = fadd float %i.af, f0x38D1B717
  %i.at = fcmp ule float %i.as, %.1108.us
  %i.au = fadd float %i.ah, f0xB8D1B717
  %i.av = fcmp uge float %i.au, %.1110.us
  %not..i.us = and i1 %i.av, %i.at
  br i1 %not..i.us, label %bb.b, label %.loopexit

_ZL11projectPolyPKfS0_iRfS1_.exit.loopexit.us:    ; preds = %.lr.ph.i.us
  %i.aw = fmul float %i.g, %i.u
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.e, float %i.aw) ; 4 uses
  br i1 %i.h, label %.lr.ph.i59.us, label %_ZL11projectPolyPKfS0_iRfS1_.exit64.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ay = zext nneg i32 0 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = fsub float %i.d, %i.bb                  ; 4 uses
  %i.bd = load float, ptr %i.az, align 4, !tbaa !12
  %i.be = fsub float %i.b, %i.bd
  %i.bf = fneg float %i.be                        ; 4 uses
  br i1 %i.h, label %_ZL11projectPolyPKfS0_iRfS1_.exit.us126, label %_ZL11projectPolyPKfS0_iRfS1_.exit

_ZL11projectPolyPKfS0_iRfS1_.exit.us126:          ; preds = %.lr.ph.split
  %i.bg = fmul float %i.g, %i.bf
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.e, float %i.bg) ; 2 uses
  br label %.lr.ph.i59.us130

.lr.ph.i59.us130:                                 ; preds = %.lr.ph.i59.us130, %_ZL11projectPolyPKfS0_iRfS1_.exit.us126
  %.0109.us131 = phi float [ %i.bh, %_ZL11projectPolyPKfS0_iRfS1_.exit.us126 ], [ %i.bp, %.lr.ph.i59.us130 ] ; 2 uses
  %.0107.us132 = phi float [ %i.bh, %_ZL11projectPolyPKfS0_iRfS1_.exit.us126 ], [ %i.br, %.lr.ph.i59.us130 ] ; 2 uses
  %indvars.iv.i60.us133 = phi i64 [ 1, %_ZL11projectPolyPKfS0_iRfS1_.exit.us126 ], [ %indvars.iv.next.i62.us135, %.lr.ph.i59.us130 ] ; 2 uses
  %.idx.i61.us134 = mul nuw nsw i64 %indvars.iv.i60.us133, 12
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i61.us134 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = fmul float %i.bl, %i.bf
  %i.bn = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.bj, float %i.bm) ; 4 uses
  %i.bo = fcmp olt float %.0109.us131, %i.bn
  %i.bp = select i1 %i.bo, float %.0109.us131, float %i.bn ; 2 uses
  %i.bq = fcmp ogt float %.0107.us132, %i.bn
  %i.br = select i1 %i.bq, float %.0107.us132, float %i.bn ; 2 uses
  %indvars.iv.next.i62.us135 = add nuw nsw i64 %indvars.iv.i60.us133, 1 ; 2 uses
  %exitcond.not.i63.us136 = icmp eq i64 %indvars.iv.next.i62.us135, %wide.trip.count.i58
  br i1 %exitcond.not.i63.us136, label %_ZL11projectPolyPKfS0_iRfS1_.exit64.loopexit.us137, label %.lr.ph.i59.us130

_ZL11projectPolyPKfS0_iRfS1_.exit64.loopexit.us137: ; preds = %.lr.ph.i59.us130
  %i.bs = fmul float %i.d, %i.bf
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.b, float %i.bs) ; 2 uses
  %i.bu = fadd float %i.bt, f0x38D1B717
  %i.bv = fcmp ule float %i.bu, %i.br
  %i.bw = fadd float %i.bt, f0xB8D1B717
  %i.bx = fcmp uge float %i.bw, %i.bp
  %not..i.us143 = and i1 %i.bx, %i.bv
  br i1 %not..i.us143, label %.lr.ph148, label %.loopexit

_ZL11projectPolyPKfS0_iRfS1_.exit:                ; preds = %.lr.ph.split
  %i.by = insertelement <2 x float> poison, float %i.d, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.g, i64 1
  %i.ca = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.bz, %i.cb
  %i.cd = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %i.b, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.e, i64 1
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cc) ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0 ; 2 uses
  %i.cj = fadd float %i.ci, f0x38D1B717
  %i.ck = extractelement <2 x float> %i.ch, i64 1 ; 2 uses
  %i.cl = fcmp ule float %i.cj, %i.ck
  %i.cm = fadd float %i.ci, f0xB8D1B717
  %i.cn = fcmp uge float %i.cm, %i.ck
  %not..i = and i1 %i.cn, %i.cl
  br i1 %not..i, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.b, %_ZL11projectPolyPKfS0_iRfS1_.exit, %bb.a
  %.not49145 = icmp slt i32 %3, 1
  br i1 %.not49145, label %.loopexit, label %.lr.ph148

.lr.ph148:                                        ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit64.loopexit.us137, %.critedge
  %i.co = add nsw i32 %3, -1
  %i.cp = load float, ptr %0, align 4, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !12
  %i.cs = icmp sgt i32 %1, 1
  %wide.trip.count.i66 = zext nneg i32 %1 to i64
  %i.ct = load float, ptr %2, align 4, !tbaa !12
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !12
  %.not151 = icmp eq i32 %3, 1
  %wide.trip.count.i74 = zext nneg i32 %3 to i64  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit80, %.lr.ph148
  %indvars.iv173 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next174, %_ZL11projectPolyPKfS0_iRfS1_.exit80 ] ; 3 uses
  %.0147 = phi i32 [ %i.co, %.lr.ph148 ], [ %i.el, %_ZL11projectPolyPKfS0_iRfS1_.exit80 ]
  %i.cw = mul nsw i32 %.0147, 3
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cx ; 2 uses
  %.idx179 = mul nuw nsw i64 %indvars.iv173, 12
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx179 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !12
  %i.de = fsub float %i.db, %i.dd                 ; 4 uses
  %i.df = load float, ptr %i.cz, align 4, !tbaa !12
  %i.dg = load float, ptr %i.cy, align 4, !tbaa !12
  %i.dh = fsub float %i.df, %i.dg
  %i.di = fneg float %i.dh                        ; 4 uses
  %i.dj = fmul float %i.cr, %i.di
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.de, float %i.cp, float %i.dj) ; 4 uses
  br i1 %i.cs, label %.lr.ph.i67, label %_ZL11projectPolyPKfS0_iRfS1_.exit72

.lr.ph.i67:                                       ; preds = %bb.c, %.lr.ph.i67
  %.0105 = phi float [ %i.ds, %.lr.ph.i67 ], [ %i.dk, %bb.c ] ; 2 uses
  %.0103 = phi float [ %i.du, %.lr.ph.i67 ], [ %i.dk, %bb.c ] ; 2 uses
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i70, %.lr.ph.i67 ], [ 1, %bb.c ] ; 2 uses
  %.idx.i69 = mul nuw nsw i64 %indvars.iv.i68, 12
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i69 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fmul float %i.do, %i.di
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.de, float %i.dm, float %i.dp) ; 4 uses
  %i.dr = fcmp olt float %.0105, %i.dq
  %i.ds = select i1 %i.dr, float %.0105, float %i.dq ; 2 uses
  %i.dt = fcmp ogt float %.0103, %i.dq
  %i.du = select i1 %i.dt, float %.0103, float %i.dq ; 2 uses
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %indvars.iv.next.i70, %wide.trip.count.i66
  br i1 %exitcond.not.i71, label %_ZL11projectPolyPKfS0_iRfS1_.exit72, label %.lr.ph.i67

_ZL11projectPolyPKfS0_iRfS1_.exit72:              ; preds = %.lr.ph.i67, %bb.c
  %.1106 = phi float [ %i.dk, %bb.c ], [ %i.ds, %.lr.ph.i67 ]
  %.1104 = phi float [ %i.dk, %bb.c ], [ %i.du, %.lr.ph.i67 ]
  %i.dv = fmul float %i.cv, %i.di
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.de, float %i.ct, float %i.dv) ; 4 uses
  br i1 %.not151, label %_ZL11projectPolyPKfS0_iRfS1_.exit80, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit72, %.lr.ph.i75
  %.0101 = phi float [ %i.ee, %.lr.ph.i75 ], [ %i.dw, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ] ; 2 uses
  %.0100 = phi float [ %i.eg, %.lr.ph.i75 ], [ %i.dw, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ] ; 2 uses
  %indvars.iv.i76 = phi i64 [ %indvars.iv.next.i78, %.lr.ph.i75 ], [ 1, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ] ; 2 uses
  %.idx.i77 = mul nuw nsw i64 %indvars.iv.i76, 12
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i77 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = fmul float %i.ea, %i.di
  %i.ec = tail call noundef float @llvm.fmuladd.f32(float %i.de, float %i.dy, float %i.eb) ; 4 uses
  %i.ed = fcmp olt float %.0101, %i.ec
  %i.ee = select i1 %i.ed, float %.0101, float %i.ec ; 2 uses
  %i.ef = fcmp ogt float %.0100, %i.ec
  %i.eg = select i1 %i.ef, float %.0100, float %i.ec ; 2 uses
  %indvars.iv.next.i78 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %indvars.iv.next.i78, %wide.trip.count.i74
  br i1 %exitcond.not.i79, label %_ZL11projectPolyPKfS0_iRfS1_.exit80, label %.lr.ph.i75

_ZL11projectPolyPKfS0_iRfS1_.exit80:              ; preds = %.lr.ph.i75, %_ZL11projectPolyPKfS0_iRfS1_.exit72
  %.1102 = phi float [ %i.dw, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ], [ %i.ee, %.lr.ph.i75 ]
  %.1 = phi float [ %i.dw, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ], [ %i.eg, %.lr.ph.i75 ]
  %i.eh = fadd float %.1106, f0x38D1B717
  %i.ei = fcmp ule float %i.eh, %.1
  %i.ej = fadd float %.1104, f0xB8D1B717
  %i.ek = fcmp uge float %i.ej, %.1102
  %not..i81 = and i1 %i.ek, %i.ei                 ; 2 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.el = trunc nuw nsw i64 %indvars.iv173 to i32
  %exitcond177.not = icmp ne i64 %indvars.iv.next174, %wide.trip.count.i74
  %or.cond.not = select i1 %not..i81, i1 %exitcond177.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit64.us, %_ZL11projectPolyPKfS0_iRfS1_.exit80, %_ZL11projectPolyPKfS0_iRfS1_.exit, %_ZL11projectPolyPKfS0_iRfS1_.exit64.loopexit.us137, %.critedge
  %.6 = phi i1 [ %not..i81, %_ZL11projectPolyPKfS0_iRfS1_.exit80 ], [ false, %_ZL11projectPolyPKfS0_iRfS1_.exit64.loopexit.us137 ], [ true, %.critedge ], [ false, %_ZL11projectPolyPKfS0_iRfS1_.exit ], [ false, %_ZL11projectPolyPKfS0_iRfS1_.exit64.us ]
  ret i1 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @_Z25dtRandomPointInConvexPolyPKfiPfffS1_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, float noundef %3, float noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.c = add nsw i32 %1, -1
  br label %.loopexit

.lr.ph90.preheader:                               ; preds = %bb.b
  %i.d = fmul float %3, %i.ae                     ; 3 uses
  %i.e = add nsw i32 %1, -1
  %wide.trip.count99 = zext nneg i32 %1 to i64
  br label %.lr.ph90

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.086 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ae, %bb.b ]
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = mul i32 %i.f, 3                          ; 2 uses
  %i.h = add i32 %i.g, -3
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.m = load float, ptr %i.j, align 4, !tbaa !12
  %i.n = load float, ptr %0, align 4, !tbaa !12   ; 2 uses
  %i.o = fsub float %i.m, %i.n
end_hunk_0
