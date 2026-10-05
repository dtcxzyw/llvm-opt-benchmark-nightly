Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LambdaSubsetCbenchmarks?download=true
inline.NumInlined: 244
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZL13BM_EOS_LAMBDARN9benchmark5StateE:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.k = load double, ptr %i.j, align 8, !tbaa !12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.m = load double, ptr %i.l, align 8, !tbaa !12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.o = load double, ptr %i.n, align 8, !tbaa !12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not48 = icmp eq i64 %i.s, 0
  br i1 %.not.i.not48, label %._crit_edge.split, label %.lr.ph50, !prof !40

.lr.ph50:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 32, !tbaa !41
  %i.v = load i64, ptr %i.u, align 8, !tbaa !42   ; 3 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph50
  %wide.trip.count = and i64 %i.v, 2147483647     ; 4 uses
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 4 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.y
  %scevgep55 = getelementptr i8, ptr %i.z, i64 48
  %scevgep56 = getelementptr i8, ptr %i.g, i64 %i.y
  %scevgep57 = getelementptr i8, ptr %i.e, i64 %i.y
  %i.aa = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.ab = shufflevector <2 x ptr> %i.aa, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x ptr> poison, ptr %scevgep55, i64 0
  %i.ad = insertelement <2 x ptr> %i.ac, ptr %scevgep57, i64 1
  %i.ae = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.e, i64 1
  %i.ag = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.ah = shufflevector <2 x ptr> %i.ag, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  %i.ai = icmp ult <2 x ptr> %i.ab, %i.ad
  %i.aj = icmp ult <2 x ptr> %i.af, %i.ah
  %bound058 = icmp ult ptr %i.c, %scevgep56
  %bound159 = icmp ult ptr %i.g, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %i.ak = and <2 x i1> %i.ai, %i.aj               ; 2 uses
  %i.al = extractelement <2 x i1> %i.ak, i64 0
  %conflict.rdx = or i1 %i.al, %found.conflict60
  %i.am = extractelement <2 x i1> %i.ak, i64 1
  %conflict.rdx64 = or i1 %conflict.rdx, %i.am
  %n.vec = and i64 %i.v, 2147483646               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %i.k, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert67 = insertelement <2 x double> poison, double %i.o, i64 0
  %broadcast.splat68 = shufflevector <2 x double> %broadcast.splatinsert67, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %i.an = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph50, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.018.049 = phi i64 [ %i.cm, %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.s, %.lr.ph.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx64
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 7 uses
  %wide.load = load <2 x double>, ptr %i.ap, align 8, !tbaa !12, !alias.scope !80
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %wide.load69 = load <2 x double>, ptr %i.aq, align 8, !tbaa !12, !alias.scope !81
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %wide.load70 = load <2 x double>, ptr %i.ar, align 8, !tbaa !12, !alias.scope !82
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load70, <2 x double> %wide.load69)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.as, <2 x double> %wide.load)
  %i.au = getelementptr i8, ptr %i.ap, i64 24
  %wide.load71 = load <2 x double>, ptr %i.au, align 8, !tbaa !12, !alias.scope !80
  %i.av = getelementptr i8, ptr %i.ap, i64 16
  %wide.load72 = load <2 x double>, ptr %i.av, align 8, !tbaa !12, !alias.scope !80
  %i.aw = getelementptr i8, ptr %i.ap, i64 8
  %wide.load73 = load <2 x double>, ptr %i.aw, align 8, !tbaa !12, !alias.scope !80
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load73, <2 x double> %wide.load72)
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ax, <2 x double> %wide.load71)
  %i.az = getelementptr i8, ptr %i.ap, i64 48
  %wide.load74 = load <2 x double>, ptr %i.az, align 8, !tbaa !12, !alias.scope !80
  %i.ba = getelementptr i8, ptr %i.ap, i64 40
  %wide.load75 = load <2 x double>, ptr %i.ba, align 8, !tbaa !12, !alias.scope !80
  %i.bb = getelementptr i8, ptr %i.ap, i64 32
  %wide.load76 = load <2 x double>, ptr %i.bb, align 8, !tbaa !12, !alias.scope !80
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %wide.load76, <2 x double> %wide.load75)
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %i.bc, <2 x double> %wide.load74)
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat68, <2 x double> %i.bd, <2 x double> %i.ay)
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat68, <2 x double> %i.be, <2 x double> %i.at)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.bf, ptr %i.bg, align 8, !tbaa !12, !alias.scope !83, !noalias !84
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 6 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !12
  %i.bo = getelementptr i8, ptr %i.bi, i64 24
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !12
  %i.bq = getelementptr i8, ptr %i.bi, i64 8
  %i.br = load <2 x double>, ptr %i.bq, align 8, !tbaa !12 ; 2 uses
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bt = insertelement <2 x double> %i.bs, double %i.bn, i64 0
  %i.bu = insertelement <2 x double> %i.br, double %i.bl, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.bt, <2 x double> %i.bu)
  %i.bw = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bp, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.bv, <2 x double> %i.bx) ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bi, i64 48
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !12
  %i.cb = getelementptr i8, ptr %i.bi, i64 40
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !12
  %i.cd = getelementptr i8, ptr %i.bi, i64 32
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !12
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ce, double %i.cc)
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.k, double %i.cf, double %i.ca)
  %i.ch = extractelement <2 x double> %i.by, i64 1
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cg, double %i.ch)
  %i.cj = extractelement <2 x double> %i.by, i64 0
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ci, double %i.cj)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.ck, ptr %i.cl, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !79

