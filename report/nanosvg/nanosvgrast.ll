Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__lineTo:bb.a
  %.not.i22 = icmp slt i32 %i.ab, %i.ad
  br i1 %.not.i22, label %._crit_edge.i28, label %bb.d

bb.d:                                             ; preds = %nsvg__addPoint.exit
  %.not16.i23 = icmp eq i32 %i.ad, 0
  %i.ae = shl nsw i32 %i.ad, 1
  %spec.select.i24 = select i1 %.not16.i23, i32 8, i32 %i.ae ; 2 uses
  store i32 %spec.select.i24, ptr %i.p, align 4, !tbaa !84
  %i.af = shl nsw i32 %spec.select.i24, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = tail call ptr @realloc(ptr noundef %.pre.i30, i64 noundef %i.ah) #32 ; 3 uses
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !79
  %.not17.i25 = icmp eq ptr %i.ai, null
  %.pre42 = load i32, ptr %i.a, align 8, !tbaa !83 ; 2 uses
  br i1 %.not17.i25, label %nsvg__addPoint.exit31, label %._crit_edge.i28

._crit_edge.i28:                                  ; preds = %bb.d, %nsvg__addPoint.exit
  %i.aj = phi i32 [ %i.ab, %nsvg__addPoint.exit ], [ %.pre42, %bb.d ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i30, %nsvg__addPoint.exit ], [ %i.ai, %bb.d ] ; 2 uses
  %i.al = shl nsw i32 %i.aj, 1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  store <2 x float> %i.ac, ptr %i.an, align 4, !tbaa !31
  %i.ao = add nsw i32 %i.aj, 1                    ; 2 uses
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !83
  br label %nsvg__addPoint.exit31

nsvg__addPoint.exit31:                            ; preds = %bb.d, %._crit_edge.i28
  %.pre.i40 = phi ptr [ null, %bb.d ], [ %i.ak, %._crit_edge.i28 ] ; 2 uses
  %i.ap = phi i32 [ %.pre42, %bb.d ], [ %i.ao, %._crit_edge.i28 ] ; 2 uses
  %i.aq = load i32, ptr %i.p, align 4, !tbaa !84  ; 3 uses
  %.not.i32 = icmp slt i32 %i.ap, %i.aq
  br i1 %.not.i32, label %._crit_edge.i38, label %bb.e

bb.e:                                             ; preds = %nsvg__addPoint.exit31
  %.not16.i33 = icmp eq i32 %i.aq, 0
  %i.ar = shl nsw i32 %i.aq, 1
  %spec.select.i34 = select i1 %.not16.i33, i32 8, i32 %i.ar ; 2 uses
  store i32 %spec.select.i34, ptr %i.p, align 4, !tbaa !84
  %i.as = shl nsw i32 %spec.select.i34, 1
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 2
  %i.av = tail call ptr @realloc(ptr noundef %.pre.i40, i64 noundef %i.au) #32 ; 3 uses
  store ptr %i.av, ptr %i.d, align 8, !tbaa !79
  %.not17.i35 = icmp eq ptr %i.av, null
  br i1 %.not17.i35, label %nsvg__addPoint.exit41, label %._crit_edge18.i36

._crit_edge18.i36:                                ; preds = %bb.e
  %.pre19.i37 = load i32, ptr %i.a, align 8, !tbaa !83
  br label %._crit_edge.i38

._crit_edge.i38:                                  ; preds = %nsvg__addPoint.exit31, %._crit_edge18.i36
  %i.aw = phi i32 [ %.pre19.i37, %._crit_edge18.i36 ], [ %i.ap, %nsvg__addPoint.exit31 ] ; 2 uses
  %i.ax = phi ptr [ %i.av, %._crit_edge18.i36 ], [ %.pre.i40, %nsvg__addPoint.exit31 ]
  %i.ay = shl nsw i32 %i.aw, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  store float %1, ptr %i.ba, align 4, !tbaa !31
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  store float %2, ptr %i.bb, align 4, !tbaa !31
  %i.bc = add nsw i32 %i.aw, 1
  store i32 %i.bc, ptr %i.a, align 8, !tbaa !83
  br label %nsvg__addPoint.exit41

nsvg__addPoint.exit41:                            ; preds = %._crit_edge.i38, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__cubicBezTo(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %nsvg__addPoint.exit29

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 6 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !84   ; 3 uses
  %.not.i = icmp slt i32 %i.b, %i.e
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %._crit_edge18.i

bb.c:                                             ; preds = %bb.b
  %.not16.i = icmp eq i32 %i.e, 0
  %i.f = shl nsw i32 %i.e, 1
  %spec.select.i = select i1 %.not16.i, i32 8, i32 %i.f ; 2 uses
  store i32 %spec.select.i, ptr %i.d, align 4, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.i = shl nsw i32 %spec.select.i, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call ptr @realloc(ptr noundef %i.h, i64 noundef %i.k) #32 ; 3 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !79
  %.not17.i = icmp eq ptr %i.l, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  br i1 %.not17.i, label %nsvg__addPoint.exit, label %._crit_edge18.i

._crit_edge18.i:                                  ; preds = %bb.c, %._crit_edge.i
  %i.m = phi i32 [ %i.b, %._crit_edge.i ], [ %.pre, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.o = shl nsw i32 %i.m, 1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.p ; 2 uses
  store float %1, ptr %i.q, align 4, !tbaa !31
  %i.r = getelementptr i8, ptr %i.q, i64 4
  store float %2, ptr %i.r, align 4, !tbaa !31
  %i.s = add nsw i32 %i.m, 1                      ; 2 uses
  store i32 %i.s, ptr %i.a, align 8, !tbaa !83
  br label %nsvg__addPoint.exit

nsvg__addPoint.exit:                              ; preds = %bb.c, %._crit_edge18.i
  %.pre.i18 = phi ptr [ null, %bb.c ], [ %i.n, %._crit_edge18.i ] ; 2 uses
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.s, %._crit_edge18.i ] ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !84   ; 3 uses
  %.not.i10 = icmp slt i32 %i.t, %i.u
  br i1 %.not.i10, label %._crit_edge.i16, label %bb.d

bb.d:                                             ; preds = %nsvg__addPoint.exit
  %.not16.i11 = icmp eq i32 %i.u, 0
  %i.v = shl nsw i32 %i.u, 1
  %spec.select.i12 = select i1 %.not16.i11, i32 8, i32 %i.v ; 2 uses
  store i32 %spec.select.i12, ptr %i.d, align 4, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %i.x = shl nsw i32 %spec.select.i12, 1
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = tail call ptr @realloc(ptr noundef %.pre.i18, i64 noundef %i.z) #32 ; 3 uses
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !79
  %.not17.i13 = icmp eq ptr %i.aa, null
  %.pre30 = load i32, ptr %i.a, align 8, !tbaa !83 ; 2 uses
  br i1 %.not17.i13, label %nsvg__addPoint.exit19, label %._crit_edge.i16

._crit_edge.i16:                                  ; preds = %bb.d, %nsvg__addPoint.exit
  %i.ab = phi i32 [ %i.t, %nsvg__addPoint.exit ], [ %.pre30, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i18, %nsvg__addPoint.exit ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ad = shl nsw i32 %i.ab, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  store float %3, ptr %i.af, align 4, !tbaa !31
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  store float %4, ptr %i.ag, align 4, !tbaa !31
  %i.ah = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !83
  br label %nsvg__addPoint.exit19

nsvg__addPoint.exit19:                            ; preds = %bb.d, %._crit_edge.i16
  %.pre.i28 = phi ptr [ null, %bb.d ], [ %i.ac, %._crit_edge.i16 ] ; 2 uses
  %i.ai = phi i32 [ %.pre30, %bb.d ], [ %i.ah, %._crit_edge.i16 ] ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !84  ; 3 uses
  %.not.i20 = icmp slt i32 %i.ai, %i.aj
  br i1 %.not.i20, label %._crit_edge.i26, label %bb.e

bb.e:                                             ; preds = %nsvg__addPoint.exit19
  %.not16.i21 = icmp eq i32 %i.aj, 0
  %i.ak = shl nsw i32 %i.aj, 1
  %spec.select.i22 = select i1 %.not16.i21, i32 8, i32 %i.ak ; 2 uses
  store i32 %spec.select.i22, ptr %i.d, align 4, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %i.am = shl nsw i32 %spec.select.i22, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = tail call ptr @realloc(ptr noundef %.pre.i28, i64 noundef %i.ao) #32 ; 3 uses
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !79
  %.not17.i23 = icmp eq ptr %i.ap, null
  br i1 %.not17.i23, label %nsvg__addPoint.exit29, label %._crit_edge18.i24

._crit_edge18.i24:                                ; preds = %bb.e
  %.pre19.i25 = load i32, ptr %i.a, align 8, !tbaa !83
  br label %._crit_edge.i26

._crit_edge.i26:                                  ; preds = %nsvg__addPoint.exit19, %._crit_edge18.i24
  %i.aq = phi i32 [ %.pre19.i25, %._crit_edge18.i24 ], [ %i.ai, %nsvg__addPoint.exit19 ] ; 2 uses
  %i.ar = phi ptr [ %i.ap, %._crit_edge18.i24 ], [ %.pre.i28, %nsvg__addPoint.exit19 ]
  %i.as = shl nsw i32 %i.aq, 1
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.at ; 2 uses
  store float %5, ptr %i.au, align 4, !tbaa !31
  %i.av = getelementptr i8, ptr %i.au, i64 4
  store float %6, ptr %i.av, align 4, !tbaa !31
  %i.aw = add nsw i32 %i.aq, 1
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !83
  br label %nsvg__addPoint.exit29

nsvg__addPoint.exit29:                            ; preds = %._crit_edge.i26, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #22

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @nsvg__curveBounds(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #25 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = load float, ptr %1, align 4, !tbaa !31   ; 2 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !31 ; 2 uses
  %i.g = fcmp olt float %i.e, %i.f
  %i.h = select i1 %i.g, float %i.e, float %i.f   ; 4 uses
  store float %i.h, ptr %0, align 4, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !31 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !31 ; 2 uses
  %i.m = fcmp olt float %i.j, %i.l
  %i.n = select i1 %i.m, float %i.j, float %i.l   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store float %i.n, ptr %i.o, align 4, !tbaa !31
  %i.p = load float, ptr %1, align 4, !tbaa !31   ; 2 uses
  %i.q = load float, ptr %i.d, align 4, !tbaa !31 ; 2 uses
  %i.r = fcmp ogt float %i.p, %i.q
  %i.s = select i1 %i.r, float %i.p, float %i.q   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store float %i.s, ptr %i.t, align 4, !tbaa !31
  %i.u = load float, ptr %i.i, align 4, !tbaa !31 ; 2 uses
  %i.v = load float, ptr %i.k, align 4, !tbaa !31 ; 2 uses
  %i.w = fcmp ogt float %i.u, %i.v
  %i.x = select i1 %i.w, float %i.u, float %i.v   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.x, ptr %i.y, align 4, !tbaa !31
  %i.z = load float, ptr %i.b, align 4, !tbaa !31 ; 3 uses
  %i.aa = fcmp ult float %i.z, %i.h
  %i.ab = fcmp ugt float %i.z, %i.s
  %or.cond103 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond103, label %.nsvg__ptInBounds.exit.thread_crit_edge, label %bb.b

.nsvg__ptInBounds.exit.thread_crit_edge:          ; preds = %bb.a
  %.pre = load float, ptr %i.c, align 4, !tbaa !31
  br label %nsvg__ptInBounds.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !31 ; 2 uses
  %i.ae = fcmp ult float %i.ad, %i.n
  %i.af = fcmp ugt float %i.ad, %i.x
  %or.cond105 = select i1 %i.ae, i1 true, i1 %i.af
  %.pre113 = load float, ptr %i.c, align 4, !tbaa !31 ; 5 uses
  br i1 %or.cond105, label %nsvg__ptInBounds.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = fcmp ult float %.pre113, %i.h
  %i.ah = fcmp ugt float %.pre113, %i.s
  %or.cond104 = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond104, label %nsvg__ptInBounds.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !31 ; 2 uses
  %i.ak = fcmp ult float %i.aj, %i.n
  %i.al = fcmp ugt float %i.aj, %i.x
  %or.cond106 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond106, label %nsvg__ptInBounds.exit.thread, label %.loopexit

nsvg__ptInBounds.exit.thread:                     ; preds = %.nsvg__ptInBounds.exit.thread_crit_edge, %bb.c, %bb.d, %bb.b
  %i.am = phi float [ %.pre, %.nsvg__ptInBounds.exit.thread_crit_edge ], [ %.pre113, %bb.c ], [ %.pre113, %bb.d ], [ %.pre113, %bb.b ]
  %i.an = load float, ptr %1, align 4, !tbaa !31
  %i.ao = fpext float %i.an to double             ; 3 uses
  %i.ap = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.z, i64 1
  %i.ar = fpext <2 x float> %i.aq to <2 x double> ; 3 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  %i.at = load float, ptr %i.d, align 4, !tbaa !31
  %i.au = fpext float %i.at to double
  %i.av = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = fmul <2 x double> %i.av, <double 9.000000e+00, double -1.200000e+01> ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ao, double -3.000000e+00, double %i.ax)
  %i.az = tail call double @llvm.fmuladd.f64(double %i.as, double -9.000000e+00, double %i.ay)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.au, double 3.000000e+00, double %i.az) ; 3 uses
  %i.bb = extractelement <2 x double> %i.aw, i64 1
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ao, double 6.000000e+00, double %i.bb)
  %i.bd = fmul double %i.ao, -3.000000e+00
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> <double 6.000000e+00, double 3.000000e+00>, <2 x double> %i.bf) ; 3 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0 ; 6 uses
  %i.bi = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bj = fcmp olt double %i.bi, f0x3D719799812DEA11
  br i1 %i.bj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %nsvg__ptInBounds.exit.thread
  %i.bk = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bl = fcmp ogt double %i.bk, f0x3D719799812DEA11
  br i1 %i.bl, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.bm = extractelement <2 x double> %i.bg, i64 1
  %i.bn = fneg double %i.bm
  %i.bo = fdiv double %i.bn, %i.bh                ; 3 uses
  %i.bp = fcmp ogt double %i.bo, f0x3D719799812DEA11
  %i.bq = fcmp olt double %i.bo, f0x3FEFFFFFFFFFDCD1
  %or.cond = and i1 %i.bp, %i.bq
  br i1 %or.cond, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  store double %i.bo, ptr %i.a, align 16, !tbaa !312
  br label %.lr.ph

bb.h:                                             ; preds = %nsvg__ptInBounds.exit.thread
  %i.br = extractelement <2 x double> %i.bg, i64 1
  %i.bs = fmul double %i.br, 4.000000e+00
  %i.bt = fneg double %i.ba
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bu) ; 2 uses
  %i.bw = fcmp ogt double %i.bv, f0x3D719799812DEA11
  br i1 %i.bw, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.bx = fneg double %i.bh
  %i.by = tail call double @sqrt(double noundef %i.bv) #30 ; 2 uses
  %i.bz = fsub double %i.by, %i.bh
  %i.ca = fmul double %i.ba, 2.000000e+00         ; 2 uses
  %i.cb = fdiv double %i.bz, %i.ca                ; 3 uses
  %i.cc = fcmp ogt double %i.cb, f0x3D719799812DEA11
  %i.cd = fcmp olt double %i.cb, f0x3FEFFFFFFFFFDCD1
  %or.cond3 = and i1 %i.cc, %i.cd                 ; 2 uses
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.cb, ptr %i.a, align 16, !tbaa !312
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ 1, %bb.j ], [ 0, %bb.i ]        ; 2 uses
  %i.ce = fsub double %i.bx, %i.by
  %i.cf = fdiv double %i.ce, %i.ca                ; 3 uses
  %i.cg = fcmp ogt double %i.cf, f0x3D719799812DEA11
  %i.ch = fcmp olt double %i.cf, f0x3FEFFFFFFFFFDCD1
  %or.cond5 = and i1 %i.cg, %i.ch
  br i1 %or.cond5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = add nuw nsw i32 %.0, 1
  %i.cj = zext nneg i32 %.0 to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cj
  store double %i.cf, ptr %i.ck, align 8, !tbaa !312
  %i.cl = zext nneg i32 %i.ci to i64
  br label %.lr.ph

