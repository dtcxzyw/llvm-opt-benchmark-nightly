Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourCommon?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z24dtDistancePtPolyEdgesSqrPKfS0_iPfS1_:bb.a
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
  %i.a = add nsw i32 %1, -1                       ; 2 uses
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
  %i.ay = mul nuw nsw i32 %i.a, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = fsub float %i.d, %i.bc                  ; 4 uses
  %i.be = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bf = fsub float %i.b, %i.be
  %i.bg = fneg float %i.bf                        ; 4 uses
  br i1 %i.h, label %_ZL11projectPolyPKfS0_iRfS1_.exit.us126, label %_ZL11projectPolyPKfS0_iRfS1_.exit

_ZL11projectPolyPKfS0_iRfS1_.exit.us126:          ; preds = %.lr.ph.split
  %i.bh = fmul float %i.g, %i.bg
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.e, float %i.bh) ; 2 uses
  br label %.lr.ph.i59.us130

.lr.ph.i59.us130:                                 ; preds = %.lr.ph.i59.us130, %_ZL11projectPolyPKfS0_iRfS1_.exit.us126
  %.0109.us131 = phi float [ %i.bi, %_ZL11projectPolyPKfS0_iRfS1_.exit.us126 ], [ %i.bq, %.lr.ph.i59.us130 ] ; 2 uses
  %.0107.us132 = phi float [ %i.bi, %_ZL11projectPolyPKfS0_iRfS1_.exit.us126 ], [ %i.bs, %.lr.ph.i59.us130 ] ; 2 uses
  %indvars.iv.i60.us133 = phi i64 [ 1, %_ZL11projectPolyPKfS0_iRfS1_.exit.us126 ], [ %indvars.iv.next.i62.us135, %.lr.ph.i59.us130 ] ; 2 uses
  %.idx.i61.us134 = mul nuw nsw i64 %indvars.iv.i60.us133, 12
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i61.us134 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fmul float %i.bm, %i.bg
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.bk, float %i.bn) ; 4 uses
  %i.bp = fcmp olt float %.0109.us131, %i.bo
  %i.bq = select i1 %i.bp, float %.0109.us131, float %i.bo ; 2 uses
  %i.br = fcmp ogt float %.0107.us132, %i.bo
  %i.bs = select i1 %i.br, float %.0107.us132, float %i.bo ; 2 uses
  %indvars.iv.next.i62.us135 = add nuw nsw i64 %indvars.iv.i60.us133, 1 ; 2 uses
  %exitcond.not.i63.us136 = icmp eq i64 %indvars.iv.next.i62.us135, %wide.trip.count.i58
  br i1 %exitcond.not.i63.us136, label %_ZL11projectPolyPKfS0_iRfS1_.exit64.loopexit.us137, label %.lr.ph.i59.us130

_ZL11projectPolyPKfS0_iRfS1_.exit64.loopexit.us137: ; preds = %.lr.ph.i59.us130
  %i.bt = fmul float %i.d, %i.bg
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.b, float %i.bt) ; 2 uses
  %i.bv = fadd float %i.bu, f0x38D1B717
  %i.bw = fcmp ule float %i.bv, %i.bs
  %i.bx = fadd float %i.bu, f0xB8D1B717
  %i.by = fcmp uge float %i.bx, %i.bq
  %not..i.us143 = and i1 %i.by, %i.bw
  br i1 %not..i.us143, label %.lr.ph148, label %.loopexit

_ZL11projectPolyPKfS0_iRfS1_.exit:                ; preds = %.lr.ph.split
  %4 = insertelement <2 x float> poison, float %i.d, i64 0
  %5 = insertelement <2 x float> %4, float %i.g, i64 1
  %6 = insertelement <2 x float> poison, float %i.bg, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %5, %7
  %9 = insertelement <2 x float> poison, float %i.bd, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x float> poison, float %i.b, i64 0
  %12 = insertelement <2 x float> %11, float %i.e, i64 1
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %12, <2 x float> %8) ; 2 uses
  %14 = extractelement <2 x float> %13, i64 0     ; 2 uses
  %15 = fadd float %14, f0x38D1B717
  %16 = extractelement <2 x float> %13, i64 1     ; 2 uses
  %17 = fcmp ule float %15, %16
  %18 = fadd float %14, f0xB8D1B717
  %19 = fcmp uge float %18, %16
  %not..i = and i1 %19, %17
  br i1 %not..i, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.b, %_ZL11projectPolyPKfS0_iRfS1_.exit, %bb.a
  %.not49145 = icmp slt i32 %3, 1
  br i1 %.not49145, label %.loopexit, label %.lr.ph148

