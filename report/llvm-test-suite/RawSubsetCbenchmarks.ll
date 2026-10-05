Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/RawSubsetCbenchmarks?download=true
inline.NumInlined: 219
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZL10BM_EOS_RAWRN9benchmark5StateE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10   ; 6 uses
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
  br label %._crit_edge54.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 16, !tbaa !39  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not52 = icmp eq i64 %i.s, 0
  br i1 %.not.i.not52, label %._crit_edge54.split, label %.preheader.lr.ph, !prof !40

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 32, !tbaa !41
  %i.v = load i64, ptr %i.u, align 8, !tbaa !42   ; 6 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.preheader.preheader, label %._crit_edge54.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.x = shl i64 %i.v, 3                          ; 4 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep59 = getelementptr i8, ptr %i.y, i64 48
  %scevgep60 = getelementptr i8, ptr %i.g, i64 %i.x
  %scevgep61 = getelementptr i8, ptr %i.e, i64 %i.x
  %i.z = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.aa = shufflevector <2 x ptr> %i.z, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x ptr> poison, ptr %scevgep59, i64 0
  %i.ac = insertelement <2 x ptr> %i.ab, ptr %scevgep61, i64 1
  %i.ad = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.ae = insertelement <2 x ptr> %i.ad, ptr %i.e, i64 1
  %i.af = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.ag = shufflevector <2 x ptr> %i.af, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp eq i64 %i.v, 1
  %i.ah = icmp ult <2 x ptr> %i.aa, %i.ac
  %i.ai = icmp ult <2 x ptr> %i.ae, %i.ag
  %bound062 = icmp ult ptr %i.c, %scevgep60
  %bound163 = icmp ult ptr %i.g, %scevgep
  %found.conflict64 = and i1 %bound062, %bound163
  %i.aj = and <2 x i1> %i.ah, %i.ai               ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  %conflict.rdx = or i1 %i.ak, %found.conflict64
  %i.al = extractelement <2 x i1> %i.aj, i64 1
  %conflict.rdx68 = or i1 %conflict.rdx, %i.al
  %n.vec = and i64 %i.v, 9223372036854775806      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert69 = insertelement <2 x double> poison, double %i.k, i64 0
  %broadcast.splat70 = shufflevector <2 x double> %broadcast.splatinsert69, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %i.o, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  %i.am = insertelement <2 x double> poison, double %i.m, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.sroa.046.053 = phi i64 [ %i.bi, %._crit_edge ], [ %i.s, %.preheader.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx68
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 6 uses
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !12, !alias.scope !82
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %wide.load73 = load <2 x double>, ptr %i.ap, align 8, !tbaa !12, !alias.scope !83
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %wide.load74 = load <2 x double>, ptr %i.aq, align 8, !tbaa !12, !alias.scope !84
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load74, <2 x double> %wide.load73)
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ar, <2 x double> %wide.load)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %wide.load75 = load <2 x double>, ptr %i.at, align 8, !tbaa !12, !alias.scope !82
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load76 = load <2 x double>, ptr %i.au, align 8, !tbaa !12, !alias.scope !82
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %wide.load77 = load <2 x double>, ptr %i.aw, align 8, !tbaa !12, !alias.scope !82
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load77, <2 x double> %wide.load76)
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ax, <2 x double> %wide.load75)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %wide.load78 = load <2 x double>, ptr %i.az, align 8, !tbaa !12, !alias.scope !82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %wide.load79 = load <2 x double>, ptr %i.ba, align 8, !tbaa !12, !alias.scope !82
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %wide.load80 = load <2 x double>, ptr %i.bb, align 8, !tbaa !12, !alias.scope !82
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat70, <2 x double> %wide.load80, <2 x double> %wide.load79)
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat70, <2 x double> %i.bc, <2 x double> %wide.load78)
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat72, <2 x double> %i.bd, <2 x double> %i.ay)
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat72, <2 x double> %i.be, <2 x double> %i.as)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.bf, ptr %i.bg, align 8, !tbaa !12, !alias.scope !85, !noalias !86
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge54.split:                              ; preds = %._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bi = add nsw i64 %.sroa.046.053, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bi, 0
  br i1 %.not.i.not, label %._crit_edge54.split, label %.preheader, !prof !46

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 5 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.bs = load <2 x double>, ptr %i.br, align 8, !tbaa !12 ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = insertelement <2 x double> %i.bt, double %i.bo, i64 0
  %i.bv = insertelement <2 x double> %i.bs, double %i.bm, i64 0
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.bu, <2 x double> %i.bv)
  %i.bx = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bq, i64 1
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.bw, <2 x double> %i.by) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !12
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.k, double %i.cf, double %i.cd)
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.k, double %i.cg, double %i.cb)
  %i.ci = extractelement <2 x double> %i.bz, i64 1
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ch, double %i.ci)
  %i.ck = extractelement <2 x double> %i.bz, i64 0
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cj, double %i.ck)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.cl, ptr %i.cm, align 8, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !81
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL10BM_ADI_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 2 uses
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
  %1 = load <2 x double>, ptr %i.ab, align 8, !tbaa !12 ; 3 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.af = load double, ptr %i.ae, align 8, !tbaa !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge160.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !39 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not158 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.not158, label %._crit_edge160.split, label %.preheader155.lr.ph, !prof !40

