inline.NumInlined: 219
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE:bb.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.sroa.022.029 = phi i64 [ %i.y, %._crit_edge ], [ %i.k, %.preheader.preheader ]
  %load_initial = load double, ptr %i.c, align 8  ; 2 uses
  br i1 %i.q, label %.epil.preheader, label %.preheader.new

._crit_edge30.split:                              ; preds = %._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.s = load double, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  %i.w = fsub double %i.u, %store_forwarded.epil.init
  %i.x = fmul double %i.s, %i.w
  store double %i.x, ptr %i.v, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.y = add nsw i64 %.sroa.022.029, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.y, 0
  br i1 %.not.i.not, label %._crit_edge30.split, label %.preheader, !prof !55

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %store_forwarded = phi double [ %i.am, %.preheader.new ], [ %load_initial, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 1, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ae = fsub double %i.ac, %store_forwarded
  %i.af = fmul double %i.aa, %i.ae                ; 2 uses
  store double %i.af, ptr %i.ad, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !11
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
  %1 = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.bm, double %i.bk)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load <2 x double>, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.br = insertelement <2 x double> %i.bq, double %1, i64 0
  %i.bs = insertelement <2 x double> %i.bq, double %i.bp, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.br, <2 x double> %i.bs) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !11
  %i.by = load <2 x double>, ptr %i.bn, align 8, !tbaa !11 ; 2 uses
  %i.bz = shufflevector <2 x double> %i.bt, <2 x double> %i.by, <2 x i32> <i32 3, i32 1>
  %i.ca = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x double> %i.ca, double %i.bx, i64 0
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.bz, <2 x double> %i.cb) ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.am, double %i.cd, double %i.bv)
  %i.cf = extractelement <2 x double> %i.cc, i64 1
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ce, double %i.cf)
  %i.ch = extractelement <2 x double> %i.bt, i64 0
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.m, double %i.cg, double %i.ch)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.ci, ptr %i.cj, align 8, !tbaa !11
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
  br label %._crit_edge160.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not158 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.not158, label %._crit_edge160.split, label %.preheader155.lr.ph, !prof !40

.preheader155.lr.ph:                              ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 32, !tbaa !41
  %i.an = load i64, ptr %i.am, align 8, !tbaa !42 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %.preheader155.lr.ph.split, label %._crit_edge160.split

.preheader155.lr.ph.split:                        ; preds = %.preheader155.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !85  ; 4 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !85  ; 4 uses
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !85  ; 4 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !85 ; 2 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !85 ; 2 uses
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !8  ; 2 uses
  %.pre166 = load ptr, ptr %i.at, align 8, !tbaa !8 ; 2 uses
  %.pre167 = load ptr, ptr %i.au, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre168 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert169 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.pre170 = load ptr, ptr %.phi.trans.insert169, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert171 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre172 = load ptr, ptr %.phi.trans.insert171, align 8, !tbaa !8 ; 2 uses
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.lr.ph.split, %._crit_edge.1
  %.sroa.0150.0159 = phi i64 [ %i.ak, %.preheader155.lr.ph.split ], [ %i.dk, %._crit_edge.1 ]
  br label %bb.b