.lr.ph148:                                        ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit64.loopexit.us137, %.critedge
  %i.bz = add nsw i32 %3, -1
  %i.ca = load float, ptr %0, align 4, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !12
  %i.cd = icmp sgt i32 %1, 1
  %wide.trip.count.i66 = zext nneg i32 %1 to i64
  %i.ce = load float, ptr %2, align 4, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !12
  %.not151 = icmp eq i32 %3, 1
  %wide.trip.count.i74 = zext nneg i32 %3 to i64  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit80, %.lr.ph148
  %indvars.iv173 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next174, %_ZL11projectPolyPKfS0_iRfS1_.exit80 ] ; 3 uses
  %.0147 = phi i32 [ %i.bz, %.lr.ph148 ], [ %i.dw, %_ZL11projectPolyPKfS0_iRfS1_.exit80 ]
  %i.ch = mul nsw i32 %.0147, 3
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ci ; 2 uses
  %.idx179 = mul nuw nsw i64 %indvars.iv173, 12
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %.idx179 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !12
  %i.cp = fsub float %i.cm, %i.co                 ; 4 uses
  %i.cq = load float, ptr %i.ck, align 4, !tbaa !12
  %i.cr = load float, ptr %i.cj, align 4, !tbaa !12
  %i.cs = fsub float %i.cq, %i.cr
  %i.ct = fneg float %i.cs                        ; 4 uses
  %i.cu = fmul float %i.cc, %i.ct
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.ca, float %i.cu) ; 4 uses
  br i1 %i.cd, label %.lr.ph.i67, label %_ZL11projectPolyPKfS0_iRfS1_.exit72

.lr.ph.i67:                                       ; preds = %bb.c, %.lr.ph.i67
  %.0105 = phi float [ %i.dd, %.lr.ph.i67 ], [ %i.cv, %bb.c ] ; 2 uses
  %.0103 = phi float [ %i.df, %.lr.ph.i67 ], [ %i.cv, %bb.c ] ; 2 uses
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i70, %.lr.ph.i67 ], [ 1, %bb.c ] ; 2 uses
  %.idx.i69 = mul nuw nsw i64 %indvars.iv.i68, 12
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i69 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !12
  %i.da = fmul float %i.cz, %i.ct
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.cx, float %i.da) ; 4 uses
  %i.dc = fcmp olt float %.0105, %i.db
  %i.dd = select i1 %i.dc, float %.0105, float %i.db ; 2 uses
  %i.de = fcmp ogt float %.0103, %i.db
  %i.df = select i1 %i.de, float %.0103, float %i.db ; 2 uses
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %indvars.iv.next.i70, %wide.trip.count.i66
  br i1 %exitcond.not.i71, label %_ZL11projectPolyPKfS0_iRfS1_.exit72, label %.lr.ph.i67

_ZL11projectPolyPKfS0_iRfS1_.exit72:              ; preds = %.lr.ph.i67, %bb.c
  %.1106 = phi float [ %i.cv, %bb.c ], [ %i.dd, %.lr.ph.i67 ]
  %.1104 = phi float [ %i.cv, %bb.c ], [ %i.df, %.lr.ph.i67 ]
  %i.dg = fmul float %i.cg, %i.ct
  %i.dh = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.ce, float %i.dg) ; 4 uses
  br i1 %.not151, label %_ZL11projectPolyPKfS0_iRfS1_.exit80, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit72, %.lr.ph.i75
  %.0101 = phi float [ %i.dp, %.lr.ph.i75 ], [ %i.dh, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ] ; 2 uses
  %.0100 = phi float [ %i.dr, %.lr.ph.i75 ], [ %i.dh, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ] ; 2 uses
  %indvars.iv.i76 = phi i64 [ %indvars.iv.next.i78, %.lr.ph.i75 ], [ 1, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ] ; 2 uses
  %.idx.i77 = mul nuw nsw i64 %indvars.iv.i76, 12
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i77 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !12
  %i.dm = fmul float %i.dl, %i.ct
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.dj, float %i.dm) ; 4 uses
  %i.do = fcmp olt float %.0101, %i.dn
  %i.dp = select i1 %i.do, float %.0101, float %i.dn ; 2 uses
  %i.dq = fcmp ogt float %.0100, %i.dn
  %i.dr = select i1 %i.dq, float %.0100, float %i.dn ; 2 uses
  %indvars.iv.next.i78 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %indvars.iv.next.i78, %wide.trip.count.i74
  br i1 %exitcond.not.i79, label %_ZL11projectPolyPKfS0_iRfS1_.exit80, label %.lr.ph.i75

