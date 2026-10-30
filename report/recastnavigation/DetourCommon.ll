Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourCommon?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z16dtCalcPolyCenterPfPKtiPKf:bb.a
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
  %i.b = add nsw i32 %2, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %5 = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit ] ; 4 uses
  %.032 = phi i1 [ false, %.lr.ph ], [ %.1, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit ] ; 2 uses
  %.02831 = phi i64 [ %5, %.lr.ph ], [ %indvars.iv, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit ] ; 2 uses
  %.02831.a = phi i32 [ %i.b, %.lr.ph ], [ %i.be, %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit ]
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.e = mul nsw i32 %.02831.a, 3
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
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02831 ; 2 uses
  %i.w = insertelement <2 x float> poison, float %.pre34, i64 0
  %i.x = insertelement <2 x float> %i.w, float %.pre, i64 1
  %i.y = insertelement <2 x float> poison, float %.pre33, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 3 uses
  %i.ab = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.i, i64 1
  %i.ad = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fsub <2 x float> %i.ac, %i.ae           ; 3 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x float> %i.ag, %i.af
  %i.ai = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aa, <2 x float> %i.ah) ; 2 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1 ; 2 uses
  %i.al = fcmp ogt float %i.ak, 0.000000e+00
  %i.am = extractelement <2 x float> %i.aj, i64 0 ; 2 uses
  %i.an = fdiv float %i.am, %i.ak
  %storemerge.i = select i1 %i.al, float %i.an, float %i.am ; 4 uses
  store float %storemerge.i, ptr %i.v, align 4, !tbaa !12
  %i.ao = fcmp olt float %storemerge.i, 0.000000e+00
  br i1 %i.ao, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = fcmp ogt float %storemerge.i, 1.000000e+00
  br i1 %i.ap, label %.sink.split.i, label %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi float [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.e ] ; 2 uses
  store float %.sink.i, ptr %i.v, align 4, !tbaa !12
  br label %_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit

_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf.exit:         ; preds = %bb.e, %.sink.split.i
  %i.aq = phi float [ %storemerge.i, %bb.e ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  %i.ar = load float, ptr %i.g, align 4, !tbaa !12
  %i.as = extractelement <2 x float> %i.aa, i64 1
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.as, float %i.ar)
  %i.au = load float, ptr %0, align 4, !tbaa !12
  %i.av = fsub float %i.at, %i.au                 ; 2 uses
  %i.aw = load float, ptr %i.l, align 4, !tbaa !12
  %i.ax = extractelement <2 x float> %i.af, i64 1
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ax, float %i.aw)
  %i.az = load float, ptr %i.c, align 4, !tbaa !12
  %i.ba = fsub float %i.ay, %i.az                 ; 2 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.bb)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02831
  store float %i.bc, ptr %i.bd, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
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
  %i.bz = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.g, i64 1
  %i.cb = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.ca, %i.cc
  %i.ce = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.e, i64 1
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.cd) ; 2 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.ck = fadd float %i.cj, f0x38D1B717
  %i.cl = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.cm = fcmp ule float %i.ck, %i.cl
  %i.cn = fadd float %i.cj, f0xB8D1B717
  %i.co = fcmp uge float %i.cn, %i.cl
  %not..i = and i1 %i.co, %i.cm
  br i1 %not..i, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.b, %_ZL11projectPolyPKfS0_iRfS1_.exit, %bb.a
  %.not49145 = icmp slt i32 %3, 1
  br i1 %.not49145, label %.loopexit, label %.lr.ph148

.lr.ph148:                                        ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit64.loopexit.us137, %.critedge
  %i.cp = add nsw i32 %3, -1
  %i.cq = load float, ptr %0, align 4, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !12
  %i.ct = icmp sgt i32 %1, 1
  %wide.trip.count.i66 = zext nneg i32 %1 to i64
  %i.cu = load float, ptr %2, align 4, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !12
  %.not151 = icmp eq i32 %3, 1
  %wide.trip.count.i74 = zext nneg i32 %3 to i64  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZL11projectPolyPKfS0_iRfS1_.exit80, %.lr.ph148
  %indvars.iv173 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next174, %_ZL11projectPolyPKfS0_iRfS1_.exit80 ] ; 3 uses
  %.0147 = phi i32 [ %i.cp, %.lr.ph148 ], [ %i.em, %_ZL11projectPolyPKfS0_iRfS1_.exit80 ]
  %i.cx = mul nsw i32 %.0147, 3
  %i.cy = sext i32 %i.cx to i64
end_hunk_0