"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.cm = add nsw i64 %.sroa.018.049, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.cm, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !46
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_ADI_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 16 uses
  tail call void @_Z8loopInitj(i32 noundef 19)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.o = load double, ptr %i.n, align 8, !tbaa !12 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.r = load double, ptr %i.p, align 8, !tbaa !12 ; 2 uses
  %i.s = load double, ptr %i.q, align 8, !tbaa !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.u = load double, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.x = load <2 x double>, ptr %i.v, align 8, !tbaa !12 ; 3 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.aa = load double, ptr %i.z, align 8, !tbaa !12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %1 = load double, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.af = load double, ptr %i.ae, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not102 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.not102, label %._crit_edge.split, label %.preheader.lr.ph, !prof !40

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 32, !tbaa !41
  %i.am = load i64, ptr %i.al, align 8, !tbaa !42 ; 2 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !50  ; 5 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !50  ; 5 uses
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !50  ; 5 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !50 ; 2 uses
  %wide.trip.count = and i64 %i.am, 2147483647    ; 2 uses
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !10
  %.pre109 = load ptr, ptr %i.at, align 8, !tbaa !10
  %.pre110 = load ptr, ptr %i.au, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.pre111 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.pre113 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !10
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8, !tbaa !10 ; 2 uses
  %.pre116 = load ptr, ptr %i.as, align 8, !tbaa !10
  %.pre117 = load ptr, ptr %i.at, align 8, !tbaa !10
  %.pre118 = load ptr, ptr %i.au, align 8, !tbaa !10
  %.pre119 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10
  %.pre120 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !10
  %i.ay = extractelement <2 x double> %i.x, i64 0
  %i.az = insertelement <2 x double> poison, double %i.u, i64 0 ; 2 uses
  %i.ba = insertelement <2 x double> poison, double %i.y, i64 0
  %i.bb = insertelement <2 x double> poison, double %i.af, i64 0 ; 2 uses
  %i.bc = insertelement <2 x double> %i.x, double 0.000000e+00, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1"
  %.sroa.027.0103 = phi i64 [ %i.aj, %.preheader.lr.ph.split ], [ %i.hx, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1" ]
  br label %bb.b

._crit_edge.split:                                ; preds = %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.b:                                             ; preds = %.preheader, %bb.b
  %i.bd = phi ptr [ %.pre115, %.preheader ], [ %i.ca, %bb.b ] ; 4 uses
  %i.be = phi ptr [ %.pre113, %.preheader ], [ %i.bs, %bb.b ] ; 4 uses
  %i.bf = phi ptr [ %.pre111, %.preheader ], [ %i.bk, %bb.b ] ; 4 uses
  %i.bg = phi ptr [ %.pre110, %.preheader ], [ %i.bd, %bb.b ]
  %i.bh = phi ptr [ %.pre109, %.preheader ], [ %i.be, %bb.b ]
  %i.bi = phi ptr [ %.pre, %.preheader ], [ %i.bf, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !12
  %i.bp = fsub double %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  store double %i.bp, ptr %i.bq, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !10 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !12
  %i.bx = fsub double %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  store double %i.bx, ptr %i.by, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !10 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !12
  %i.cf = fsub double %i.cc, %i.ce                ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store double %i.cf, ptr %i.cg, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ci = load double, ptr %i.bq, align 8, !tbaa !12
  %i.cj = load double, ptr %i.by, align 8, !tbaa !12
  %i.ck = getelementptr i8, ptr %i.bf, i64 16
  %i.cl = load double, ptr %i.ch, align 8, !tbaa !12 ; 2 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.r, double %i.ci, double %i.cl)
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.s, double %i.cj, double %i.cm)
  %i.co = load double, ptr %i.ck, align 8, !tbaa !12
  %i.cp = insertelement <2 x double> %i.az, double %i.cl, i64 1
  %i.cq = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.cf, i64 0
  %i.cr = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.co, i64 1
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cq, <2 x double> %i.cs) ; 2 uses
  %i.cu = load double, ptr %i.bf, align 8, !tbaa !12
  %i.cv = extractelement <2 x double> %i.ct, i64 1
  %i.cw = fadd double %i.cv, %i.cu
  %i.cx = extractelement <2 x double> %i.ct, i64 0
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cw, double %i.cx)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store double %i.cy, ptr %i.db, align 8, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.dd = load double, ptr %i.bq, align 8, !tbaa !12
  %i.de = load double, ptr %i.by, align 8, !tbaa !12
  %i.df = load double, ptr %i.cg, align 8, !tbaa !12
  %i.dg = getelementptr i8, ptr %i.be, i64 16
  %i.dh = load double, ptr %i.dc, align 8, !tbaa !12 ; 2 uses
  %i.di = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.dd, double %i.dh)
  %i.dj = load double, ptr %i.dg, align 8, !tbaa !12
  %i.dk = insertelement <2 x double> %i.ba, double %i.dh, i64 1
  %i.dl = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.de, i64 0
  %i.dm = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dj, i64 1
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dl, <2 x double> %i.dn) ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.df, double %i.dp)
  %i.dr = load double, ptr %i.be, align 8, !tbaa !12
  %i.ds = extractelement <2 x double> %i.do, i64 1
  %i.dt = fadd double %i.ds, %i.dr
  %i.du = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dt, double %i.dq)
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store double %i.du, ptr %i.dx, align 8, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.dz = load double, ptr %i.bq, align 8, !tbaa !12
  %i.ea = load double, ptr %i.by, align 8, !tbaa !12
  %i.eb = load double, ptr %i.cg, align 8, !tbaa !12
  %i.ec = getelementptr i8, ptr %i.bd, i64 16
  %i.ed = load double, ptr %i.dy, align 8, !tbaa !12 ; 2 uses
  %2 = tail call double @llvm.fmuladd.f64(double %1, double %i.dz, double %i.ed)
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ea, double %2)
  %i.ef = load double, ptr %i.ec, align 8, !tbaa !12
  %i.eg = insertelement <2 x double> %i.bb, double %i.ed, i64 1
  %i.eh = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.eb, i64 0
  %i.ei = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ef, i64 1
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eh, <2 x double> %i.ej) ; 2 uses
  %3 = load double, ptr %i.bd, align 8, !tbaa !12
  %4 = extractelement <2 x double> %i.ek, i64 1
  %5 = fadd double %4, %3
  %i.el = extractelement <2 x double> %i.ek, i64 0
  %i.em = tail call double @llvm.fmuladd.f64(double %i.o, double %5, double %i.el)
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store double %i.em, ptr %i.ep, align 8, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !85