bb.m:                                             ; preds = %bb.k
  br i1 %or.cond3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %bb.g, %bb.m
  %.1130 = phi i64 [ 1, %bb.m ], [ %i.cl, %bb.l ], [ 1, %bb.g ]
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %2 = phi float [ %i.s, %.lr.ph ], [ %i.dn, %bb.n ] ; 2 uses
  %3 = phi float [ %i.h, %.lr.ph ], [ %i.dl, %bb.n ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cm = load double, ptr %4, align 8, !tbaa !312 ; 7 uses
  %i.cn = load float, ptr %1, align 4, !tbaa !31
  %i.co = fpext float %i.cn to double
  %i.cp = load float, ptr %i.b, align 4, !tbaa !31
  %i.cq = fpext float %i.cp to double
  %i.cr = load float, ptr %i.c, align 4, !tbaa !31
  %i.cs = fpext float %i.cr to double
  %i.ct = load float, ptr %i.d, align 4, !tbaa !31
  %i.cu = fpext float %i.ct to double
  %i.cv = fsub double 1.000000e+00, %i.cm         ; 5 uses
  %i.cw = fmul double %i.cv, %i.cv
  %i.cx = fmul double %i.cv, %i.cw
  %i.cy = fmul double %i.cv, 3.000000e+00         ; 2 uses
  %i.cz = fmul double %i.cv, %i.cy
  %i.da = fmul double %i.cm, %i.cz
  %i.db = fmul double %i.da, %i.cq
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.co, double %i.db)
  %i.dd = fmul double %i.cm, %i.cy
  %i.de = fmul double %i.cm, %i.dd
  %i.df = tail call double @llvm.fmuladd.f64(double %i.de, double %i.cs, double %i.dc)
  %i.dg = fmul double %i.cm, %i.cm
  %i.dh = fmul double %i.cm, %i.dg
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.cu, double %i.df)
  %i.dj = fptrunc double %i.di to float           ; 4 uses
  %i.dk = fcmp olt float %3, %i.dj
  %i.dl = select i1 %i.dk, float %3, float %i.dj  ; 2 uses
  store float %i.dl, ptr %0, align 4, !tbaa !31
  %i.dm = fcmp ogt float %2, %i.dj
  %i.dn = select i1 %i.dm, float %2, float %i.dj  ; 2 uses
  store float %i.dn, ptr %i.t, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %.1130
  br i1 %exitcond.not.a, label %._crit_edge, label %bb.n, !llvm.loop !310

._crit_edge:                                      ; preds = %bb.n, %bb.h, %bb.e, %bb.f, %bb.m
  %i.do = load float, ptr %i.i, align 4, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !31 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !31
  %i.dv = fpext float %i.dq to double             ; 3 uses
  %i.dw = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.ds, i64 1
  %i.dy = fpext <2 x float> %i.dx to <2 x double> ; 3 uses
  %i.dz = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.du, i64 1
  %i.eb = fpext <2 x float> %i.ea to <2 x double>
  %i.ec = fmul double %i.dv, -1.200000e+01
  %i.ed = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ee = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ef = insertelement <2 x double> %i.ee, double %i.dv, i64 0
  %i.eg = fmul <2 x double> %i.ef, <double 9.000000e+00, double -3.000000e+00>
  %i.eh = insertelement <2 x double> %i.dy, double %i.dv, i64 1
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> <double -3.000000e+00, double 3.000000e+00>, <2 x double> %i.eg) ; 3 uses
  %i.ej = shufflevector <2 x double> %i.ed, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> <double 6.000000e+00, double -9.000000e+00>, <2 x double> %i.ej)
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> <double 6.000000e+00, double 3.000000e+00>, <2 x double> %i.ek) ; 5 uses
  %i.em = extractelement <2 x double> %i.el, i64 1 ; 2 uses
  %i.en = tail call double @llvm.fabs.f64(double %i.em)
  %i.eo = fcmp olt double %i.en, f0x3D719799812DEA11
  br i1 %i.eo, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ep = extractelement <2 x double> %i.ei, i64 1
  %i.eq = fmul double %i.ep, 4.000000e+00
  %i.er = fneg double %i.em
  %i.es = fmul double %i.eq, %i.er
  %i.et = extractelement <2 x double> %i.el, i64 0 ; 3 uses
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.et, double %i.et, double %i.es) ; 2 uses
  %i.ev = fcmp ogt double %i.eu, f0x3D719799812DEA11
  br i1 %i.ev, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ew = fneg double %i.et
  %i.ex = tail call double @sqrt(double noundef %i.eu) #30 ; 2 uses
  %i.ey = extractelement <2 x double> %i.el, i64 0
  %i.ez = fsub double %i.ex, %i.ey
  %i.fa = extractelement <2 x double> %i.el, i64 1
  %i.fb = fmul double %i.fa, 2.000000e+00         ; 2 uses
  %i.fc = fdiv double %i.ez, %i.fb                ; 3 uses
  %i.fd = fcmp ogt double %i.fc, f0x3D719799812DEA11
  %i.fe = fcmp olt double %i.fc, f0x3FEFFFFFFFFFDCD1
  %or.cond3.1 = and i1 %i.fd, %i.fe               ; 2 uses
  br i1 %or.cond3.1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.fc, ptr %i.a, align 16, !tbaa !312
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.1 = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]      ; 2 uses
  %i.ff = fsub double %i.ew, %i.ex
  %i.fg = fdiv double %i.ff, %i.fb                ; 3 uses
  %i.fh = fcmp ogt double %i.fg, f0x3D719799812DEA11
  %i.fi = fcmp olt double %i.fg, f0x3FEFFFFFFFFFDCD1
  %or.cond5.1 = and i1 %i.fh, %i.fi
  br i1 %or.cond5.1, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.fj = add nuw nsw i32 %.0.1, 1
  %i.fk = zext nneg i32 %.0.1 to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fk
  store double %i.fg, ptr %i.fl, align 8, !tbaa !312
  %i.fm = zext nneg i32 %i.fj to i64
  br label %.lr.ph.1

bb.t:                                             ; preds = %._crit_edge
  %i.fn = extractelement <2 x double> %i.el, i64 0 ; 2 uses
  %i.fo = tail call double @llvm.fabs.f64(double %i.fn)
  %i.fp = fcmp ogt double %i.fo, f0x3D719799812DEA11
  br i1 %i.fp, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.fq = extractelement <2 x double> %i.ei, i64 1
  %i.fr = fneg double %i.fq
  %i.fs = fdiv double %i.fr, %i.fn                ; 3 uses
  %i.ft = fcmp ogt double %i.fs, f0x3D719799812DEA11
  %i.fu = fcmp olt double %i.fs, f0x3FEFFFFFFFFFDCD1
  %or.cond.1 = and i1 %i.ft, %i.fu
  br i1 %or.cond.1, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  store double %i.fs, ptr %i.a, align 16, !tbaa !312
  br label %.lr.ph.1

bb.w:                                             ; preds = %bb.r
  br i1 %or.cond3.1, label %.lr.ph.1, label %.loopexit

.lr.ph.1:                                         ; preds = %bb.s, %bb.v, %bb.w
  %.1.1137 = phi i64 [ 1, %bb.w ], [ %i.fm, %bb.s ], [ 1, %bb.v ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.1
  %5 = phi float [ %i.x, %.lr.ph.1 ], [ %i.gx, %bb.x ] ; 2 uses
  %6 = phi float [ %i.n, %.lr.ph.1 ], [ %i.gv, %bb.x ] ; 2 uses
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.x ] ; 2 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.1
  %i.fw = load double, ptr %7, align 8, !tbaa !312 ; 7 uses
  %i.fx = load float, ptr %i.i, align 4, !tbaa !31
  %i.fy = fpext float %i.fx to double
  %i.fz = load float, ptr %i.dp, align 4, !tbaa !31
  %i.ga = fpext float %i.fz to double
  %i.gb = load float, ptr %i.dr, align 4, !tbaa !31
  %i.gc = fpext float %i.gb to double
  %i.gd = load float, ptr %i.dt, align 4, !tbaa !31
  %i.ge = fpext float %i.gd to double
  %i.gf = fsub double 1.000000e+00, %i.fw         ; 5 uses
  %i.gg = fmul double %i.gf, %i.gf
  %i.gh = fmul double %i.gf, %i.gg
  %i.gi = fmul double %i.gf, 3.000000e+00         ; 2 uses
  %i.gj = fmul double %i.gf, %i.gi
  %i.gk = fmul double %i.fw, %i.gj
  %i.gl = fmul double %i.gk, %i.ga
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.fy, double %i.gl)
  %i.gn = fmul double %i.fw, %i.gi
  %i.go = fmul double %i.fw, %i.gn
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.go, double %i.gc, double %i.gm)
  %i.gq = fmul double %i.fw, %i.fw
  %i.gr = fmul double %i.fw, %i.gq
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.ge, double %i.gp)
  %i.gt = fptrunc double %i.gs to float           ; 4 uses
  %i.gu = fcmp olt float %6, %i.gt
  %i.gv = select i1 %i.gu, float %6, float %i.gt  ; 2 uses
  store float %i.gv, ptr %i.o, align 4, !tbaa !31
  %i.gw = fcmp ogt float %5, %i.gt
  %i.gx = select i1 %i.gw, float %5, float %i.gt  ; 2 uses
  store float %i.gx, ptr %i.fv, align 4, !tbaa !31
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not.a = icmp eq i64 %indvars.iv.next.1, %.1.1137
  br i1 %exitcond.1.not.a, label %.loopexit, label %bb.x, !llvm.loop !310

