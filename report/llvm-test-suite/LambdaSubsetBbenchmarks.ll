Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LambdaSubsetBbenchmarks?download=true
inline.NumInlined: 73
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE:bb.a
  %n.vec = and i64 %i.r, 2147483646               ; 3 uses
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
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !42, !alias.scope !58 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %wide.load81 = load <2 x double>, ptr %i.ax, align 8, !tbaa !42, !alias.scope !59 ; 2 uses
  %i.ay = fmul <2 x double> %wide.load, %wide.load81
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  store <2 x double> %i.ay, ptr %i.az, align 8, !tbaa !42, !alias.scope !60, !noalias !61
  %i.ba = fadd <2 x double> %wide.load, %wide.load81
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  store <2 x double> %i.ba, ptr %i.bb, align 8, !tbaa !42, !alias.scope !62, !noalias !63
  %wide.load84 = load <2 x double>, ptr %i.aw, align 8, !tbaa !42, !alias.scope !58
  %wide.load85 = load <2 x double>, ptr %i.ax, align 8, !tbaa !42, !alias.scope !59
  %i.bc = fsub <2 x double> %wide.load84, %wide.load85
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index
  store <2 x double> %i.bc, ptr %i.bd, align 8, !tbaa !42, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !42
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !42
  %i.bj = fmul double %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store double %i.bj, ptr %i.bk, align 8, !tbaa !42
  %i.bl = load double, ptr %i.bf, align 8, !tbaa !42
  %i.bm = load double, ptr %i.bh, align 8, !tbaa !42
  %i.bn = fadd double %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store double %i.bn, ptr %i.bo, align 8, !tbaa !42
  %i.bp = load double, ptr %i.bf, align 8, !tbaa !42
  %i.bq = load double, ptr %i.bh, align 8, !tbaa !42
  %i.br = fsub double %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.br, ptr %i.bs, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !57

"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.bt = add nsw i64 %.sroa.016.040, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bt, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !46
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 11)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
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
  %i.v = load double, ptr %i.u, align 8, !tbaa !42 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !42 ; 2 uses
  %i.y = fmul double %i.x, 4.000000e+00
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !42
  %i.ab = fneg double %i.aa
  %i.ac = fmul double %i.y, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.ac) ; 2 uses
  %i.ae = fcmp ult double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = tail call double @sqrt(double noundef %i.ad) #9, !tbaa !7 ; 2 uses
  %i.ag = fsub double %i.af, %i.v
  %i.ah = fmul double %i.x, 2.000000e+00
  %i.ai = fdiv double %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.ai, ptr %i.aj, align 8, !tbaa !42
  %i.ak = load double, ptr %i.u, align 8, !tbaa !42
  %i.al = fneg double %i.ak
  %i.am = fsub double %i.al, %i.af
  %i.an = load double, ptr %i.w, align 8, !tbaa !42
  %i.ao = fmul double %i.an, 2.000000e+00
  %i.ap = fdiv double %i.am, %i.ao
  br label %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !42
  br label %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"

"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit": ; preds = %bb.c, %bb.d
  %.sink.i = phi double [ 0.000000e+00, %bb.d ], [ %i.ap, %bb.c ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %.sink.i, ptr %i.ar, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !66

"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"
  %i.as = add nsw i64 %.sroa.016.042, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.as, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !46
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 12)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.e = load double, ptr %i.d, align 8, !tbaa !42 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.g = load double, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = add nsw i32 %i.l, 1
  %i.n = sitofp i32 %i.m to double
  %i.o = fsub double %i.g, %i.i                   ; 2 uses
  %i.p = fmul double %i.o, %i.o                   ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !42 ; 3 uses
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
  %1 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aa) ; 2 uses
  %2 = extractelement <2 x double> %1, i64 1
  %i.ab = fdiv double 1.000000e+00, %2
  %i.ac = extractelement <2 x double> %1, i64 0
  %i.ad = fdiv double 1.000000e+00, %i.ac
  %i.ae = fadd double %i.ab, %i.ad
  %i.af = fmul double %i.ae, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !37 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not56 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.not56, label %._crit_edge, label %.lr.ph59, !prof !38

