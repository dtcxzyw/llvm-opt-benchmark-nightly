inline.NumInlined: 73
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE:bb.a
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph41, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.016.040 = phi i64 [ %i.bt, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.o, %.lr.ph.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !41, !alias.scope !49 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %wide.load81 = load <2 x double>, ptr %i.ax, align 8, !tbaa !41, !alias.scope !52 ; 2 uses
  %i.ay = fmul <2 x double> %wide.load, %wide.load81
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index
  store <2 x double> %i.ay, ptr %i.az, align 8, !tbaa !41, !alias.scope !54, !noalias !56
  %i.ba = fadd <2 x double> %wide.load, %wide.load81
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index
  store <2 x double> %i.ba, ptr %i.bb, align 8, !tbaa !41, !alias.scope !59, !noalias !60
  %wide.load84 = load <2 x double>, ptr %i.aw, align 8, !tbaa !41, !alias.scope !49
  %wide.load85 = load <2 x double>, ptr %i.ax, align 8, !tbaa !41, !alias.scope !52
  %i.bc = fsub <2 x double> %wide.load84, %wide.load85
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  store <2 x double> %i.bc, ptr %i.bd, align 8, !tbaa !41, !alias.scope !61, !noalias !62
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !41
  %i.bj = fmul double %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.bj, ptr %i.bk, align 8, !tbaa !41
  %i.bl = load double, ptr %i.bf, align 8, !tbaa !41
  %i.bm = load double, ptr %i.bh, align 8, !tbaa !41
  %i.bn = fadd double %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.bn, ptr %i.bo, align 8, !tbaa !41
  %i.bp = load double, ptr %i.bf, align 8, !tbaa !41
  %i.bq = load double, ptr %i.bh, align 8, !tbaa !41
  %i.br = fsub double %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store double %i.br, ptr %i.bs, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !64

"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.bt = add nsw i64 %.sroa.016.040, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bt, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !48
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 11)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 16, !tbaa !37  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not41 = icmp eq i64 %i.o, 0
  br i1 %.not.i.not41, label %._crit_edge.split, label %.lr.ph43, !prof !38

.lr.ph43:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 32, !tbaa !39
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph43
  %wide.trip.count = and i64 %i.r, 2147483647
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph43, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.016.042 = phi i64 [ %i.as, %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.o, %.lr.ph.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit" ] ; 7 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !41 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !41 ; 2 uses
  %i.y = fmul double %i.x, 4.000000e+00
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !41
  %i.ab = fneg double %i.aa
  %i.ac = fmul double %i.y, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.ac) ; 2 uses
  %i.ae = fcmp ult double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = tail call double @sqrt(double noundef %i.ad) #9, !tbaa !4 ; 2 uses
  %i.ag = fsub double %i.af, %i.v
  %i.ah = fmul double %i.x, 2.000000e+00
  %i.ai = fdiv double %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.ai, ptr %i.aj, align 8, !tbaa !41
  %i.ak = load double, ptr %i.u, align 8, !tbaa !41
  %i.al = fneg double %i.ak
  %i.am = fsub double %i.al, %i.af
  %i.an = load double, ptr %i.w, align 8, !tbaa !41
  %i.ao = fmul double %i.an, 2.000000e+00
  %i.ap = fdiv double %i.am, %i.ao
  br label %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !41
  br label %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"

"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit": ; preds = %bb.c, %bb.d
  %.sink.i = phi double [ 0.000000e+00, %bb.d ], [ %i.ap, %bb.c ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %.sink.i, ptr %i.ar, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !65

"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"
  %i.as = add nsw i64 %.sroa.016.042, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.as, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !48
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 12)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.e = load double, ptr %i.d, align 8, !tbaa !41 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.g = load double, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.i = load double, ptr %i.h, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = add nsw i32 %i.l, 1
  %i.n = sitofp i32 %i.m to double
  %i.o = fsub double %i.g, %i.i                   ; 2 uses
  %i.p = fmul double %i.o, %i.o                   ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !41 ; 3 uses
  %i.r = extractelement <2 x double> %i.q, i64 0
  %i.s = extractelement <2 x double> %i.q, i64 1  ; 4 uses
  %i.t = fsub double %i.r, %i.s
  %i.u = fdiv double %i.t, %i.n                   ; 4 uses
  %i.v = insertelement <2 x double> poison, double %i.e, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fsub <2 x double> %i.q, %i.w             ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.p, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.x, <2 x double> %i.z)
  %i.ab = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aa) ; 2 uses
  %1 = extractelement <2 x double> %i.ab, i64 1
  %2 = fdiv double 1.000000e+00, %1
  %3 = extractelement <2 x double> %i.ab, i64 0
  %4 = fdiv double 1.000000e+00, %3
  %5 = fadd double %2, %4
  %i.ac = fmul double %5, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 16, !tbaa !37 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not57 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.not57, label %._crit_edge, label %.lr.ph60, !prof !38

