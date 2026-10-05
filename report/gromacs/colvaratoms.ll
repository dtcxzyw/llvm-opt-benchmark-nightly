Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvaratoms?download=true
inline.NumInlined: 2814
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN12colvarmodule10atom_group14read_positionsEv:bb.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !53, !range !55, !noundef !56
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 1144
  %i.k = load i64, ptr %i.j, align 8, !tbaa !108  ; 9 uses
  %.not10 = icmp eq i64 %i.k, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 1152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113, !noalias !679 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.tr, i64 1176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !114  ; 3 uses
  %.idx.i = shl i64 %i.k, 4                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.s = icmp eq i64 %i.k, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.k, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.09 = phi i64 [ 0, %.lr.ph.new ], [ %i.ai, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.09
  %i.u = load i32, ptr %i.t, align 4, !tbaa !122
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.v ; 3 uses
  %.sroa.0.0.copyload = load double, ptr %i.w, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !109
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !109
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.09 ; 3 uses
  store double %.sroa.0.0.copyload, ptr %i.x, align 8, !tbaa !109
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.k
  store double %.sroa.4.0.copyload, ptr %i.y, align 8, !tbaa !109
  %i.z = getelementptr i8, ptr %i.x, i64 %.idx.i
  store double %.sroa.5.0.copyload, ptr %i.z, align 8, !tbaa !109
  %i.aa = or disjoint i64 %.09, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !122
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.ad ; 3 uses
  %.sroa.0.0.copyload.1 = load double, ptr %i.ae, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4.0.copyload.1 = load double, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !109
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5.0.copyload.1 = load double, ptr %.sroa.5.0..sroa_idx.1, align 8, !tbaa !109
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.aa ; 3 uses
  store double %.sroa.0.0.copyload.1, ptr %i.af, align 8, !tbaa !109
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.k
  store double %.sroa.4.0.copyload.1, ptr %i.ag, align 8, !tbaa !109
  %i.ah = getelementptr i8, ptr %i.af, i64 %.idx.i
  store double %.sroa.5.0.copyload.1, ptr %i.ah, align 8, !tbaa !109
  %i.ai = add nuw i64 %.09, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !678

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.09.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.09.epil.init
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !122
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.al ; 3 uses
  %.sroa.0.0.copyload.epil = load double, ptr %i.am, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4.0.copyload.epil = load double, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !109
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.5.0.copyload.epil = load double, ptr %.sroa.5.0..sroa_idx.epil, align 8, !tbaa !109
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.09.epil.init ; 3 uses
  store double %.sroa.0.0.copyload.epil, ptr %i.an, align 8, !tbaa !109
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.k
  store double %.sroa.4.0.copyload.epil, ptr %i.ao, align 8, !tbaa !109
  %i.ap = getelementptr i8, ptr %i.an, i64 %.idx.i
  store double %.sroa.5.0.copyload.epil, ptr %i.ap, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr, i64 512
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !107 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.e, label %tailrecurse

bb.e:                                             ; preds = %tailrecurse, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group27calc_apply_roto_translationEv(ptr noundef nonnull align 8 dereferenceable(1712) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 5 uses
  %2 = alloca %"class.colvarmodule::rvector", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1552
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1528
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1552
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 33
  %i.j = load i8, ptr %i.i, align 1, !tbaa !53, !range !55, !noundef !56
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !107  ; 3 uses
  %.not7 = icmp eq ptr %i.l, null                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1528
  %.pn = select i1 %.not7, ptr %0, ptr %i.l
  %.sroa.027.0.in = select i1 %.not7, ptr %i.a, ptr %i.m
  %.sroa.027.0 = load double, ptr %.sroa.027.0.in, align 8, !tbaa !109
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 1536
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.n = fneg double %.sroa.027.0                 ; 2 uses
  %i.o = load <2 x double>, ptr %.sroa.6.0.in, align 8, !tbaa !109
  %i.p = fneg <2 x double> %i.o                   ; 2 uses
  store double %i.n, ptr %1, align 8, !tbaa !117, !alias.scope !700
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x double> %i.p, ptr %i.q, align 8, !tbaa !109, !alias.scope !700
  call void @_ZN12colvarmodule10atom_group17apply_translationERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not8 = icmp eq ptr %i.r, null
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store double %i.n, ptr %2, align 8, !tbaa !117, !alias.scope !701
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x double> %i.p, ptr %i.s, align 8, !tbaa !109, !alias.scope !701
  call void @_ZN12colvarmodule10atom_group17apply_translationERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !46   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 193
  %i.v = load i8, ptr %i.u, align 1, !tbaa !53, !range !55, !noundef !56
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.y = load i8, ptr %i.x, align 8, !tbaa !130, !range !55, !noundef !56
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = phi ptr [ %.pre, %bb.h ], [ %i.t, %bb.g ], [ %i.t, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 97
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !53, !range !55, !noundef !56
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.j, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !107 ; 2 uses
  %.not9 = icmp eq ptr %i.ah, null
  %spec.select = select i1 %.not9, ptr %0, ptr %i.ah ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select, i64 1176
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select, i64 1144
  %i.am = load i64, ptr %i.al, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !196
  tail call void @_ZN12colvarmodule8rotation25calc_optimal_rotation_soaERKSt6vectorIdSaIdEES5_mm(ptr noundef nonnull align 8 dereferenceable(568) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %i.am, i64 noundef %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ar = load <2 x double>, ptr %i.ap, align 8, !tbaa !109, !noalias !702 ; 9 uses
  %i.as = extractelement <2 x double> %i.ar, i64 1 ; 2 uses
  %i.at = extractelement <2 x double> %i.ar, i64 0 ; 2 uses
  %i.au = load <2 x double>, ptr %i.aq, align 8, !tbaa !109, !noalias !702 ; 11 uses
  %i.av = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.aw = fneg double %i.av                       ; 3 uses
  %i.ax = extractelement <2 x double> %i.au, i64 1 ; 4 uses
  %i.ay = fneg double %i.ax                       ; 3 uses
  %i.az = fneg double %i.as                       ; 2 uses
  %i.ba = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = fmul <2 x double> %i.ba, %i.bb
  %i.bd = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bd, <2 x double> %i.bc) ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.av, double %i.bf)
  %i.bh = insertelement <2 x double> %i.au, double %i.aw, i64 1
  %i.bi = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bi, <2 x double> %i.bj) ; 2 uses
  %i.bl = fmul double %i.at, %i.ay
  %i.bm = shufflevector <2 x double> %i.ar, <2 x double> %i.au, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bn = insertelement <2 x double> %i.bk, double %i.bl, i64 0
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.au, <2 x double> %i.bn) ; 5 uses
  %i.bp = insertelement <2 x double> %i.au, double %i.az, i64 0
  %i.bq = fmul <2 x double> %i.ar, %i.bp
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = shufflevector <2 x double> %i.ar, <2 x double> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.au, <2 x double> %i.br)
  %i.bu = fmul double %i.as, %i.av
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.at, double %i.ax, double %i.bu)
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ax, double %i.bg) ; 4 uses
  %i.bx = extractelement <2 x double> %i.bk, i64 0
  %i.by = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ax, double %i.bx) ; 4 uses
  %i.bz = extractelement <2 x double> %i.bo, i64 0
  %i.ca = fmul double %i.bz, 2.000000e+00         ; 4 uses
  %i.cb = fmul double %i.bv, 2.000000e+00         ; 4 uses
  %i.cc = fmul <2 x double> %i.bt, splat (double 2.000000e+00) ; 6 uses
  %3 = shufflevector <2 x double> %i.au, <2 x double> %i.ar, <2 x i32> <i32 0, i32 2>
  %4 = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %5 = insertelement <2 x double> %4, double %i.aw, i64 1
  %6 = fmul <2 x double> %3, %5
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bm, <2 x double> %6) ; 2 uses
  %8 = extractelement <2 x double> %7, i64 1
  %i.cd = fmul double %8, 2.000000e+00            ; 4 uses
  %9 = extractelement <2 x double> %7, i64 0
  %i.ce = fmul double %9, 2.000000e+00            ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !108 ; 10 uses
  %.not.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !114 ; 6 uses
  %.idx.i.i = shl i64 %i.cg, 4                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.cj = shl i64 %i.cg, 3
  %i.ck = getelementptr i8, ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ci, i64 %.idx.i.i
  %i.cm = mul i64 %i.cg, 24
  %i.cn = getelementptr i8, ptr %i.ci, i64 %i.cm
  %bound047 = icmp ult ptr %i.ci, %i.cn
  %bound148 = icmp ult ptr %i.cl, %i.ck
  %found.conflict49 = and i1 %bound047, %bound148
  br i1 %found.conflict49, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cg, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <2 x double> poison, double %i.bw, i64 0
  %broadcast.splat55 = shufflevector <2 x double> %broadcast.splatinsert54, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat57 = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat59 = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert60 = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat61 = shufflevector <2 x double> %broadcast.splatinsert60, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat63 = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.cd, i64 0
  %broadcast.splat67 = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat69 = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.co, align 8, !tbaa !109, !alias.scope !703, !noalias !704 ; 3 uses
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.cg ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.cp, align 8, !tbaa !109, !alias.scope !705, !noalias !706 ; 3 uses
  %i.cq = fmul <2 x double> %broadcast.splat, %wide.load70
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat55, <2 x double> %wide.load, <2 x double> %i.cq)
  %i.cs = getelementptr i8, ptr %i.co, i64 %.idx.i.i ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.cs, align 8, !tbaa !109, !alias.scope !706 ; 3 uses
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat57, <2 x double> %wide.load71, <2 x double> %i.cr)
  %i.cu = fmul <2 x double> %broadcast.splat59, %wide.load70
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat61, <2 x double> %wide.load, <2 x double> %i.cu)
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat63, <2 x double> %wide.load71, <2 x double> %i.cv)
  %i.cx = fmul <2 x double> %broadcast.splat65, %wide.load70
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat67, <2 x double> %wide.load, <2 x double> %i.cx)
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat69, <2 x double> %wide.load71, <2 x double> %i.cy)
  store <2 x double> %i.ct, ptr %i.co, align 8, !tbaa !109, !alias.scope !703, !noalias !704
  store <2 x double> %i.cw, ptr %i.cp, align 8, !tbaa !109, !alias.scope !705, !noalias !706
  store <2 x double> %i.cz, ptr %i.cs, align 8, !tbaa !109, !alias.scope !706
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.029.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %i.db = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.by, i64 1
  %i.dd = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.cb, i64 1
  %i.df = extractelement <2 x double> %i.bo, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.029.i = phi i64 [ %i.ea, %scalar.ph ], [ %.029.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.029.i ; 4 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !109 ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.dg, i64 %i.cg ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !109 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dg, i64 %.idx.i.i ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !109 ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %i.dc, %i.dn
  %i.dp = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.dq, <2 x double> %i.do)
  %i.ds = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.dt, <2 x double> %i.dr) ; 2 uses
  %i.dv = fmul double %i.ce, %i.dj
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.dh, double %i.dv)
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dl, double %i.dw)
  %i.dy = extractelement <2 x double> %i.du, i64 0
  store double %i.dy, ptr %i.dg, align 8, !tbaa !109
  %i.dz = extractelement <2 x double> %i.du, i64 1
  store double %i.dz, ptr %i.di, align 8, !tbaa !109
  store double %i.dx, ptr %i.dk, align 8, !tbaa !109
  %i.ea = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ea, %i.cg
  br i1 %exitcond.not.i, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit, label %scalar.ph, !llvm.loop !693

