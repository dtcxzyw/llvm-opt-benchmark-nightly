inline.NumInlined: 219
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE:bb.a
  %i.ak = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.al = fsub double %i.aj, %i.af
  %i.am = fmul double %i.ah, %i.al                ; 3 uses
  store double %i.am, ptr %i.ak, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 5 uses
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
  %i.ak = extractelement <2 x double> %i.k, i64 1
  %i.al = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
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
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load <2 x double>, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.br = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.bm, double %i.bk)
  %i.bs = insertelement <2 x double> %i.bq, double %i.br, i64 0
  %i.bt = insertelement <2 x double> %i.bq, double %i.bp, i64 1
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.bs, <2 x double> %i.bt) ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11
  %i.bz = load <2 x double>, ptr %i.bn, align 8, !tbaa !11 ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bu, <2 x double> %i.bz, <2 x i32> <i32 3, i32 1>
  %i.cb = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cc = insertelement <2 x double> %i.cb, double %i.by, i64 0
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.ca, <2 x double> %i.cc) ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ce, double %i.bw)
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.m, double %i.cf, double %i.cg)
  %i.ci = extractelement <2 x double> %i.bu, i64 0
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ch, double %i.ci)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.cj, ptr %i.ck, align 8, !tbaa !11
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
  br label %._crit_edge160.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not158 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not158, label %._crit_edge160.split, label %.preheader155.lr.ph, !prof !40

.preheader155.lr.ph:                              ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 32, !tbaa !41
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !42 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %.preheader155.lr.ph.split, label %._crit_edge160.split

.preheader155.lr.ph.split:                        ; preds = %.preheader155.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !85  ; 4 uses
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !85  ; 4 uses
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !85  ; 4 uses
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !85 ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !85 ; 2 uses
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !8  ; 2 uses
  %.pre166 = load ptr, ptr %i.an, align 8, !tbaa !8 ; 2 uses
  %.pre167 = load ptr, ptr %i.ao, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre168 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert169 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre170 = load ptr, ptr %.phi.trans.insert169, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert171 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre172 = load ptr, ptr %.phi.trans.insert171, align 8, !tbaa !8 ; 2 uses
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.lr.ph.split, %._crit_edge.1
  %.sroa.0150.0159 = phi i64 [ %i.ae, %.preheader155.lr.ph.split ], [ %i.dh, %._crit_edge.1 ]
  br label %bb.b