_ZL11projectPolyPKfS0_iRfS1_.exit80:              ; preds = %.lr.ph.i75, %_ZL11projectPolyPKfS0_iRfS1_.exit72
  %.1102 = phi float [ %i.dh, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ], [ %i.dp, %.lr.ph.i75 ]
  %.1 = phi float [ %i.dh, %_ZL11projectPolyPKfS0_iRfS1_.exit72 ], [ %i.dr, %.lr.ph.i75 ]
  %i.ds = fadd float %.1106, f0x38D1B717
  %i.dt = fcmp ule float %i.ds, %.1
  %i.du = fadd float %.1104, f0xB8D1B717
  %i.dv = fcmp uge float %i.du, %.1102
  %not..i81 = and i1 %i.dv, %i.dt                 ; 2 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv173 to i32
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = load float, ptr %i.b, align 4, !tbaa !12 ; 2 uses
  %i.s = fsub float %i.q, %i.r
  %i.t = load float, ptr %i.l, align 4, !tbaa !12
  %i.u = fsub float %i.t, %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fsub float %i.w, %i.r
  %i.y = fneg float %i.x
  %i.z = fmul float %i.o, %i.y
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.s, float %i.z) ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.aa, ptr %i.ab, align 4, !tbaa !12
  %i.ac = fcmp olt float %i.aa, 1.000000e-03
  %i.ad = select i1 %i.ac, float 1.000000e-03, float %i.aa
  %i.ae = fadd float %.086, %i.ad                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph90.preheader, label %bb.b

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.d
  %indvars.iv96 = phi i64 [ 2, %.lr.ph90.preheader ], [ %indvars.iv.next97, %bb.d ] ; 3 uses
  %.06588 = phi float [ 0.000000e+00, %.lr.ph90.preheader ], [ %i.ai, %bb.d ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv96
  %i.ag = load float, ptr %i.af, align 4, !tbaa !12 ; 2 uses
  %i.ah = fcmp oge float %i.d, %.06588
  %i.ai = fadd float %.06588, %i.ag               ; 2 uses
  %i.aj = fcmp olt float %i.d, %i.ai
  %or.cond = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph90
  %i.ak = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.al = fsub float %i.d, %.06588
  %i.am = fdiv float %i.al, %i.ag
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph90
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.loopexit, label %.lr.ph90

.loopexit:                                        ; preds = %bb.d, %._crit_edge, %bb.c
  %.270 = phi i32 [ %i.ak, %bb.c ], [ %i.c, %._crit_edge ], [ %i.e, %bb.d ]
  %.2 = phi float [ %i.am, %bb.c ], [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %bb.d ] ; 2 uses
  %i.an = tail call noundef float @sqrtf(float noundef %4) #7 ; 3 uses
  %i.ao = fsub float 1.000000e+00, %i.an          ; 3 uses
  %i.ap = fsub float 1.000000e+00, %.2
  %i.aq = fmul float %i.ap, %i.an                 ; 3 uses
  %i.ar = fmul float %.2, %i.an                   ; 3 uses
  %i.as = mul i32 %.270, 3                        ; 2 uses
  %i.at = add i32 %i.as, -3
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw ; 3 uses
  %i.ay = load float, ptr %0, align 4, !tbaa !12
  %i.az = load float, ptr %i.av, align 4, !tbaa !12
  %i.ba = fmul float %i.aq, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ay, float %i.ba)
  %i.bc = load float, ptr %i.ax, align 4, !tbaa !12
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bc, float %i.bb)
  store float %i.bd, ptr %5, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !12
  %i.bi = fmul float %i.aq, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.bf, float %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bl, float %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bm, ptr %i.bn, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = fmul float %i.aq, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.bp, float %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bv, float %i.bt)
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bw, ptr %i.bx, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_Z19dtIntersectSegSeg2DPKfS0_S0_S0_RfS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !12
  %i.b = load float, ptr %0, align 4, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !12 ; 2 uses
  %i.g = load float, ptr %3, align 4, !tbaa !12
  %i.h = load float, ptr %2, align 4, !tbaa !12   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !12 ; 2 uses
  %i.m = insertelement <2 x float> poison, float %i.g, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.a, i64 1
  %i.o = insertelement <2 x float> poison, float %i.h, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.b, i64 1
  %i.q = fsub <2 x float> %i.n, %i.p              ; 3 uses
  %i.r = insertelement <2 x float> poison, float %i.j, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.d, i64 1
  %i.t = insertelement <2 x float> poison, float %i.l, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.f, i64 1
  %i.v = fsub <2 x float> %i.s, %i.u              ; 3 uses
  %i.w = extractelement <2 x float> %i.q, i64 0
  %i.x = fneg float %i.w
  %i.y = extractelement <2 x float> %i.v, i64 1
  %i.z = fmul float %i.y, %i.x
  %i.aa = extractelement <2 x float> %i.q, i64 1
  %i.ab = extractelement <2 x float> %i.v, i64 0
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.ab, float %i.z) ; 2 uses
  %i.ad = tail call float @llvm.fabs.f32(float %i.ac)
  %i.ae = fcmp uge float %i.ad, f0x358637BD       ; 2 uses
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.af = fsub float %i.f, %i.l
  %i.ag = fsub float %i.b, %i.h
  %i.ah = fneg float %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.v, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.af, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  store float %i.ar, ptr %4, align 4, !tbaa !12
  %i.as = extractelement <2 x float> %i.aq, i64 1
  store float %i.as, ptr %5, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.ae
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