.preheader155.lr.ph:                              ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 32, !tbaa !41
  %i.am = load i64, ptr %i.al, align 8, !tbaa !42 ; 3 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %.preheader155.lr.ph.split, label %._crit_edge160.split

.preheader155.lr.ph.split:                        ; preds = %.preheader155.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !51  ; 4 uses
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !51  ; 4 uses
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !51  ; 4 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !51 ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !51 ; 2 uses
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !51 ; 2 uses
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %.pre166 = load ptr, ptr %i.as, align 8, !tbaa !10 ; 2 uses
  %.pre167 = load ptr, ptr %i.at, align 8, !tbaa !10 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.pre168 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10 ; 2 uses
  %.phi.trans.insert169 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre170 = load ptr, ptr %.phi.trans.insert169, align 8, !tbaa !10 ; 2 uses
  %.phi.trans.insert171 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.pre172 = load ptr, ptr %.phi.trans.insert171, align 8, !tbaa !10 ; 2 uses
  %i.ax = extractelement <2 x double> %i.x, i64 0
  %2 = extractelement <2 x double> %1, i64 0
  %i.ay = insertelement <2 x double> poison, double %i.u, i64 0 ; 2 uses
  %i.az = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ba = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.bb = insertelement <2 x double> %i.x, double 0.000000e+00, i64 1
  %3 = insertelement <2 x double> %1, double 0.000000e+00, i64 1
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.lr.ph.split, %._crit_edge.1
  %.sroa.0150.0159 = phi i64 [ %i.aj, %.preheader155.lr.ph.split ], [ %i.ej, %._crit_edge.1 ]
  br label %bb.b

._crit_edge160.split:                             ; preds = %._crit_edge.1, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.preheader155.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