._crit_edge160.split:                             ; preds = %._crit_edge.1, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader155.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %bb.b, %._crit_edge
  %i.as = phi ptr [ %i.bp, %._crit_edge ], [ %.pre172, %bb.b ] ; 4 uses
  %i.at = phi ptr [ %i.bh, %._crit_edge ], [ %.pre170, %bb.b ] ; 4 uses
  %i.au = phi ptr [ %i.az, %._crit_edge ], [ %.pre168, %bb.b ] ; 4 uses
  %i.av = phi ptr [ %i.as, %._crit_edge ], [ %.pre167, %bb.b ]
  %i.aw = phi ptr [ %i.at, %._crit_edge ], [ %.pre166, %bb.b ]
  %i.ax = phi ptr [ %i.au, %._crit_edge ], [ %.pre, %bb.b ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %._crit_edge ], [ 1, %bb.b ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.1
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !11
  %i.be = fsub double %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.1 ; 4 uses
  store double %i.be, ptr %i.bf, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.1
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !11
  %i.bm = fsub double %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.1 ; 4 uses
  store double %i.bm, ptr %i.bn, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next.1
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !8  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load double, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !11
  %i.bu = fsub double %i.br, %i.bt                ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.1 ; 3 uses
  store double %i.bu, ptr %i.bv, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !11 ; 2 uses
  %i.by = load double, ptr %i.bf, align 8, !tbaa !11
  %7 = tail call double @llvm.fmuladd.f64(double %1, double %i.by, double %i.bx)
  %i.bz = load double, ptr %i.bn, align 8, !tbaa !11
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.q, double %i.bz, double %7)
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.s, double %i.bu, double %i.ca)
  %8 = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %9 = load double, ptr %8, align 8, !tbaa !11
  %10 = tail call double @llvm.fmuladd.f64(double %i.bx, double -2.000000e+00, double %9)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !11
  %i.ce = fadd double %10, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ce, double %i.cb)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.1
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store double %i.cf, ptr %i.ci, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = load double, ptr %i.bf, align 8, !tbaa !11
  %11 = tail call double @llvm.fmuladd.f64(double %3, double %i.cl, double %i.ck)
  %i.cm = load double, ptr %i.bn, align 8, !tbaa !11
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.u, double %i.cm, double %11)
  %12 = load double, ptr %i.bv, align 8, !tbaa !11
  %13 = tail call double @llvm.fmuladd.f64(double %i.w, double %12, double %i.cn)
  %14 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = tail call double @llvm.fmuladd.f64(double %i.ck, double -2.000000e+00, double %15)
  %i.co = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !11
  %i.cq = fadd double %16, %i.cp
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cq, double %13)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.1
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store double %i.cr, ptr %i.cu, align 8, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !11 ; 2 uses
  %i.cx = load double, ptr %i.bf, align 8, !tbaa !11
  %17 = tail call double @llvm.fmuladd.f64(double %5, double %i.cx, double %i.cw)
  %i.cy = load double, ptr %i.bn, align 8, !tbaa !11
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.y, double %i.cy, double %17)
  %18 = load double, ptr %i.bv, align 8, !tbaa !11
  %19 = tail call double @llvm.fmuladd.f64(double %i.aa, double %18, double %i.cz)
  %20 = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %21 = load double, ptr %20, align 8, !tbaa !11
  %22 = tail call double @llvm.fmuladd.f64(double %i.cw, double -2.000000e+00, double %21)
  %i.da = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.db = load double, ptr %i.da, align 8, !tbaa !11
  %i.dc = fadd double %22, %i.db
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dc, double %19)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.1
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store double %i.dd, ptr %i.dg, align 8, !tbaa !11
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %i.ah
  br i1 %exitcond.1.not, label %._crit_edge.1, label %._crit_edge, !llvm.loop !87

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.dh = add nsw i64 %.sroa.0150.0159, -1        ; 2 uses
  %.not.i.not = icmp eq i64 %i.dh, 0
  br i1 %.not.i.not, label %._crit_edge160.split, label %.preheader155, !prof !55

bb.b:                                             ; preds = %.preheader155, %bb.b
  %i.di = phi ptr [ %.pre172, %.preheader155 ], [ %i.ef, %bb.b ] ; 4 uses
  %i.dj = phi ptr [ %.pre170, %.preheader155 ], [ %i.dx, %bb.b ] ; 4 uses
  %i.dk = phi ptr [ %.pre168, %.preheader155 ], [ %i.dp, %bb.b ] ; 4 uses
  %i.dl = phi ptr [ %.pre167, %.preheader155 ], [ %i.di, %bb.b ]
  %i.dm = phi ptr [ %.pre166, %.preheader155 ], [ %i.dj, %bb.b ]
  %i.dn = phi ptr [ %.pre, %.preheader155 ], [ %i.dk, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.preheader155 ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !8  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !11
  %i.du = fsub double %i.dr, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  store double %i.du, ptr %i.dv, align 8, !tbaa !11
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !8  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = fsub double %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  store double %i.ec, ptr %i.ed, align 8, !tbaa !11
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !8  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !11
  %i.ek = fsub double %i.eh, %i.ej                ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store double %i.ek, ptr %i.el, align 8, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !11 ; 2 uses
  %i.eo = load double, ptr %i.dv, align 8, !tbaa !11
  %23 = tail call double @llvm.fmuladd.f64(double %1, double %i.eo, double %i.en)
  %i.ep = load double, ptr %i.ed, align 8, !tbaa !11
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.q, double %i.ep, double %23)
  %i.er = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ek, double %i.eq)
  %24 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = tail call double @llvm.fmuladd.f64(double %i.en, double -2.000000e+00, double %25)
  %i.es = load double, ptr %i.dk, align 8, !tbaa !11
  %i.et = fadd double %26, %i.es
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.o, double %i.et, double %i.er)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store double %i.eu, ptr %i.ex, align 8, !tbaa !11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !11 ; 2 uses
  %i.fa = load double, ptr %i.dv, align 8, !tbaa !11
  %27 = tail call double @llvm.fmuladd.f64(double %3, double %i.fa, double %i.ez)
  %i.fb = load double, ptr %i.ed, align 8, !tbaa !11
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.u, double %i.fb, double %27)
  %28 = load double, ptr %i.el, align 8, !tbaa !11
  %29 = tail call double @llvm.fmuladd.f64(double %i.w, double %28, double %i.fc)
  %30 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %31 = load double, ptr %30, align 8, !tbaa !11
  %32 = tail call double @llvm.fmuladd.f64(double %i.ez, double -2.000000e+00, double %31)
  %i.fd = load double, ptr %i.dj, align 8, !tbaa !11
  %i.fe = fadd double %32, %i.fd
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.o, double %i.fe, double %29)
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store double %i.ff, ptr %i.fi, align 8, !tbaa !11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !11 ; 2 uses
  %i.fl = load double, ptr %i.dv, align 8, !tbaa !11
  %33 = tail call double @llvm.fmuladd.f64(double %5, double %i.fl, double %i.fk)
  %i.fm = load double, ptr %i.ed, align 8, !tbaa !11
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.y, double %i.fm, double %33)
  %34 = load double, ptr %i.el, align 8, !tbaa !11
  %35 = tail call double @llvm.fmuladd.f64(double %i.aa, double %34, double %i.fn)
  %36 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %37 = load double, ptr %36, align 8, !tbaa !11
  %38 = tail call double @llvm.fmuladd.f64(double %i.fk, double -2.000000e+00, double %37)
  %i.fo = load double, ptr %i.di, align 8, !tbaa !11
  %i.fp = fadd double %38, %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.fp, double %35)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store double %i.fq, ptr %i.ft, align 8, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ah
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
  store double %i.ao, ptr %i.ap, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !11
  %i.au = fsub double %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store double %i.au, ptr %i.av, align 8, !tbaa !11
  store double %i.ar, ptr %i.as, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
