inline.NumInlined: 244
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE:bb.a
  %i.r = icmp eq i64 %wide.trip.count, 2
  %unroll_iter = and i64 %i.q, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod37 = trunc i64 %i.q to i1
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph32, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.014.031 = phi i64 [ %i.an, %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.k, %.lr.ph.preheader ]
  %load_initial = load double, ptr %i.c, align 8  ; 2 uses
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %store_forwarded = phi double [ %i.af, %.lr.ph.new ], [ %load_initial, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = load double, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.x = fsub double %i.v, %store_forwarded
  %i.y = fmul double %i.t, %i.x                   ; 2 uses
  store double %i.y, ptr %i.w, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.ae = fsub double %i.ac, %i.y
  %i.af = fmul double %i.aa, %i.ae                ; 3 uses
  store double %i.af, ptr %i.ad, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.unr-lcssa", label %.lr.ph.new, !llvm.loop !66

"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.unr-lcssa": ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %.epil.preheader

.epil.preheader:                                  ; preds = %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.unr-lcssa", %.lr.ph
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph ], [ %i.af, %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.unr-lcssa" ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.unr-lcssa" ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  %i.al = fsub double %i.aj, %store_forwarded.epil.init
  %i.am = fmul double %i.ah, %i.al
  store double %i.am, ptr %i.ak, align 8, !tbaa !11
  br label %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"

"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %"._Z6forallIZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.unr-lcssa", %.epil.preheader
  %i.an = add nsw i64 %.sroa.014.031, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.an, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !56
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_EOS_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 6 uses
  tail call void @_Z8loopInitj(i32 noundef 18)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !11 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.m = load double, ptr %i.l, align 8, !tbaa !11 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not48 = icmp eq i64 %i.q, 0
  br i1 %.not.i.not48, label %._crit_edge.split, label %.lr.ph50, !prof !40

.lr.ph50:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 32, !tbaa !41
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42   ; 3 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph50
  %wide.trip.count = and i64 %i.t, 2147483647     ; 4 uses
  %i.w = shl nuw nsw i64 %wide.trip.count, 3      ; 4 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %i.i, i64 %i.w
  %scevgep55 = getelementptr i8, ptr %i.x, i64 48
  %scevgep56 = getelementptr i8, ptr %i.g, i64 %i.w
  %scevgep57 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.y = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.z = shufflevector <2 x ptr> %i.y, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x ptr> poison, ptr %scevgep55, i64 0
  %i.ab = insertelement <2 x ptr> %i.aa, ptr %scevgep57, i64 1
  %i.ac = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.ad = insertelement <2 x ptr> %i.ac, ptr %i.e, i64 1
  %i.ae = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.af = shufflevector <2 x ptr> %i.ae, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  %i.ag = icmp ult <2 x ptr> %i.z, %i.ab
  %i.ah = icmp ult <2 x ptr> %i.ad, %i.af
  %bound058 = icmp ult ptr %i.c, %scevgep56
  %bound159 = icmp ult ptr %i.g, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %i.ai = and <2 x i1> %i.ag, %i.ah               ; 2 uses
  %i.aj = extractelement <2 x i1> %i.ai, i64 0
  %conflict.rdx = or i1 %i.aj, %found.conflict60
  %i.ak = extractelement <2 x i1> %i.ai, i64 1
  %conflict.rdx64 = or i1 %conflict.rdx, %i.ak
  %n.vec = and i64 %i.t, 2147483646               ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %broadcast.splat66 = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert67 = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat68 = shufflevector <2 x double> %broadcast.splatinsert67, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %i.al = extractelement <2 x double> %i.k, i64 1
  %i.am = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = extractelement <2 x double> %i.k, i64 0
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph50, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.018.049 = phi i64 [ %i.cj, %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.q, %.lr.ph.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx64
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 7 uses
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !11, !alias.scope !67
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %wide.load69 = load <2 x double>, ptr %i.ap, align 8, !tbaa !11, !alias.scope !70
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %wide.load70 = load <2 x double>, ptr %i.aq, align 8, !tbaa !11, !alias.scope !72
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load70, <2 x double> %wide.load69)
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ar, <2 x double> %wide.load)
  %i.at = getelementptr i8, ptr %i.ao, i64 24
  %wide.load71 = load <2 x double>, ptr %i.at, align 8, !tbaa !11, !alias.scope !67
  %i.au = getelementptr i8, ptr %i.ao, i64 16
  %wide.load72 = load <2 x double>, ptr %i.au, align 8, !tbaa !11, !alias.scope !67
  %i.av = getelementptr i8, ptr %i.ao, i64 8
  %wide.load73 = load <2 x double>, ptr %i.av, align 8, !tbaa !11, !alias.scope !67
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load73, <2 x double> %wide.load72)
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.aw, <2 x double> %wide.load71)
  %i.ay = getelementptr i8, ptr %i.ao, i64 48
  %wide.load74 = load <2 x double>, ptr %i.ay, align 8, !tbaa !11, !alias.scope !67
  %i.az = getelementptr i8, ptr %i.ao, i64 40
  %wide.load75 = load <2 x double>, ptr %i.az, align 8, !tbaa !11, !alias.scope !67
  %i.ba = getelementptr i8, ptr %i.ao, i64 32
  %wide.load76 = load <2 x double>, ptr %i.ba, align 8, !tbaa !11, !alias.scope !67
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %wide.load76, <2 x double> %wide.load75)
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %i.bb, <2 x double> %wide.load74)
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat68, <2 x double> %i.bc, <2 x double> %i.ax)
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat68, <2 x double> %i.bd, <2 x double> %i.as)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.be, ptr %i.bf, align 8, !tbaa !11, !alias.scope !74, !noalias !76
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !11
  %1 = tail call double @llvm.fmuladd.f64(double %i.al, double %i.bl, double %i.bj)
  %i.bm = getelementptr i8, ptr %i.bh, i64 24
  %i.bn = getelementptr i8, ptr %i.bh, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11
  %i.bp = load <2 x double>, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bq = insertelement <2 x double> %i.bp, double %1, i64 0
  %i.br = insertelement <2 x double> %i.bp, double %i.bo, i64 1
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.bq, <2 x double> %i.br) ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bh, i64 48
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr i8, ptr %i.bh, i64 40
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !11
  %i.bx = load <2 x double>, ptr %i.bm, align 8, !tbaa !11 ; 2 uses
  %i.by = shufflevector <2 x double> %i.bs, <2 x double> %i.bx, <2 x i32> <i32 3, i32 1>
  %i.bz = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = insertelement <2 x double> %i.bz, double %i.bw, i64 0
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.by, <2 x double> %i.ca) ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.an, double %i.cc, double %i.bu)
  %i.ce = extractelement <2 x double> %i.cb, i64 1
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.m, double %i.cd, double %i.ce)
  %i.cg = extractelement <2 x double> %i.bs, i64 0
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.m, double %i.cf, double %i.cg)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.ch, ptr %i.ci, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !78