.loopexit:                                        ; preds = %bb.x, %bb.o, %bb.t, %bb.u, %bb.w, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nsvg__xformInverse(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #26 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !31
  %i.b = fpext float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !31
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !31
  %i.h = fpext <2 x float> %i.g to <2 x double>   ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fneg double %i.i
  %i.k = extractelement <2 x double> %i.h, i64 1
  %i.l = fmul double %i.k, %i.j
  %i.m = tail call double @llvm.fmuladd.f64(double %i.b, double %i.e, double %i.l) ; 2 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %or.cond = fcmp olt double %i.n, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = fdiv double 1.000000e+00, %i.m           ; 6 uses
  %i.r = fmul double %i.q, %i.e
  %i.s = fptrunc double %i.r to float
  store float %i.s, ptr %0, align 4, !tbaa !31
  %i.t = load float, ptr %i.p, align 4, !tbaa !31
  %i.u = fneg float %i.t
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.q, %i.v
  %i.x = fptrunc double %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load <4 x float>, ptr %i.p, align 4, !tbaa !31
  %i.ac = fpext <4 x float> %i.ab to <4 x double> ; 4 uses
  %i.ad = extractelement <4 x double> %i.ac, i64 2
  %i.ae = fneg double %i.ad
  %i.af = extractelement <4 x double> %i.ac, i64 1
  %i.ag = fmul double %i.af, %i.ae
  %i.ah = extractelement <4 x double> %i.ac, i64 0
  %i.ai = extractelement <4 x double> %i.ac, i64 3
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ai, double %i.ag)
  %i.ak = fmul double %i.q, %i.aj
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.al, ptr %i.am, align 4, !tbaa !31
  %i.an = load float, ptr %i.f, align 4, !tbaa !31
  %i.ao = fneg float %i.an
  %i.ap = fpext float %i.ao to double
  %i.aq = fmul double %i.q, %i.ap
  %i.ar = fptrunc double %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ar, ptr %i.as, align 4, !tbaa !31
  %i.at = load float, ptr %1, align 4, !tbaa !31
  %i.au = fpext float %i.at to double
  %i.av = fmul double %i.q, %i.au
  %i.aw = fptrunc double %i.av to float
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aw, ptr %i.ax, align 4, !tbaa !31
  %i.ay = load float, ptr %i.f, align 4, !tbaa !31
  %i.az = fpext float %i.ay to double
  %i.ba = load float, ptr %i.aa, align 4, !tbaa !31
  %i.bb = fpext float %i.ba to double
  %i.bc = load float, ptr %1, align 4, !tbaa !31
  %i.bd = fpext float %i.bc to double
  %i.be = load float, ptr %i.z, align 4, !tbaa !31
  %i.bf = fpext float %i.be to double
  %i.bg = fneg double %i.bf
  %i.bh = fmul double %i.bd, %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.az, double %i.bb, double %i.bh)
  %i.bj = fmul double %i.q, %i.bi
  %i.bk = fptrunc double %i.bj to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink34 = phi ptr [ %0, %bb.c ], [ %1, %bb.b ]
  %.sink = phi float [ %i.bk, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink34, i64 20
  store float %.sink, ptr %i.bl, align 4, !tbaa !31
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__getLocalBounds(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #27 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.03741 = load ptr, ptr %i.c, align 8, !tbaa !60 ; 2 uses
  %.not42 = icmp eq ptr %.03741, null
  br i1 %.not42, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %._crit_edge
  %.03744 = phi ptr [ %.03741, %.lr.ph46 ], [ %.037, %._crit_edge ] ; 3 uses
  %.043 = phi i32 [ 1, %.lr.ph46 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.l = load ptr, ptr %.03744, align 8, !tbaa !63 ; 6 uses
  %i.m = load <2 x float>, ptr %i.d, align 4, !tbaa !31 ; 3 uses
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 3 uses
  %i.o = load <2 x float>, ptr %i.e, align 4, !tbaa !31 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.03744, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !62   ; 3 uses
  %i.r = load <2 x float>, ptr %i.l, align 4, !tbaa !31 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x float> %i.s, %i.m
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.n, <2 x float> %i.t)
  %i.w = fadd <2 x float> %i.o, %i.v
  store <2 x float> %i.w, ptr %i.a, align 16, !tbaa !31
  %i.x = icmp sgt i32 %i.q, 1
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.y = add nsw i32 %i.q, -1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ab = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ac = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ad = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ae = load <4 x float>, ptr %i.aa, align 4, !tbaa !31 ; 2 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.ag = fmul <4 x float> %i.af, %i.ab
  %i.ah = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.ac, <4 x float> %i.ag)
  %i.aj = fadd <4 x float> %i.ad, %i.ai
  store <4 x float> %i.aj, ptr %i.f, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.al = load <2 x float>, ptr %i.ak, align 4, !tbaa !31 ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x float> %i.m, %i.am
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.n, <2 x float> %i.an)
  %i.aq = fadd <2 x float> %i.o, %i.ap            ; 2 uses
  store <2 x float> %i.aq, ptr %i.g, align 8, !tbaa !31
  call fastcc void @nsvg__curveBounds(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %.not38.peel = icmp eq i32 %.043, 0
  br i1 %.not38.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.ar = load <4 x float>, ptr %i.b, align 16, !tbaa !31 ; 3 uses
  %i.as = load float, ptr %i.h, align 4, !tbaa !31
  %i.at = extractelement <4 x float> %i.ar, i64 0
  store float %i.at, ptr %0, align 4, !tbaa !31
  store float %i.as, ptr %i.i, align 4, !tbaa !31
  %i.au = extractelement <4 x float> %i.ar, i64 2
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.av = load <4 x float>, ptr %0, align 4, !tbaa !31 ; 3 uses
  %i.aw = load <4 x float>, ptr %i.b, align 16, !tbaa !31 ; 3 uses
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = fcmp olt <4 x float> %i.ax, %i.ay
  %i.ba = select <4 x i1> %i.az, <4 x float> %i.av, <4 x float> %i.aw ; 3 uses
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bb, ptr %0, align 4, !tbaa !31
  %i.bc = extractelement <4 x float> %i.ba, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.au, %bb.c ], [ %i.bc, %bb.d ]
  %i.bd = phi <4 x float> [ %i.ar, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  store float %storemerge, ptr %i.j, align 4, !tbaa !31
  %i.be = extractelement <4 x float> %i.bd, i64 3
  store float %i.be, ptr %i.k, align 4, !tbaa !31
  store <2 x float> %i.aq, ptr %i.a, align 16, !tbaa !31
  %i.bf = icmp samesign ugt i32 %i.q, 4
  br i1 %i.bf, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %bb.e, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.peel.next ], [ 3, %bb.e ] ; 3 uses
  %i.bg = phi <4 x float> [ %i.cm, %.lr.ph.peel.next ], [ %i.bd, %bb.e ] ; 3 uses
  %i.bh = shl i64 %indvars.iv, 33
  %sext = add i64 %i.bh, 8589934592
  %i.bi = ashr exact i64 %sext, 30
  %i.bj = getelementptr inbounds i8, ptr %i.l, i64 %i.bi
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bk = shl nuw i32 %indvars.iv.tr, 1
  %i.bl = add nuw i32 %i.bk, 4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bm
  %i.bo = load <2 x float>, ptr %i.bj, align 4, !tbaa !31 ; 2 uses
  %i.bp = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.br = load <2 x float>, ptr %i.d, align 4, !tbaa !31 ; 2 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bt = load <2 x float>, ptr %i.e, align 4, !tbaa !31 ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bv = load <2 x float>, ptr %i.bn, align 4, !tbaa !31 ; 2 uses
  %i.bw = shufflevector <2 x float> %i.bo, <2 x float> %i.bv, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.bx = fmul <4 x float> %i.bs, %i.bw
  %i.by = shufflevector <2 x float> %i.bo, <2 x float> %i.bv, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.bq, <4 x float> %i.bx)
  %i.ca = fadd <4 x float> %i.bu, %i.bz
  store <4 x float> %i.ca, ptr %i.f, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv.next, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.cc = load <2 x float>, ptr %i.cb, align 4, !tbaa !31 ; 2 uses
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = fmul <2 x float> %i.br, %i.cd
  %i.cf = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.bp, <2 x float> %i.ce)
  %i.ch = fadd <2 x float> %i.bt, %i.cg           ; 2 uses
  store <2 x float> %i.ch, ptr %i.g, align 8, !tbaa !31
  call fastcc void @nsvg__curveBounds(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.ci = load <4 x float>, ptr %i.b, align 16, !tbaa !31 ; 3 uses
  %i.cj = fcmp olt <4 x float> %i.bg, %i.ci
  %i.ck = fcmp ogt <4 x float> %i.bg, %i.ci
  %i.cl = shufflevector <4 x i1> %i.cj, <4 x i1> %i.ck, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cm = select <4 x i1> %i.cl, <4 x float> %i.bg, <4 x float> %i.ci ; 2 uses
  store <4 x float> %i.cm, ptr %0, align 4, !tbaa !31
  store <2 x float> %i.ch, ptr %i.a, align 16, !tbaa !31
  %i.cn = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %i.cn, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !313

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.e, %bb.b
  %.1.lcssa = phi i32 [ %.043, %bb.b ], [ 0, %bb.e ], [ 0, %.lr.ph.peel.next ]
  %i.co = getelementptr inbounds nuw i8, ptr %.03744, i64 32
  %.037 = load ptr, ptr %i.co, align 8, !tbaa !60 ; 2 uses
  %.not = icmp eq ptr %.037, null
  br i1 %.not, label %._crit_edge47, label %bb.b, !llvm.loop !314

._crit_edge47:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @nsvg__createGradient(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !17
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %nsvg__findGradientData.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 39984
  %.011.i = load ptr, ptr %i.c, align 8, !tbaa !316 ; 3 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %nsvg__findGradientData.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.013.i = phi ptr [ %.0.i, %bb.b ], [ %.011.i, %.preheader.i ] ; 18 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.013.i, ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %nsvg__findGradientData.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.013.i, i64 216
  %.0.i = load ptr, ptr %i.f, align 8, !tbaa !316 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %nsvg__findGradientData.exit.thread, label %.lr.ph.i, !llvm.loop !315

nsvg__findGradientData.exit:                      ; preds = %.lr.ph.i, %nsvg__findGradientData.exit148
  %.0128 = phi i32 [ %i.x, %nsvg__findGradientData.exit148 ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0117 = phi ptr [ %.09.i147, %nsvg__findGradientData.exit148 ], [ %.013.i, %.lr.ph.i ] ; 5 uses
  %.not = icmp eq ptr %.0117, null
  br i1 %.not, label %nsvg__findGradientData.exit.thread, label %bb.c

bb.c:                                             ; preds = %nsvg__findGradientData.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.0117, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %.not136 = icmp eq ptr %i.h, null
  br i1 %.not136, label %bb.d, label %.thread.thread

.thread.thread:                                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.0117, i64 200
  %i.j = load i32, ptr %i.i, align 8, !tbaa !144  ; 3 uses
  %i.k = add nsw i32 %i.j, -1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = add nsw i64 %i.m, 48
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #33 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %nsvg__findGradientData.exit.thread, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0117, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !17
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %nsvg__findGradientData.exit148, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.d, %bb.e
  %.013.i144 = phi ptr [ %.0.i145, %bb.e ], [ %.011.i, %bb.d ] ; 3 uses
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.013.i144, ptr noundef nonnull readonly dereferenceable(1) %i.q) #31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %nsvg__findGradientData.exit148, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i143
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i144, i64 216
  %.0.i145 = load ptr, ptr %i.v, align 8, !tbaa !316 ; 2 uses
  %.not.i146 = icmp eq ptr %.0.i145, null
  br i1 %.not.i146, label %nsvg__findGradientData.exit148, label %.lr.ph.i143, !llvm.loop !315

nsvg__findGradientData.exit148:                   ; preds = %.lr.ph.i143, %bb.e, %bb.d
  %.09.i147 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %.013.i144, %.lr.ph.i143 ] ; 2 uses
  %i.w = icmp eq ptr %.09.i147, %.0117
  %i.x = add nuw nsw i32 %.0128, 1
  %i.y = icmp samesign ugt i32 %.0128, 31
  %or.cond = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond, label %nsvg__findGradientData.exit.thread, label %nsvg__findGradientData.exit

bb.f:                                             ; preds = %.thread.thread
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i, i64 173
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !140
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ac, align 4, !tbaa !31
  %i.af = fsub <2 x float> %i.ae, %i.ad
  %i.ag = shufflevector <2 x float> %i.ad, <2 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %0, i64 40000
  %i.ai = load <4 x float>, ptr %i.ah, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi <4 x float> [ %i.ag, %bb.g ], [ %i.ai, %bb.h ] ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i, i64 128
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !141 ; 2 uses
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %bb.j, label %bb.aq

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i, i64 132
  %i.ao = load i64, ptr %i.an, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ao to i32
  %i.ap = bitcast i32 %.sroa.0.0.extract.trunc.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i = lshr i64 %i.ao, 32
  %.sroa.12.0.extract.trunc.i = trunc nuw i64 %.sroa.12.0.extract.shift.i to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 39936
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !55
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [312 x i8], ptr %0, i64 %i.as ; 8 uses
  switch i32 %.sroa.12.0.extract.trunc.i, label %nsvg__convertToPixels.exit [
    i32 7, label %bb.r
    i32 9, label %bb.q
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 8, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = fdiv float %i.ap, 7.200000e+01
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40
  %i.ax = fmul float %i.au, %i.aw
  br label %nsvg__convertToPixels.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = fdiv float %i.ap, 6.000000e+00
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.ba = load float, ptr %i.az, align 4, !tbaa !40
  %i.bb = fmul float %i.ay, %i.ba
  br label %nsvg__convertToPixels.exit

bb.m:                                             ; preds = %bb.j
  %i.bc = fdiv float %i.ap, 2.540000e+01
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.be = load float, ptr %i.bd, align 4, !tbaa !40
  %i.bf = fmul float %i.bc, %i.be
  br label %nsvg__convertToPixels.exit

bb.n:                                             ; preds = %bb.j
  %i.bg = fdiv float %i.ap, 2.540000e+00
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !40
  %i.bj = fmul float %i.bg, %i.bi
  br label %nsvg__convertToPixels.exit

bb.o:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !40
  %i.bm = fmul float %i.bl, %i.ap
  br label %nsvg__convertToPixels.exit

bb.p:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 292
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !56
  %i.bp = fmul float %i.bo, %i.ap
  br label %nsvg__convertToPixels.exit

bb.q:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 292
  %i.br = load float, ptr %i.bq, align 4, !tbaa !56
  %i.bs = fmul float %i.br, %i.ap
  %i.bt = fmul float %i.bs, 5.200000e-01
  br label %nsvg__convertToPixels.exit

bb.r:                                             ; preds = %bb.j
  %i.bu = fdiv float %i.ap, 1.000000e+02
  %i.bv = extractelement <4 x float> %i.aj, i64 0
  %i.bw = extractelement <4 x float> %i.aj, i64 2
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bw, float %i.bv)
  br label %nsvg__convertToPixels.exit

nsvg__convertToPixels.exit:                       ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i149 = phi float [ %i.bp, %bb.p ], [ %i.bx, %bb.r ], [ %i.bt, %bb.q ], [ %i.ax, %bb.k ], [ %i.bb, %bb.l ], [ %i.bf, %bb.m ], [ %i.bj, %bb.n ], [ %i.bm, %bb.o ], [ %i.ap, %bb.j ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i, i64 140
  %i.bz = load i64, ptr %i.by, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i150 = trunc i64 %i.bz to i32
  %i.ca = bitcast i32 %.sroa.0.0.extract.trunc.i150 to float ; 9 uses
  %.sroa.12.0.extract.shift.i151 = lshr i64 %i.bz, 32
  %.sroa.12.0.extract.trunc.i152 = trunc nuw i64 %.sroa.12.0.extract.shift.i151 to i32
  switch i32 %.sroa.12.0.extract.trunc.i152, label %nsvg__convertToPixels.exit154 [
    i32 7, label %bb.z
    i32 9, label %bb.y
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
    i32 6, label %bb.w
    i32 8, label %bb.x
  ]

bb.s:                                             ; preds = %nsvg__convertToPixels.exit
  %i.cb = fdiv float %i.ca, 7.200000e+01
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !40
  %i.ce = fmul float %i.cb, %i.cd
  br label %nsvg__convertToPixels.exit154

bb.t:                                             ; preds = %nsvg__convertToPixels.exit
  %i.cf = fdiv float %i.ca, 6.000000e+00
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !40
  %i.ci = fmul float %i.cf, %i.ch
  br label %nsvg__convertToPixels.exit154

bb.u:                                             ; preds = %nsvg__convertToPixels.exit
  %i.cj = fdiv float %i.ca, 2.540000e+01
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !40
  %i.cm = fmul float %i.cj, %i.cl
  br label %nsvg__convertToPixels.exit154

bb.v:                                             ; preds = %nsvg__convertToPixels.exit
  %i.cn = fdiv float %i.ca, 2.540000e+00
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.cp = load float, ptr %i.co, align 4, !tbaa !40
  %i.cq = fmul float %i.cn, %i.cp
  br label %nsvg__convertToPixels.exit154

bb.w:                                             ; preds = %nsvg__convertToPixels.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !40
  %i.ct = fmul float %i.cs, %i.ca
  br label %nsvg__convertToPixels.exit154

bb.x:                                             ; preds = %nsvg__convertToPixels.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 292
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !56
  %i.cw = fmul float %i.cv, %i.ca
  br label %nsvg__convertToPixels.exit154

bb.y:                                             ; preds = %nsvg__convertToPixels.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.at, i64 292
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !56
  %i.cz = fmul float %i.cy, %i.ca
  %i.da = fmul float %i.cz, 5.200000e-01
  br label %nsvg__convertToPixels.exit154

bb.z:                                             ; preds = %nsvg__convertToPixels.exit
  %i.db = fdiv float %i.ca, 1.000000e+02
  %i.dc = extractelement <4 x float> %i.aj, i64 1
  %i.dd = extractelement <4 x float> %i.aj, i64 3
  %i.de = tail call float @llvm.fmuladd.f32(float %i.db, float %i.dd, float %i.dc)
  br label %nsvg__convertToPixels.exit154

nsvg__convertToPixels.exit154:                    ; preds = %nsvg__convertToPixels.exit, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i153 = phi float [ %i.cw, %bb.x ], [ %i.de, %bb.z ], [ %i.da, %bb.y ], [ %i.ce, %bb.s ], [ %i.ci, %bb.t ], [ %i.cm, %bb.u ], [ %i.cq, %bb.v ], [ %i.ct, %bb.w ], [ %i.ca, %nsvg__convertToPixels.exit ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.013.i, i64 148
  %i.dg = load i64, ptr %i.df, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i155 = trunc i64 %i.dg to i32
  %i.dh = bitcast i32 %.sroa.0.0.extract.trunc.i155 to float ; 9 uses
  %.sroa.12.0.extract.shift.i156 = lshr i64 %i.dg, 32
  %.sroa.12.0.extract.trunc.i157 = trunc nuw i64 %.sroa.12.0.extract.shift.i156 to i32
  switch i32 %.sroa.12.0.extract.trunc.i157, label %nsvg__convertToPixels.exit159 [
    i32 7, label %bb.ah
    i32 9, label %bb.ag
    i32 2, label %bb.aa
    i32 3, label %bb.ab
    i32 4, label %bb.ac
    i32 5, label %bb.ad
    i32 6, label %bb.ae
end_hunk_0
begin_hunk_1_@nsvg__expandStroke:bb.a
  %i.ec = extractelement <2 x float> %i.bj, i64 1
  call fastcc void @nsvg__roundCap(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %8, float %i.au, float %i.l, float noundef %i.eb, float noundef %i.ec, float noundef %6, i32 noundef %spec.store.select.i, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %nsvg__buttCap.exit, %bb.i, %nsvg__squareCap.exit, %nsvg__normalize.exit, %bb.b
  %.0252 = phi i32 [ %2, %bb.b ], [ %i.at, %nsvg__normalize.exit ], [ %i.at, %nsvg__squareCap.exit ], [ %i.at, %bb.i ], [ %i.at, %nsvg__buttCap.exit ] ; 2 uses
  %.078250 = phi i32 [ 0, %bb.b ], [ 1, %nsvg__normalize.exit ], [ 1, %nsvg__squareCap.exit ], [ 1, %bb.i ], [ 1, %nsvg__buttCap.exit ] ; 2 uses
  %.080248 = phi ptr [ %1, %bb.b ], [ %i.as, %nsvg__normalize.exit ], [ %i.as, %nsvg__squareCap.exit ], [ %i.as, %bb.i ], [ %i.as, %nsvg__buttCap.exit ] ; 2 uses
  %.081246 = phi ptr [ %i.o, %bb.b ], [ %1, %nsvg__normalize.exit ], [ %1, %nsvg__squareCap.exit ], [ %1, %bb.i ], [ %1, %nsvg__buttCap.exit ] ; 2 uses
  %.sroa.530.0 = phi float [ %i.an, %bb.b ], [ 0.000000e+00, %nsvg__normalize.exit ], [ 0.000000e+00, %nsvg__squareCap.exit ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %nsvg__buttCap.exit ] ; 2 uses
  %.sroa.5.0 = phi float [ %i.ar, %bb.b ], [ 0.000000e+00, %nsvg__normalize.exit ], [ 0.000000e+00, %nsvg__squareCap.exit ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %nsvg__buttCap.exit ] ; 2 uses
  %i.ed = phi <2 x float> [ %i.aq, %bb.b ], [ zeroinitializer, %nsvg__normalize.exit ], [ zeroinitializer, %nsvg__squareCap.exit ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %nsvg__buttCap.exit ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.am, %bb.b ], [ zeroinitializer, %nsvg__normalize.exit ], [ zeroinitializer, %nsvg__squareCap.exit ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %nsvg__buttCap.exit ] ; 2 uses
  %i.ef = icmp slt i32 %.078250, %.0252
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.eg = uitofp nneg i32 %spec.store.select.i to float
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 42 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 28 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 42 uses
  %i.em = insertelement <2 x float> poison, float %i.a, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer ; 13 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %nsvg__roundJoin.exit
  %.079259 = phi i32 [ %.078250, %.lr.ph ], [ %i.vx, %nsvg__roundJoin.exit ]
  %.1258 = phi ptr [ %.080248, %.lr.ph ], [ %i.vw, %nsvg__roundJoin.exit ] ; 20 uses
  %.182257 = phi ptr [ %.081246, %.lr.ph ], [ %.1258, %nsvg__roundJoin.exit ] ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.1258, i64 28
  %i.ep = load i8, ptr %i.eo, align 4, !tbaa !116 ; 2 uses
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = and i32 %i.eq, 1
  %.not85 = icmp eq i32 %i.er, 0
  br i1 %.not85, label %bb.ar, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i32 %4, label %bb.s [
    i32 1, label %bb.m
    i32 2, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l
  %i.es = getelementptr i8, ptr %.182257, i64 8
  %.182.val = load float, ptr %i.es, align 4, !tbaa !129
  %i.et = getelementptr i8, ptr %.182257, i64 12
  %.182.val100 = load float, ptr %i.et, align 4, !tbaa !128
  %i.eu = fneg float %.182.val
  %i.ev = getelementptr inbounds nuw i8, ptr %.1258, i64 12
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !128
  %i.ex = getelementptr inbounds nuw i8, ptr %.1258, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !129
  %i.ez = fneg float %i.ey
  %i.fa = tail call float @atan2f(float noundef %i.eu, float noundef %.182.val100) #30 ; 2 uses
  %i.fb = tail call float @atan2f(float noundef %i.ez, float noundef %i.ew) #30
  %i.fc = fsub float %i.fb, %i.fa                 ; 3 uses
  %i.fd = fcmp olt float %i.fc, f0x40490FDB
  %i.fe = fadd float %i.fc, f0x40C90FDB
  %.071.i = select i1 %i.fd, float %i.fe, float %i.fc ; 3 uses
  %i.ff = fcmp ogt float %.071.i, f0x40490FDB
  %i.fg = fadd float %.071.i, f0xC0C90FDB
  %.1.i = select i1 %i.ff, float %i.fg, float %.071.i ; 4 uses
  %i.fh = fcmp olt float %.1.i, 0.000000e+00
  %i.fi = fneg float %.1.i
  %i.fj = select i1 %i.fh, float %i.fi, float %.1.i
  %i.fk = fdiv float %i.fj, f0x40490FDB
  %i.fl = fmul float %i.fk, %i.eg
  %i.fm = tail call float @llvm.ceil.f32(float %i.fl)
  %i.fn = fptosi float %i.fm to i32
  %spec.store.select.i118 = tail call i32 @llvm.smax.i32(i32 %i.fn, i32 2)
  %.066.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i118, i32 %spec.store.select.i) ; 2 uses
  %i.fo = load <2 x float>, ptr %7, align 8, !tbaa !31
  %i.fp = load <2 x float>, ptr %8, align 8, !tbaa !31
  %i.fq = add nsw i32 %.066.i, -1
  %i.fr = uitofp nneg i32 %i.fq to float
  br label %bb.n

bb.n:                                             ; preds = %nsvg__addEdge.exit88.i, %bb.m
  %.05.i = phi i32 [ 0, %bb.m ], [ %i.ib, %nsvg__addEdge.exit88.i ] ; 2 uses
  %i.fs = phi <2 x float> [ %i.fp, %bb.m ], [ %i.ge, %nsvg__addEdge.exit88.i ] ; 3 uses
  %i.ft = phi <2 x float> [ %i.fo, %bb.m ], [ %i.gd, %nsvg__addEdge.exit88.i ] ; 3 uses
  %i.fu = uitofp nneg i32 %.05.i to float
  %i.fv = fdiv float %i.fu, %i.fr
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %.1.i, float %i.fa) ; 2 uses
  %i.fx = tail call float @cosf(float noundef %i.fw) #30
  %i.fy = tail call float @sinf(float noundef %i.fw) #30
  %i.fz = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %i.fy, i64 1
  %i.gb = fmul <2 x float> %i.en, %i.ga           ; 2 uses
  %i.gc = load <2 x float>, ptr %.1258, align 4, !tbaa !31 ; 2 uses
  %i.gd = fsub <2 x float> %i.gc, %i.gb           ; 5 uses
  %i.ge = fadd <2 x float> %i.gb, %i.gc           ; 5 uses
  %i.gf = extractelement <2 x float> %i.gd, i64 1 ; 2 uses
  %i.gg = extractelement <2 x float> %i.ft, i64 1 ; 2 uses
  %i.gh = fcmp oeq float %i.gf, %i.gg
  br i1 %i.gh, label %nsvg__addEdge.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gi = load i32, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.gj = load i32, ptr %i.ek, align 4, !tbaa !120 ; 3 uses
  %.not.i.i119 = icmp slt i32 %i.gi, %i.gj
  br i1 %.not.i.i119, label %._crit_edge.i.i129, label %bb.p

._crit_edge.i.i129:                               ; preds = %bb.o
  %.pre.i.i130 = load ptr, ptr %i.el, align 8, !tbaa !98
  br label %.sink.split.i.i123

bb.p:                                             ; preds = %bb.o
  %i.gk = icmp sgt i32 %i.gj, 0
  %i.gl = shl nuw nsw i32 %i.gj, 1
  %spec.select.i.i120 = select i1 %i.gk, i32 %i.gl, i32 64 ; 2 uses
  store i32 %spec.select.i.i120, ptr %i.ek, align 4, !tbaa !120
  %i.gm = load ptr, ptr %i.el, align 8, !tbaa !98
  %i.gn = zext nneg i32 %spec.select.i.i120 to i64
  %i.go = shl nuw nsw i64 %i.gn, 5
  %i.gp = tail call ptr @realloc(ptr noundef %i.gm, i64 noundef %i.go) #32 ; 3 uses
  store ptr %i.gp, ptr %i.el, align 8, !tbaa !98
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %nsvg__addEdge.exit.i, label %._crit_edge36.i.i121

._crit_edge36.i.i121:                             ; preds = %bb.p
  %.pre37.i.i122 = load i32, ptr %i.ej, align 8, !tbaa !112
  br label %.sink.split.i.i123

.sink.split.i.i123:                               ; preds = %._crit_edge36.i.i121, %._crit_edge.i.i129
  %i.gr = phi i32 [ %i.gi, %._crit_edge.i.i129 ], [ %.pre37.i.i122, %._crit_edge36.i.i121 ] ; 2 uses
  %i.gs = phi ptr [ %.pre.i.i130, %._crit_edge.i.i129 ], [ %i.gp, %._crit_edge36.i.i121 ]
  %i.gt = sext i32 %i.gr to i64
  %i.gu = getelementptr inbounds [32 x i8], ptr %i.gs, i64 %i.gt ; 2 uses
  %i.gv = add nsw i32 %i.gr, 1
  store i32 %i.gv, ptr %i.ej, align 8, !tbaa !112
  %i.gw = fcmp olt float %i.gf, %i.gg             ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %.49.i.i128 = select i1 %i.gw, i32 1, i32 -1
  %i.gy = insertelement <4 x i1> poison, i1 %i.gw, i64 0
  %i.gz = shufflevector <4 x i1> %i.gy, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ha = shufflevector <2 x float> %i.gd, <2 x float> %i.ft, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hb = shufflevector <2 x float> %i.ft, <2 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hc = select <4 x i1> %i.gz, <4 x float> %i.ha, <4 x float> %i.hb
  store <4 x float> %i.hc, ptr %i.gu, align 8, !tbaa !31
  store i32 %.49.i.i128, ptr %i.gx, align 8, !tbaa !122
  br label %nsvg__addEdge.exit.i

nsvg__addEdge.exit.i:                             ; preds = %.sink.split.i.i123, %bb.p, %bb.n
  %i.hd = extractelement <2 x float> %i.ge, i64 1 ; 2 uses
  %i.he = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.hf = fcmp oeq float %i.he, %i.hd
  br i1 %i.hf, label %nsvg__addEdge.exit88.i, label %bb.q

bb.q:                                             ; preds = %nsvg__addEdge.exit.i
  %i.hg = load i32, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.hh = load i32, ptr %i.ek, align 4, !tbaa !120 ; 3 uses
  %.not.i75.i = icmp slt i32 %i.hg, %i.hh
  br i1 %.not.i75.i, label %._crit_edge.i85.i, label %bb.r

._crit_edge.i85.i:                                ; preds = %bb.q
  %.pre.i87.i = load ptr, ptr %i.el, align 8, !tbaa !98
  br label %.sink.split.i79.i

bb.r:                                             ; preds = %bb.q
  %i.hi = icmp sgt i32 %i.hh, 0
  %i.hj = shl nuw nsw i32 %i.hh, 1
  %spec.select.i76.i = select i1 %i.hi, i32 %i.hj, i32 64 ; 2 uses
  store i32 %spec.select.i76.i, ptr %i.ek, align 4, !tbaa !120
  %i.hk = load ptr, ptr %i.el, align 8, !tbaa !98
  %i.hl = zext nneg i32 %spec.select.i76.i to i64
  %i.hm = shl nuw nsw i64 %i.hl, 5
  %i.hn = tail call ptr @realloc(ptr noundef %i.hk, i64 noundef %i.hm) #32 ; 3 uses
  store ptr %i.hn, ptr %i.el, align 8, !tbaa !98
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %nsvg__addEdge.exit88.i, label %._crit_edge36.i77.i

._crit_edge36.i77.i:                              ; preds = %bb.r
  %.pre37.i78.i = load i32, ptr %i.ej, align 8, !tbaa !112
  br label %.sink.split.i79.i

.sink.split.i79.i:                                ; preds = %._crit_edge36.i77.i, %._crit_edge.i85.i
  %i.hp = phi i32 [ %i.hg, %._crit_edge.i85.i ], [ %.pre37.i78.i, %._crit_edge36.i77.i ] ; 2 uses
  %i.hq = phi ptr [ %.pre.i87.i, %._crit_edge.i85.i ], [ %i.hn, %._crit_edge36.i77.i ]
  %i.hr = sext i32 %i.hp to i64
  %i.hs = getelementptr inbounds [32 x i8], ptr %i.hq, i64 %i.hr ; 2 uses
  %i.ht = add nsw i32 %i.hp, 1
  store i32 %i.ht, ptr %i.ej, align 8, !tbaa !112
  %i.hu = fcmp olt float %i.he, %i.hd             ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %.49.i84.i = select i1 %i.hu, i32 1, i32 -1
  %i.hw = insertelement <4 x i1> poison, i1 %i.hu, i64 0
  %i.hx = shufflevector <4 x i1> %i.hw, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.hy = shufflevector <2 x float> %i.fs, <2 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hz = shufflevector <2 x float> %i.ge, <2 x float> %i.fs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ia = select <4 x i1> %i.hx, <4 x float> %i.hy, <4 x float> %i.hz
  store <4 x float> %i.ia, ptr %i.hs, align 8, !tbaa !31
  store i32 %.49.i84.i, ptr %i.hv, align 8, !tbaa !122
  br label %nsvg__addEdge.exit88.i

nsvg__addEdge.exit88.i:                           ; preds = %.sink.split.i79.i, %bb.r, %nsvg__addEdge.exit.i
  %i.ib = add nuw nsw i32 %.05.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ib, %.066.i
  br i1 %exitcond.not.i, label %nsvg__roundJoin.exit, label %bb.n, !llvm.loop !317

bb.s:                                             ; preds = %bb.l
  %i.ic = and i32 %i.eq, 2
  %.not86 = icmp eq i32 %i.ic, 0
  br i1 %.not86, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.l, %bb.s
  %i.id = getelementptr i8, ptr %.182257, i64 8
  %.182.val101 = load float, ptr %i.id, align 4, !tbaa !129 ; 2 uses
  %i.ie = getelementptr i8, ptr %.182257, i64 12
  %.182.val102 = load float, ptr %i.ie, align 4, !tbaa !128 ; 2 uses
  %i.if = fneg float %.182.val101
  %i.ig = getelementptr inbounds nuw i8, ptr %.1258, i64 12
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !128 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.1258, i64 8
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !129 ; 2 uses
  %i.ik = fneg float %i.ij
  %i.il = fneg float %.182.val102
  %i.im = load <2 x float>, ptr %.1258, align 4, !tbaa !31 ; 4 uses
  %i.in = insertelement <2 x float> poison, float %i.il, i64 0
  %i.io = insertelement <2 x float> %i.in, float %.182.val101, i64 1
  %i.ip = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.en, <2 x float> %i.im) ; 5 uses
  %i.iq = insertelement <2 x float> poison, float %.182.val102, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %i.if, i64 1
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ir, <2 x float> %i.en, <2 x float> %i.im) ; 5 uses
  %i.it = fneg float %i.ih
  %i.iu = insertelement <2 x float> poison, float %i.it, i64 0
  %i.iv = insertelement <2 x float> %i.iu, float %i.ij, i64 1
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.en, <2 x float> %i.im) ; 6 uses
  %i.ix = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.iy = insertelement <2 x float> %i.ix, float %i.ik, i64 1
  %i.iz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.en, <2 x float> %i.im) ; 6 uses
  %i.ja = load <2 x float>, ptr %7, align 8, !tbaa !31 ; 2 uses
  %i.jb = load float, ptr %i.eh, align 4, !tbaa !118 ; 2 uses
  %i.jc = extractelement <2 x float> %i.ip, i64 1 ; 4 uses
  %i.jd = fcmp oeq float %i.jc, %i.jb
  br i1 %i.jd, label %nsvg__addEdge.exit.i141, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.je = load i32, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.jf = load i32, ptr %i.ek, align 4, !tbaa !120 ; 3 uses
  %.not.i.i131 = icmp slt i32 %i.je, %i.jf
  br i1 %.not.i.i131, label %._crit_edge.i.i142, label %bb.v