"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %bb.b, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %i.eq = phi ptr [ %i.fn, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre115, %bb.b ] ; 4 uses
  %i.er = phi ptr [ %i.ff, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre120, %bb.b ] ; 3 uses
  %i.es = phi ptr [ %i.ex, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre119, %bb.b ] ; 4 uses
  %i.et = phi ptr [ %i.eq, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre118, %bb.b ]
  %i.eu = phi ptr [ %i.er, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre117, %bb.b ]
  %i.ev = phi ptr [ %i.es, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre116, %bb.b ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ 1, %bb.b ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 5 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.1
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !10 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !12
  %i.fc = fsub double %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.1 ; 4 uses
  store double %i.fc, ptr %i.fd, align 8, !tbaa !12
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.1
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !10 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !12
  %i.fk = fsub double %i.fh, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.1 ; 4 uses
  store double %i.fk, ptr %i.fl, align 8, !tbaa !12
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.1
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !10 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !12
  %i.fs = fsub double %i.fp, %i.fr                ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.1 ; 3 uses
  store double %i.fs, ptr %i.ft, align 8, !tbaa !12
  %i.fu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fv = load double, ptr %i.fd, align 8, !tbaa !12
  %i.fw = load double, ptr %i.fl, align 8, !tbaa !12
  %i.fx = getelementptr i8, ptr %i.es, i64 24
  %i.fy = load double, ptr %i.fu, align 8, !tbaa !12 ; 2 uses
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.r, double %i.fv, double %i.fy)
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.s, double %i.fw, double %i.fz)
  %i.gb = load double, ptr %i.fx, align 8, !tbaa !12
  %i.gc = insertelement <2 x double> %i.az, double %i.fy, i64 1
  %i.gd = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.fs, i64 0
  %i.ge = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gb, i64 1
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.gd, <2 x double> %i.gf) ; 2 uses
  %i.gh = getelementptr i8, ptr %i.es, i64 8
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !12
  %i.gj = extractelement <2 x double> %i.gg, i64 1
  %i.gk = fadd double %i.gj, %i.gi
  %i.gl = extractelement <2 x double> %i.gg, i64 0
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.o, double %i.gk, double %i.gl)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.1
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !10
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store double %i.gm, ptr %i.gp, align 8, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.gr = load double, ptr %i.fd, align 8, !tbaa !12
  %i.gs = load double, ptr %i.fl, align 8, !tbaa !12
  %i.gt = load double, ptr %i.ft, align 8, !tbaa !12
  %i.gu = load <2 x double>, ptr %i.gq, align 8, !tbaa !12 ; 2 uses
  %i.gv = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.gr, i64 0
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.gv, <2 x double> %i.gu)
  %i.gx = shufflevector <2 x double> %i.x, <2 x double> %i.gu, <2 x i32> <i32 1, i32 2>
  %i.gy = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.gs, i64 0
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gy, <2 x double> %i.gw) ; 2 uses
  %i.ha = extractelement <2 x double> %i.gz, i64 0
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.gt, double %i.ha)
  %i.hc = getelementptr i8, ptr %i.er, i64 8
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !12
  %i.he = extractelement <2 x double> %i.gz, i64 1
  %i.hf = fadd double %i.he, %i.hd
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.o, double %i.hf, double %i.hb)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.1
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !10
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store double %i.hg, ptr %i.hj, align 8, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %6 = load double, ptr %i.fd, align 8, !tbaa !12
  %i.hl = load double, ptr %i.fl, align 8, !tbaa !12
  %i.hm = load double, ptr %i.ft, align 8, !tbaa !12
  %7 = getelementptr i8, ptr %i.eq, i64 24
  %i.hn = load double, ptr %i.hk, align 8, !tbaa !12 ; 2 uses
  %8 = tail call double @llvm.fmuladd.f64(double %1, double %6, double %i.hn)
  %9 = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.hl, double %8)
  %10 = load double, ptr %7, align 8, !tbaa !12
  %11 = insertelement <2 x double> %i.bb, double %i.hn, i64 1
  %i.ho = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.hm, i64 0
  %12 = insertelement <2 x double> poison, double %9, i64 0
  %13 = insertelement <2 x double> %12, double %10, i64 1
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %i.ho, <2 x double> %13) ; 2 uses
  %i.hp = getelementptr i8, ptr %i.eq, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !12
  %i.hr = extractelement <2 x double> %14, i64 1
  %i.hs = fadd double %i.hr, %i.hq
  %15 = extractelement <2 x double> %14, i64 0
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.o, double %i.hs, double %15)
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.1
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store double %i.ht, ptr %i.hw, align 8, !tbaa !12
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1", label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", !llvm.loop !85