"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.cj = add nsw i64 %.sroa.018.049, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.cj, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !56
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_ADI_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 16 uses
  tail call void @_Z8loopInitj(i32 noundef 19)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.o = load double, ptr %i.n, align 8, !tbaa !11 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.q = load double, ptr %i.p, align 8, !tbaa !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.s = load double, ptr %i.r, align 8, !tbaa !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.u = load double, ptr %i.t, align 8, !tbaa !11 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.w = load double, ptr %i.v, align 8, !tbaa !11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.y = load double, ptr %i.x, align 8, !tbaa !11 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.ag = load double, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not102 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.not102, label %._crit_edge.split, label %.preheader.lr.ph, !prof !40

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 32, !tbaa !41
  %i.an = load i64, ptr %i.am, align 8, !tbaa !42 ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !83  ; 5 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !83  ; 5 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !83  ; 5 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !83 ; 2 uses
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !83 ; 2 uses
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !83 ; 2 uses
  %wide.trip.count = and i64 %i.an, 2147483647    ; 2 uses
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !8
  %.pre109 = load ptr, ptr %i.au, align 8, !tbaa !8
  %.pre110 = load ptr, ptr %i.av, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.pre111 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %.pre113 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !8
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8, !tbaa !8 ; 2 uses
  %.pre116 = load ptr, ptr %i.at, align 8, !tbaa !8
  %.pre117 = load ptr, ptr %i.au, align 8, !tbaa !8
  %.pre118 = load ptr, ptr %i.av, align 8, !tbaa !8
  %.pre119 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  %.pre120 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1"
  %.sroa.027.0103 = phi i64 [ %i.ak, %.preheader.lr.ph.split ], [ %i.fu, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1" ]
  br label %bb.b

._crit_edge.split:                                ; preds = %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.b:                                             ; preds = %.preheader, %bb.b
  %i.az = phi ptr [ %.pre115, %.preheader ], [ %i.bw, %bb.b ] ; 3 uses
  %i.ba = phi ptr [ %.pre113, %.preheader ], [ %i.bo, %bb.b ] ; 3 uses
  %i.bb = phi ptr [ %.pre111, %.preheader ], [ %i.bg, %bb.b ] ; 3 uses
  %i.bc = phi ptr [ %.pre110, %.preheader ], [ %i.az, %bb.b ]
  %i.bd = phi ptr [ %.pre109, %.preheader ], [ %i.ba, %bb.b ]
  %i.be = phi ptr [ %.pre, %.preheader ], [ %i.bb, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !8  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !11
  %i.bl = fsub double %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  store double %i.bl, ptr %i.bm, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11
  %i.bt = fsub double %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  store double %i.bt, ptr %i.bu, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !8  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !11
  %i.cb = fsub double %i.by, %i.ca                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store double %i.cb, ptr %i.cc, align 8, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ce = load double, ptr %i.bm, align 8, !tbaa !11
  %i.cf = load double, ptr %i.bu, align 8, !tbaa !11
  %1 = load <2 x double>, ptr %i.cd, align 8, !tbaa !11 ; 3 uses
  %2 = extractelement <2 x double> %1, i64 0
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.q, double %i.ce, double %2)
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.s, double %i.cf, double %i.cg)
  %3 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %4 = insertelement <2 x double> %3, double %i.u, i64 0
  %5 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.cb, i64 0
  %6 = insertelement <2 x double> %1, double %i.ch, i64 0
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %5, <2 x double> %6) ; 2 uses
  %i.ci = load double, ptr %i.bb, align 8, !tbaa !11
  %8 = extractelement <2 x double> %7, i64 1
  %i.cj = fadd double %8, %i.ci
  %9 = extractelement <2 x double> %7, i64 0
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cj, double %9)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store double %i.ck, ptr %i.cn, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %10 = load double, ptr %i.bm, align 8, !tbaa !11
  %i.cp = load double, ptr %i.bu, align 8, !tbaa !11
  %i.cq = load double, ptr %i.cc, align 8, !tbaa !11
  %11 = load <2 x double>, ptr %i.co, align 8, !tbaa !11 ; 3 uses
  %12 = extractelement <2 x double> %11, i64 0
  %13 = tail call double @llvm.fmuladd.f64(double %i.w, double %10, double %12)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.y, double %i.cp, double %13)
  %14 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %15 = insertelement <2 x double> %14, double %i.aa, i64 0
  %16 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.cq, i64 0
  %17 = insertelement <2 x double> %11, double %i.cr, i64 0
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %16, <2 x double> %17) ; 2 uses
  %i.cs = load double, ptr %i.ba, align 8, !tbaa !11
  %19 = extractelement <2 x double> %18, i64 1
  %i.ct = fadd double %19, %i.cs
  %20 = extractelement <2 x double> %18, i64 0
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ct, double %20)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store double %i.cu, ptr %i.cx, align 8, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %21 = load double, ptr %i.bm, align 8, !tbaa !11
  %i.cz = load double, ptr %i.bu, align 8, !tbaa !11
  %i.da = load double, ptr %i.cc, align 8, !tbaa !11
  %22 = load <2 x double>, ptr %i.cy, align 8, !tbaa !11 ; 3 uses
  %23 = extractelement <2 x double> %22, i64 0
  %24 = tail call double @llvm.fmuladd.f64(double %i.ac, double %21, double %23)
  %i.db = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.cz, double %24)
  %25 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %26 = insertelement <2 x double> %25, double %i.ag, i64 0
  %27 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.da, i64 0
  %28 = insertelement <2 x double> %22, double %i.db, i64 0
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %27, <2 x double> %28) ; 2 uses
  %i.dc = load double, ptr %i.az, align 8, !tbaa !11
  %30 = extractelement <2 x double> %29, i64 1
  %i.dd = fadd double %30, %i.dc
  %31 = extractelement <2 x double> %29, i64 0
  %i.de = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dd, double %31)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store double %i.de, ptr %i.dh, align 8, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !85