._crit_edge.i.i142:                               ; preds = %bb.u
  %.pre.i.i144 = load ptr, ptr %i.el, align 8, !tbaa !98
  br label %.sink.split.i.i135

bb.v:                                             ; preds = %bb.u
  %i.jg = icmp sgt i32 %i.jf, 0
  %i.jh = shl nuw nsw i32 %i.jf, 1
  %spec.select.i.i132 = select i1 %i.jg, i32 %i.jh, i32 64 ; 2 uses
  store i32 %spec.select.i.i132, ptr %i.ek, align 4, !tbaa !120
  %i.ji = load ptr, ptr %i.el, align 8, !tbaa !98
  %i.jj = zext nneg i32 %spec.select.i.i132 to i64
  %i.jk = shl nuw nsw i64 %i.jj, 5
  %i.jl = tail call ptr @realloc(ptr noundef %i.ji, i64 noundef %i.jk) #32 ; 3 uses
  store ptr %i.jl, ptr %i.el, align 8, !tbaa !98
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %nsvg__addEdge.exit.i141, label %._crit_edge36.i.i133

._crit_edge36.i.i133:                             ; preds = %bb.v
  %.pre37.i.i134 = load i32, ptr %i.ej, align 8, !tbaa !112
  br label %.sink.split.i.i135