"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1": ; preds = %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %i.hx = add nsw i64 %.sroa.027.0103, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.hx, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.preheader, !prof !46
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 9 uses
  tail call void @_Z8loopInitj(i32 noundef 20)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.e = load double, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.g = load double, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.i = load double, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.k = load double, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.m = load double, ptr %i.l, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.o = load double, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.q = load double, ptr %i.p, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.s = load double, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38
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
  %.sroa.020.058 = phi i64 [ %i.bg, %"._Z6forallIZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.w, %.lr.ph.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load double, ptr %i.ae, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !12
  %i.ai = fmul double %i.o, %i.ah
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.q, double %i.af, double %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.al = load double, ptr %i.ak, align 8, !tbaa !12
  %i.am = tail call double @llvm.fmuladd.f64(double %i.m, double %i.al, double %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ao = load double, ptr %i.an, align 8, !tbaa !12
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ao, double %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !12
  %i.as = tail call double @llvm.fmuladd.f64(double %i.i, double %i.ar, double %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.au = load double, ptr %i.at, align 8, !tbaa !12
  %i.av = tail call double @llvm.fmuladd.f64(double %i.g, double %i.au, double %i.as)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !12
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.e, double %i.ax, double %i.av)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ba = load <2 x double>, ptr %i.az, align 8, !tbaa !12
  %i.bb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ba)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.s, double %i.bb, double %i.ay)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !12
  %i.bf = fadd double %i.be, %i.bc
  store double %i.bf, ptr %i.ad, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !89

