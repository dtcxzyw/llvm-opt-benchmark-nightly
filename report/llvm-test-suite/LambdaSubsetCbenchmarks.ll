inline.NumInlined: 244
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZL22BM_TRIDIAG_ELIM_LAMBDARN9benchmark5StateE:bb.a
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
  %.sroa.018.049 = phi i64 [ %i.ck, %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.q, %.lr.ph.preheader ]
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
  %i.bm = getelementptr i8, ptr %i.bh, i64 24
  %i.bn = getelementptr i8, ptr %i.bh, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11
  %i.bp = load <2 x double>, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.al, double %i.bl, double %i.bj)
  %i.br = insertelement <2 x double> %i.bp, double %i.bq, i64 0
  %i.bs = insertelement <2 x double> %i.bp, double %i.bo, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.br, <2 x double> %i.bs) ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bh, i64 48
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr i8, ptr %i.bh, i64 40
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !11
  %i.by = load <2 x double>, ptr %i.bm, align 8, !tbaa !11 ; 2 uses
  %i.bz = shufflevector <2 x double> %i.bt, <2 x double> %i.by, <2 x i32> <i32 3, i32 1>
  %i.ca = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x double> %i.ca, double %i.bx, i64 0
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.bz, <2 x double> %i.cb) ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.an, double %i.cd, double %i.bv)
  %i.cf = extractelement <2 x double> %i.cc, i64 1
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ce, double %i.cf)
  %i.ch = extractelement <2 x double> %i.bt, i64 0
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.m, double %i.cg, double %i.ch)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.ci, ptr %i.cj, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !78