.sink.split.i.i135:                               ; preds = %._crit_edge36.i.i133, %._crit_edge.i.i142
  %i.jn = phi i32 [ %i.je, %._crit_edge.i.i142 ], [ %.pre37.i.i134, %._crit_edge36.i.i133 ] ; 2 uses
  %i.jo = phi ptr [ %.pre.i.i144, %._crit_edge.i.i142 ], [ %i.jl, %._crit_edge36.i.i133 ]
  %i.jp = sext i32 %i.jn to i64
  %i.jq = getelementptr inbounds [32 x i8], ptr %i.jo, i64 %i.jp ; 2 uses
  %i.jr = add nsw i32 %i.jn, 1
  store i32 %i.jr, ptr %i.ej, align 8, !tbaa !112
  %i.js = fcmp olt float %i.jc, %i.jb             ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %.49.i.i140 = select i1 %i.js, i32 1, i32 -1
  %i.ju = insertelement <4 x i1> poison, i1 %i.js, i64 0
  %i.jv = shufflevector <4 x i1> %i.ju, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.jw = shufflevector <2 x float> %i.ip, <2 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jx = shufflevector <2 x float> %i.ja, <2 x float> %i.ip, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jy = select <4 x i1> %i.jv, <4 x float> %i.jw, <4 x float> %i.jx
  store <4 x float> %i.jy, ptr %i.jq, align 8, !tbaa !31
  store i32 %.49.i.i140, ptr %i.jt, align 8, !tbaa !122
  br label %nsvg__addEdge.exit.i141

nsvg__addEdge.exit.i141:                          ; preds = %.sink.split.i.i135, %bb.v, %bb.t
  %i.jz = extractelement <2 x float> %i.iw, i64 1 ; 2 uses
  %i.ka = fcmp oeq float %i.jz, %i.jc
  br i1 %i.ka, label %nsvg__addEdge.exit70.i, label %bb.w

bb.w:                                             ; preds = %nsvg__addEdge.exit.i141
  %i.kb = load i32, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.kc = load i32, ptr %i.ek, align 4, !tbaa !120 ; 3 uses
  %.not.i57.i = icmp slt i32 %i.kb, %i.kc
  br i1 %.not.i57.i, label %._crit_edge.i67.i, label %bb.x

._crit_edge.i67.i:                                ; preds = %bb.w
  %.pre.i69.i = load ptr, ptr %i.el, align 8, !tbaa !98
  br label %.sink.split.i61.i

bb.x:                                             ; preds = %bb.w
  %i.kd = icmp sgt i32 %i.kc, 0
  %i.ke = shl nuw nsw i32 %i.kc, 1
  %spec.select.i58.i = select i1 %i.kd, i32 %i.ke, i32 64 ; 2 uses
  store i32 %spec.select.i58.i, ptr %i.ek, align 4, !tbaa !120
  %i.kf = load ptr, ptr %i.el, align 8, !tbaa !98
  %i.kg = zext nneg i32 %spec.select.i58.i to i64
  %i.kh = shl nuw nsw i64 %i.kg, 5
  %i.ki = tail call ptr @realloc(ptr noundef %i.kf, i64 noundef %i.kh) #32 ; 3 uses
  store ptr %i.ki, ptr %i.el, align 8, !tbaa !98
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %nsvg__addEdge.exit70.i, label %._crit_edge36.i59.i

._crit_edge36.i59.i:                              ; preds = %bb.x
  %.pre37.i60.i = load i32, ptr %i.ej, align 8, !tbaa !112
  br label %.sink.split.i61.i

.sink.split.i61.i:                                ; preds = %._crit_edge36.i59.i, %._crit_edge.i67.i
  %i.kk = phi i32 [ %i.kb, %._crit_edge.i67.i ], [ %.pre37.i60.i, %._crit_edge36.i59.i ] ; 2 uses
  %i.kl = phi ptr [ %.pre.i69.i, %._crit_edge.i67.i ], [ %i.ki, %._crit_edge36.i59.i ]
  %i.km = sext i32 %i.kk to i64
  %i.kn = getelementptr inbounds [32 x i8], ptr %i.kl, i64 %i.km ; 2 uses
  %i.ko = add nsw i32 %i.kk, 1
  store i32 %i.ko, ptr %i.ej, align 8, !tbaa !112
  %i.kp = fcmp olt float %i.jz, %i.jc             ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %.49.i66.i = select i1 %i.kp, i32 1, i32 -1
  %i.kr = insertelement <4 x i1> poison, i1 %i.kp, i64 0
  %i.ks = shufflevector <4 x i1> %i.kr, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.kt = shufflevector <2 x float> %i.iw, <2 x float> %i.ip, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ku = shufflevector <2 x float> %i.iw, <2 x float> %i.ip, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.kv = select <4 x i1> %i.ks, <4 x float> %i.kt, <4 x float> %i.ku
  store <4 x float> %i.kv, ptr %i.kn, align 8, !tbaa !31
  store i32 %.49.i66.i, ptr %i.kq, align 8, !tbaa !122
  br label %nsvg__addEdge.exit70.i

nsvg__addEdge.exit70.i:                           ; preds = %.sink.split.i61.i, %bb.x, %nsvg__addEdge.exit.i141
  %i.kw = load <2 x float>, ptr %8, align 8, !tbaa !31 ; 2 uses
  %i.kx = load float, ptr %i.ei, align 4, !tbaa !118 ; 2 uses
  %i.ky = extractelement <2 x float> %i.is, i64 1 ; 4 uses
  %i.kz = fcmp oeq float %i.kx, %i.ky
  br i1 %i.kz, label %nsvg__addEdge.exit84.i, label %bb.y

bb.y:                                             ; preds = %nsvg__addEdge.exit70.i
  %i.la = load i32, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.lb = load i32, ptr %i.ek, align 4, !tbaa !120 ; 3 uses
  %.not.i71.i = icmp slt i32 %i.la, %i.lb
  br i1 %.not.i71.i, label %._crit_edge.i81.i, label %bb.z

._crit_edge.i81.i:                                ; preds = %bb.y
  %.pre.i83.i = load ptr, ptr %i.el, align 8, !tbaa !98
  br label %.sink.split.i75.i

bb.z:                                             ; preds = %bb.y
  %i.lc = icmp sgt i32 %i.lb, 0
  %i.ld = shl nuw nsw i32 %i.lb, 1
  %spec.select.i72.i = select i1 %i.lc, i32 %i.ld, i32 64 ; 2 uses
  store i32 %spec.select.i72.i, ptr %i.ek, align 4, !tbaa !120
  %i.le = load ptr, ptr %i.el, align 8, !tbaa !98
  %i.lf = zext nneg i32 %spec.select.i72.i to i64
  %i.lg = shl nuw nsw i64 %i.lf, 5
  %i.lh = tail call ptr @realloc(ptr noundef %i.le, i64 noundef %i.lg) #32 ; 3 uses
  store ptr %i.lh, ptr %i.el, align 8, !tbaa !98
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %nsvg__addEdge.exit84.i, label %._crit_edge36.i73.i

._crit_edge36.i73.i:                              ; preds = %bb.z
  %.pre37.i74.i = load i32, ptr %i.ej, align 8, !tbaa !112
  br label %.sink.split.i75.i

.sink.split.i75.i:                                ; preds = %._crit_edge36.i73.i, %._crit_edge.i81.i
  %i.lj = phi i32 [ %i.la, %._crit_edge.i81.i ], [ %.pre37.i74.i, %._crit_edge36.i73.i ] ; 2 uses
  %i.lk = phi ptr [ %.pre.i83.i, %._crit_edge.i81.i ], [ %i.lh, %._crit_edge36.i73.i ]
  %i.ll = sext i32 %i.lj to i64
  %i.lm = getelementptr inbounds [32 x i8], ptr %i.lk, i64 %i.ll ; 2 uses
  %i.ln = add nsw i32 %i.lj, 1
  store i32 %i.ln, ptr %i.ej, align 8, !tbaa !112
  %i.lo = fcmp olt float %i.kx, %i.ky             ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %.49.i80.i = select i1 %i.lo, i32 1, i32 -1
  %i.lq = insertelement <4 x i1> poison, i1 %i.lo, i64 0
  %i.lr = shufflevector <4 x i1> %i.lq, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ls = shufflevector <2 x float> %i.is, <2 x float> %i.kw, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.lt = shufflevector <2 x float> %i.is, <2 x float> %i.kw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lu = select <4 x i1> %i.lr, <4 x float> %i.ls, <4 x float> %i.lt
  store <4 x float> %i.lu, ptr %i.lm, align 8, !tbaa !31
  store i32 %.49.i80.i, ptr %i.lp, align 8, !tbaa !122
  br label %nsvg__addEdge.exit84.i

nsvg__addEdge.exit84.i:                           ; preds = %.sink.split.i75.i, %bb.z, %nsvg__addEdge.exit70.i
  %i.lv = extractelement <2 x float> %i.iz, i64 1 ; 2 uses
  %i.lw = fcmp oeq float %i.ky, %i.lv
  br i1 %i.lw, label %nsvg__roundJoin.exit, label %bb.aa

bb.aa:                                            ; preds = %nsvg__addEdge.exit84.i
  %i.lx = load i32, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.ly = load i32, ptr %i.ek, align 4, !tbaa !120 ; 3 uses
  %.not.i85.i = icmp slt i32 %i.lx, %i.ly
  br i1 %.not.i85.i, label %._crit_edge.i95.i, label %bb.ab

._crit_edge.i95.i:                                ; preds = %bb.aa
end_hunk_1
begin_hunk_2_@nsvg__expandStroke:bb.a
._crit_edge36.i127.i:                             ; preds = %bb.ao
  %.pre37.i128.i = load i32, ptr %i.ej, align 8, !tbaa !112
  br label %.sink.split.i129.i

.sink.split.i129.i:                               ; preds = %._crit_edge36.i127.i, %._crit_edge.i135.i
  %i.sb = phi i32 [ %i.rs, %._crit_edge.i135.i ], [ %.pre37.i128.i, %._crit_edge36.i127.i ] ; 2 uses
  %i.sc = phi ptr [ %.pre.i137.i, %._crit_edge.i135.i ], [ %i.rz, %._crit_edge36.i127.i ]
  %i.sd = sext i32 %i.sb to i64
  %i.se = getelementptr inbounds [32 x i8], ptr %i.sc, i64 %i.sd ; 2 uses
  %i.sf = add nsw i32 %i.sb, 1
  store i32 %i.sf, ptr %i.ej, align 8, !tbaa !112
  %i.sg = fcmp olt float %i.rq, %i.qt             ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %.49.i134.i = select i1 %i.sg, i32 1, i32 -1
  %i.si = insertelement <4 x i1> poison, i1 %i.sg, i64 0
  %i.sj = shufflevector <4 x i1> %i.si, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.sk = shufflevector <2 x float> %i.qq, <2 x float> %i.qm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sl = shufflevector <2 x float> %i.qq, <2 x float> %i.qm, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.sm = select <4 x i1> %i.sj, <4 x float> %i.sk, <4 x float> %i.sl
  store <4 x float> %i.sm, ptr %i.se, align 8, !tbaa !31
  store i32 %.49.i134.i, ptr %i.sh, align 8, !tbaa !122
  br label %nsvg__addEdge.exit138.i

nsvg__addEdge.exit138.i:                          ; preds = %.sink.split.i129.i, %bb.ao, %nsvg__addEdge.exit124.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.1258, i64 20
  %i.so = load <2 x float>, ptr %.1258, align 4, !tbaa !31
  %i.sp = load <2 x float>, ptr %i.sn, align 4, !tbaa !31
  %i.sq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sp, <2 x float> %i.en, <2 x float> %i.so) ; 6 uses
  %i.sr = load <2 x float>, ptr %8, align 8, !tbaa !31 ; 2 uses
  %i.ss = load float, ptr %i.ei, align 4, !tbaa !118 ; 2 uses
  %i.st = extractelement <2 x float> %i.sq, i64 1 ; 2 uses
  %i.su = fcmp oeq float %i.ss, %i.st
  br i1 %i.su, label %nsvg__roundJoin.exit, label %bb.ap

bb.ap:                                            ; preds = %nsvg__addEdge.exit138.i
  %i.sv = load i32, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.sw = load i32, ptr %i.ek, align 4, !tbaa !120 ; 3 uses
  %.not.i139.i = icmp slt i32 %i.sv, %i.sw
  br i1 %.not.i139.i, label %._crit_edge.i149.i, label %bb.aq

._crit_edge.i149.i:                               ; preds = %bb.ap
  %.pre.i151.i = load ptr, ptr %i.el, align 8, !tbaa !98
  br label %.sink.split.i143.i

bb.aq:                                            ; preds = %bb.ap
  %i.sx = icmp sgt i32 %i.sw, 0
  %i.sy = shl nuw nsw i32 %i.sw, 1
  %spec.select.i140.i = select i1 %i.sx, i32 %i.sy, i32 64 ; 2 uses
  store i32 %spec.select.i140.i, ptr %i.ek, align 4, !tbaa !120
  %i.sz = load ptr, ptr %i.el, align 8, !tbaa !98
  %i.ta = zext nneg i32 %spec.select.i140.i to i64
  %i.tb = shl nuw nsw i64 %i.ta, 5
  %i.tc = tail call ptr @realloc(ptr noundef %i.sz, i64 noundef %i.tb) #32 ; 3 uses
  store ptr %i.tc, ptr %i.el, align 8, !tbaa !98
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %nsvg__roundJoin.exit, label %._crit_edge36.i141.i

._crit_edge36.i141.i:                             ; preds = %bb.aq
  %.pre37.i142.i = load i32, ptr %i.ej, align 8, !tbaa !112
  br label %.sink.split.i143.i

.sink.split.i143.i:                               ; preds = %._crit_edge36.i141.i, %._crit_edge.i149.i
  %i.te = phi i32 [ %i.sv, %._crit_edge.i149.i ], [ %.pre37.i142.i, %._crit_edge36.i141.i ] ; 2 uses
  %i.tf = phi ptr [ %.pre.i151.i, %._crit_edge.i149.i ], [ %i.tc, %._crit_edge36.i141.i ]
  %i.tg = sext i32 %i.te to i64
  %i.th = getelementptr inbounds [32 x i8], ptr %i.tf, i64 %i.tg ; 2 uses
  %i.ti = add nsw i32 %i.te, 1
  store i32 %i.ti, ptr %i.ej, align 8, !tbaa !112
  %i.tj = fcmp olt float %i.ss, %i.st             ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %.49.i148.i = select i1 %i.tj, i32 1, i32 -1
  %i.tl = insertelement <4 x i1> poison, i1 %i.tj, i64 0
  %i.tm = shufflevector <4 x i1> %i.tl, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.tn = shufflevector <2 x float> %i.sq, <2 x float> %i.sr, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.to = shufflevector <2 x float> %i.sq, <2 x float> %i.sr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tp = select <4 x i1> %i.tm, <4 x float> %i.tn, <4 x float> %i.to
  store <4 x float> %i.tp, ptr %i.th, align 8, !tbaa !31
  store i32 %.49.i148.i, ptr %i.tk, align 8, !tbaa !122
  br label %nsvg__roundJoin.exit

bb.ar:                                            ; preds = %bb.k
  %i.tq = getelementptr inbounds nuw i8, ptr %.1258, i64 20
  %i.tr = load <2 x float>, ptr %.1258, align 4, !tbaa !31 ; 2 uses
  %i.ts = load <2 x float>, ptr %i.tq, align 4, !tbaa !31 ; 2 uses
  %i.tt = fneg <2 x float> %i.ts
  %i.tu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tt, <2 x float> %i.en, <2 x float> %i.tr) ; 6 uses
  %i.tv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ts, <2 x float> %i.en, <2 x float> %i.tr) ; 6 uses
  %i.tw = load <2 x float>, ptr %7, align 8, !tbaa !31 ; 2 uses
  %i.tx = load float, ptr %i.eh, align 4, !tbaa !118 ; 2 uses
  %i.ty = extractelement <2 x float> %i.tu, i64 1 ; 2 uses
  %i.tz = fcmp oeq float %i.ty, %i.tx
  br i1 %i.tz, label %nsvg__addEdge.exit.i170, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ua = load i32, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.ub = load i32, ptr %i.ek, align 4, !tbaa !120 ; 3 uses
  %.not.i.i160 = icmp slt i32 %i.ua, %i.ub
  br i1 %.not.i.i160, label %._crit_edge.i.i171, label %bb.at

