Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LambdaSubsetCbenchmarks?download=true
inline.NumInlined: 244
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE:bb.a

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_EOS_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 7 uses
  tail call void @_Z8loopInitj(i32 noundef 18)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
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
  %i.u = load <2 x double>, ptr %i.t, align 8
  %1 = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.x = load <2 x double>, ptr %i.v, align 8, !tbaa !12 ; 3 uses
  %i.y = load <2 x double>, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.aa = load double, ptr %i.z, align 8, !tbaa !12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.ae = load double, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.ag = load <2 x double>, ptr %i.af, align 8
  %2 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !38
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
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !50  ; 5 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !50  ; 5 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !50  ; 5 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !50 ; 2 uses
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %wide.trip.count = and i64 %i.an, 2147483647    ; 2 uses
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !10
  %.pre109 = load ptr, ptr %i.au, align 8, !tbaa !10
  %.pre110 = load ptr, ptr %i.av, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.pre111 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %.pre113 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !10
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8, !tbaa !10 ; 2 uses
  %.pre116 = load ptr, ptr %i.at, align 8, !tbaa !10
  %.pre117 = load ptr, ptr %i.au, align 8, !tbaa !10
  %.pre118 = load ptr, ptr %i.av, align 8, !tbaa !10
  %.pre119 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10
  %.pre120 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !10
  %i.az = extractelement <2 x double> %i.x, i64 0
  %i.ba = insertelement <2 x double> %i.x, double 0.000000e+00, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1"
  %.sroa.027.0103 = phi i64 [ %i.ak, %.preheader.lr.ph.split ], [ %i.ij, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1" ]
  br label %bb.b

._crit_edge.split:                                ; preds = %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.b:                                             ; preds = %.preheader, %bb.b
  %i.bb = phi ptr [ %.pre115, %.preheader ], [ %i.by, %bb.b ] ; 4 uses
  %i.bc = phi ptr [ %.pre113, %.preheader ], [ %i.bq, %bb.b ] ; 4 uses
  %i.bd = phi ptr [ %.pre111, %.preheader ], [ %i.bi, %bb.b ] ; 4 uses
  %i.be = phi ptr [ %.pre110, %.preheader ], [ %i.bb, %bb.b ]
  %i.bf = phi ptr [ %.pre109, %.preheader ], [ %i.bc, %bb.b ]
  %i.bg = phi ptr [ %.pre, %.preheader ], [ %i.bd, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !12
  %i.bn = fsub double %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  store double %i.bn, ptr %i.bo, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !10 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !12
  %i.bv = fsub double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  store double %i.bv, ptr %i.bw, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !10 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !12
  %i.cd = fsub double %i.ca, %i.cc                ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store double %i.cd, ptr %i.ce, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cg = load double, ptr %i.bo, align 8, !tbaa !12
  %i.ch = load double, ptr %i.bw, align 8, !tbaa !12
  %i.ci = getelementptr i8, ptr %i.bd, i64 16
  %i.cj = load double, ptr %i.cf, align 8, !tbaa !12 ; 2 uses
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.r, double %i.cg, double %i.cj)
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ch, double %i.ck)
  %i.cm = load double, ptr %i.ci, align 8, !tbaa !12
  %i.cn = insertelement <2 x double> %1, double %i.cj, i64 1
  %i.co = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.cd, i64 0
  %i.cp = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.cm, i64 1
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.co, <2 x double> %i.cq) ; 2 uses
  %i.cs = load double, ptr %i.bd, align 8, !tbaa !12
  %i.ct = extractelement <2 x double> %i.cr, i64 1
  %i.cu = fadd double %i.ct, %i.cs
  %i.cv = extractelement <2 x double> %i.cr, i64 0
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cu, double %i.cv)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store double %i.cw, ptr %i.cz, align 8, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.db = load double, ptr %i.bo, align 8, !tbaa !12
  %i.dc = load double, ptr %i.bw, align 8, !tbaa !12
  %i.dd = load double, ptr %i.ce, align 8, !tbaa !12
  %i.de = getelementptr i8, ptr %i.bc, i64 16
  %i.df = load double, ptr %i.da, align 8, !tbaa !12 ; 2 uses
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.az, double %i.db, double %i.df)
  %i.dh = load double, ptr %i.de, align 8, !tbaa !12
  %i.di = insertelement <2 x double> %i.y, double %i.df, i64 1
  %i.dj = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.dc, i64 0
  %i.dk = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.dh, i64 1
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.dj, <2 x double> %i.dl) ; 2 uses
  %i.dn = extractelement <2 x double> %i.dm, i64 0
  %i.do = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.dd, double %i.dn)
  %i.dp = load double, ptr %i.bc, align 8, !tbaa !12
  %i.dq = extractelement <2 x double> %i.dm, i64 1
  %i.dr = fadd double %i.dq, %i.dp
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dr, double %i.do)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store double %i.ds, ptr %i.dv, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.dx = load double, ptr %i.bo, align 8, !tbaa !12
  %i.dy = load double, ptr %i.bw, align 8, !tbaa !12
  %i.dz = load double, ptr %i.ce, align 8, !tbaa !12
  %i.ea = getelementptr i8, ptr %i.bb, i64 16
  %i.eb = load double, ptr %i.dw, align 8, !tbaa !12 ; 2 uses
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.dx, double %i.eb)
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.dy, double %i.ec)
  %i.ee = load double, ptr %i.ea, align 8, !tbaa !12
  %i.ef = insertelement <2 x double> %2, double %i.eb, i64 1
  %i.eg = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.dz, i64 0
  %i.eh = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ee, i64 1
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eg, <2 x double> %i.ei) ; 2 uses
  %i.ek = load double, ptr %i.bb, align 8, !tbaa !12
  %i.el = extractelement <2 x double> %i.ej, i64 1
  %i.em = fadd double %i.el, %i.ek
  %i.en = extractelement <2 x double> %i.ej, i64 0
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.o, double %i.em, double %i.en)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store double %i.eo, ptr %i.er, align 8, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !85