_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit: ; preds = %scalar.ph, %middle.block, %bb.j
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !107 ; 3 uses
  %.not10 = icmp eq ptr %i.eb, null
  br i1 %.not10, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17, label %bb.k

bb.k:                                             ; preds = %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1144
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !108 ; 10 uses
  %.not.i12 = icmp eq i64 %i.ed, 0
  br i1 %.not.i12, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 1176
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !114 ; 6 uses
  %.idx.i.i14 = shl i64 %i.ed, 4                  ; 3 uses
  %min.iters.check81 = icmp ult i64 %i.ed, 4
  br i1 %min.iters.check81, label %scalar.ph80.preheader, label %vector.memcheck82

vector.memcheck82:                                ; preds = %.lr.ph.i13
  %i.eg = shl i64 %i.ed, 3
  %i.eh = getelementptr i8, ptr %i.ef, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.ef, i64 %.idx.i.i14
  %i.ej = mul i64 %i.ed, 24
  %i.ek = getelementptr i8, ptr %i.ef, i64 %i.ej
  %bound086 = icmp ult ptr %i.ef, %i.ek
  %bound187 = icmp ult ptr %i.ei, %i.eh
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %scalar.ph80.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck82
  %n.vec95 = and i64 %i.ed, -2                    ; 3 uses
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat97 = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert98 = insertelement <2 x double> poison, double %i.bw, i64 0
  %broadcast.splat99 = shufflevector <2 x double> %broadcast.splatinsert98, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat101 = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat103 = shufflevector <2 x double> %broadcast.splatinsert102, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert104 = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat105 = shufflevector <2 x double> %broadcast.splatinsert104, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat107 = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert108 = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat109 = shufflevector <2 x double> %broadcast.splatinsert108, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <2 x double> poison, double %i.cd, i64 0
  %broadcast.splat111 = shufflevector <2 x double> %broadcast.splatinsert110, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat113 = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph94
  %index115 = phi i64 [ 0, %vector.ph94 ], [ %index.next119, %vector.body114 ] ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index115 ; 4 uses
  %wide.load116 = load <2 x double>, ptr %i.el, align 8, !tbaa !109, !alias.scope !707, !noalias !708 ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.el, i64 %i.ed ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.em, align 8, !tbaa !109, !alias.scope !709, !noalias !710 ; 3 uses
  %i.en = fmul <2 x double> %broadcast.splat97, %wide.load117
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat99, <2 x double> %wide.load116, <2 x double> %i.en)
  %i.ep = getelementptr i8, ptr %i.el, i64 %.idx.i.i14 ; 2 uses
  %wide.load118 = load <2 x double>, ptr %i.ep, align 8, !tbaa !109, !alias.scope !710 ; 3 uses
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat101, <2 x double> %wide.load118, <2 x double> %i.eo)
  %i.er = fmul <2 x double> %broadcast.splat103, %wide.load117
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat105, <2 x double> %wide.load116, <2 x double> %i.er)
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat107, <2 x double> %wide.load118, <2 x double> %i.es)
  %i.eu = fmul <2 x double> %broadcast.splat109, %wide.load117
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat111, <2 x double> %wide.load116, <2 x double> %i.eu)
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat113, <2 x double> %wide.load118, <2 x double> %i.ev)
  store <2 x double> %i.eq, ptr %i.el, align 8, !tbaa !109, !alias.scope !707, !noalias !708
  store <2 x double> %i.et, ptr %i.em, align 8, !tbaa !109, !alias.scope !709, !noalias !710
  store <2 x double> %i.ew, ptr %i.ep, align 8, !tbaa !109, !alias.scope !710
  %index.next119 = add nuw i64 %index115, 2       ; 2 uses
  %i.ex = icmp eq i64 %index.next119, %n.vec95
  br i1 %i.ex, label %middle.block120, label %vector.body114, !llvm.loop !698