._crit_edge160.split:                             ; preds = %._crit_edge.1, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader155.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %bb.b, %._crit_edge
  %i.ay = phi ptr [ %i.bv, %._crit_edge ], [ %.pre172, %bb.b ] ; 3 uses
  %i.az = phi ptr [ %i.bn, %._crit_edge ], [ %.pre170, %bb.b ] ; 3 uses
  %i.ba = phi ptr [ %i.bf, %._crit_edge ], [ %.pre168, %bb.b ] ; 3 uses
  %i.bb = phi ptr [ %i.ay, %._crit_edge ], [ %.pre167, %bb.b ]
  %i.bc = phi ptr [ %i.az, %._crit_edge ], [ %.pre166, %bb.b ]
  %i.bd = phi ptr [ %i.ba, %._crit_edge ], [ %.pre, %bb.b ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %._crit_edge ], [ 1, %bb.b ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.1
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !8  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !11
  %i.bk = fsub double %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.1 ; 4 uses
  store double %i.bk, ptr %i.bl, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.1
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.br = load double, ptr %i.bq, align 8, !tbaa !11
  %i.bs = fsub double %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.1 ; 4 uses
  store double %i.bs, ptr %i.bt, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.1
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !8  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !11
  %i.ca = fsub double %i.bx, %i.bz                ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.1 ; 3 uses
  store double %i.ca, ptr %i.cb, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.cd = load double, ptr %i.bl, align 8, !tbaa !11
  %i.ce = load double, ptr %i.bt, align 8, !tbaa !11
  %1 = load <2 x double>, ptr %i.cc, align 8, !tbaa !11 ; 3 uses
  %2 = extractelement <2 x double> %1, i64 0
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.q, double %i.cd, double %2)
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ce, double %i.cf)
  %3 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %4 = insertelement <2 x double> %3, double %i.u, i64 0
  %5 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.ca, i64 0
  %6 = insertelement <2 x double> %1, double %i.cg, i64 0
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %5, <2 x double> %6) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !11
  %8 = extractelement <2 x double> %7, i64 1
  %i.cj = fadd double %8, %i.ci
  %9 = extractelement <2 x double> %7, i64 0
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cj, double %9)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.1
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store double %i.ck, ptr %i.cn, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %10 = load double, ptr %i.bl, align 8, !tbaa !11
  %i.cp = load double, ptr %i.bt, align 8, !tbaa !11
  %i.cq = load double, ptr %i.cb, align 8, !tbaa !11
  %11 = load <2 x double>, ptr %i.co, align 8, !tbaa !11 ; 3 uses
  %12 = extractelement <2 x double> %11, i64 0
  %13 = tail call double @llvm.fmuladd.f64(double %i.w, double %10, double %12)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.y, double %i.cp, double %13)
  %14 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %15 = insertelement <2 x double> %14, double %i.aa, i64 0
  %16 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.cq, i64 0
  %17 = insertelement <2 x double> %11, double %i.cr, i64 0
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %16, <2 x double> %17) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !11
  %19 = extractelement <2 x double> %18, i64 1
  %i.cu = fadd double %19, %i.ct
  %20 = extractelement <2 x double> %18, i64 0
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cu, double %20)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.1
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store double %i.cv, ptr %i.cy, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %21 = load double, ptr %i.bl, align 8, !tbaa !11
  %i.da = load double, ptr %i.bt, align 8, !tbaa !11
  %i.db = load double, ptr %i.cb, align 8, !tbaa !11
  %22 = load <2 x double>, ptr %i.cz, align 8, !tbaa !11 ; 3 uses
  %23 = extractelement <2 x double> %22, i64 0
  %24 = tail call double @llvm.fmuladd.f64(double %i.ac, double %21, double %23)
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.da, double %24)
  %25 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %26 = insertelement <2 x double> %25, double %i.ag, i64 0
  %27 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.db, i64 0
  %28 = insertelement <2 x double> %22, double %i.dc, i64 0
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %27, <2 x double> %28) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.de = load double, ptr %i.dd, align 8, !tbaa !11
  %30 = extractelement <2 x double> %29, i64 1
  %i.df = fadd double %30, %i.de
  %31 = extractelement <2 x double> %29, i64 0
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.o, double %i.df, double %31)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.1
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store double %i.dg, ptr %i.dj, align 8, !tbaa !11
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %i.an
  br i1 %exitcond.1.not, label %._crit_edge.1, label %._crit_edge, !llvm.loop !87

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.dk = add nsw i64 %.sroa.0150.0159, -1        ; 2 uses
  %.not.i.not = icmp eq i64 %i.dk, 0
  br i1 %.not.i.not, label %._crit_edge160.split, label %.preheader155, !prof !55

