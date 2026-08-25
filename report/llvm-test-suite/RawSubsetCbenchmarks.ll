Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/RawSubsetCbenchmarks?download=true
inline.NumInlined: 219
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE:bb.a
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !68
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL10BM_EOS_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 6 uses
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
  br label %._crit_edge54.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not52 = icmp eq i64 %i.q, 0
  br i1 %.not.i.not52, label %._crit_edge54.split, label %.preheader.lr.ph, !prof !40

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 32, !tbaa !41
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42   ; 6 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge54.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.v = shl i64 %i.t, 3                          ; 4 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %scevgep59 = getelementptr i8, ptr %i.w, i64 48
  %scevgep60 = getelementptr i8, ptr %i.g, i64 %i.v
  %scevgep61 = getelementptr i8, ptr %i.e, i64 %i.v
  %i.x = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.y = shufflevector <2 x ptr> %i.x, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x ptr> poison, ptr %scevgep59, i64 0
  %i.aa = insertelement <2 x ptr> %i.z, ptr %scevgep61, i64 1
  %i.ab = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.ac = insertelement <2 x ptr> %i.ab, ptr %i.e, i64 1
  %i.ad = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.ae = shufflevector <2 x ptr> %i.ad, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp eq i64 %i.t, 1
  %i.af = icmp ult <2 x ptr> %i.y, %i.aa
  %i.ag = icmp ult <2 x ptr> %i.ac, %i.ae
  %bound062 = icmp ult ptr %i.c, %scevgep60
  %bound163 = icmp ult ptr %i.g, %scevgep
  %found.conflict64 = and i1 %bound062, %bound163
  %i.ah = and <2 x i1> %i.af, %i.ag               ; 2 uses
  %i.ai = extractelement <2 x i1> %i.ah, i64 0
  %conflict.rdx = or i1 %i.ai, %found.conflict64
  %i.aj = extractelement <2 x i1> %i.ah, i64 1
  %conflict.rdx68 = or i1 %conflict.rdx, %i.aj
  %n.vec = and i64 %i.t, 9223372036854775806      ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %broadcast.splat70 = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %i.ak = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = extractelement <2 x double> %i.k, i64 1
  %i.am = extractelement <2 x double> %i.k, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.sroa.046.053 = phi i64 [ %i.bh, %._crit_edge ], [ %i.q, %.preheader.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx68
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 6 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 6 uses
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !11, !alias.scope !69
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %wide.load73 = load <2 x double>, ptr %i.ao, align 8, !tbaa !11, !alias.scope !72
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %wide.load74 = load <2 x double>, ptr %i.ap, align 8, !tbaa !11, !alias.scope !74
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load74, <2 x double> %wide.load73)
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.aq, <2 x double> %wide.load)
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %wide.load75 = load <2 x double>, ptr %i.as, align 8, !tbaa !11, !alias.scope !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load76 = load <2 x double>, ptr %i.at, align 8, !tbaa !11, !alias.scope !69
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %wide.load77 = load <2 x double>, ptr %i.av, align 8, !tbaa !11, !alias.scope !69
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load77, <2 x double> %wide.load76)
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.aw, <2 x double> %wide.load75)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %wide.load78 = load <2 x double>, ptr %i.ay, align 8, !tbaa !11, !alias.scope !69
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %wide.load79 = load <2 x double>, ptr %i.az, align 8, !tbaa !11, !alias.scope !69
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %wide.load80 = load <2 x double>, ptr %i.ba, align 8, !tbaa !11, !alias.scope !69
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat70, <2 x double> %wide.load80, <2 x double> %wide.load79)
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat70, <2 x double> %i.bb, <2 x double> %wide.load78)
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat72, <2 x double> %i.bc, <2 x double> %i.ax)
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat72, <2 x double> %i.bd, <2 x double> %i.ar)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.be, ptr %i.bf, align 8, !tbaa !11, !alias.scope !76, !noalias !78
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge54.split:                              ; preds = %._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bh = add nsw i64 %.sroa.046.053, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bh, 0
  br i1 %.not.i.not, label %._crit_edge54.split, label %.preheader, !prof !55

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x double> %i.br, double %i.bn, i64 0
  %i.bt = insertelement <2 x double> %i.bq, double %i.bl, i64 0
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.bs, <2 x double> %i.bt) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.al, double %i.bv, double %i.bj)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !11
  %i.cb = load <2 x double>, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %i.cc = shufflevector <2 x double> %i.bu, <2 x double> %i.cb, <2 x i32> <i32 3, i32 1>
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ce = insertelement <2 x double> %i.cd, double %i.ca, i64 0
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.cc, <2 x double> %i.ce) ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.am, double %i.cg, double %i.by)
  %i.ci = extractelement <2 x double> %i.cf, i64 1
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ch, double %i.ci)
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.m, double %i.cj, double %i.bw)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.ck, ptr %i.cl, align 8, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !80
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL10BM_ADI_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.o = load double, ptr %i.n, align 8, !tbaa !11 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.r = load double, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %i.s = load double, ptr %i.p, align 8, !tbaa !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %1 = load <2 x double>, ptr %i.t, align 8
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.w = load <2 x double>, ptr %i.u, align 8, !tbaa !11 ; 3 uses
  %3 = load <2 x double>, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.y = load double, ptr %i.x, align 8, !tbaa !11 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = load double, ptr %i.z, align 8, !tbaa !11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %4 = load <2 x double>, ptr %i.ad, align 8
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge160.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not158 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.not158, label %._crit_edge160.split, label %.preheader155.lr.ph, !prof !40