middle.block120:                                  ; preds = %vector.body114
  %cmp.n121 = icmp eq i64 %i.ed, %n.vec95
  br i1 %cmp.n121, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %vector.memcheck82, %.lr.ph.i13, %middle.block120
  %.029.i15.ph = phi i64 [ 0, %vector.memcheck82 ], [ 0, %.lr.ph.i13 ], [ %n.vec95, %middle.block120 ]
  %i.ey = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %i.by, i64 1
  %i.fa = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.cb, i64 1
  %i.fc = extractelement <2 x double> %i.bo, i64 1
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %.029.i15 = phi i64 [ %i.fx, %scalar.ph80 ], [ %.029.i15.ph, %scalar.ph80.preheader ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.029.i15 ; 4 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !109 ; 2 uses
  %i.ff = getelementptr [8 x i8], ptr %i.fd, i64 %i.ed ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !109 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fd, i64 %.idx.i.i14 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !109 ; 2 uses
  %i.fj = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.ez, %i.fk
  %i.fm = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %i.fn, <2 x double> %i.fl)
  %i.fp = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.fq, <2 x double> %i.fo) ; 2 uses
  %i.fs = fmul double %i.ce, %i.fg
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.fe, double %i.fs)
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fi, double %i.ft)
  %i.fv = extractelement <2 x double> %i.fr, i64 0
  store double %i.fv, ptr %i.fd, align 8, !tbaa !109
  %i.fw = extractelement <2 x double> %i.fr, i64 1
  store double %i.fw, ptr %i.ff, align 8, !tbaa !109
  store double %i.fu, ptr %i.fh, align 8, !tbaa !109
  %i.fx = add nuw i64 %.029.i15, 1                ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %i.fx, %i.ed
  br i1 %exitcond.not.i16, label %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17, label %scalar.ph80, !llvm.loop !699