.lr.ph59:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

bb.b:                                             ; preds = %.lr.ph59, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"
  %.sroa.019.058 = phi i64 [ %i.aj, %.lr.ph59 ], [ %i.bo, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit" ]
  %.057 = phi double [ %i.af, %.lr.ph59 ], [ %.1.lcssa, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit" ] ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 32, !tbaa !39
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.an, 1
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.an, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0.i55 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bf, %.lr.ph ] ; 3 uses
  %.154 = phi double [ %.057, %.lr.ph.preheader.new ], [ %i.be, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aq = uitofp nneg i32 %.0.i55 to double
  %i.ar = call double @llvm.fmuladd.f64(double %i.aq, double %i.u, double %i.s)
  %i.as = fsub double %i.ar, %i.e                 ; 2 uses
  %i.at = call double @llvm.fmuladd.f64(double %i.as, double %i.as, double %i.p)
  %i.au = call double @llvm.sqrt.f64(double %i.at)
  %i.av = fdiv double 1.000000e+00, %i.au
  %i.aw = fadd double %.154, %i.av
  %i.ax = or disjoint i32 %.0.i55, 1
  %i.ay = uitofp nneg i32 %i.ax to double
  %i.az = call double @llvm.fmuladd.f64(double %i.ay, double %i.u, double %i.s)
  %i.ba = fsub double %i.az, %i.e                 ; 2 uses
  %i.bb = call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.p)
  %i.bc = call double @llvm.sqrt.f64(double %i.bb)
  %i.bd = fdiv double 1.000000e+00, %i.bc
  %i.be = fadd double %i.aw, %i.bd                ; 3 uses
  %i.bf = add nuw nsw i32 %.0.i55, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa", label %.lr.ph, !llvm.loop !67

"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa": ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit", label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa", %.lr.ph.preheader
  %.0.i55.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bf, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa" ]
  %.154.epil.init = phi double [ %.057, %.lr.ph.preheader ], [ %i.be, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa" ]
  %lcmp.mod64 = trunc i64 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.bg = uitofp nneg i32 %.0.i55.epil.init to double
  %i.bh = call double @llvm.fmuladd.f64(double %i.bg, double %i.u, double %i.s)
  %i.bi = fsub double %i.bh, %i.e                 ; 2 uses
  %i.bj = call double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.p)
  %i.bk = call double @llvm.sqrt.f64(double %i.bj)
  %i.bl = fdiv double 1.000000e+00, %i.bk
  %i.bm = fadd double %.154.epil.init, %i.bl
  br label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"

"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit": ; preds = %.lr.ph.epil.preheader, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa", %bb.b
  %.1.lcssa = phi double [ %.057, %bb.b ], [ %i.be, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.loopexit.unr-lcssa" ], [ %i.bm, %.lr.ph.epil.preheader ] ; 2 uses
  %i.bn = fmul double %i.u, %.1.lcssa             ; 2 uses
  store double %i.bn, ptr %i.a, align 8, !tbaa !42
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.a, double %i.bn) #9, !srcloc !69
  %i.bo = add nsw i64 %.sroa.019.058, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bo, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.b, !prof !46
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.e, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store ptr @_ZL15BM_INIT3_LAMBDARN9benchmark5StateE, ptr %i.i, align 8, !tbaa !99
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

__cxx_global_var_init.1.exit:                     ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  store ptr %i.n, ptr @_ZL27benchmark_uniq_2_benchmark_, align 8, !tbaa !102
  %i.t = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 19, ptr %i.c, align 8, !tbaa !40
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ; 2 uses

.noexc.i:                                         ; preds = %__cxx_global_var_init.1.exit
  store ptr %i.v, ptr %2, align 8, !tbaa !100
  %i.w = load i64, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.v, ptr noundef nonnull align 1 dereferenceable(19) @.str.3, i64 19, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !71
  %i.y = load ptr, ptr %2, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %.noexc.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.t, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store ptr @_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE, ptr %i.aa, align 8, !tbaa !99
  %i.ab = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.t)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.ab, i64 noundef 171)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ad = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.ac, i64 noundef 5001)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.ad, i64 noundef 44217)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.af = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i32 noundef 1)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %2, align 8, !tbaa !100   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %__cxx_global_var_init.2.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ag) #11
  br label %__cxx_global_var_init.2.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i: ; preds = %__cxx_global_var_init.1.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %common.resume.sink.split

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %.noexc.i
  %.0.i1 = phi i1 [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ true, %.noexc.i ] ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !100   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.u
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ak) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %.0.i1, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i3: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %.0.i1, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.2.exit:                     ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  store ptr %i.af, ptr @_ZL27benchmark_uniq_3_benchmark_, align 8, !tbaa !102
  %i.am = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 17, ptr %i.b, align 8, !tbaa !40
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i9 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i6 ; 2 uses