.preheader155.lr.ph:                              ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 32, !tbaa !41
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !42 ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %.preheader155.lr.ph.split, label %._crit_edge160.split

.preheader155.lr.ph.split:                        ; preds = %.preheader155.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !85  ; 4 uses
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !85  ; 4 uses
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !85  ; 4 uses
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !85 ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !85 ; 2 uses
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !85 ; 2 uses
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !8  ; 2 uses
  %.pre166 = load ptr, ptr %i.aq, align 8, !tbaa !8 ; 2 uses
  %.pre167 = load ptr, ptr %i.ar, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.pre168 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert169 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre170 = load ptr, ptr %.phi.trans.insert169, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert171 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.pre172 = load ptr, ptr %.phi.trans.insert171, align 8, !tbaa !8 ; 2 uses
  %i.av = extractelement <2 x double> %i.w, i64 0
  %i.aw = insertelement <2 x double> %i.w, double 0.000000e+00, i64 1
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.lr.ph.split, %._crit_edge.1
  %.sroa.0150.0159 = phi i64 [ %i.ah, %.preheader155.lr.ph.split ], [ %i.eo, %._crit_edge.1 ]
  br label %bb.b

._crit_edge160.split:                             ; preds = %._crit_edge.1, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader155.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %bb.b, %._crit_edge
  %i.ax = phi ptr [ %i.bu, %._crit_edge ], [ %.pre172, %bb.b ] ; 4 uses
  %i.ay = phi ptr [ %i.bm, %._crit_edge ], [ %.pre170, %bb.b ] ; 3 uses
  %i.az = phi ptr [ %i.be, %._crit_edge ], [ %.pre168, %bb.b ] ; 4 uses
  %i.ba = phi ptr [ %i.ax, %._crit_edge ], [ %.pre167, %bb.b ]
  %i.bb = phi ptr [ %i.ay, %._crit_edge ], [ %.pre166, %bb.b ]
  %i.bc = phi ptr [ %i.az, %._crit_edge ], [ %.pre, %bb.b ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %._crit_edge ], [ 1, %bb.b ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11
  %i.bj = fsub double %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.1 ; 4 uses
  store double %i.bj, ptr %i.bk, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !8  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !11
  %i.br = fsub double %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.1 ; 4 uses
  store double %i.br, ptr %i.bs, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.1
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !8  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11
  %i.bz = fsub double %i.bw, %i.by                ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.1 ; 3 uses
  store double %i.bz, ptr %i.ca, align 8, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.cc = load double, ptr %i.bk, align 8, !tbaa !11
  %i.cd = load double, ptr %i.bs, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !11
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.s, double %i.cc, double %i.cg)
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.r, double %i.cd, double %i.ch)
  %i.cj = insertelement <2 x double> %2, double %i.cg, i64 1
  %i.ck = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.bz, i64 0
  %i.cl = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.cf, i64 1
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.ck, <2 x double> %i.cm) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !11
  %i.cq = extractelement <2 x double> %i.cn, i64 1
  %i.cr = fadd double %i.cq, %i.cp
  %i.cs = extractelement <2 x double> %i.cn, i64 0
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cr, double %i.cs)
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.1
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store double %i.ct, ptr %i.cw, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.cy = load double, ptr %i.bk, align 8, !tbaa !11
  %i.cz = load double, ptr %i.bs, align 8, !tbaa !11
  %i.da = load double, ptr %i.ca, align 8, !tbaa !11
  %i.db = load <2 x double>, ptr %i.cx, align 8, !tbaa !11 ; 2 uses
  %i.dc = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.cy, i64 0
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.dc, <2 x double> %i.db)
  %i.de = shufflevector <2 x double> %i.w, <2 x double> %i.db, <2 x i32> <i32 1, i32 2>
  %i.df = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.cz, i64 0
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.df, <2 x double> %i.dd) ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  %i.di = tail call double @llvm.fmuladd.f64(double %i.y, double %i.da, double %i.dh)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !11
  %i.dl = extractelement <2 x double> %i.dg, i64 1
  %i.dm = fadd double %i.dl, %i.dk
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dm, double %i.di)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.1
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store double %i.dn, ptr %i.dq, align 8, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ds = load double, ptr %i.bk, align 8, !tbaa !11
  %i.dt = load double, ptr %i.bs, align 8, !tbaa !11
  %i.du = load double, ptr %i.ca, align 8, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !11
  %i.dx = load double, ptr %i.dr, align 8, !tbaa !11 ; 2 uses
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ds, double %i.dx)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.dt, double %i.dy)
  %i.ea = insertelement <2 x double> %5, double %i.dx, i64 1
  %i.eb = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.du, i64 0
  %i.ec = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %i.dw, i64 1
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.eb, <2 x double> %i.ed) ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !11
  %i.eh = extractelement <2 x double> %i.ee, i64 1
  %i.ei = fadd double %i.eh, %i.eg
  %i.ej = extractelement <2 x double> %i.ee, i64 0
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ei, double %i.ej)
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.1
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store double %i.ek, ptr %i.en, align 8, !tbaa !11
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %i.ak
  br i1 %exitcond.1.not, label %._crit_edge.1, label %._crit_edge, !llvm.loop !87

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.eo = add nsw i64 %.sroa.0150.0159, -1        ; 2 uses
  %.not.i.not = icmp eq i64 %i.eo, 0
  br i1 %.not.i.not, label %._crit_edge160.split, label %.preheader155, !prof !55