end_hunk_0
begin_hunk_1_@_ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE:bb.a

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.prol
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.prol
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ad = fsub double %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.prol
  store double %i.ad, ptr %i.ae, align 8, !tbaa !11
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !99

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv.ph, %i.l
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge, label %scalar.ph

._crit_edge27.split:                              ; preds = %._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ah = add nsw i64 %.sroa.019.026, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.ah, 0
  br i1 %.not.i.not, label %._crit_edge27.split, label %.preheader, !prof !55

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.al = load double, ptr %i.ak, align 8, !tbaa !11
  %i.am = fsub double %i.aj, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.am, ptr %i.an, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = fsub double %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  store double %i.as, ptr %i.at, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.2
  %i.av = load double, ptr %i.au, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !11
  %i.ay = fsub double %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.1
  store double %i.ay, ptr %i.az, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.3
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.2
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !11
  %i.be = fsub double %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.2
  store double %i.be, ptr %i.bf, align 8, !tbaa !11
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.l
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !100
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_PIC_2D_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 8 uses
  tail call void @_Z8loopInitj(i32 noundef 24)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge74.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not72 = icmp eq i64 %i.u, 0
  br i1 %.not.i.not72, label %._crit_edge74.split, label %.preheader.lr.ph, !prof !40

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 32, !tbaa !41
  %i.x = load i64, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.preheader, label %._crit_edge74.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.066.073 = phi i64 [ %i.z, %._crit_edge ], [ %i.u, %.preheader.lr.ph ]
  br label %bb.b

._crit_edge74.split:                              ; preds = %._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %bb.b
  %i.z = add nsw i64 %.sroa.066.073, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.z, 0
  br i1 %.not.i.not, label %._crit_edge74.split, label %.preheader, !prof !55

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !103
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_PIC_1D_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  %.not117 = icmp eq i32 %i.aa, 0
  br i1 %.not117, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge127

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not125 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.not125, label %._crit_edge127, label %.preheader119.lr.ph, !prof !40

.preheader119.lr.ph:                              ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 32, !tbaa !41
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !42 ; 11 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.us.preheader.preheader, label %._crit_edge127