bb.b:                                             ; preds = %.preheader155, %bb.b
  %i.dl = phi ptr [ %.pre172, %.preheader155 ], [ %i.ei, %bb.b ] ; 3 uses
  %i.dm = phi ptr [ %.pre170, %.preheader155 ], [ %i.ea, %bb.b ] ; 3 uses
  %i.dn = phi ptr [ %.pre168, %.preheader155 ], [ %i.ds, %bb.b ] ; 3 uses
  %i.do = phi ptr [ %.pre167, %.preheader155 ], [ %i.dl, %bb.b ]
  %i.dp = phi ptr [ %.pre166, %.preheader155 ], [ %i.dm, %bb.b ]
  %i.dq = phi ptr [ %.pre, %.preheader155 ], [ %i.dn, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.preheader155 ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !8  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load double, ptr %i.dt, align 8, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !11
  %i.dx = fsub double %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  store double %i.dx, ptr %i.dy, align 8, !tbaa !11
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !8  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !11
  %i.ef = fsub double %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  store double %i.ef, ptr %i.eg, align 8, !tbaa !11
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !8  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.em = load double, ptr %i.el, align 8, !tbaa !11
  %i.en = fsub double %i.ek, %i.em                ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store double %i.en, ptr %i.eo, align 8, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.eq = load double, ptr %i.dy, align 8, !tbaa !11
  %i.er = load double, ptr %i.eg, align 8, !tbaa !11
  %32 = load <2 x double>, ptr %i.ep, align 8, !tbaa !11 ; 3 uses
  %33 = extractelement <2 x double> %32, i64 0
  %i.es = tail call double @llvm.fmuladd.f64(double %i.q, double %i.eq, double %33)
  %i.et = tail call double @llvm.fmuladd.f64(double %i.s, double %i.er, double %i.es)
  %34 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %35 = insertelement <2 x double> %34, double %i.u, i64 0
  %36 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.en, i64 0
  %37 = insertelement <2 x double> %32, double %i.et, i64 0
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> %36, <2 x double> %37) ; 2 uses
  %i.eu = load double, ptr %i.dn, align 8, !tbaa !11
  %39 = extractelement <2 x double> %38, i64 1
  %i.ev = fadd double %39, %i.eu
  %40 = extractelement <2 x double> %38, i64 0
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ev, double %40)
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store double %i.ew, ptr %i.ez, align 8, !tbaa !11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %41 = load double, ptr %i.dy, align 8, !tbaa !11
  %i.fb = load double, ptr %i.eg, align 8, !tbaa !11
  %i.fc = load double, ptr %i.eo, align 8, !tbaa !11
  %42 = load <2 x double>, ptr %i.fa, align 8, !tbaa !11 ; 3 uses
  %43 = extractelement <2 x double> %42, i64 0
  %44 = tail call double @llvm.fmuladd.f64(double %i.w, double %41, double %43)
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.y, double %i.fb, double %44)
  %45 = shufflevector <2 x double> %42, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %46 = insertelement <2 x double> %45, double %i.aa, i64 0
  %47 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.fc, i64 0
  %48 = insertelement <2 x double> %42, double %i.fd, i64 0
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> %47, <2 x double> %48) ; 2 uses
  %i.fe = load double, ptr %i.dm, align 8, !tbaa !11
  %50 = extractelement <2 x double> %49, i64 1
  %i.ff = fadd double %50, %i.fe
  %51 = extractelement <2 x double> %49, i64 0
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ff, double %51)
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store double %i.fg, ptr %i.fj, align 8, !tbaa !11
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %52 = load double, ptr %i.dy, align 8, !tbaa !11
  %i.fl = load double, ptr %i.eg, align 8, !tbaa !11
  %i.fm = load double, ptr %i.eo, align 8, !tbaa !11
  %53 = load <2 x double>, ptr %i.fk, align 8, !tbaa !11 ; 3 uses
  %54 = extractelement <2 x double> %53, i64 0
  %55 = tail call double @llvm.fmuladd.f64(double %i.ac, double %52, double %54)
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.fl, double %55)
  %56 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %57 = insertelement <2 x double> %56, double %i.ag, i64 0
  %58 = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.fm, i64 0
  %59 = insertelement <2 x double> %53, double %i.fn, i64 0
  %60 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %58, <2 x double> %59) ; 2 uses
  %i.fo = load double, ptr %i.dl, align 8, !tbaa !11
  %61 = extractelement <2 x double> %60, i64 1
  %i.fp = fadd double %61, %i.fo
  %62 = extractelement <2 x double> %60, i64 0
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.fp, double %62)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store double %i.fq, ptr %i.ft, align 8, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.an
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