"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %bb.b, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %i.es = phi ptr [ %i.fp, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre115, %bb.b ] ; 4 uses
  %i.et = phi ptr [ %i.fh, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre120, %bb.b ] ; 3 uses
  %i.eu = phi ptr [ %i.ez, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre119, %bb.b ] ; 4 uses
  %i.ev = phi ptr [ %i.es, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre118, %bb.b ]
  %i.ew = phi ptr [ %i.et, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre117, %bb.b ]
  %i.ex = phi ptr [ %i.eu, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre116, %bb.b ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ 1, %bb.b ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 5 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.1
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !10 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !12
  %i.fe = fsub double %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.1 ; 4 uses
  store double %i.fe, ptr %i.ff, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.1
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !10 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !12
  %i.fm = fsub double %i.fj, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.1 ; 4 uses
  store double %i.fm, ptr %i.fn, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.1
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !10 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !12
  %i.fu = fsub double %i.fr, %i.ft                ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.1 ; 3 uses
  store double %i.fu, ptr %i.fv, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fx = load double, ptr %i.ff, align 8, !tbaa !12
  %i.fy = load double, ptr %i.fn, align 8, !tbaa !12
  %i.fz = getelementptr i8, ptr %i.eu, i64 24
  %i.ga = load double, ptr %i.fw, align 8, !tbaa !12 ; 2 uses
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.r, double %i.fx, double %i.ga)
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.s, double %i.fy, double %i.gb)
  %i.gd = load double, ptr %i.fz, align 8, !tbaa !12
  %i.ge = insertelement <2 x double> %1, double %i.ga, i64 1
  %i.gf = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.fu, i64 0
  %i.gg = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.gd, i64 1
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.gf, <2 x double> %i.gh) ; 2 uses
  %i.gj = getelementptr i8, ptr %i.eu, i64 8
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !12
  %i.gl = extractelement <2 x double> %i.gi, i64 1
  %i.gm = fadd double %i.gl, %i.gk
  %i.gn = extractelement <2 x double> %i.gi, i64 0
  %i.go = tail call double @llvm.fmuladd.f64(double %i.o, double %i.gm, double %i.gn)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.1
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !10
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store double %i.go, ptr %i.gr, align 8, !tbaa !12
  %i.gs = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.gt = load double, ptr %i.ff, align 8, !tbaa !12
  %i.gu = load double, ptr %i.fn, align 8, !tbaa !12
  %i.gv = load double, ptr %i.fv, align 8, !tbaa !12
  %i.gw = load <2 x double>, ptr %i.gs, align 8, !tbaa !12 ; 2 uses
  %i.gx = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.gt, i64 0
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.gx, <2 x double> %i.gw)
  %i.gz = shufflevector <2 x double> %i.x, <2 x double> %i.gw, <2 x i32> <i32 1, i32 2>
  %i.ha = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.gu, i64 0
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.ha, <2 x double> %i.gy) ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.gv, double %i.hc)
  %i.he = getelementptr i8, ptr %i.et, i64 8
  %i.hf = load double, ptr %i.he, align 8, !tbaa !12
  %i.hg = extractelement <2 x double> %i.hb, i64 1
  %i.hh = fadd double %i.hg, %i.hf
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.o, double %i.hh, double %i.hd)
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.1
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store double %i.hi, ptr %i.hl, align 8, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.hn = load double, ptr %i.ff, align 8, !tbaa !12
  %i.ho = load double, ptr %i.fn, align 8, !tbaa !12
  %i.hp = load double, ptr %i.fv, align 8, !tbaa !12
  %i.hq = getelementptr i8, ptr %i.es, i64 24
  %i.hr = load double, ptr %i.hm, align 8, !tbaa !12 ; 2 uses
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.hn, double %i.hr)
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ho, double %i.hs)
  %i.hu = load double, ptr %i.hq, align 8, !tbaa !12
  %i.hv = insertelement <2 x double> %2, double %i.hr, i64 1
  %i.hw = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.hp, i64 0
  %i.hx = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hu, i64 1
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hw, <2 x double> %i.hy) ; 2 uses
  %i.ia = getelementptr i8, ptr %i.es, i64 8
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !12
  %i.ic = extractelement <2 x double> %i.hz, i64 1
  %i.id = fadd double %i.ic, %i.ib
  %i.ie = extractelement <2 x double> %i.hz, i64 0
  %i.if = tail call double @llvm.fmuladd.f64(double %i.o, double %i.id, double %i.ie)
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.1
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !10
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store double %i.if, ptr %i.ii, align 8, !tbaa !12
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1", label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", !llvm.loop !85

"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1": ; preds = %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %i.ij = add nsw i64 %.sroa.027.0103, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.ij, 0
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
end_hunk_0