.noexc.i9:                                        ; preds = %__cxx_global_var_init.2.exit
  store ptr %i.ao, ptr %1, align 8, !tbaa !100
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !40  ; 3 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ao, ptr noundef nonnull align 1 dereferenceable(17) @.str.5, i64 17, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !71
  %i.ar = load ptr, ptr %1, align 8, !tbaa !100
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %.noexc.i9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.am, align 8, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  store ptr @_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE, ptr %i.at, align 8, !tbaa !99
  %i.au = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.am)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.av = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.au, i64 noundef 171)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.aw = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.av, i64 noundef 5001)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ax = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.aw, i64 noundef 44217)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ay = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.ax, i32 noundef 1)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %1, align 8, !tbaa !100   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.an
  br i1 %i.ba, label %__cxx_global_var_init.4.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.az) #11
  br label %__cxx_global_var_init.4.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i6: ; preds = %__cxx_global_var_init.2.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.noexc.i9
  %.0.i10 = phi i1 [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ true, %.noexc.i9 ] ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !100   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.an
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i11: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.bd) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br i1 %.0.i10, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i12: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br i1 %.0.i10, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.4.exit:                     ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  store ptr %i.ay, ptr @_ZL27benchmark_uniq_4_benchmark_, align 8, !tbaa !102
  %i.bf = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 18, ptr %i.a, align 8, !tbaa !40
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i18 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i15 ; 2 uses