"._Z6forallIZL13BM_EOS_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.ck = add nsw i64 %.sroa.018.049, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.ck, 0
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
  %1 = load double, ptr %i.p, align 8, !tbaa !11  ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.q = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.s = load double, ptr %i.r, align 8, !tbaa !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %3 = load double, ptr %i.t, align 8, !tbaa !11  ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.u = load double, ptr %4, align 8, !tbaa !11  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.w = load double, ptr %i.v, align 8, !tbaa !11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %5 = load double, ptr %i.x, align 8, !tbaa !11  ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.y = load double, ptr %6, align 8, !tbaa !11  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not102 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not102, label %._crit_edge.split, label %.preheader.lr.ph, !prof !40

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 32, !tbaa !41
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !42 ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !83  ; 5 uses
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !83  ; 5 uses
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !83  ; 5 uses
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !83 ; 2 uses
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !83 ; 2 uses
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !83 ; 2 uses
  %wide.trip.count = and i64 %i.ah, 2147483647    ; 2 uses
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !8
  %.pre109 = load ptr, ptr %i.ao, align 8, !tbaa !8
  %.pre110 = load ptr, ptr %i.ap, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %.pre111 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.pre113 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !8
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8, !tbaa !8 ; 2 uses
  %.pre116 = load ptr, ptr %i.an, align 8, !tbaa !8
  %.pre117 = load ptr, ptr %i.ao, align 8, !tbaa !8
  %.pre118 = load ptr, ptr %i.ap, align 8, !tbaa !8
  %.pre119 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  %.pre120 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1"
  %.sroa.027.0103 = phi i64 [ %i.ae, %.preheader.lr.ph.split ], [ %i.fu, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1" ]
  br label %bb.b

._crit_edge.split:                                ; preds = %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.1", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.b:                                             ; preds = %.preheader, %bb.b
  %i.at = phi ptr [ %.pre115, %.preheader ], [ %i.bq, %bb.b ] ; 4 uses
  %i.au = phi ptr [ %.pre113, %.preheader ], [ %i.bi, %bb.b ] ; 4 uses
  %i.av = phi ptr [ %.pre111, %.preheader ], [ %i.ba, %bb.b ] ; 4 uses
  %i.aw = phi ptr [ %.pre110, %.preheader ], [ %i.at, %bb.b ]
  %i.ax = phi ptr [ %.pre109, %.preheader ], [ %i.au, %bb.b ]
  %i.ay = phi ptr [ %.pre, %.preheader ], [ %i.av, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !11
  %i.bf = fsub double %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  store double %i.bf, ptr %i.bg, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11
  %i.bn = fsub double %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  store double %i.bn, ptr %i.bo, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !8  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !11
  %i.bv = fsub double %i.bs, %i.bu                ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store double %i.bv, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11 ; 2 uses
  %i.bz = load double, ptr %i.bg, align 8, !tbaa !11
  %7 = tail call double @llvm.fmuladd.f64(double %1, double %i.bz, double %i.by)
  %i.ca = load double, ptr %i.bo, align 8, !tbaa !11
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.q, double %i.ca, double %7)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.s, double %i.bv, double %i.cb)
  %8 = getelementptr i8, ptr %i.av, i64 16
  %9 = load double, ptr %8, align 8, !tbaa !11
  %10 = tail call double @llvm.fmuladd.f64(double %i.by, double -2.000000e+00, double %9)
  %i.cd = load double, ptr %i.av, align 8, !tbaa !11
  %i.ce = fadd double %10, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ce, double %i.cc)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store double %i.cf, ptr %i.ci, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = load double, ptr %i.bg, align 8, !tbaa !11
  %11 = tail call double @llvm.fmuladd.f64(double %3, double %i.cl, double %i.ck)
  %i.cm = load double, ptr %i.bo, align 8, !tbaa !11
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.u, double %i.cm, double %11)
  %12 = load double, ptr %i.bw, align 8, !tbaa !11
  %13 = tail call double @llvm.fmuladd.f64(double %i.w, double %12, double %i.cn)
  %14 = getelementptr i8, ptr %i.au, i64 16
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = tail call double @llvm.fmuladd.f64(double %i.ck, double -2.000000e+00, double %15)
  %i.co = load double, ptr %i.au, align 8, !tbaa !11
  %i.cp = fadd double %16, %i.co
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cp, double %13)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store double %i.cq, ptr %i.ct, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !11 ; 2 uses
  %i.cw = load double, ptr %i.bg, align 8, !tbaa !11
  %17 = tail call double @llvm.fmuladd.f64(double %5, double %i.cw, double %i.cv)
  %i.cx = load double, ptr %i.bo, align 8, !tbaa !11
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.y, double %i.cx, double %17)
  %18 = load double, ptr %i.bw, align 8, !tbaa !11
  %19 = tail call double @llvm.fmuladd.f64(double %i.aa, double %18, double %i.cy)
  %20 = getelementptr i8, ptr %i.at, i64 16
  %21 = load double, ptr %20, align 8, !tbaa !11
  %22 = tail call double @llvm.fmuladd.f64(double %i.cv, double -2.000000e+00, double %21)
  %i.cz = load double, ptr %i.at, align 8, !tbaa !11
  %i.da = fadd double %22, %i.cz
  %i.db = tail call double @llvm.fmuladd.f64(double %i.o, double %i.da, double %19)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store double %i.db, ptr %i.de, align 8, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !85