"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %bb.b, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %i.di = phi ptr [ %i.ef, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre115, %bb.b ] ; 3 uses
  %i.dj = phi ptr [ %i.dx, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre120, %bb.b ] ; 3 uses
  %i.dk = phi ptr [ %i.dp, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre119, %bb.b ] ; 3 uses
  %i.dl = phi ptr [ %i.di, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre118, %bb.b ]
  %i.dm = phi ptr [ %i.dj, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre117, %bb.b ]
  %i.dn = phi ptr [ %i.dk, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre116, %bb.b ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ 1, %bb.b ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 5 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.1
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !8  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !11
  %i.du = fsub double %i.dr, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.1 ; 4 uses
  store double %i.du, ptr %i.dv, align 8, !tbaa !11
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.1
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !8  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = fsub double %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.1 ; 4 uses
  store double %i.ec, ptr %i.ed, align 8, !tbaa !11
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.1
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !8  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !11
  %i.ek = fsub double %i.eh, %i.ej                ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.1 ; 3 uses
  store double %i.ek, ptr %i.el, align 8, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.en = load double, ptr %i.dv, align 8, !tbaa !11
  %i.eo = load double, ptr %i.ed, align 8, !tbaa !11
  %32 = load <2 x double>, ptr %i.em, align 8, !tbaa !11 ; 3 uses
  %33 = extractelement <2 x double> %32, i64 0
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.q, double %i.en, double %33)
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.s, double %i.eo, double %i.ep)
  %34 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %35 = insertelement <2 x double> %34, double %i.u, i64 0
  %36 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.ek, i64 0
  %37 = insertelement <2 x double> %32, double %i.eq, i64 0
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> %36, <2 x double> %37) ; 2 uses
  %i.er = getelementptr i8, ptr %i.dk, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !11
  %39 = extractelement <2 x double> %38, i64 1
  %i.et = fadd double %39, %i.es
  %40 = extractelement <2 x double> %38, i64 0
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.o, double %i.et, double %40)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.1
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store double %i.eu, ptr %i.ex, align 8, !tbaa !11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %41 = load double, ptr %i.dv, align 8, !tbaa !11
  %i.ez = load double, ptr %i.ed, align 8, !tbaa !11
  %i.fa = load double, ptr %i.el, align 8, !tbaa !11
  %42 = load <2 x double>, ptr %i.ey, align 8, !tbaa !11 ; 3 uses
  %43 = extractelement <2 x double> %42, i64 0
  %44 = tail call double @llvm.fmuladd.f64(double %i.w, double %41, double %43)
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.y, double %i.ez, double %44)
  %45 = shufflevector <2 x double> %42, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %46 = insertelement <2 x double> %45, double %i.aa, i64 0
  %47 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.fa, i64 0
  %48 = insertelement <2 x double> %42, double %i.fb, i64 0
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> %47, <2 x double> %48) ; 2 uses
  %i.fc = getelementptr i8, ptr %i.dj, i64 8
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !11
  %50 = extractelement <2 x double> %49, i64 1
  %i.fe = fadd double %50, %i.fd
  %51 = extractelement <2 x double> %49, i64 0
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.o, double %i.fe, double %51)
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.1
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store double %i.ff, ptr %i.fi, align 8, !tbaa !11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %52 = load double, ptr %i.dv, align 8, !tbaa !11
  %i.fk = load double, ptr %i.ed, align 8, !tbaa !11
  %i.fl = load double, ptr %i.el, align 8, !tbaa !11
  %53 = load <2 x double>, ptr %i.fj, align 8, !tbaa !11 ; 3 uses
  %54 = extractelement <2 x double> %53, i64 0
  %55 = tail call double @llvm.fmuladd.f64(double %i.ac, double %52, double %54)
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.fk, double %55)
  %56 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %57 = insertelement <2 x double> %56, double %i.ag, i64 0
  %58 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.fl, i64 0
  %59 = insertelement <2 x double> %53, double %i.fm, i64 0
  %60 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %58, <2 x double> %59) ; 2 uses
  %i.fn = getelementptr i8, ptr %i.di, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !11
  %61 = extractelement <2 x double> %60, i64 1
  %i.fp = fadd double %61, %i.fo
  %62 = extractelement <2 x double> %60, i64 0
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.fp, double %62)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.1
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store double %i.fq, ptr %i.ft, align 8, !tbaa !11
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1", label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", !llvm.loop !85