bb.b:                                             ; preds = %.preheader155, %bb.b
  %i.ep = phi ptr [ %.pre172, %.preheader155 ], [ %i.fm, %bb.b ] ; 4 uses
  %i.eq = phi ptr [ %.pre170, %.preheader155 ], [ %i.fe, %bb.b ] ; 4 uses
  %i.er = phi ptr [ %.pre168, %.preheader155 ], [ %i.ew, %bb.b ] ; 4 uses
  %i.es = phi ptr [ %.pre167, %.preheader155 ], [ %i.ep, %bb.b ]
  %i.et = phi ptr [ %.pre166, %.preheader155 ], [ %i.eq, %bb.b ]
  %i.eu = phi ptr [ %.pre, %.preheader155 ], [ %i.er, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.preheader155 ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !8  ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !11
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !11
  %i.fb = fsub double %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  store double %i.fb, ptr %i.fc, align 8, !tbaa !11
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !8  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !11
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !11
  %i.fj = fsub double %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  store double %i.fj, ptr %i.fk, align 8, !tbaa !11
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !8  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !11
  %i.fp = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11
  %i.fr = fsub double %i.fo, %i.fq                ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store double %i.fr, ptr %i.fs, align 8, !tbaa !11
  %i.ft = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fu = load double, ptr %i.fc, align 8, !tbaa !11
  %i.fv = load double, ptr %i.fk, align 8, !tbaa !11
  %i.fw = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !11
  %i.fy = load double, ptr %i.ft, align 8, !tbaa !11 ; 2 uses
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.s, double %i.fu, double %i.fy)
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.r, double %i.fv, double %i.fz)
  %i.gb = insertelement <2 x double> %2, double %i.fy, i64 1
  %i.gc = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.fr, i64 0
  %i.gd = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.fx, i64 1
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.gc, <2 x double> %i.ge) ; 2 uses
  %i.gg = load double, ptr %i.er, align 8, !tbaa !11
  %i.gh = extractelement <2 x double> %i.gf, i64 1
  %i.gi = fadd double %i.gh, %i.gg
  %i.gj = extractelement <2 x double> %i.gf, i64 0
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.o, double %i.gi, double %i.gj)
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store double %i.gk, ptr %i.gn, align 8, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.gp = load double, ptr %i.fc, align 8, !tbaa !11
  %i.gq = load double, ptr %i.fk, align 8, !tbaa !11
  %i.gr = load double, ptr %i.fs, align 8, !tbaa !11
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !11
  %i.gu = load double, ptr %i.go, align 8, !tbaa !11 ; 2 uses
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.av, double %i.gp, double %i.gu)
  %i.gw = insertelement <2 x double> %3, double %i.gu, i64 1
  %i.gx = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gt, i64 1
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gx, <2 x double> %i.gz) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.y, double %i.gr, double %i.hb)
  %i.hd = load double, ptr %i.eq, align 8, !tbaa !11
  %i.he = extractelement <2 x double> %i.ha, i64 1
  %i.hf = fadd double %i.he, %i.hd
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.o, double %i.hf, double %i.hc)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store double %i.hg, ptr %i.hj, align 8, !tbaa !11
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.hl = load double, ptr %i.fc, align 8, !tbaa !11
  %i.hm = load double, ptr %i.fk, align 8, !tbaa !11
  %i.hn = load double, ptr %i.fs, align 8, !tbaa !11
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !11
  %i.hq = load double, ptr %i.hk, align 8, !tbaa !11 ; 2 uses
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.hl, double %i.hq)
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.hm, double %i.hr)
  %i.ht = insertelement <2 x double> %5, double %i.hq, i64 1
  %i.hu = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.hn, i64 0
  %i.hv = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hp, i64 1
  %i.hx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hu, <2 x double> %i.hw) ; 2 uses
  %i.hy = load double, ptr %i.ep, align 8, !tbaa !11
  %i.hz = extractelement <2 x double> %i.hx, i64 1
  %i.ia = fadd double %i.hz, %i.hy
  %i.ib = extractelement <2 x double> %i.hx, i64 0
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ia, double %i.ib)
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store double %i.ic, ptr %i.if, align 8, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !87
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 9 uses
  tail call void @_Z8loopInitj(i32 noundef 20)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
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
  br label %._crit_edge58.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not56 = icmp eq i64 %i.w, 0
  br i1 %.not.i.not56, label %._crit_edge58.split, label %.preheader.lr.ph, !prof !40

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 32, !tbaa !41
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.preheader, label %._crit_edge58.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.050.057 = phi i64 [ %i.ab, %._crit_edge ], [ %i.w, %.preheader.lr.ph ]
  br label %bb.b

._crit_edge58.split:                              ; preds = %._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %bb.b
  %i.ab = add nsw i64 %.sroa.050.057, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.ab, 0
  br i1 %.not.i.not, label %._crit_edge58.split, label %.preheader, !prof !55

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !88
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 2 uses
  tail call void @_Z8loopInitj(i32 noundef 21)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge79.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not77 = icmp eq i64 %i.i, 0
  br i1 %.not.i.not77, label %._crit_edge79.split, label %.preheader.lr.ph, !prof !40

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 32, !tbaa !41
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.preheader, label %._crit_edge79.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.071.078 = phi i64 [ %i.n, %._crit_edge ], [ %i.i, %.preheader.lr.ph ]
  br label %bb.b

._crit_edge79.split:                              ; preds = %._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %bb.b
  %i.n = add nsw i64 %.sroa.071.078, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.n, 0
  br i1 %.not.i.not, label %._crit_edge79.split, label %.preheader, !prof !55

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
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
  %i.ar = fsub double %i.ao, %i.aq                ; 2 uses
end_hunk_0