"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %bb.b, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %i.df = phi ptr [ %i.ec, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre115, %bb.b ] ; 4 uses
  %i.dg = phi ptr [ %i.du, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre120, %bb.b ] ; 4 uses
  %i.dh = phi ptr [ %i.dm, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre119, %bb.b ] ; 4 uses
  %i.di = phi ptr [ %i.df, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre118, %bb.b ]
  %i.dj = phi ptr [ %i.dg, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre117, %bb.b ]
  %i.dk = phi ptr [ %i.dh, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %.pre116, %bb.b ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %"._Z6forallIZL13BM_ADI_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ 1, %bb.b ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 5 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.1
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !8  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load double, ptr %i.dn, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !11
  %i.dr = fsub double %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.1 ; 4 uses
  store double %i.dr, ptr %i.ds, align 8, !tbaa !11
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next.1
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !8  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !11
  %i.dz = fsub double %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.1 ; 4 uses
  store double %i.dz, ptr %i.ea, align 8, !tbaa !11
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !8  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !11
  %i.eh = fsub double %i.ee, %i.eg                ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.1 ; 3 uses
  store double %i.eh, ptr %i.ei, align 8, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !11 ; 2 uses
  %i.el = load double, ptr %i.ds, align 8, !tbaa !11
  %23 = tail call double @llvm.fmuladd.f64(double %1, double %i.el, double %i.ek)
  %i.em = load double, ptr %i.ea, align 8, !tbaa !11
  %i.en = tail call double @llvm.fmuladd.f64(double %i.q, double %i.em, double %23)
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.s, double %i.eh, double %i.en)
  %24 = getelementptr i8, ptr %i.dh, i64 24
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = tail call double @llvm.fmuladd.f64(double %i.ek, double -2.000000e+00, double %25)
  %i.ep = getelementptr i8, ptr %i.dh, i64 8
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !11
  %i.er = fadd double %26, %i.eq
  %i.es = tail call double @llvm.fmuladd.f64(double %i.o, double %i.er, double %i.eo)
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.1
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store double %i.es, ptr %i.ev, align 8, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !11 ; 2 uses
  %i.ey = load double, ptr %i.ds, align 8, !tbaa !11
  %27 = tail call double @llvm.fmuladd.f64(double %3, double %i.ey, double %i.ex)
  %i.ez = load double, ptr %i.ea, align 8, !tbaa !11
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.u, double %i.ez, double %27)
  %28 = load double, ptr %i.ei, align 8, !tbaa !11
  %29 = tail call double @llvm.fmuladd.f64(double %i.w, double %28, double %i.fa)
  %30 = getelementptr i8, ptr %i.dg, i64 24
  %31 = load double, ptr %30, align 8, !tbaa !11
  %32 = tail call double @llvm.fmuladd.f64(double %i.ex, double -2.000000e+00, double %31)
  %i.fb = getelementptr i8, ptr %i.dg, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !11
  %i.fd = fadd double %32, %i.fc
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.o, double %i.fd, double %29)
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.1
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store double %i.fe, ptr %i.fh, align 8, !tbaa !11
  %i.fi = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !11 ; 2 uses
  %i.fk = load double, ptr %i.ds, align 8, !tbaa !11
  %33 = tail call double @llvm.fmuladd.f64(double %5, double %i.fk, double %i.fj)
  %i.fl = load double, ptr %i.ea, align 8, !tbaa !11
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.y, double %i.fl, double %33)
  %34 = load double, ptr %i.ei, align 8, !tbaa !11
  %35 = tail call double @llvm.fmuladd.f64(double %i.aa, double %34, double %i.fm)
  %36 = getelementptr i8, ptr %i.df, i64 24
  %37 = load double, ptr %36, align 8, !tbaa !11
  %38 = tail call double @llvm.fmuladd.f64(double %i.fj, double -2.000000e+00, double %37)
  %i.fn = getelementptr i8, ptr %i.df, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !11
  %i.fp = fadd double %38, %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.fp, double %35)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.1
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
begin_hunk_1_@_ZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateE:bb.a
scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.prol ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11
  %i.ac = load double, ptr %i.z, align 8, !tbaa !11
  %i.ad = fsub double %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.prol
  store double %i.ad, ptr %i.ae, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !97

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %"._Z6forallIZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !11
  %i.al = fsub double %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.al, ptr %i.am, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !11
  %i.aq = load double, ptr %i.an, align 8, !tbaa !11
  %i.ar = fsub double %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  store double %i.ar, ptr %i.as, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next.1 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !11
  %i.aw = load double, ptr %i.at, align 8, !tbaa !11
  %i.ax = fsub double %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.1
  store double %i.ax, ptr %i.ay, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next.2 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bc = load double, ptr %i.az, align 8, !tbaa !11
  %i.bd = fsub double %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.2
  store double %i.bd, ptr %i.be, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %"._Z6forallIZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !98

"._Z6forallIZL20BM_FIRST_DIFF_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bf = add nsw i64 %.sroa.012.021, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bf, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !56
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16BM_PIC_2D_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 8 uses
  tail call void @_Z8loopInitj(i32 noundef 24)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not53 = icmp eq i64 %i.u, 0
  br i1 %.not.i.not53, label %._crit_edge.split, label %.lr.ph55, !prof !40