._crit_edge.i.i171:                               ; preds = %bb.as
  %.pre.i.i173 = load ptr, ptr %i.el, align 8, !tbaa !98
  br label %.sink.split.i.i164

bb.at:                                            ; preds = %bb.as
  %i.uc = icmp sgt i32 %i.ub, 0
  %i.ud = shl nuw nsw i32 %i.ub, 1
  %spec.select.i.i161 = select i1 %i.uc, i32 %i.ud, i32 64 ; 2 uses
  store i32 %spec.select.i.i161, ptr %i.ek, align 4, !tbaa !120
  %i.ue = load ptr, ptr %i.el, align 8, !tbaa !98
  %i.uf = zext nneg i32 %spec.select.i.i161 to i64
  %i.ug = shl nuw nsw i64 %i.uf, 5
  %i.uh = tail call ptr @realloc(ptr noundef %i.ue, i64 noundef %i.ug) #32 ; 3 uses
  store ptr %i.uh, ptr %i.el, align 8, !tbaa !98
  %i.ui = icmp eq ptr %i.uh, null
  br i1 %i.ui, label %nsvg__addEdge.exit.i170, label %._crit_edge36.i.i162

._crit_edge36.i.i162:                             ; preds = %bb.at
  %.pre37.i.i163 = load i32, ptr %i.ej, align 8, !tbaa !112
  br label %.sink.split.i.i164

.sink.split.i.i164:                               ; preds = %._crit_edge36.i.i162, %._crit_edge.i.i171
  %i.uj = phi i32 [ %i.ua, %._crit_edge.i.i171 ], [ %.pre37.i.i163, %._crit_edge36.i.i162 ] ; 2 uses
  %i.uk = phi ptr [ %.pre.i.i173, %._crit_edge.i.i171 ], [ %i.uh, %._crit_edge36.i.i162 ]
  %i.ul = sext i32 %i.uj to i64
  %i.um = getelementptr inbounds [32 x i8], ptr %i.uk, i64 %i.ul ; 2 uses
  %i.un = add nsw i32 %i.uj, 1
  store i32 %i.un, ptr %i.ej, align 8, !tbaa !112
  %i.uo = fcmp olt float %i.ty, %i.tx             ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %.49.i.i169 = select i1 %i.uo, i32 1, i32 -1
  %i.uq = insertelement <4 x i1> poison, i1 %i.uo, i64 0
  %i.ur = shufflevector <4 x i1> %i.uq, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.us = shufflevector <2 x float> %i.tu, <2 x float> %i.tw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ut = shufflevector <2 x float> %i.tw, <2 x float> %i.tu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uu = select <4 x i1> %i.ur, <4 x float> %i.us, <4 x float> %i.ut
  store <4 x float> %i.uu, ptr %i.um, align 8, !tbaa !31
  store i32 %.49.i.i169, ptr %i.up, align 8, !tbaa !122
  br label %nsvg__addEdge.exit.i170

nsvg__addEdge.exit.i170:                          ; preds = %.sink.split.i.i164, %bb.at, %bb.ar
  %i.uv = load <2 x float>, ptr %8, align 8, !tbaa !31 ; 2 uses
  %i.uw = load float, ptr %i.ei, align 4, !tbaa !118 ; 2 uses
  %i.ux = extractelement <2 x float> %i.tv, i64 1 ; 2 uses
  %i.uy = fcmp oeq float %i.uw, %i.ux
  br i1 %i.uy, label %nsvg__roundJoin.exit, label %bb.au

bb.au:                                            ; preds = %nsvg__addEdge.exit.i170
  %i.uz = load i32, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.va = load i32, ptr %i.ek, align 4, !tbaa !120 ; 3 uses
  %.not.i31.i = icmp slt i32 %i.uz, %i.va
  br i1 %.not.i31.i, label %._crit_edge.i41.i, label %bb.av

._crit_edge.i41.i:                                ; preds = %bb.au
  %.pre.i43.i = load ptr, ptr %i.el, align 8, !tbaa !98
  br label %.sink.split.i35.i

bb.av:                                            ; preds = %bb.au
  %i.vb = icmp sgt i32 %i.va, 0
  %i.vc = shl nuw nsw i32 %i.va, 1
  %spec.select.i32.i = select i1 %i.vb, i32 %i.vc, i32 64 ; 2 uses
  store i32 %spec.select.i32.i, ptr %i.ek, align 4, !tbaa !120
  %i.vd = load ptr, ptr %i.el, align 8, !tbaa !98
  %i.ve = zext nneg i32 %spec.select.i32.i to i64
  %i.vf = shl nuw nsw i64 %i.ve, 5
  %i.vg = tail call ptr @realloc(ptr noundef %i.vd, i64 noundef %i.vf) #32 ; 3 uses
  store ptr %i.vg, ptr %i.el, align 8, !tbaa !98
  %i.vh = icmp eq ptr %i.vg, null
  br i1 %i.vh, label %nsvg__roundJoin.exit, label %._crit_edge36.i33.i

._crit_edge36.i33.i:                              ; preds = %bb.av
  %.pre37.i34.i = load i32, ptr %i.ej, align 8, !tbaa !112
  br label %.sink.split.i35.i

.sink.split.i35.i:                                ; preds = %._crit_edge36.i33.i, %._crit_edge.i41.i
  %i.vi = phi i32 [ %i.uz, %._crit_edge.i41.i ], [ %.pre37.i34.i, %._crit_edge36.i33.i ] ; 2 uses
  %i.vj = phi ptr [ %.pre.i43.i, %._crit_edge.i41.i ], [ %i.vg, %._crit_edge36.i33.i ]
  %i.vk = sext i32 %i.vi to i64
  %i.vl = getelementptr inbounds [32 x i8], ptr %i.vj, i64 %i.vk ; 2 uses
  %i.vm = add nsw i32 %i.vi, 1
  store i32 %i.vm, ptr %i.ej, align 8, !tbaa !112
  %i.vn = fcmp olt float %i.uw, %i.ux             ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %.49.i40.i = select i1 %i.vn, i32 1, i32 -1
  %i.vp = insertelement <4 x i1> poison, i1 %i.vn, i64 0
  %i.vq = shufflevector <4 x i1> %i.vp, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.vr = shufflevector <2 x float> %i.tv, <2 x float> %i.uv, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.vs = shufflevector <2 x float> %i.tv, <2 x float> %i.uv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vt = select <4 x i1> %i.vq, <4 x float> %i.vr, <4 x float> %i.vs
  store <4 x float> %i.vt, ptr %i.vl, align 8, !tbaa !31
  store i32 %.49.i40.i, ptr %i.vo, align 8, !tbaa !122
  br label %nsvg__roundJoin.exit

nsvg__roundJoin.exit:                             ; preds = %nsvg__addEdge.exit88.i, %.sink.split.i35.i, %bb.av, %nsvg__addEdge.exit.i170, %.sink.split.i143.i, %bb.aq, %nsvg__addEdge.exit138.i, %.sink.split.i101.i, %bb.aj, %nsvg__addEdge.exit96.i, %.sink.split.i89.i, %bb.ab, %nsvg__addEdge.exit84.i
  %i.vu = phi <2 x float> [ %i.qq, %.sink.split.i143.i ], [ %i.iw, %.sink.split.i89.i ], [ %i.tu, %.sink.split.i35.i ], [ %i.iw, %nsvg__addEdge.exit84.i ], [ %i.iw, %bb.ab ], [ %i.nf, %.sink.split.i101.i ], [ %i.nf, %nsvg__addEdge.exit96.i ], [ %i.nf, %bb.aj ], [ %i.qq, %nsvg__addEdge.exit138.i ], [ %i.qq, %bb.aq ], [ %i.tu, %nsvg__addEdge.exit.i170 ], [ %i.tu, %bb.av ], [ %i.gd, %nsvg__addEdge.exit88.i ]
  %i.vv = phi <2 x float> [ %i.sq, %.sink.split.i143.i ], [ %i.iz, %.sink.split.i89.i ], [ %i.tv, %.sink.split.i35.i ], [ %i.iz, %nsvg__addEdge.exit84.i ], [ %i.iz, %bb.ab ], [ %i.ol, %.sink.split.i101.i ], [ %i.ol, %nsvg__addEdge.exit96.i ], [ %i.ol, %bb.aj ], [ %i.sq, %nsvg__addEdge.exit138.i ], [ %i.sq, %bb.aq ], [ %i.tv, %nsvg__addEdge.exit.i170 ], [ %i.tv, %bb.av ], [ %i.ge, %nsvg__addEdge.exit88.i ]
  store <2 x float> %i.vu, ptr %7, align 8, !tbaa !31
  store <2 x float> %i.vv, ptr %8, align 8, !tbaa !31
  %i.vw = getelementptr inbounds nuw i8, ptr %.1258, i64 32 ; 2 uses
  %i.vx = add nuw nsw i32 %.079259, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.vx, %.0252
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !318

._crit_edge:                                      ; preds = %nsvg__roundJoin.exit, %bb.j
  %.182.lcssa = phi ptr [ %.081246, %bb.j ], [ %.1258, %nsvg__roundJoin.exit ]
  %.1.lcssa = phi ptr [ %.080248, %bb.j ], [ %i.vw, %nsvg__roundJoin.exit ]
  br i1 %.not, label %nsvg__normalize.exit190, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge
  %i.vy = load <2 x float>, ptr %7, align 8, !tbaa !31 ; 3 uses
  %i.vz = extractelement <2 x float> %i.vy, i64 1 ; 2 uses
  %i.wa = fcmp oeq float %.sroa.530.0, %i.vz
  br i1 %i.wa, label %nsvg__addEdge.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !112 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !120 ; 3 uses
  %.not.i174 = icmp slt i32 %i.wc, %i.we
  br i1 %.not.i174, label %._crit_edge.i, label %bb.ay

._crit_edge.i:                                    ; preds = %bb.ax
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !98
  br label %.sink.split.i

bb.ay:                                            ; preds = %bb.ax
  %i.wf = icmp sgt i32 %i.we, 0
  %i.wg = shl nuw nsw i32 %i.we, 1
  %spec.select.i = select i1 %i.wf, i32 %i.wg, i32 64 ; 2 uses
  store i32 %spec.select.i, ptr %i.wd, align 4, !tbaa !120
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !98
  %i.wj = zext nneg i32 %spec.select.i to i64
  %i.wk = shl nuw nsw i64 %i.wj, 5
  %i.wl = tail call ptr @realloc(ptr noundef %i.wi, i64 noundef %i.wk) #32 ; 3 uses
  store ptr %i.wl, ptr %i.wh, align 8, !tbaa !98
  %i.wm = icmp eq ptr %i.wl, null
  br i1 %i.wm, label %nsvg__addEdge.exit, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.ay
  %.pre37.i = load i32, ptr %i.wb, align 8, !tbaa !112
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge36.i, %._crit_edge.i
  %i.wn = phi i32 [ %i.wc, %._crit_edge.i ], [ %.pre37.i, %._crit_edge36.i ] ; 2 uses
  %i.wo = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.wl, %._crit_edge36.i ]
  %i.wp = sext i32 %i.wn to i64
  %i.wq = getelementptr inbounds [32 x i8], ptr %i.wo, i64 %i.wp ; 3 uses
  %i.wr = add nsw i32 %i.wn, 1
  store i32 %i.wr, ptr %i.wb, align 8, !tbaa !112
  %i.ws = fcmp olt float %.sroa.530.0, %i.vz      ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %.49.i = select i1 %i.ws, i32 1, i32 -1
  %i.wv = insertelement <2 x i1> poison, i1 %i.ws, i64 0
  %i.ww = shufflevector <2 x i1> %i.wv, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wx = select <2 x i1> %i.ww, <2 x float> %i.ee, <2 x float> %i.vy
  store <2 x float> %i.wx, ptr %i.wq, align 8, !tbaa !31
  %i.wy = select <2 x i1> %i.ww, <2 x float> %i.vy, <2 x float> %i.ee
  store <2 x float> %i.wy, ptr %i.wt, align 8, !tbaa !31
  store i32 %.49.i, ptr %i.wu, align 8, !tbaa !122
  br label %nsvg__addEdge.exit

nsvg__addEdge.exit:                               ; preds = %bb.aw, %bb.ay, %.sink.split.i
  %i.wz = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.xa = load <2 x float>, ptr %8, align 8, !tbaa !31 ; 2 uses
  %i.xb = load float, ptr %i.wz, align 4, !tbaa !118 ; 2 uses
  %i.xc = fcmp oeq float %i.xb, %.sroa.5.0
  br i1 %i.xc, label %nsvg__addEdge.exit188, label %bb.az

bb.az:                                            ; preds = %nsvg__addEdge.exit
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !112 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !120 ; 3 uses
  %.not.i175 = icmp slt i32 %i.xe, %i.xg
  br i1 %.not.i175, label %._crit_edge.i185, label %bb.ba

._crit_edge.i185:                                 ; preds = %bb.az
  %.phi.trans.insert.i186 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i187 = load ptr, ptr %.phi.trans.insert.i186, align 8, !tbaa !98
  br label %.sink.split.i179

bb.ba:                                            ; preds = %bb.az
  %i.xh = icmp sgt i32 %i.xg, 0
  %i.xi = shl nuw nsw i32 %i.xg, 1
  %spec.select.i176 = select i1 %i.xh, i32 %i.xi, i32 64 ; 2 uses
  store i32 %spec.select.i176, ptr %i.xf, align 4, !tbaa !120
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !98
  %i.xl = zext nneg i32 %spec.select.i176 to i64
  %i.xm = shl nuw nsw i64 %i.xl, 5
  %i.xn = tail call ptr @realloc(ptr noundef %i.xk, i64 noundef %i.xm) #32 ; 3 uses
  store ptr %i.xn, ptr %i.xj, align 8, !tbaa !98
  %i.xo = icmp eq ptr %i.xn, null
  br i1 %i.xo, label %nsvg__addEdge.exit188, label %._crit_edge36.i177

._crit_edge36.i177:                               ; preds = %bb.ba
  %.pre37.i178 = load i32, ptr %i.xd, align 8, !tbaa !112
  br label %.sink.split.i179

.sink.split.i179:                                 ; preds = %._crit_edge36.i177, %._crit_edge.i185
  %i.xp = phi i32 [ %i.xe, %._crit_edge.i185 ], [ %.pre37.i178, %._crit_edge36.i177 ] ; 2 uses
  %i.xq = phi ptr [ %.pre.i187, %._crit_edge.i185 ], [ %i.xn, %._crit_edge36.i177 ]
  %i.xr = sext i32 %i.xp to i64
  %i.xs = getelementptr inbounds [32 x i8], ptr %i.xq, i64 %i.xr ; 2 uses
  %i.xt = add nsw i32 %i.xp, 1
  store i32 %i.xt, ptr %i.xd, align 8, !tbaa !112
  %i.xu = fcmp olt float %i.xb, %.sroa.5.0        ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %.49.i184 = select i1 %i.xu, i32 1, i32 -1
  %i.xw = insertelement <4 x i1> poison, i1 %i.xu, i64 0
  %i.xx = shufflevector <4 x i1> %i.xw, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.xy = shufflevector <2 x float> %i.ed, <2 x float> %i.xa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xz = shufflevector <2 x float> %i.xa, <2 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ya = select <4 x i1> %i.xx, <4 x float> %i.xy, <4 x float> %i.xz
  %i.yb = shufflevector <4 x float> %i.ya, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.yb, ptr %i.xs, align 8, !tbaa !31
  store i32 %.49.i184, ptr %i.xv, align 8, !tbaa !122
  br label %nsvg__addEdge.exit188