._crit_edge:                                      ; preds = %bb.b, %._crit_edge
  %i.bc = phi ptr [ %i.bz, %._crit_edge ], [ %.pre172, %bb.b ] ; 3 uses
  %i.bd = phi ptr [ %i.br, %._crit_edge ], [ %.pre170, %bb.b ] ; 3 uses
  %i.be = phi ptr [ %i.bj, %._crit_edge ], [ %.pre168, %bb.b ] ; 4 uses
  %i.bf = phi ptr [ %i.bc, %._crit_edge ], [ %.pre167, %bb.b ]
  %i.bg = phi ptr [ %i.bd, %._crit_edge ], [ %.pre166, %bb.b ]
  %i.bh = phi ptr [ %i.be, %._crit_edge ], [ %.pre, %bb.b ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %._crit_edge ], [ 1, %bb.b ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.1
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !10 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !12
  %i.bo = fsub double %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.1 ; 4 uses
  store double %i.bo, ptr %i.bp, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.1
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !10 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !12
  %i.bw = fsub double %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.1 ; 4 uses
  store double %i.bw, ptr %i.bx, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.1
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !10 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !12
  %i.ce = fsub double %i.cb, %i.cd                ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.1 ; 3 uses
  store double %i.ce, ptr %i.cf, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ch = load double, ptr %i.bp, align 8, !tbaa !12
  %i.ci = load double, ptr %i.bx, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.ck = load double, ptr %i.cg, align 8, !tbaa !12 ; 2 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.r, double %i.ch, double %i.ck)
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ci, double %i.cl)
  %i.cn = load double, ptr %i.cj, align 8, !tbaa !12
  %i.co = insertelement <2 x double> %i.ay, double %i.ck, i64 1
  %i.cp = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.ce, i64 0
  %i.cq = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cn, i64 1
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cp, <2 x double> %i.cr) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !12
  %i.cv = extractelement <2 x double> %i.cs, i64 1
  %i.cw = fadd double %i.cv, %i.cu
  %i.cx = extractelement <2 x double> %i.cs, i64 0
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.o, double %i.cw, double %i.cx)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.1
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store double %i.cy, ptr %i.db, align 8, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.dd = load double, ptr %i.bp, align 8, !tbaa !12
  %i.de = load double, ptr %i.bx, align 8, !tbaa !12
  %i.df = load double, ptr %i.cf, align 8, !tbaa !12
  %i.dg = load <2 x double>, ptr %i.dc, align 8, !tbaa !12 ; 2 uses
  %i.dh = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.dd, i64 0
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.dh, <2 x double> %i.dg)
  %i.dj = shufflevector <2 x double> %i.x, <2 x double> %i.dg, <2 x i32> <i32 1, i32 2>
  %i.dk = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.de, i64 0
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.dk, <2 x double> %i.di) ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.df, double %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !12
  %i.dq = extractelement <2 x double> %i.dl, i64 1
  %i.dr = fadd double %i.dq, %i.dp
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dr, double %i.dn)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.1
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store double %i.ds, ptr %i.dv, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.dx = load double, ptr %i.bp, align 8, !tbaa !12
  %i.dy = load double, ptr %i.bx, align 8, !tbaa !12
  %i.dz = load double, ptr %i.cf, align 8, !tbaa !12
  %4 = load <2 x double>, ptr %i.dw, align 8, !tbaa !12 ; 2 uses
  %5 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.dx, i64 0
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %5, <2 x double> %4)
  %7 = shufflevector <2 x double> %1, <2 x double> %4, <2 x i32> <i32 1, i32 2>
  %i.ea = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.dy, i64 0
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %i.ea, <2 x double> %6) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %10 = tail call double @llvm.fmuladd.f64(double %i.af, double %i.dz, double %9)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !12
  %i.ed = extractelement <2 x double> %8, i64 1
  %i.ee = fadd double %i.ed, %i.ec
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ee, double %10)
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.1
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store double %i.ef, ptr %i.ei, align 8, !tbaa !12
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %i.am
  br i1 %exitcond.1.not, label %._crit_edge.1, label %._crit_edge, !llvm.loop !87

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.ej = add nsw i64 %.sroa.0150.0159, -1        ; 2 uses
  %.not.i.not = icmp eq i64 %i.ej, 0
  br i1 %.not.i.not, label %._crit_edge160.split, label %.preheader155, !prof !46