.lr.ph60:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

bb.b:                                             ; preds = %.lr.ph60, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"
  %.sroa.019.059 = phi i64 [ %i.ag, %.lr.ph60 ], [ %i.bi, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit" ]
  %.058 = phi double [ %i.ac, %.lr.ph60 ], [ %.1.lcssa, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit" ] ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 32, !tbaa !39
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 4 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i32 %i.ak, 1
  %i.am = icmp eq i32 %i.ak, 1
  br i1 %i.am, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ak, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0.i56 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ba, %.lr.ph ] ; 3 uses
  %.155 = phi double [ %.058, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.an = uitofp nneg i32 %.0.i56 to double
  %i.ao = call double @llvm.fmuladd.f64(double %i.an, double %i.u, double %i.s)
  %i.ap = fsub double %i.ao, %i.e                 ; 2 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.p)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.aq)
  %i.ar = fdiv double 1.000000e+00, %sqrt.i
  %i.as = fadd double %.155, %i.ar
  %i.at = or disjoint i32 %.0.i56, 1
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = call double @llvm.fmuladd.f64(double %i.au, double %i.u, double %i.s)
  %i.aw = fsub double %i.av, %i.e                 ; 2 uses
  %i.ax = call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %i.p)
  %sqrt.i.1 = call double @llvm.sqrt.f64(double %i.ax)
  %i.ay = fdiv double 1.000000e+00, %sqrt.i.1
  %i.az = fadd double %i.as, %i.ay                ; 3 uses
  %i.ba = add nuw nsw i32 %.0.i56, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa", label %.lr.ph, !llvm.loop !68

"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa": ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit", label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa", %.lr.ph.preheader
  %.0.i56.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ba, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa" ]
  %.155.epil.init = phi double [ %.058, %.lr.ph.preheader ], [ %i.az, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa" ]
  %lcmp.mod66 = trunc i64 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod66)
  %i.bb = uitofp nneg i32 %.0.i56.epil.init to double
  %i.bc = call double @llvm.fmuladd.f64(double %i.bb, double %i.u, double %i.s)
  %i.bd = fsub double %i.bc, %i.e                 ; 2 uses
  %i.be = call double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %i.p)
  %sqrt.i.epil = call double @llvm.sqrt.f64(double %i.be)
  %i.bf = fdiv double 1.000000e+00, %sqrt.i.epil
  %i.bg = fadd double %.155.epil.init, %i.bf
  br label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"

"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit": ; preds = %.lr.ph.epil.preheader, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa", %bb.b
  %.1.lcssa = phi double [ %.058, %bb.b ], [ %i.az, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa" ], [ %i.bg, %.lr.ph.epil.preheader ] ; 2 uses
  %i.bh = fmul double %i.u, %.1.lcssa             ; 2 uses
  store double %i.bh, ptr %i.a, align 8, !tbaa !41
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.a, double %i.bh) #9, !srcloc !69
  %i.bi = add nsw i64 %.sroa.019.059, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bi, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.b, !prof !48
}

declare noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() local_unnamed_addr #0

declare void @_Z8loopInitj(i32 noundef) local_unnamed_addr #0

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LambdaSubsetBbenchmarks.cxx() #7 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #10 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 15, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 15, ptr %i.g, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 0, ptr %i.h, align 1, !tbaa !72
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.e, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store ptr @_ZL15BM_INIT3_LAMBDARN9benchmark5StateE, ptr %i.i, align 8, !tbaa !75
  %i.j = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.j, i64 noundef 171)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.k, i64 noundef 5001)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.l, i64 noundef 44217)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, i32 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.o) #11
  br label %__cxx_global_var_init.1.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.a ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.r) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3
  %.sink = phi ptr [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i6 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i15 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i12 ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i11 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i21 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i20 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i6 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i15 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2 ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i12 ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i11 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i21 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i20 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #11
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i11 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i20 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i21 ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i12 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

end_hunk_0