_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17: ; preds = %scalar.ph80, %middle.block120, %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit, %bb.k, %bb.i
  %i.fy = load ptr, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 33
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !53, !range !55, !noundef !56
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 65
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !53, !range !55, !noundef !56
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  tail call void @_ZN12colvarmodule10atom_group17apply_translationERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.gf)
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !107 ; 2 uses
  %.not11 = icmp eq ptr %i.gg, null
  br i1 %.not11, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN12colvarmodule10atom_group17apply_translationERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.gg, ptr noundef nonnull align 8 dereferenceable(24) %i.gf)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l, %_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE.exit17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group17apply_translationERKNS_7rvectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load i8, ptr %i.c, align 8, !tbaa !130, !range !55, !noundef !56
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 63, ptr %i.b, align 8, !tbaa !35
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %2, align 8, !tbaa !42
  %i.h = load i64, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.g, ptr noundef nonnull align 1 dereferenceable(63) @.str.117, i64 63, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.k = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 4)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.f, align 8, !tbaa !32
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.loopexit

bb.c:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.d:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.d
  %i.t = load i64, ptr %i.f, align 8, !tbaa !32
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.c
  %.pn15 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 257
  %i.y = load i8, ptr %i.x, align 1, !tbaa !53, !range !55, !noundef !56
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.noexc.i22, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !108 ; 10 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !114 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.idx.i = shl i64 %i.ab, 4                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ag = shl i64 %i.ab, 3
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.ag  ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ad, i64 %.idx.i ; 3 uses
  %i.aj = mul i64 %i.ab, 24
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.aj  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %bound056 = icmp ult ptr %i.ad, %i.ak
  %bound157 = icmp ult ptr %i.ai, %i.ah
  %found.conflict58 = and i1 %bound056, %bound157
  %bound059 = icmp ult ptr %i.ad, %i.al
  %bound160 = icmp ult ptr %1, %i.ah
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %found.conflict58, %found.conflict61
  %bound067 = icmp ult ptr %i.ah, %i.al
  %bound168 = icmp ult ptr %1, %i.ai
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %conflict.rdx62, %found.conflict69
  %bound071 = icmp ult ptr %i.ai, %i.al
  %bound172 = icmp ult ptr %1, %i.ak
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx70, %found.conflict73
  br i1 %conflict.rdx74, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, -2                      ; 3 uses
  %i.am = load double, ptr %1, align 8, !tbaa !117, !alias.scope !718
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = load double, ptr %i.ae, align 8, !tbaa !118, !alias.scope !718
  %broadcast.splatinsert76 = insertelement <2 x double> poison, double %i.an, i64 0
  %broadcast.splat77 = shufflevector <2 x double> %broadcast.splatinsert76, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = load double, ptr %i.af, align 8, !tbaa !119, !alias.scope !718
  %broadcast.splatinsert79 = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat80 = shufflevector <2 x double> %broadcast.splatinsert79, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.ap, align 8, !tbaa !109, !alias.scope !719, !noalias !720
  %i.aq = fadd <2 x double> %broadcast.splat, %wide.load
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !109, !alias.scope !719, !noalias !720
  %i.ar = getelementptr [8 x i8], ptr %i.ap, i64 %i.ab ; 2 uses
  %wide.load75 = load <2 x double>, ptr %i.ar, align 8, !tbaa !109, !alias.scope !721, !noalias !722
  %i.as = fadd <2 x double> %broadcast.splat77, %wide.load75
  store <2 x double> %i.as, ptr %i.ar, align 8, !tbaa !109, !alias.scope !721, !noalias !722
  %i.at = getelementptr i8, ptr %i.ap, i64 %.idx.i ; 2 uses
  %wide.load78 = load <2 x double>, ptr %i.at, align 8, !tbaa !109, !alias.scope !723, !noalias !718
  %i.au = fadd <2 x double> %broadcast.splat80, %wide.load78
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !109, !alias.scope !723, !noalias !718
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !716

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.032.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.noexc.i22:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !28
end_hunk_0