nsvg__normalize.exit190:                          ; preds = %._crit_edge
  %i.yc = load <2 x float>, ptr %.1.lcssa, align 4, !tbaa !31 ; 6 uses
  %i.yd = load <2 x float>, ptr %.182.lcssa, align 4, !tbaa !31
  %i.ye = fsub <2 x float> %i.yc, %i.yd           ; 5 uses
  %foldExtExtBinop394 = fmul <2 x float> %i.ye, %i.ye
  %i.yf = extractelement <2 x float> %foldExtExtBinop394, i64 1
  %i.yg = extractelement <2 x float> %i.ye, i64 0 ; 2 uses
  %i.yh = tail call float @llvm.fmuladd.f32(float %i.yg, float %i.yg, float %i.yf)
  %sqrt.i189 = tail call float @llvm.sqrt.f32(float %i.yh) ; 2 uses
  %i.yi = fcmp ogt float %sqrt.i189, f0x358637BD
  %i.yj = fdiv float 1.000000e+00, %sqrt.i189
  %i.yk = insertelement <2 x float> poison, float %i.yj, i64 0
  %i.yl = shufflevector <2 x float> %i.yk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ym = fmul <2 x float> %i.ye, %i.yl
  %i.yn = insertelement <2 x i1> poison, i1 %i.yi, i64 0
  %i.yo = shufflevector <2 x i1> %i.yn, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.yp = select <2 x i1> %i.yo, <2 x float> %i.ym, <2 x float> %i.ye ; 9 uses
  switch i32 %5, label %nsvg__addEdge.exit188 [
    i32 0, label %bb.bb
    i32 2, label %bb.bi
    i32 1, label %bb.bp
  ]

bb.bb:                                            ; preds = %nsvg__normalize.exit190
  %i.yq = fneg <2 x float> %i.yp                  ; 2 uses
  %i.yr = shufflevector <2 x float> %i.yp, <2 x float> %i.yq, <2 x i32> <i32 1, i32 2>
  %i.ys = insertelement <2 x float> poison, float %i.a, i64 0
  %i.yt = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yr, <2 x float> %i.yt, <2 x float> %i.yc) ; 5 uses
  %i.yv = shufflevector <2 x float> %i.yq, <2 x float> %i.yp, <2 x i32> <i32 1, i32 2>
  %i.yw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yv, <2 x float> %i.yt, <2 x float> %i.yc) ; 5 uses
  %i.yx = extractelement <2 x float> %i.yw, i64 1 ; 4 uses
  %i.yy = extractelement <2 x float> %i.yu, i64 1 ; 4 uses
  %i.yz = fcmp oeq float %i.yy, %i.yx
  br i1 %i.yz, label %nsvg__addEdge.exit.i201, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !112 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !120 ; 3 uses
  %.not.i.i191 = icmp slt i32 %i.zb, %i.zd
  br i1 %.not.i.i191, label %._crit_edge.i.i202, label %bb.bd

._crit_edge.i.i202:                               ; preds = %bb.bc
  %.phi.trans.insert.i.i203 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i204 = load ptr, ptr %.phi.trans.insert.i.i203, align 8, !tbaa !98
  br label %.sink.split.i.i195

bb.bd:                                            ; preds = %bb.bc
  %i.ze = icmp sgt i32 %i.zd, 0
  %i.zf = shl nuw nsw i32 %i.zd, 1
  %spec.select.i.i192 = select i1 %i.ze, i32 %i.zf, i32 64 ; 2 uses
  store i32 %spec.select.i.i192, ptr %i.zc, align 4, !tbaa !120
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !98
  %i.zi = zext nneg i32 %spec.select.i.i192 to i64
  %i.zj = shl nuw nsw i64 %i.zi, 5
  %i.zk = tail call ptr @realloc(ptr noundef %i.zh, i64 noundef %i.zj) #32 ; 3 uses
  store ptr %i.zk, ptr %i.zg, align 8, !tbaa !98
  %i.zl = icmp eq ptr %i.zk, null
  br i1 %i.zl, label %nsvg__addEdge.exit.i201, label %._crit_edge36.i.i193

._crit_edge36.i.i193:                             ; preds = %bb.bd
  %.pre37.i.i194 = load i32, ptr %i.za, align 8, !tbaa !112
  br label %.sink.split.i.i195

.sink.split.i.i195:                               ; preds = %._crit_edge36.i.i193, %._crit_edge.i.i202
  %i.zm = phi i32 [ %i.zb, %._crit_edge.i.i202 ], [ %.pre37.i.i194, %._crit_edge36.i.i193 ] ; 2 uses
  %i.zn = phi ptr [ %.pre.i.i204, %._crit_edge.i.i202 ], [ %i.zk, %._crit_edge36.i.i193 ]
  %i.zo = sext i32 %i.zm to i64
  %i.zp = getelementptr inbounds [32 x i8], ptr %i.zn, i64 %i.zo ; 2 uses
  %i.zq = add nsw i32 %i.zm, 1
  store i32 %i.zq, ptr %i.za, align 8, !tbaa !112
  %i.zr = fcmp olt float %i.yy, %i.yx             ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %.49.i.i200 = select i1 %i.zr, i32 1, i32 -1
  %i.zt = insertelement <4 x i1> poison, i1 %i.zr, i64 0
  %i.zu = shufflevector <4 x i1> %i.zt, <4 x i1> poison, <4 x i32> zeroinitializer
end_hunk_2
begin_hunk_3_@nsvg__expandStroke:bb.a
  %i.aeo = shufflevector <2 x float> %i.adp, <2 x float> %i.acj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aep = select <4 x i1> %i.aem, <4 x float> %i.aen, <4 x float> %i.aeo
  %i.aeq = shufflevector <4 x float> %i.aep, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.aeq, ptr %i.aeh, align 8, !tbaa !31
  store i32 %.49.i53.i, ptr %i.aek, align 8, !tbaa !122
  br label %nsvg__addEdge.exit57.i

nsvg__addEdge.exit57.i:                           ; preds = %.sink.split.i48.i, %bb.bm, %nsvg__addEdge.exit.i216
  %i.aer = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aes = load <2 x float>, ptr %7, align 8, !tbaa !31 ; 2 uses
  %i.aet = load float, ptr %i.aer, align 4, !tbaa !118 ; 2 uses
  %i.aeu = fcmp oeq float %i.acn, %i.aet
  br i1 %i.aeu, label %nsvg__addEdge.exit188, label %bb.bn

bb.bn:                                            ; preds = %nsvg__addEdge.exit57.i
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aew = load i32, ptr %i.aev, align 8, !tbaa !112 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !120 ; 3 uses
  %.not.i58.i = icmp slt i32 %i.aew, %i.aey
  br i1 %.not.i58.i, label %._crit_edge.i68.i, label %bb.bo

._crit_edge.i68.i:                                ; preds = %bb.bn
  %.phi.trans.insert.i69.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i70.i = load ptr, ptr %.phi.trans.insert.i69.i, align 8, !tbaa !98
  br label %.sink.split.i62.i

bb.bo:                                            ; preds = %bb.bn
  %i.aez = icmp sgt i32 %i.aey, 0
  %i.afa = shl nuw nsw i32 %i.aey, 1
  %spec.select.i59.i = select i1 %i.aez, i32 %i.afa, i32 64 ; 2 uses
  store i32 %spec.select.i59.i, ptr %i.aex, align 4, !tbaa !120
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !98
  %i.afd = zext nneg i32 %spec.select.i59.i to i64
  %i.afe = shl nuw nsw i64 %i.afd, 5
  %i.aff = tail call ptr @realloc(ptr noundef %i.afc, i64 noundef %i.afe) #32 ; 3 uses
  store ptr %i.aff, ptr %i.afb, align 8, !tbaa !98
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %nsvg__addEdge.exit188, label %._crit_edge36.i60.i

._crit_edge36.i60.i:                              ; preds = %bb.bo
  %.pre37.i61.i = load i32, ptr %i.aev, align 8, !tbaa !112
  br label %.sink.split.i62.i

.sink.split.i62.i:                                ; preds = %._crit_edge36.i60.i, %._crit_edge.i68.i
  %i.afh = phi i32 [ %i.aew, %._crit_edge.i68.i ], [ %.pre37.i61.i, %._crit_edge36.i60.i ] ; 2 uses
  %i.afi = phi ptr [ %.pre.i70.i, %._crit_edge.i68.i ], [ %i.aff, %._crit_edge36.i60.i ]
  %i.afj = sext i32 %i.afh to i64
  %i.afk = getelementptr inbounds [32 x i8], ptr %i.afi, i64 %i.afj ; 2 uses
  %i.afl = add nsw i32 %i.afh, 1
  store i32 %i.afl, ptr %i.aev, align 8, !tbaa !112
  %i.afm = fcmp olt float %i.acn, %i.aet          ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 16
  %.49.i67.i = select i1 %i.afm, i32 1, i32 -1
  %i.afo = insertelement <4 x i1> poison, i1 %i.afm, i64 0
  %i.afp = shufflevector <4 x i1> %i.afo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.afq = shufflevector <2 x float> %i.aes, <2 x float> %i.acm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afr = shufflevector <2 x float> %i.acm, <2 x float> %i.aes, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afs = select <4 x i1> %i.afp, <4 x float> %i.afq, <4 x float> %i.afr
  %i.aft = shufflevector <4 x float> %i.afs, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.aft, ptr %i.afk, align 8, !tbaa !31
  store i32 %.49.i67.i, ptr %i.afn, align 8, !tbaa !122
  br label %nsvg__addEdge.exit188

bb.bp:                                            ; preds = %nsvg__normalize.exit190
  %i.afu = fneg <2 x float> %i.yp                 ; 2 uses
  %i.afv = extractelement <2 x float> %i.yc, i64 0
  %i.afw = extractelement <2 x float> %i.yc, i64 1
  %i.afx = extractelement <2 x float> %i.afu, i64 0
  %i.afy = extractelement <2 x float> %i.afu, i64 1
  call fastcc void @nsvg__roundCap(ptr noundef %0, ptr noundef %8, ptr noundef %7, float %i.afv, float %i.afw, float noundef %i.afx, float noundef %i.afy, float noundef %6, i32 noundef %spec.store.select.i, i32 noundef 1)
  br label %nsvg__addEdge.exit188

nsvg__addEdge.exit188:                            ; preds = %.sink.split.i62.i, %bb.bo, %nsvg__addEdge.exit57.i, %.sink.split.i58.i, %bb.bh, %nsvg__addEdge.exit53.i, %bb.bp, %nsvg__normalize.exit190, %.sink.split.i179, %bb.ba, %nsvg__addEdge.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__roundCap(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, float %.0.val, float %.4.val, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #3 {
bb.a:
  %i.a = fmul float %5, 5.000000e-01              ; 3 uses
  %i.b = fneg float %3                            ; 2 uses
  %i.c = icmp sgt i32 %6, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %6, -1                       ; 2 uses
  %i.e = uitofp nneg i32 %i.d to float            ; 2 uses
  %i.f = fneg float %4                            ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = fdiv ninf float 0.000000e+00, %i.e       ; 2 uses
  %i.k = tail call float @llvm.fabs.f32(float %i.j)
  %i.l = tail call float @cosf(float %i.j)
  %i.m = tail call float @sinf(float noundef %i.k) #30
  %i.n = fmul float %i.a, %i.l
  %i.o = fmul float %i.a, %i.m
  %i.p = insertelement <2 x float> poison, float %i.f, i64 0
  %i.q = insertelement <2 x float> %i.p, float %3, i64 1
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> poison, float %.0.val, i64 0
  %i.u = insertelement <2 x float> %i.t, float %.4.val, i64 1 ; 2 uses
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.u)
  %i.w = insertelement <2 x float> poison, float %i.b, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.f, i64 1
  %i.y = insertelement <2 x float> poison, float %i.o, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.z, <2 x float> %i.v) ; 4 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %exitcond.peel.not = icmp eq i32 %6, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.b
  %i.ac = insertelement <2 x float> poison, float %i.a, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x float> poison, float %i.f, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %3, i64 1
  %i.ag = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.f, i64 1
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %nsvg__addEdge.exit
  %.0651 = phi i32 [ %i.by, %nsvg__addEdge.exit ], [ 1, %.peel.next.preheader ] ; 3 uses
  %i.ai = phi <2 x float> [ %i.bx, %nsvg__addEdge.exit ], [ zeroinitializer, %.peel.next.preheader ]
  %i.aj = phi <2 x float> [ %i.av, %nsvg__addEdge.exit ], [ %i.aa, %.peel.next.preheader ] ; 3 uses
  %i.ak = uitofp nneg i32 %.0651 to float
  %i.al = fdiv float %i.ak, %i.e
  %i.am = fmul float %i.al, f0x40490FDB           ; 2 uses
  %i.an = tail call float @cosf(float noundef %i.am) #30
  %i.ao = tail call float @sinf(float noundef %i.am) #30
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.an, i64 1
  %i.ar = fmul <2 x float> %i.ad, %i.aq           ; 2 uses
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.as, <2 x float> %i.u)
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.au, <2 x float> %i.at) ; 5 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.ax = extractelement <2 x float> %i.aj, i64 1 ; 2 uses
  %i.ay = fcmp oeq float %i.ax, %i.aw
  br i1 %i.ay, label %nsvg__addEdge.exit, label %bb.c

bb.c:                                             ; preds = %.peel.next
  %i.az = load i32, ptr %i.g, align 8, !tbaa !112 ; 2 uses
  %i.ba = load i32, ptr %i.h, align 4, !tbaa !120 ; 3 uses
  %.not.i = icmp slt i32 %i.az, %i.ba
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = shl nuw nsw i32 %i.ba, 1
  %spec.select.i = select i1 %i.bb, i32 %i.bc, i32 64 ; 2 uses
  store i32 %spec.select.i, ptr %i.h, align 4, !tbaa !120
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.be = zext nneg i32 %spec.select.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = tail call ptr @realloc(ptr noundef %i.bd, i64 noundef %i.bf) #32 ; 3 uses
  store ptr %i.bg, ptr %i.i, align 8, !tbaa !98
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %nsvg__addEdge.exit, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.d
  %.pre37.i = load i32, ptr %i.g, align 8, !tbaa !112
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge36.i, %._crit_edge.i
  %i.bi = phi i32 [ %i.az, %._crit_edge.i ], [ %.pre37.i, %._crit_edge36.i ] ; 2 uses
  %i.bj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bg, %._crit_edge36.i ]
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bm = add nsw i32 %i.bi, 1
  store i32 %i.bm, ptr %i.g, align 8, !tbaa !112
  %i.bn = fcmp olt float %i.ax, %i.aw             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.49.i = select i1 %i.bn, i32 1, i32 -1
  %i.bp = insertelement <4 x i1> poison, i1 %i.bn, i64 0
  %i.bq = shufflevector <4 x i1> %i.bp, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.br = shufflevector <2 x float> %i.aj, <2 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = shufflevector <2 x float> %i.av, <2 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bt = select <4 x i1> %i.bq, <4 x float> %i.br, <4 x float> %i.bs
  store <4 x float> %i.bt, ptr %i.bl, align 8, !tbaa !31
  store i32 %.49.i, ptr %i.bo, align 8, !tbaa !122
  br label %nsvg__addEdge.exit

nsvg__addEdge.exit:                               ; preds = %.peel.next, %bb.d, %.sink.split.i
  %i.bu = icmp eq i32 %.0651, %i.d
  %i.bv = insertelement <2 x i1> poison, i1 %i.bu, i64 0
  %i.bw = shufflevector <2 x i1> %i.bv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.av, <2 x float> %i.ai ; 2 uses
  %i.by = add nuw nsw i32 %.0651, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %6
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !319