.lr.ph55:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 32, !tbaa !41
  %i.x = load i64, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph55
  %wide.trip.count = and i64 %i.x, 2147483647
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL16BM_PIC_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph55, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL16BM_PIC_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.019.054 = phi i64 [ %i.cg, %"._Z6forallIZL16BM_PIC_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.u, %.lr.ph.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !11
  %i.ah = load <2 x double>, ptr %i.ab, align 8, !tbaa !11 ; 3 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = fptosi double %i.ai to i64
  %i.ak = extractelement <2 x double> %i.ah, i64 1
  %i.al = fptosi double %i.ak to i64
  %i.am = and i64 %i.aj, 63                       ; 2 uses
  %i.an = and i64 %i.al, 63                       ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = fadd double %i.ar, %i.ae                ; 2 uses
  store double %i.as, ptr %i.ad, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.an
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.am
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = fadd double %i.aw, %i.ag                ; 2 uses
  store double %i.ax, ptr %i.af, align 8, !tbaa !11
  %i.ay = insertelement <2 x double> poison, double %i.as, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1
  %i.ba = fadd <2 x double> %i.ah, %i.az          ; 3 uses
  store <2 x double> %i.ba, ptr %i.ab, align 8, !tbaa !11
  %i.bb = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.bc = fptosi double %i.bb to i64
  %i.bd = trunc i64 %i.bc to i32
  %i.be = extractelement <2 x double> %i.ba, i64 1 ; 2 uses
  %i.bf = fptosi double %i.be to i64
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bd, 63                       ; 2 uses
  %i.bi = and i32 %i.bg, 63                       ; 2 uses
  %i.bj = add nuw nsw i32 %i.bh, 32
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11
  %i.bn = fadd double %i.bb, %i.bm
  store double %i.bn, ptr %i.ab, align 8, !tbaa !11
  %i.bo = add nuw nsw i32 %i.bi, 32
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !11
  %i.bs = fadd double %i.be, %i.br
  store double %i.bs, ptr %i.ac, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bk
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = add nsw i32 %i.bu, %i.bh
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bp
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = add nsw i32 %i.bx, %i.bi
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !8
  %i.cc = sext i32 %i.bv to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !11
  %i.cf = fadd double %i.ce, 1.000000e+00
  store double %i.cf, ptr %i.cd, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL16BM_PIC_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !101

"._Z6forallIZL16BM_PIC_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %bb.b
  %i.cg = add nsw i64 %.sroa.019.054, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.cg, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !56
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 13 uses
  tail call void @_Z8loopInitj(i32 noundef 25)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %1 = load <2 x ptr>, ptr %i.b, align 8, !tbaa !8 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !8 ; 4 uses
  %3 = load ptr, ptr %2, align 8, !tbaa !8        ; 4 uses
  %4 = load ptr, ptr %i.c, align 8, !tbaa !8      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.s = load double, ptr %i.r, align 8, !tbaa !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !99
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not125 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.not125, label %._crit_edge, label %.lr.ph127, !prof !40

.lr.ph127:                                        ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 32, !tbaa !41
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !42 ; 6 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph127.split.us.preheader, label %._crit_edge

.lr.ph127.split.us.preheader:                     ; preds = %.lr.ph127
  %wide.trip.count = and i64 %i.af, 2147483647    ; 6 uses
  %i.ai = shl nuw nsw i64 %wide.trip.count, 3     ; 6 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.ai ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.q, i64 %i.ai ; 3 uses
  %scevgep158 = getelementptr i8, ptr %4, i64 %i.ai ; 4 uses
  %scevgep159 = getelementptr i8, ptr %i.i, i64 %i.ai ; 3 uses
  %scevgep160 = getelementptr i8, ptr %3, i64 %i.ai ; 3 uses
  %scevgep161 = getelementptr i8, ptr %i.m, i64 %i.ai ; 2 uses
  %i.aj = insertelement <8 x ptr> poison, ptr %scevgep157, i64 0
  %i.ak = insertelement <8 x ptr> %i.aj, ptr %scevgep, i64 1
  %i.al = insertelement <8 x ptr> %i.ak, ptr %scevgep159, i64 2
  %i.am = insertelement <8 x ptr> %i.al, ptr %scevgep158, i64 5
  %i.an = insertelement <8 x ptr> %i.am, ptr %scevgep160, i64 7
  %i.ao = shufflevector <8 x ptr> %i.an, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 1, i32 5, i32 0, i32 7>
  %5 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.ap = insertelement <8 x ptr> %5, ptr %i.q, i64 0
  %i.aq = insertelement <8 x ptr> %i.ap, ptr %i.i, i64 2
  %i.ar = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.as = insertelement <8 x ptr> %i.ar, ptr %scevgep158, i64 1
  %i.at = insertelement <8 x ptr> %i.as, ptr %scevgep160, i64 3
  %i.au = insertelement <8 x ptr> %i.at, ptr %scevgep161, i64 4
  %i.av = insertelement <8 x ptr> %i.au, ptr %scevgep157, i64 5
  %i.aw = insertelement <8 x ptr> %i.av, ptr %scevgep159, i64 6
  %i.ax = shufflevector <8 x ptr> %i.aw, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 4, i32 5, i32 6, i32 5>
  %6 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0>
  %i.ay = insertelement <4 x ptr> %7, ptr %i.q, i64 0
  %i.az = insertelement <4 x ptr> poison, ptr %scevgep161, i64 0
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep159, i64 1
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep158, i64 2
  %i.bc = shufflevector <4 x ptr> %i.bb, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %8 = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.bd = insertelement <4 x ptr> %8, ptr %i.m, i64 0
  %i.be = insertelement <4 x ptr> %i.bd, ptr %i.i, i64 1
  %i.bf = shufflevector <4 x ptr> %i.be, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bg = insertelement <4 x ptr> poison, ptr %scevgep157, i64 0
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep158, i64 1
  %i.bi = insertelement <4 x ptr> %i.bh, ptr %scevgep160, i64 2
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %9 = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = shufflevector <8 x ptr> %i.aq, <8 x ptr> %9, <8 x i32> <i32 0, i32 poison, i32 2, i32 poison, i32 4, i32 5, i32 poison, i32 9>
  %11 = shufflevector <2 x ptr> %1, <2 x ptr> %i.e, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  %i.bk = insertelement <8 x ptr> %11, ptr %i.m, i64 4
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %i.q, i64 5
  %i.bm = insertelement <8 x ptr> %i.bl, ptr %i.i, i64 6
  %12 = shufflevector <8 x ptr> %i.bm, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 5>
  %13 = icmp ult <8 x ptr> %12, %i.ao
  %14 = shufflevector <8 x ptr> %10, <8 x ptr> %6, <8 x i32> <i32 0, i32 8, i32 2, i32 8, i32 4, i32 5, i32 0, i32 7>
  %i.bn = icmp ult <8 x ptr> %14, %i.ax
  %i.bo = and <8 x i1> %13, %i.bn                 ; 2 uses
  %i.bp = icmp ult <4 x ptr> %i.ay, %i.bc
  %i.bq = icmp ult <4 x ptr> %i.bf, %i.bj
  %i.br = and <4 x i1> %i.bp, %i.bq
  %i.bs = shufflevector <4 x i1> %i.br, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bt = or <8 x i1> %i.bo, %i.bs
  %i.bu = shufflevector <8 x i1> %i.bt, <8 x i1> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bv = bitcast <8 x i1> %i.bu to i8
  %.not210 = icmp eq i8 %i.bv, 0
  %n.vec = and i64 %i.af, 2147483646              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %xtraiter = and i64 %i.af, 1
  %i.bw = icmp eq i64 %wide.trip.count, 1
  %unroll_iter = and i64 %i.af, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod212 = trunc i64 %i.af to i1
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us", %.lr.ph127.split.us.preheader
  %.sroa.040.0126.us = phi i64 [ %i.fv, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us" ], [ %i.ac, %.lr.ph127.split.us.preheader ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us" ] ; 9 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.by, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4  ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !4
  %i.cc = sitofp i32 %i.ca to double
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.cc, ptr %i.cd, align 8, !tbaa !11
  %.not.i26.us = icmp eq i32 %i.ca, 0
  br i1 %.not.i26.us, label %.thread.i.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us
  %i.ce = sext i32 %i.ca to i64                   ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.g, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.ch, ptr %i.ci, align 8, !tbaa !11
  %i.cj = getelementptr [8 x i8], ptr %i.k, i64 %i.ce
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !11
  br label %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"

.thread.i.us:                                     ; preds = %.lr.ph.us
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.cm, align 8, !tbaa !11
  br label %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"

"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us": ; preds = %.thread.i.us, %bb.b
  %i.cn = phi double [ %i.cl, %bb.b ], [ 0.000000e+00, %.thread.i.us ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store double %i.cn, ptr %i.co, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader", label %.lr.ph.us, !llvm.loop !102

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader": ; preds = %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"
  %.not210.not = xor i1 %.not210, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not210.not
  br i1 %brmerge, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader211", label %vector.body

vector.body:                                      ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader", %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader" ] ; 8 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cp, align 8, !tbaa !11, !alias.scope !103, !noalias !106
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index
  %wide.load205 = load <2 x double>, ptr %i.cq, align 8, !tbaa !11, !alias.scope !112
  %i.cr = fadd <2 x double> %wide.load, %wide.load205
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 3 uses
  %wide.load206 = load <2 x double>, ptr %i.cs, align 8, !tbaa !11, !alias.scope !113, !noalias !114
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  %wide.load207 = load <2 x double>, ptr %i.ct, align 8, !tbaa !11, !alias.scope !115
  %i.cu = fsub <2 x double> %wide.load206, %wide.load207
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index
  %wide.load208 = load <2 x double>, ptr %i.cv, align 8, !tbaa !11, !alias.scope !116
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %wide.load208, <2 x double> %i.cr) ; 2 uses
  store <2 x double> %i.cw, ptr %i.cp, align 8, !tbaa !11, !alias.scope !103, !noalias !106
  %wide.load209 = load <2 x double>, ptr %i.cs, align 8, !tbaa !11, !alias.scope !113, !noalias !114
  %i.cx = fadd <2 x double> %i.cw, %wide.load209
  %i.cy = fadd <2 x double> %broadcast.splat, %i.cx ; 2 uses
  %i.cz = fptosi <2 x double> %i.cy to <2 x i32>  ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %i.db = sitofp <2 x i32> %i.cz to <2 x double>
  %i.dc = fsub <2 x double> %i.cy, %i.db          ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index
  store <2 x double> %i.dc, ptr %i.dd, align 8, !tbaa !11, !alias.scope !117, !noalias !118
  %i.de = and <2 x i32> %i.cz, splat (i32 2047)
  %i.df = add nuw nsw <2 x i32> %i.de, splat (i32 1) ; 2 uses
  store <2 x i32> %i.df, ptr %i.da, align 4, !tbaa !4
  %i.dg = uitofp nneg <2 x i32> %i.df to <2 x double>
  %i.dh = fadd <2 x double> %i.dc, %i.dg
  store <2 x double> %i.dh, ptr %i.cs, align 8, !tbaa !11, !alias.scope !113, !noalias !114
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader", label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader211"

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader211": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader", %middle.block
  %indvars.iv143.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader" ]
  br label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us"

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader211", %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us"
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us" ], [ %indvars.iv143.ph, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader211" ] ; 8 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv143 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv143
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !11
  %i.dn = fadd double %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv143 ; 3 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv143
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !11
  %i.ds = fsub double %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv143
  %i.du = load double, ptr %i.dt, align 8, !tbaa !11
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.du, double %i.dn) ; 2 uses
  store double %i.dv, ptr %i.dj, align 8, !tbaa !11
  %i.dw = load double, ptr %i.do, align 8, !tbaa !11
  %i.dx = fadd double %i.dv, %i.dw
  %i.dy = fadd double %i.s, %i.dx                 ; 2 uses
  %i.dz = fptosi double %i.dy to i32              ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv143
  %i.eb = sitofp i32 %i.dz to double
  %i.ec = fsub double %i.dy, %i.eb                ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv143
  store double %i.ec, ptr %i.ed, align 8, !tbaa !11
  %i.ee = and i32 %i.dz, 2047
  %i.ef = add nuw nsw i32 %i.ee, 1                ; 2 uses
  store i32 %i.ef, ptr %i.ea, align 4, !tbaa !4
  %i.eg = uitofp nneg i32 %i.ef to double
  %i.eh = fadd double %i.ec, %i.eg
  store double %i.eh, ptr %i.do, align 8, !tbaa !11
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count
  br i1 %exitcond147.not, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader", label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us", !llvm.loop !120

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us", %middle.block
  br i1 %i.bw, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.epil.preheader", label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us"

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader", %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us"
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.1, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us" ], [ 0, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader" ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us" ], [ 0, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader" ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv148 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !11
  %i.ek = fsub double 1.000000e+00, %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv148
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [8 x i8], ptr %i.o, i64 %i.en ; 3 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 -8     ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !11
  %i.er = fadd double %i.ek, %i.eq
  store double %i.er, ptr %i.ep, align 8, !tbaa !11
  %i.es = load double, ptr %i.ei, align 8, !tbaa !11
  %i.et = load double, ptr %i.eo, align 8, !tbaa !11
  %i.eu = fadd double %i.es, %i.et
  store double %i.eu, ptr %i.eo, align 8, !tbaa !11
  %indvars.iv.next149 = or disjoint i64 %indvars.iv148, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next149 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !11
  %i.ex = fsub double 1.000000e+00, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next149
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr [8 x i8], ptr %i.o, i64 %i.fa ; 3 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 -8     ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !11
  %i.fe = fadd double %i.ex, %i.fd
  store double %i.fe, ptr %i.fc, align 8, !tbaa !11
  %i.ff = load double, ptr %i.ev, align 8, !tbaa !11
  %i.fg = load double, ptr %i.fb, align 8, !tbaa !11
  %i.fh = fadd double %i.ff, %i.fg
  store double %i.fh, ptr %i.fb, align 8, !tbaa !11
  %indvars.iv.next149.1 = add nuw nsw i64 %indvars.iv148, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us.unr-lcssa", label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us", !llvm.loop !121

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us.unr-lcssa": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us"
  br i1 %lcmp.mod.not, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us", label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.epil.preheader"

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.epil.preheader": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us.unr-lcssa", %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader"
  %indvars.iv148.epil.init = phi i64 [ 0, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader" ], [ %indvars.iv.next149.1, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us.unr-lcssa" ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv148.epil.init ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !11
  %i.fk = fsub double 1.000000e+00, %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv148.epil.init
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr [8 x i8], ptr %i.o, i64 %i.fn ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 -8     ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11
  %i.fr = fadd double %i.fk, %i.fq
  store double %i.fr, ptr %i.fp, align 8, !tbaa !11
  %i.fs = load double, ptr %i.fi, align 8, !tbaa !11
  %i.ft = load double, ptr %i.fo, align 8, !tbaa !11
  %i.fu = fadd double %i.fs, %i.ft
  store double %i.fu, ptr %i.fo, align 8, !tbaa !11
  br label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us"

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us.unr-lcssa", %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.epil.preheader"
  %i.fv = add nsw i64 %.sroa.040.0126.us, -1      ; 2 uses
  %.not.i.not.us = icmp eq i64 %i.fv, 0
  br i1 %.not.i.not.us, label %._crit_edge, label %.lr.ph.us.preheader, !prof !56

._crit_edge:                                      ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph127, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 11 uses
  tail call void @_Z8loopInitj(i32 noundef 26)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 32, !tbaa !41
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42   ; 9 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not148 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not148, label %._crit_edge, label %.preheader141.lr.ph, !prof !40

.preheader141.lr.ph:                              ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.af = icmp sgt i32 %i.aa, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count = and i64 %i.z, 2147483647     ; 22 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %wide.trip.count158 = and i64 %i.z, 2147483647
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.trip.count167 = and i64 %i.z, 2147483647  ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 16
end_hunk_1