"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1": ; preds = %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %i.fu = add nsw i64 %.sroa.027.0103, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.fu, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.preheader, !prof !56
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 9 uses
  tail call void @_Z8loopInitj(i32 noundef 20)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.e = load double, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.g = load double, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.i = load double, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.k = load double, ptr %i.j, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.m = load double, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.o = load double, ptr %i.n, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.s = load double, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not57 = icmp eq i64 %i.w, 0
  br i1 %.not.i.not57, label %._crit_edge.split, label %.lr.ph59, !prof !40

.lr.ph59:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 32, !tbaa !41
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42   ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph59
  %wide.trip.count = and i64 %i.z, 2147483647
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph59, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.020.058 = phi i64 [ %i.bi, %"._Z6forallIZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.w, %.lr.ph.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8  ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load double, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = fmul double %i.o, %i.ah
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.q, double %i.af, double %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.al = load double, ptr %i.ak, align 8, !tbaa !11
  %i.am = tail call double @llvm.fmuladd.f64(double %i.m, double %i.al, double %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ao = load double, ptr %i.an, align 8, !tbaa !11
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ao, double %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = tail call double @llvm.fmuladd.f64(double %i.i, double %i.ar, double %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = tail call double @llvm.fmuladd.f64(double %i.g, double %i.au, double %i.as)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !11
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.e, double %i.ax, double %i.av)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ba = load double, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = fadd double %i.ba, %i.bc
  %i.be = tail call double @llvm.fmuladd.f64(double %i.s, double %i.bd, double %i.ay)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !11
  %i.bh = fadd double %i.bg, %i.be
  store double %i.bh, ptr %i.ad, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !86

"._Z6forallIZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %bb.b
  %i.bi = add nsw i64 %.sroa.020.058, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bi, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !56
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 2 uses
  tail call void @_Z8loopInitj(i32 noundef 21)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not20 = icmp eq i64 %i.i, 0
  br i1 %.not.i.not20, label %._crit_edge.split, label %.lr.ph22, !prof !40

.lr.ph22:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 32, !tbaa !41
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph22
  %wide.trip.count = and i64 %i.l, 2147483647
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph22, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.012.021 = phi i64 [ %i.aw, %"._Z6forallIZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.i, %.lr.ph.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !11
  %i.w = fsub double %i.r, %i.v                   ; 2 uses
  store double %i.r, ptr %i.u, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !11
  %i.z = fsub double %i.w, %i.y                   ; 2 uses
  store double %i.w, ptr %i.x, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11
  %i.ac = fsub double %i.z, %i.ab                 ; 2 uses
  store double %i.z, ptr %i.aa, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = fsub double %i.ac, %i.ae                ; 2 uses
  store double %i.ac, ptr %i.ad, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = fsub double %i.af, %i.ah                ; 2 uses
  store double %i.af, ptr %i.ag, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !11
  %i.al = fsub double %i.ai, %i.ak                ; 2 uses
  store double %i.ai, ptr %i.aj, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !11
  %i.ao = fsub double %i.al, %i.an                ; 2 uses
  store double %i.al, ptr %i.am, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !11
end_hunk_0