"._Z6forallIZL21BM_INT_PREDICT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %bb.b
  %i.bg = add nsw i64 %.sroa.020.058, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bg, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !46
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL22BM_DIFF_PREDICT_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 2 uses
  tail call void @_Z8loopInitj(i32 noundef 21)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !12 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10   ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !12
  %i.w = fsub double %i.r, %i.v                   ; 2 uses
  store double %i.r, ptr %i.u, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !12
  %i.z = fsub double %i.w, %i.y                   ; 2 uses
  store double %i.w, ptr %i.x, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !12
  %i.ac = fsub double %i.z, %i.ab                 ; 2 uses
  store double %i.z, ptr %i.aa, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !12
  %i.af = fsub double %i.ac, %i.ae                ; 2 uses
  store double %i.ac, ptr %i.ad, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !12
  %i.ai = fsub double %i.af, %i.ah                ; 2 uses
  store double %i.af, ptr %i.ag, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !12
  %i.al = fsub double %i.ai, %i.ak                ; 2 uses
  store double %i.ai, ptr %i.aj, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !12
  %i.ao = fsub double %i.al, %i.an                ; 2 uses
  store double %i.al, ptr %i.am, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !12
  %i.ar = fsub double %i.ao, %i.aq                ; 2 uses
  store double %i.ao, ptr %i.ap, align 8, !tbaa !12
end_hunk_0