.lr.ph.us.preheader.preheader:                    ; preds = %.preheader119.lr.ph
  %i.ah = shl i64 %i.af, 3                        ; 6 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.ah ; 2 uses
  %scevgep153 = getelementptr i8, ptr %i.q, i64 %i.ah ; 3 uses
  %scevgep154 = getelementptr i8, ptr %4, i64 %i.ah ; 4 uses
  %scevgep155 = getelementptr i8, ptr %i.i, i64 %i.ah ; 3 uses
  %scevgep156 = getelementptr i8, ptr %3, i64 %i.ah ; 3 uses
  %scevgep157 = getelementptr i8, ptr %i.m, i64 %i.ah ; 2 uses
  %i.ai = insertelement <8 x ptr> poison, ptr %scevgep153, i64 0
  %i.aj = insertelement <8 x ptr> %i.ai, ptr %scevgep, i64 1
  %i.ak = insertelement <8 x ptr> %i.aj, ptr %scevgep155, i64 2
  %i.al = insertelement <8 x ptr> %i.ak, ptr %scevgep154, i64 5
  %i.am = insertelement <8 x ptr> %i.al, ptr %scevgep156, i64 7
  %i.an = shufflevector <8 x ptr> %i.am, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 1, i32 5, i32 0, i32 7>
  %5 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.ao = insertelement <8 x ptr> %5, ptr %i.q, i64 0
  %i.ap = insertelement <8 x ptr> %i.ao, ptr %i.i, i64 2
  %i.aq = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.ar = insertelement <8 x ptr> %i.aq, ptr %scevgep154, i64 1
  %i.as = insertelement <8 x ptr> %i.ar, ptr %scevgep156, i64 3
  %i.at = insertelement <8 x ptr> %i.as, ptr %scevgep157, i64 4
  %i.au = insertelement <8 x ptr> %i.at, ptr %scevgep153, i64 5
  %i.av = insertelement <8 x ptr> %i.au, ptr %scevgep155, i64 6
  %i.aw = shufflevector <8 x ptr> %i.av, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 4, i32 5, i32 6, i32 5>
  %6 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0>
  %i.ax = insertelement <4 x ptr> %7, ptr %i.q, i64 0
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep157, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep155, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep154, i64 2
  %i.bb = shufflevector <4 x ptr> %i.ba, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %8 = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.bc = insertelement <4 x ptr> %8, ptr %i.m, i64 0
  %i.bd = insertelement <4 x ptr> %i.bc, ptr %i.i, i64 1
  %i.be = shufflevector <4 x ptr> %i.bd, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bf = insertelement <4 x ptr> poison, ptr %scevgep153, i64 0
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep154, i64 1
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep156, i64 2
  %i.bi = shufflevector <4 x ptr> %i.bh, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %9 = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = shufflevector <8 x ptr> %i.ap, <8 x ptr> %9, <8 x i32> <i32 0, i32 poison, i32 2, i32 poison, i32 4, i32 5, i32 poison, i32 9>
  %11 = shufflevector <2 x ptr> %1, <2 x ptr> %i.e, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %min.iters.check = icmp eq i64 %i.af, 1
  %i.bj = insertelement <8 x ptr> %11, ptr %i.m, i64 4
  %i.bk = insertelement <8 x ptr> %i.bj, ptr %i.q, i64 5
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %i.i, i64 6
  %12 = shufflevector <8 x ptr> %i.bl, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 5>
  %13 = icmp ult <8 x ptr> %12, %i.an
  %14 = shufflevector <8 x ptr> %10, <8 x ptr> %6, <8 x i32> <i32 0, i32 8, i32 2, i32 8, i32 4, i32 5, i32 0, i32 7>
  %i.bm = icmp ult <8 x ptr> %14, %i.aw
  %i.bn = and <8 x i1> %13, %i.bm                 ; 2 uses
  %i.bo = icmp ult <4 x ptr> %i.ax, %i.bb
  %i.bp = icmp ult <4 x ptr> %i.be, %i.bi
  %i.bq = and <4 x i1> %i.bo, %i.bp
  %i.br = shufflevector <4 x i1> %i.bq, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bs = or <8 x i1> %i.bn, %i.br
  %i.bt = shufflevector <8 x i1> %i.bs, <8 x i1> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bu = bitcast <8 x i1> %i.bt to i8
  %.not = icmp eq i8 %i.bu, 0
  %n.vec = and i64 %i.af, 9223372036854775806     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.af, %n.vec
  %xtraiter = and i64 %i.af, 1
  %i.bv = icmp eq i64 %i.af, 1
  %unroll_iter = and i64 %i.af, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod207 = trunc i64 %i.af to i1
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph.us.preheader.preheader, %._crit_edge.us
  %.sroa.0112.0126.us = phi i64 [ %i.fu, %._crit_edge.us ], [ %i.ac, %.lr.ph.us.preheader.preheader ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %bb.c ] ; 9 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !4
  %i.cb = sitofp i32 %i.bz to double
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.cb, ptr %i.cc, align 8, !tbaa !11
  %.not.us = icmp eq i32 %i.bz, 0
  br i1 %.not.us, label %.thread.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us
  %i.cd = sext i32 %i.bz to i64                   ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.g, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.cg, ptr %i.ch, align 8, !tbaa !11
  %i.ci = getelementptr [8 x i8], ptr %i.k, i64 %i.cd
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !11
  br label %bb.c