._crit_edge:                                      ; preds = %nsvg__addEdge.exit, %bb.b, %bb.a
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ab, %bb.b ], [ %i.ab, %nsvg__addEdge.exit ] ; 2 uses
  %i.bz = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ %i.bx, %nsvg__addEdge.exit ] ; 4 uses
  %i.ca = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.aa, %bb.b ], [ %i.aa, %nsvg__addEdge.exit ] ; 3 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %nsvg__addEdge.exit95, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cc = load <2 x float>, ptr %1, align 4, !tbaa !31 ; 2 uses
  %i.cd = load float, ptr %i.cb, align 4, !tbaa !118 ; 2 uses
  %i.ce = fcmp oeq float %i.cd, %.061.lcssa
  br i1 %i.ce, label %nsvg__addEdge.exit81, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !112 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !120 ; 3 uses
  %.not.i68 = icmp slt i32 %i.cg, %i.ci
  br i1 %.not.i68, label %._crit_edge.i78, label %bb.g

._crit_edge.i78:                                  ; preds = %bb.f
  %.phi.trans.insert.i79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i80 = load ptr, ptr %.phi.trans.insert.i79, align 8, !tbaa !98
  br label %.sink.split.i72

bb.g:                                             ; preds = %bb.f
  %i.cj = icmp sgt i32 %i.ci, 0
  %i.ck = shl nuw nsw i32 %i.ci, 1
  %spec.select.i69 = select i1 %i.cj, i32 %i.ck, i32 64 ; 2 uses
  store i32 %spec.select.i69, ptr %i.ch, align 4, !tbaa !120
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !98
  %i.cn = zext nneg i32 %spec.select.i69 to i64
  %i.co = shl nuw nsw i64 %i.cn, 5
  %i.cp = tail call ptr @realloc(ptr noundef %i.cm, i64 noundef %i.co) #32 ; 3 uses
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !98
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %nsvg__addEdge.exit81, label %._crit_edge36.i70

._crit_edge36.i70:                                ; preds = %bb.g
  %.pre37.i71 = load i32, ptr %i.cf, align 8, !tbaa !112
  br label %.sink.split.i72

.sink.split.i72:                                  ; preds = %._crit_edge36.i70, %._crit_edge.i78
  %i.cr = phi i32 [ %i.cg, %._crit_edge.i78 ], [ %.pre37.i71, %._crit_edge36.i70 ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i80, %._crit_edge.i78 ], [ %i.cp, %._crit_edge36.i70 ]
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr inbounds [32 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cv = add nsw i32 %i.cr, 1
  store i32 %i.cv, ptr %i.cf, align 8, !tbaa !112
  %i.cw = fcmp olt float %i.cd, %.061.lcssa       ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.49.i77 = select i1 %i.cw, i32 1, i32 -1
  %i.cy = insertelement <4 x i1> poison, i1 %i.cw, i64 0
  %i.cz = shufflevector <4 x i1> %i.cy, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.da = shufflevector <2 x float> %i.ca, <2 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.db = shufflevector <2 x float> %i.cc, <2 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dc = select <4 x i1> %i.cz, <4 x float> %i.da, <4 x float> %i.db
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.dd, ptr %i.cu, align 8, !tbaa !31
  store i32 %.49.i77, ptr %i.cx, align 8, !tbaa !122
  br label %nsvg__addEdge.exit81

nsvg__addEdge.exit81:                             ; preds = %bb.e, %bb.g, %.sink.split.i72
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.df = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 2 uses
  %i.dg = load float, ptr %i.de, align 4, !tbaa !118 ; 2 uses
  %i.dh = extractelement <2 x float> %i.bz, i64 1 ; 2 uses
  %i.di = fcmp oeq float %i.dh, %i.dg
  br i1 %i.di, label %nsvg__addEdge.exit95, label %bb.h

bb.h:                                             ; preds = %nsvg__addEdge.exit81
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !112 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !120 ; 3 uses
  %.not.i82 = icmp slt i32 %i.dk, %i.dm
  br i1 %.not.i82, label %._crit_edge.i92, label %bb.i

._crit_edge.i92:                                  ; preds = %bb.h
  %.phi.trans.insert.i93 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i94 = load ptr, ptr %.phi.trans.insert.i93, align 8, !tbaa !98
  br label %.sink.split.i86

bb.i:                                             ; preds = %bb.h
  %i.dn = icmp sgt i32 %i.dm, 0
  %i.do = shl nuw nsw i32 %i.dm, 1
  %spec.select.i83 = select i1 %i.dn, i32 %i.do, i32 64 ; 2 uses
  store i32 %spec.select.i83, ptr %i.dl, align 4, !tbaa !120
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !98
  %i.dr = zext nneg i32 %spec.select.i83 to i64
  %i.ds = shl nuw nsw i64 %i.dr, 5
  %i.dt = tail call ptr @realloc(ptr noundef %i.dq, i64 noundef %i.ds) #32 ; 3 uses
  store ptr %i.dt, ptr %i.dp, align 8, !tbaa !98
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %nsvg__addEdge.exit95, label %._crit_edge36.i84

._crit_edge36.i84:                                ; preds = %bb.i
  %.pre37.i85 = load i32, ptr %i.dj, align 8, !tbaa !112
  br label %.sink.split.i86

.sink.split.i86:                                  ; preds = %._crit_edge36.i84, %._crit_edge.i92
  %i.dv = phi i32 [ %i.dk, %._crit_edge.i92 ], [ %.pre37.i85, %._crit_edge36.i84 ] ; 2 uses
  %i.dw = phi ptr [ %.pre.i94, %._crit_edge.i92 ], [ %i.dt, %._crit_edge36.i84 ]
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds [32 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = add nsw i32 %i.dv, 1
  store i32 %i.dz, ptr %i.dj, align 8, !tbaa !112
  %i.ea = fcmp olt float %i.dh, %i.dg             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.49.i91 = select i1 %i.ea, i32 1, i32 -1
  %i.ec = insertelement <4 x i1> poison, i1 %i.ea, i64 0
  %i.ed = shufflevector <4 x i1> %i.ec, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ee = shufflevector <2 x float> %i.bz, <2 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ef = shufflevector <2 x float> %i.df, <2 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eg = select <4 x i1> %i.ed, <4 x float> %i.ee, <4 x float> %i.ef
  store <4 x float> %i.eg, ptr %i.dy, align 8, !tbaa !31
  store i32 %.49.i91, ptr %i.eb, align 8, !tbaa !122
  br label %nsvg__addEdge.exit95

nsvg__addEdge.exit95:                             ; preds = %.sink.split.i86, %bb.i, %nsvg__addEdge.exit81, %._crit_edge
  store <2 x float> %i.ca, ptr %1, align 4, !tbaa !31
  store <2 x float> %i.bz, ptr %2, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
begin_hunk_4_@llvm.umax.i64
!110 = !{!94, !93, i64 80}
!111 = !{!94, !92, i64 64}
!112 = !{!94, !14, i64 24}
!113 = !{!94, !14, i64 40}
!114 = !{!94, !14, i64 44}
!115 = !{!"NSVGpoint", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !13, i64 28}
!116 = !{!115, !13, i64 28}
!117 = !{!115, !28, i64 0}
!118 = !{!115, !28, i64 4}
!119 = !{!94, !28, i64 12}
!120 = !{!94, !14, i64 28}
!121 = !{!"NSVGedge", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !14, i64 16, !90, i64 24}
!122 = !{!121, !14, i64 16}
!123 = !{!43, !28, i64 96}
!124 = !{!43, !13, i64 148}
!125 = !{!43, !28, i64 144}
!126 = !{!43, !13, i64 141}
!127 = !{!43, !13, i64 142}
!128 = !{!115, !28, i64 12}
!129 = !{!115, !28, i64 8}
!130 = !{!121, !28, i64 4}
!131 = !{!"NSVGcachedPaint", !13, i64 0, !13, i64 1, !13, i64 4, !13, i64 28}
!132 = !{!131, !13, i64 0}
!133 = !{!14, !14, i64 0}
!134 = !{!"NSVGgradient", !13, i64 0, !13, i64 24, !28, i64 28, !28, i64 32, !14, i64 36, !13, i64 40}
!135 = !{!134, !13, i64 24}
!136 = !{!134, !14, i64 36}
!137 = !{!"NSVGgradientStop", !14, i64 0, !28, i64 4}
!138 = !{!137, !14, i64 0}
!139 = !{!137, !28, i64 4}
!140 = !{!76, !13, i64 173}
!141 = !{!76, !13, i64 128}
!142 = !{!76, !13, i64 172}
!143 = !{!32, !14, i64 296}
!144 = !{!76, !14, i64 200}
!145 = !{!32, !28, i64 304}
!146 = !{!32, !14, i64 88}
!147 = !{!32, !28, i64 96}
!148 = !{!32, !28, i64 100}
!149 = !{!32, !13, i64 309}
!150 = !{!32, !14, i64 92}
!151 = !{!32, !14, i64 276}
!152 = !{!32, !13, i64 281}
!153 = !{!32, !13, i64 280}
!154 = !{!32, !13, i64 288}
!155 = !{!94, !28, i64 8}
!156 = distinct !{!156, !18}
!157 = distinct !{null}
!158 = distinct !{!158, !18}
!159 = distinct !{!159, !18}
!160 = distinct !{!160, !18}
!161 = distinct !{!161, !18}
!162 = distinct !{!162, !18}
!163 = distinct !{!163, !18}
!164 = distinct !{null}
!165 = distinct !{!165, !18}
!166 = distinct !{!166, !18}
!167 = distinct !{!167, !18}
!168 = distinct !{!168, !18, !64, !65}
!169 = distinct !{!169, !18, !65, !64}
!170 = distinct !{!170, !18}
!171 = distinct !{!171, !18, !64, !65}
!172 = distinct !{!172, !18, !65, !64}
!173 = distinct !{!173, !18}
!174 = distinct !{!174, !18}
!175 = distinct !{!175, !18}
!176 = distinct !{!176, !18}
!177 = distinct !{!177, !18}
!178 = distinct !{!178, !18, !85}
!179 = distinct !{!179, !18}
!180 = distinct !{!180, !18}
!181 = distinct !{!181, !18}
!182 = distinct !{!182, !18}
!183 = distinct !{!183, !18}
!184 = distinct !{!184, !18}
!185 = distinct !{!185, !18}
!186 = distinct !{!186, !18}
!187 = distinct !{!187, !18}
!188 = distinct !{!188, !18}
!189 = distinct !{!189, !18}
!190 = distinct !{!190, !18}
!191 = distinct !{!191, !18}
!192 = distinct !{!192, !106}
!193 = distinct !{!193, !18}
!194 = distinct !{!194, !18}
!195 = distinct !{!195, !18}
!196 = distinct !{!196, !18}
!197 = distinct !{!197, !18}
!198 = distinct !{!198, !18}
!199 = distinct !{!199, !18}
!200 = distinct !{!200, !106}
!201 = distinct !{!201, !18}
!202 = distinct !{!202, !18}
!203 = distinct !{!203, !18}
!204 = distinct !{!204, !18}
!205 = distinct !{!205, !18}
!206 = distinct !{!206, !18}
!207 = distinct !{!207, !18}
!208 = distinct !{!208, !18}
!209 = distinct !{!209, !18}
!210 = distinct !{!210, !18}
!211 = distinct !{!211, !18, !224}
!212 = distinct !{!212, !18}
!213 = !{!94, !14, i64 96}
!214 = !{!93, !93, i64 0}
!215 = !{!43, !28, i64 100}
!216 = !{i64 0, i64 4, !31, i64 4, i64 4, !31, i64 8, i64 4, !31, i64 12, i64 4, !31, i64 16, i64 4, !31, i64 20, i64 4, !31, i64 24, i64 4, !31, i64 28, i64 1, !17}
!217 = !{!94, !14, i64 60}
!218 = !{!94, !14, i64 56}
!219 = !{}
!220 = !{!43, !28, i64 104}
!221 = !{!115, !28, i64 20}
!222 = !{!115, !28, i64 24}
!223 = !{!115, !28, i64 16}
!224 = !{!"llvm.loop.peeled.count", i32 2}
!225 = distinct !{!225, !18, !64, !65}
!226 = distinct !{!226, !18, !65, !64}
!227 = distinct !{!227, !18, !64, !65}
!228 = distinct !{!228, !18}
!229 = distinct !{!229, !18}
!230 = distinct !{!230, !18, !64}
!231 = !{!131, !13, i64 1}
!232 = distinct !{!232, !18}
!233 = distinct !{!233, !254}
!234 = distinct !{!234, !18}
!235 = distinct !{!235, !18}
!236 = distinct !{!236, !18, !64, !65}
!237 = distinct !{!237, !18, !64, !65}
!238 = distinct !{!238, !18, !65, !64}
!239 = distinct !{!239, !18}
!240 = distinct !{!240, !18, !64, !65}
!241 = distinct !{!241, !18, !64, !65}
!242 = distinct !{!242, !18, !65, !64}
!243 = distinct !{!243, !18}
!244 = distinct !{!244, !18}
!245 = distinct !{!245, !18}
!246 = distinct !{!246, !18}
!247 = distinct !{!247, !18}
!248 = !{!92, !92, i64 0}
!249 = !{!"NSVGactiveEdge", !14, i64 0, !14, i64 4, !28, i64 8, !14, i64 12, !92, i64 16}
!250 = !{!249, !28, i64 8}
!251 = !{!249, !92, i64 16}
!252 = !{!249, !14, i64 4}
!253 = !{!249, !14, i64 0}
!254 = !{!"llvm.loop.unswitch.partial.disable"}
!255 = !{!121, !28, i64 12}
!256 = !{!121, !28, i64 8}
!257 = !{!121, !28, i64 0}
!258 = !{!249, !14, i64 12}
!259 = !{!"branch_weights", i32 8, i32 24}
!260 = distinct !{!260, !18}
!261 = distinct !{!261, !18}
!262 = distinct !{!262, !18}
!263 = distinct !{!263, !18}
!264 = distinct !{null, null}
!265 = distinct !{!265, !18}
!266 = distinct !{!266, !18}
!267 = distinct !{!267, !18}
!268 = distinct !{!268, !18}
!269 = distinct !{!269, !18}
!270 = distinct !{!270, !18}
!271 = distinct !{!271, !18}
!272 = distinct !{!272, !18}
!273 = distinct !{!273, !18}
!274 = !{!32, !28, i64 240}
!275 = distinct !{!275, !18}
!276 = distinct !{!276, !18}
!277 = distinct !{!277, !18}
!278 = distinct !{!278, !18}
!279 = distinct !{!279, !18}
!280 = !{!"NSVGNamedColor", !20, i64 0, !14, i64 8}
!281 = !{!280, !20, i64 0}
!282 = !{!280, !14, i64 8}
!283 = distinct !{!283, !18}
!284 = distinct !{!284, !18}
!285 = distinct !{!285, !18}
!286 = distinct !{!286, !18}
!287 = distinct !{!287, !106}
!288 = distinct !{!288, !18}
!289 = distinct !{!289, !18}
!290 = distinct !{!290, !18}
!291 = distinct !{!291, !18}
!292 = distinct !{!292, !18}
!293 = distinct !{!293, !18}
!294 = distinct !{!294, !18}
!295 = distinct !{!295, !18}
!296 = distinct !{!296, !18}
!297 = distinct !{!297, !18}
!298 = distinct !{!298, i1 false, !"LVerDomain"}
!299 = distinct !{!299, !298}
!300 = distinct !{!300, !298}
!301 = distinct !{!301, !18, !64, !65}
!302 = distinct !{!302, !18, !64}
!303 = distinct !{!303, !18, !85}
!304 = !{!299}
!305 = !{!300}
!306 = distinct !{!306, !18, !64, !65}
!307 = distinct !{!307, !18, !65, !64}
!308 = distinct !{!308, !18}
!309 = !{!29, !27, i64 39992}
!310 = distinct !{!310, !18}
!311 = !{!"double", !13, i64 0}
!312 = !{!311, !311, i64 0}
!313 = distinct !{!313, !18, !85}
!314 = distinct !{!314, !18}
!315 = distinct !{!315, !18}
!316 = !{!26, !26, i64 0}
!317 = distinct !{!317, !18}
!318 = distinct !{!318, !18}
!319 = distinct !{!319, !18, !85}
end_hunk_4