.noexc.i18:                                       ; preds = %__cxx_global_var_init.4.exit
  store ptr %i.bh, ptr %0, align 8, !tbaa !100
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !40  ; 3 uses
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.bh, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, i64 18, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !71
  %i.bk = load ptr, ptr %0, align 8, !tbaa !100
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %.noexc.i18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.bf, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  store ptr @_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE, ptr %i.bm, align 8, !tbaa !99
  %i.bn = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.bf)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bo = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.bn, i64 noundef 171)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bp = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.bo, i64 noundef 5001)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bq = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.bp, i64 noundef 44217)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.br = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.bq, i32 noundef 1)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load ptr, ptr %0, align 8, !tbaa !100   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bg
  br i1 %i.bt, label %__cxx_global_var_init.6.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bs) #11
  br label %__cxx_global_var_init.6.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i15: ; preds = %__cxx_global_var_init.4.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br label %common.resume.sink.split

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.noexc.i18
  %.0.i19 = phi i1 [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ true, %.noexc.i18 ] ; 2 uses
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !100   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bg
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i20: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.bw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.0.i19, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i21: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.0.i19, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.6.exit:                     ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  store ptr %i.br, ptr @_ZL27benchmark_uniq_5_benchmark_, align 8, !tbaa !102
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #5

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 double", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"_ZTSN9benchmark8internal7SkippedE", !5, i64 0}
!14 = !{!"p1 long", !8, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !15, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !16, i64 0}
!18 = !{!"_ZTSSt6vectorIlSaIlEE", !17, i64 0}
!19 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!20 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !19, i64 0}
!21 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!22 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !8, i64 0}
!23 = !{!"_ZTSSt18_Rb_tree_node_base", !21, i64 0, !22, i64 8, !22, i64 16, !22, i64 24}
!24 = !{!"_ZTSSt15_Rb_tree_header", !23, i64 0, !11, i64 32}
!25 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !20, i64 0, !24, i64 8}
!26 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !25, i64 0}
!27 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !26, i64 0}
!28 = !{!"p1 omnipotent char", !8, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !11, i64 8, !5, i64 16}
!31 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !8, i64 0}
!32 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !8, i64 0}
!33 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !8, i64 0}
!34 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !8, i64 0}
!35 = !{!"_ZTSN9benchmark5StateE", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 25, !13, i64 28, !18, i64 32, !11, i64 56, !27, i64 64, !30, i64 112, !6, i64 144, !6, i64 148, !31, i64 152, !32, i64 160, !33, i64 168, !34, i64 176}
!36 = !{!35, !13, i64 28}
!37 = !{!35, !11, i64 16}
!38 = !{!"branch_weights", i32 0, i32 -2147483648}
!39 = !{!15, !14, i64 0}
!40 = !{!11, !11, i64 0}
!41 = !{!"double", !5, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 127, i32 255873}
!47 = !{!"p1 int", !8, i64 0}
!48 = distinct !{!48, !43, !44, !45}
!49 = distinct !{!49, !43, !44}
!50 = distinct !{!50, i1 false, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !43, !44, !45}
!57 = distinct !{!57, !43, !44}
!58 = !{!51}
!59 = !{!52}
!60 = !{!53}
!61 = !{!55, !54, !51, !52}
!62 = !{!55}
!63 = !{!54, !51, !52}
!64 = !{!54}
!65 = !{!51, !52}
!66 = distinct !{!66, !43}
!67 = distinct !{!67, !43}
!68 = !{!47, !47, i64 0}
!69 = !{i64 41943}
!70 = !{!29, !28, i64 0}
!71 = !{!30, !11, i64 8}
!72 = !{!5, !5, i64 0}
!73 = !{!"vtable pointer", !4, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !5, i64 0}
!76 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !77, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !78, i64 0}
!80 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !79, i64 0}
!81 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !8, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE12_Vector_implE", !82, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE", !83, i64 0}
!85 = !{!"_ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !84, i64 0}
!86 = !{!"_ZTSN9benchmark8TimeUnitE", !5, i64 0}
!87 = !{!"_ZTSN9benchmark4BigOE", !5, i64 0}
!88 = !{!"p1 _ZTSN9benchmark8internal10StatisticsE", !8, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!90 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE12_Vector_implE", !89, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE", !90, i64 0}
!92 = !{!"_ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !91, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIiSaIiEE", !95, i64 0}
!97 = !{!"_ZTSN9benchmark8internal9BenchmarkE", !30, i64 8, !75, i64 40, !80, i64 48, !85, i64 72, !86, i64 96, !12, i64 100, !6, i64 104, !41, i64 112, !41, i64 120, !11, i64 128, !6, i64 136, !12, i64 140, !12, i64 141, !12, i64 142, !87, i64 144, !8, i64 152, !92, i64 160, !96, i64 184, !8, i64 208, !8, i64 216}
!98 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !97, i64 0, !8, i64 224}
!99 = !{!98, !8, i64 224}
!100 = !{!30, !28, i64 0}
!101 = !{!"p1 _ZTSN9benchmark8internal9BenchmarkE", !8, i64 0}
!102 = !{!101, !101, i64 0}
end_hunk_0