.thread.us:                                       ; preds = %.lr.ph.us
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.cl, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %.thread.us, %bb.b
  %i.cm = phi double [ %i.ck, %bb.b ], [ 0.000000e+00, %.thread.us ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store double %i.cm, ptr %i.cn, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.af
  br i1 %exitcond.not, label %.preheader118.us.preheader, label %.lr.ph.us, !llvm.loop !104

.preheader118.us.preheader:                       ; preds = %bb.c
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not.not
  br i1 %brmerge, label %.preheader118.us.preheader206, label %vector.body

vector.body:                                      ; preds = %.preheader118.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader118.us.preheader ] ; 8 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.co, align 8, !tbaa !11, !alias.scope !105, !noalias !108
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index
  %wide.load201 = load <2 x double>, ptr %i.cp, align 8, !tbaa !11, !alias.scope !114
  %i.cq = fadd <2 x double> %wide.load, %wide.load201
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 3 uses
  %wide.load202 = load <2 x double>, ptr %i.cr, align 8, !tbaa !11, !alias.scope !115, !noalias !116
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  %wide.load203 = load <2 x double>, ptr %i.cs, align 8, !tbaa !11, !alias.scope !117
  %i.ct = fsub <2 x double> %wide.load202, %wide.load203
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index
  %wide.load204 = load <2 x double>, ptr %i.cu, align 8, !tbaa !11, !alias.scope !118
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %wide.load204, <2 x double> %i.cq) ; 2 uses
  store <2 x double> %i.cv, ptr %i.co, align 8, !tbaa !11, !alias.scope !105, !noalias !108
  %wide.load205 = load <2 x double>, ptr %i.cr, align 8, !tbaa !11, !alias.scope !115, !noalias !116
  %i.cw = fadd <2 x double> %i.cv, %wide.load205
  %i.cx = fadd <2 x double> %broadcast.splat, %i.cw ; 2 uses
  %i.cy = fptosi <2 x double> %i.cx to <2 x i32>  ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %i.da = sitofp <2 x i32> %i.cy to <2 x double>
  %i.db = fsub <2 x double> %i.cx, %i.da          ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index
  store <2 x double> %i.db, ptr %i.dc, align 8, !tbaa !11, !alias.scope !119, !noalias !120
  %i.dd = and <2 x i32> %i.cy, splat (i32 2047)
  %i.de = add nuw nsw <2 x i32> %i.dd, splat (i32 1) ; 2 uses
  store <2 x i32> %i.de, ptr %i.cz, align 4, !tbaa !4
  %i.df = uitofp nneg <2 x i32> %i.de to <2 x double>
  %i.dg = fadd <2 x double> %i.db, %i.df
  store <2 x double> %i.dg, ptr %i.cr, align 8, !tbaa !11, !alias.scope !115, !noalias !116
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph124.us.preheader, label %.preheader118.us.preheader206

.preheader118.us.preheader206:                    ; preds = %.preheader118.us.preheader, %middle.block
  %indvars.iv141.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader118.us.preheader ]
  br label %.preheader118.us

.preheader118.us:                                 ; preds = %.preheader118.us.preheader206, %.preheader118.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.preheader118.us ], [ %indvars.iv141.ph, %.preheader118.us.preheader206 ] ; 8 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv141 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv141
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !11
  %i.dm = fadd double %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv141 ; 3 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv141
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !11
  %i.dr = fsub double %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv141
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !11
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dt, double %i.dm) ; 2 uses
  store double %i.du, ptr %i.di, align 8, !tbaa !11
  %i.dv = load double, ptr %i.dn, align 8, !tbaa !11
  %i.dw = fadd double %i.du, %i.dv
  %i.dx = fadd double %i.s, %i.dw                 ; 2 uses
  %i.dy = fptosi double %i.dx to i32              ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv141
  %i.ea = sitofp i32 %i.dy to double
  %i.eb = fsub double %i.dx, %i.ea                ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv141
  store double %i.eb, ptr %i.ec, align 8, !tbaa !11
  %i.ed = and i32 %i.dy, 2047
  %i.ee = add nuw nsw i32 %i.ed, 1                ; 2 uses
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !4
  %i.ef = uitofp nneg i32 %i.ee to double
  %i.eg = fadd double %i.eb, %i.ef
  store double %i.eg, ptr %i.dn, align 8, !tbaa !11
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next142, %i.af
  br i1 %exitcond144.not, label %.lr.ph124.us.preheader, label %.preheader118.us, !llvm.loop !122

