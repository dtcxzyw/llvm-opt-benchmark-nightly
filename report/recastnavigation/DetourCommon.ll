Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourCommon?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf:bb.a
  %i.y = fcmp ogt float %i.x, 0.000000e+00
  %i.z = extractelement <2 x float> %i.w, i64 0   ; 2 uses
  %i.aa = fdiv float %i.z, %i.x
  %storemerge = select i1 %i.y, float %i.aa, float %i.z ; 4 uses
  store float %storemerge, ptr %3, align 4, !tbaa !12
  %i.ab = fcmp olt float %storemerge, 0.000000e+00
  br i1 %i.ab, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = fcmp ogt float %storemerge, 1.000000e+00
  br i1 %i.ac, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi float [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ] ; 2 uses
  store float %.sink, ptr %3, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.ad = phi float [ %storemerge, %bb.b ], [ %.sink, %.sink.split ] ; 2 uses
  %i.ae = load float, ptr %1, align 4, !tbaa !12
  %i.af = extractelement <2 x float> %i.n, i64 1
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.af, float %i.ae)
  %i.ah = load float, ptr %0, align 4, !tbaa !12
  %i.ai = fsub float %i.ag, %i.ah                 ; 2 uses
  %i.aj = load float, ptr %i.e, align 4, !tbaa !12
  %i.ak = extractelement <2 x float> %i.s, i64 1
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ak, float %i.aj)
  %i.am = load float, ptr %i.h, align 4, !tbaa !12
  %i.an = fsub float %i.al, %i.am                 ; 2 uses
  %i.ao = fmul float %i.an, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ao)
  ret float %i.ap
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z16dtCalcPolyCenterPfPKtiPKf(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !12
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %2, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init33 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init35 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod39 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.f = load i16, ptr %i.e, align 2, !tbaa !15
  %i.g = zext i16 %i.f to i64
  %.idx.epil = mul nuw nsw i64 %i.g, 12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.epil ; 3 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !12
  %i.j = fadd float %i.i, %.epil.init35           ; 2 uses
  store float %i.j, ptr %0, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fadd float %i.l, %.epil.init33           ; 2 uses
  store float %i.m, ptr %i.a, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !12
  %i.p = fadd float %i.o, %.epil.init             ; 2 uses
  store float %i.p, ptr %i.b, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.q = phi float [ 0.000000e+00, %bb.a ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %.epil.preheader ]
  %i.r = phi float [ 0.000000e+00, %bb.a ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ], [ %i.m, %.epil.preheader ]
  %i.s = phi float [ 0.000000e+00, %bb.a ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ], [ %i.j, %.epil.preheader ]
  %i.t = sitofp i32 %2 to float
  %i.u = fdiv float 1.000000e+00, %i.t            ; 3 uses
  %i.v = fmul float %i.u, %i.s
  store float %i.v, ptr %0, align 4, !tbaa !12
  %i.w = fmul float %i.u, %i.r
  store float %i.w, ptr %i.a, align 4, !tbaa !12
  %i.x = fmul float %i.u, %i.q
  store float %i.x, ptr %i.b, align 4, !tbaa !12
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %i.y = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.az, %bb.b ]
  %i.z = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.aw, %bb.b ]
  %i.aa = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.at, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15
  %i.ad = zext i16 %i.ac to i64
  %.idx = mul nuw nsw i64 %i.ad, 12
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 3 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = fadd float %i.af, %i.aa                 ; 2 uses
  store float %i.ag, ptr %0, align 4, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12
  %i.aj = fadd float %i.ai, %i.z                  ; 2 uses
  store float %i.aj, ptr %i.a, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fadd float %i.al, %i.y                  ; 2 uses
  store float %i.am, ptr %i.b, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !15
  %i.aq = zext i16 %i.ap to i64
  %.idx.1 = mul nuw nsw i64 %i.aq, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.1 ; 3 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = fadd float %i.as, %i.ag                 ; 4 uses
  store float %i.at, ptr %0, align 4, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !12
  %i.aw = fadd float %i.av, %i.aj                 ; 4 uses
  store float %i.aw, ptr %i.a, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !12
  %i.az = fadd float %i.ay, %i.am                 ; 4 uses
  store float %i.az, ptr %i.b, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_Z28dtClosestHeightPointTrianglePKfS0_S0_S0_Rf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !12
  %i.b = load float, ptr %1, align 4, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !12 ; 3 uses
  %i.g = fsub float %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !12 ; 2 uses
  %i.l = load float, ptr %2, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = fsub float %i.n, %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = insertelement <2 x float> poison, float %i.i, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.l, i64 1
  %i.t = insertelement <2 x float> poison, float %i.k, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.b, i64 1 ; 2 uses
  %i.v = fsub <2 x float> %i.s, %i.u              ; 3 uses
  %i.w = insertelement <2 x float> poison, float %i.a, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.q, i64 1
  %i.y = insertelement <2 x float> poison, float %i.b, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.k, i64 1
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 3 uses
  %i.ab = extractelement <2 x float> %i.v, i64 1
  %i.ac = fneg float %i.ab
  %i.ad = extractelement <2 x float> %i.v, i64 0
  %i.ae = fmul float %i.ad, %i.ac
  %i.af = extractelement <2 x float> %i.aa, i64 0
  %i.ag = extractelement <2 x float> %i.aa, i64 1
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ag, float %i.ae) ; 4 uses
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah)
  %i.aj = fcmp olt float %i.ai, f0x358637BD
  br i1 %i.aj, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = load float, ptr %0, align 4, !tbaa !12
  %i.an = fcmp olt float %i.ah, 0.000000e+00      ; 2 uses
  %i.ao = fneg float %i.ah
  %.024 = select i1 %i.an, float %i.ao, float %i.ah ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.am, i64 1
  %i.ar = fsub <2 x float> %i.aq, %i.u            ; 2 uses
  %i.as = fneg <2 x float> %i.ar
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fmul <2 x float> %i.v, %i.at
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ar, <2 x float> %i.au) ; 2 uses
  %i.aw = fneg <2 x float> %i.av
  %i.ax = insertelement <2 x i1> poison, i1 %i.an, i64 0
  %i.ay = shufflevector <2 x i1> %i.ax, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.az = select <2 x i1> %i.ay, <2 x float> %i.aw, <2 x float> %i.av ; 2 uses
  %i.ba = extractelement <2 x float> %i.az, i64 1 ; 3 uses
  %i.bb = fcmp ult float %i.ba, 0.000000e+00
  %i.bc = extractelement <2 x float> %i.az, i64 0 ; 3 uses
  %i.bd = fcmp ult float %i.bc, 0.000000e+00
  %or.cond.not36 = select i1 %i.bb, i1 true, i1 %i.bd
  %5 = fadd float %i.ba, %i.bc
  %i.be = fcmp ugt float %5, %.024
  %or.cond29 = select i1 %or.cond.not36, i1 true, i1 %i.be
  br i1 %or.cond29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = fmul float %i.o, %i.bc
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.g, float %i.ba, float %i.bf)
  %i.bh = fdiv float %i.bg, %.024
  %i.bi = fadd float %i.f, %i.bh
  store float %i.bi, ptr %4, align 4, !tbaa !12
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
end_hunk_0
begin_hunk_1_@_Z19dtOverlapPolyPoly2DPKfiS0_i:bb.a
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!14, !14, i64 0}
end_hunk_1