bb.b:                                             ; preds = %.preheader155, %bb.b
  %i.ek = phi ptr [ %.pre172, %.preheader155 ], [ %i.fh, %bb.b ] ; 4 uses
  %i.el = phi ptr [ %.pre170, %.preheader155 ], [ %i.ez, %bb.b ] ; 4 uses
  %i.em = phi ptr [ %.pre168, %.preheader155 ], [ %i.er, %bb.b ] ; 4 uses
  %i.en = phi ptr [ %.pre167, %.preheader155 ], [ %i.ek, %bb.b ]
  %i.eo = phi ptr [ %.pre166, %.preheader155 ], [ %i.el, %bb.b ]
  %i.ep = phi ptr [ %.pre, %.preheader155 ], [ %i.em, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.preheader155 ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !10 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load double, ptr %i.es, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !12
  %i.ew = fsub double %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  store double %i.ew, ptr %i.ex, align 8, !tbaa !12
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !10 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !12
  %i.fe = fsub double %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  store double %i.fe, ptr %i.ff, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !10 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !12
  %i.fm = fsub double %i.fj, %i.fl                ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store double %i.fm, ptr %i.fn, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fp = load double, ptr %i.ex, align 8, !tbaa !12
  %i.fq = load double, ptr %i.ff, align 8, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.fs = load double, ptr %i.fo, align 8, !tbaa !12 ; 2 uses
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.r, double %i.fp, double %i.fs)
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.s, double %i.fq, double %i.ft)
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !12
  %i.fw = insertelement <2 x double> %i.ay, double %i.fs, i64 1
  %i.fx = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.fm, i64 0
  %i.fy = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fv, i64 1
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fx, <2 x double> %i.fz) ; 2 uses
  %i.gb = load double, ptr %i.em, align 8, !tbaa !12
  %i.gc = extractelement <2 x double> %i.ga, i64 1
  %i.gd = fadd double %i.gc, %i.gb
  %i.ge = extractelement <2 x double> %i.ga, i64 0
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.o, double %i.gd, double %i.ge)
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store double %i.gf, ptr %i.gi, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.gk = load double, ptr %i.ex, align 8, !tbaa !12
  %i.gl = load double, ptr %i.ff, align 8, !tbaa !12
  %i.gm = load double, ptr %i.fn, align 8, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.go = load double, ptr %i.gj, align 8, !tbaa !12 ; 2 uses
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.gk, double %i.go)
  %i.gq = load double, ptr %i.gn, align 8, !tbaa !12
  %i.gr = insertelement <2 x double> %i.az, double %i.go, i64 1
  %i.gs = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.gl, i64 0
  %i.gt = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gq, i64 1
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gs, <2 x double> %i.gu) ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 0
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.gm, double %i.gw)
  %i.gy = load double, ptr %i.el, align 8, !tbaa !12
  %i.gz = extractelement <2 x double> %i.gv, i64 1
  %i.ha = fadd double %i.gz, %i.gy
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ha, double %i.gx)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store double %i.hb, ptr %i.he, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.hg = load double, ptr %i.ex, align 8, !tbaa !12
  %i.hh = load double, ptr %i.ff, align 8, !tbaa !12
  %i.hi = load double, ptr %i.fn, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.hk = load double, ptr %i.hf, align 8, !tbaa !12 ; 2 uses
  %i.hl = tail call double @llvm.fmuladd.f64(double %2, double %i.hg, double %i.hk)
  %i.hm = load double, ptr %i.hj, align 8, !tbaa !12
  %i.hn = insertelement <2 x double> %i.ba, double %i.hk, i64 1
  %i.ho = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.hh, i64 0
  %i.hp = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.hm, i64 1
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.ho, <2 x double> %i.hq) ; 2 uses
  %11 = extractelement <2 x double> %i.hr, i64 0
  %12 = tail call double @llvm.fmuladd.f64(double %i.af, double %i.hi, double %11)
  %13 = load double, ptr %i.ek, align 8, !tbaa !12
  %i.hs = extractelement <2 x double> %i.hr, i64 1
  %14 = fadd double %i.hs, %13
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.o, double %14, double %12)
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store double %i.ht, ptr %i.hw, align 8, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !87
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 9 uses
  tail call void @_Z8loopInitj(i32 noundef 20)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
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
  br i1 %.not.i.not, label %._crit_edge58.split, label %.preheader, !prof !46

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !91
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 2 uses
  tail call void @_Z8loopInitj(i32 noundef 21)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38
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
  br i1 %.not.i.not, label %._crit_edge79.split, label %.preheader, !prof !46

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
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
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !12
  %i.au = fsub double %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store double %i.au, ptr %i.av, align 8, !tbaa !12
  store double %i.ar, ptr %i.as, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !92
}
end_hunk_0