.lr.ph124.us.preheader:                           ; preds = %.preheader118.us, %middle.block
  br i1 %i.bv, label %.lr.ph124.us.epil.preheader, label %.lr.ph124.us

.lr.ph124.us:                                     ; preds = %.lr.ph124.us.preheader, %.lr.ph124.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146.1, %.lr.ph124.us ], [ 0, %.lr.ph124.us.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph124.us ], [ 0, %.lr.ph124.us.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv145 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !11
  %i.ej = fsub double 1.000000e+00, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv145
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr [8 x i8], ptr %i.o, i64 %i.em ; 3 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -8     ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !11
  %i.eq = fadd double %i.ej, %i.ep
  store double %i.eq, ptr %i.eo, align 8, !tbaa !11
  %i.er = load double, ptr %i.eh, align 8, !tbaa !11
  %i.es = load double, ptr %i.en, align 8, !tbaa !11
  %i.et = fadd double %i.er, %i.es
  store double %i.et, ptr %i.en, align 8, !tbaa !11
  %indvars.iv.next146 = or disjoint i64 %indvars.iv145, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next146 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !11
  %i.ew = fsub double 1.000000e+00, %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next146
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr [8 x i8], ptr %i.o, i64 %i.ez ; 3 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 -8     ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !11
  %i.fd = fadd double %i.ew, %i.fc
  store double %i.fd, ptr %i.fb, align 8, !tbaa !11
  %i.fe = load double, ptr %i.eu, align 8, !tbaa !11
  %i.ff = load double, ptr %i.fa, align 8, !tbaa !11
  %i.fg = fadd double %i.fe, %i.ff
  store double %i.fg, ptr %i.fa, align 8, !tbaa !11
  %indvars.iv.next146.1 = add nuw nsw i64 %indvars.iv145, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph124.us, !llvm.loop !123

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph124.us
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.lr.ph124.us.epil.preheader

.lr.ph124.us.epil.preheader:                      ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph124.us.preheader
  %indvars.iv145.epil.init = phi i64 [ 0, %.lr.ph124.us.preheader ], [ %indvars.iv.next146.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod207)
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv145.epil.init ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !11
  %i.fj = fsub double 1.000000e+00, %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv145.epil.init
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [8 x i8], ptr %i.o, i64 %i.fm ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8     ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !11
  %i.fq = fadd double %i.fj, %i.fp
  store double %i.fq, ptr %i.fo, align 8, !tbaa !11
  %i.fr = load double, ptr %i.fh, align 8, !tbaa !11
  %i.fs = load double, ptr %i.fn, align 8, !tbaa !11
  %i.ft = fadd double %i.fr, %i.fs
  store double %i.ft, ptr %i.fn, align 8, !tbaa !11
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph124.us.epil.preheader
  %i.fu = add nsw i64 %.sroa.0112.0126.us, -1     ; 2 uses
  %.not.i.not.us = icmp eq i64 %i.fu, 0
  br i1 %.not.i.not.us, label %._crit_edge127, label %.lr.ph.us.preheader, !prof !55

._crit_edge127:                                   ; preds = %._crit_edge.us, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader119.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 11 uses
  tail call void @_Z8loopInitj(i32 noundef 26)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85   ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85   ; 5 uses
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
  br label %._crit_edge210

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not208 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.not208, label %._crit_edge210, label %.preheader199.lr.ph, !prof !40

.preheader199.lr.ph:                              ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
  %.phi.trans.insert234 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert236 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %wide.trip.count219 = and i64 %i.z, 2147483647
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.trip.count228 = and i64 %i.z, 2147483647  ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 16
end_hunk_1
