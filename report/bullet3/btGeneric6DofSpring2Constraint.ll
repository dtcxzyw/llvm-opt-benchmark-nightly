Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofSpring2Constraint?download=true
inline.NumInlined: 593
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN30btGeneric6DofSpring2Constraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_:.peel.begin
  %i.ek = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !16, !range !65, !noundef !41
  store i8 %i.el, ptr %i.l, align 4, !tbaa !22
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.en = load float, ptr %i.em, align 4, !tbaa !14
  store float %i.en, ptr %i.m, align 4, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !16, !range !65, !noundef !41
  store i8 %i.ep, ptr %i.n, align 4, !tbaa !24
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.er = load float, ptr %i.eq, align 4, !tbaa !14
  store float %i.er, ptr %i.o, align 4, !tbaa !25
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16, !range !65, !noundef !41
  store i8 %i.et, ptr %i.p, align 4, !tbaa !26
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !14
  store float %i.ev, ptr %i.q, align 4, !tbaa !73
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !14
  store float %i.ex, ptr %i.a, align 4, !tbaa !60
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !14
  store float %i.ez, ptr %9, align 4, !tbaa !59
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !14
  store float %i.fb, ptr %i.i, align 4, !tbaa !74
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !14
  store float %i.fd, ptr %i.h, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.fh = load float, ptr %i.fe, align 4, !tbaa !14
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fi = load float, ptr %i.ff, align 4, !tbaa !14
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.fi, i64 1
  %i.fj = load float, ptr %i.fg, align 4, !tbaa !14
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fj, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.aq, align 8
  %i.fk = load i32, ptr %i.ar, align 8, !tbaa !39
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.fl = shl nuw nsw i32 %indvars.iv.tr, 2
  %i.fm = ashr i32 %i.fk, %i.fl                   ; 4 uses
  %i.fn = and i32 %i.fm, 1
  %.not75 = icmp eq i32 %i.fn, 0
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.fp = load ptr, ptr %i.at, align 8, !tbaa !68
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.in = phi ptr [ %i.fo, %bb.q ], [ %i.fp, %bb.r ]
  %i.fq = load float, ptr %.in, align 4, !tbaa !14
  store float %i.fq, ptr %i.d, align 4, !tbaa !69
  %i.fr = and i32 %i.fm, 2
  %.not76 = icmp eq i32 %i.fr, 0
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %.in77 = select i1 %.not76, ptr %i.av, ptr %i.fs
  %i.ft = load float, ptr %.in77, align 4, !tbaa !14
  store float %i.ft, ptr %i.c, align 4, !tbaa !70
  %i.fu = and i32 %i.fm, 4
  %.not78 = icmp eq i32 %i.fu, 0
  br i1 %.not78, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fw = load ptr, ptr %i.at, align 8, !tbaa !68
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.in79 = phi ptr [ %i.fv, %bb.t ], [ %i.fw, %bb.u ]
  %i.fx = load float, ptr %.in79, align 4, !tbaa !14
  store float %i.fx, ptr %i.f, align 4, !tbaa !18
  %i.fy = and i32 %i.fm, 8
  %.not80 = icmp eq i32 %i.fy, 0
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %.in81 = select i1 %.not80, ptr %i.av, ptr %i.fz
  %i.ga = load float, ptr %.in81, align 4, !tbaa !14
  store float %i.ga, ptr %i.e, align 4, !tbaa !71
  %i.gb = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %.cmp.not = icmp eq i64 %indvars.iv, 2
  %i.gc = add i64 %indvars.iv, 4294967295
  %i.gd = select i1 %.cmp.not, i64 0, i64 %i.gb
  %i.ge = getelementptr inbounds nuw [88 x i8], ptr %i.ay, i64 %i.gd ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 84
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !62
  switch i32 %i.gg, label %.thread.fold.split [
    i32 1, label %.thread
    i32 2, label %.thread
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gi = load float, ptr %i.gh, align 8, !tbaa !63
  %i.gj = tail call float @llvm.fabs.f32(float %i.gi)
  %i.gk = fpext float %i.gj to double
  %or.cond82 = fcmp ogt double %i.gk, 1.000000e-03
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gm = load float, ptr %i.gl, align 8, !tbaa !63
  %i.gn = fpext float %i.gm to double
  %i.go = fcmp olt double %i.gn, -1.000000e-03
  br i1 %i.go, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 76
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !64
  %i.gr = fpext float %i.gq to double
  %i.gs = fcmp ogt double %i.gr, 1.000000e-03
  br label %.thread

.thread.fold.split:                               ; preds = %bb.v
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.v, %bb.v, %.thread.fold.split, %bb.y, %bb.x
  %i.gt = phi i1 [ %i.gs, %bb.y ], [ false, %.thread.fold.split ], [ true, %bb.v ], [ true, %bb.v ], [ %or.cond82, %bb.w ], [ true, %bb.x ]
  %i.gu = and i64 %i.gc, 4294967295
  %i.gv = getelementptr inbounds nuw [88 x i8], ptr %i.ay, i64 %i.gu ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 84
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !62
  switch i32 %i.gx, label %.split71 [
    i32 1, label %bb.ac
    i32 2, label %bb.ac
    i32 3, label %bb.z
    i32 4, label %bb.aa
  ]

bb.z:                                             ; preds = %.thread
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 72
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !63
  %i.ha = tail call float @llvm.fabs.f32(float %i.gz)
  %i.hb = fpext float %i.ha to double
  %or.cond83 = fcmp ogt double %i.hb, 1.000000e-03
  br i1 %or.cond83, label %bb.ac, label %.split71

bb.aa:                                            ; preds = %.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 72
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !63
  %i.he = fpext float %i.hd to double
  %i.hf = fcmp olt double %i.he, -1.000000e-03
  br i1 %i.hf, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 76
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !64
  %i.hi = fpext float %i.hh to double
  %i.hj = fcmp ogt double %i.hi, 1.000000e-03
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %.thread, %bb.ab, %bb.aa, %bb.z
  %i.hk = phi i1 [ %i.hj, %bb.ab ], [ true, %bb.z ], [ true, %.thread ], [ true, %.thread ], [ true, %bb.aa ]
  %or.cond = select i1 %i.gt, i1 %i.hk, i1 false
  %not.or.cond = xor i1 %or.cond, true
  %spec.select = zext i1 %not.or.cond to i32
  br label %.split71

.split71:                                         ; preds = %bb.ac, %bb.z, %.thread
  %.sink = phi i32 [ %spec.select, %bb.ac ], [ 1, %.thread ], [ 1, %bb.z ]
  %i.hl = call noundef i32 @_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull %9, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.07090, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef 0, i32 noundef %.sink)
  %i.hm = add nsw i32 %i.hl, %.07090
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge94, %.split71
  %indvars.iv.next.pre-phi = phi i64 [ %.pre95, %._crit_edge94 ], [ %i.gb, %.split71 ] ; 2 uses
  %.1 = phi i32 [ %.07090, %._crit_edge94 ], [ %i.hm, %.split71 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.n, !llvm.loop !112
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 6) i32 @_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef readonly %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !115  ; 4 uses
  %i.c = mul nsw i32 %i.b, %9                     ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62
  switch i32 %i.e, label %bb.t [
    i32 4, label %bb.b
    i32 3, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %.not378 = icmp eq i32 %11, 0                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.h = load <2 x float>, ptr %10, align 4, !tbaa !14 ; 6 uses
  %i.i = load float, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br i1 %.not378, label %.split368, label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit

_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit: ; preds = %bb.b
  %13 = load float, ptr %i.f, align 4, !tbaa !14  ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.k = load <4 x float>, ptr %6, align 4
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !14
  %i.o = load <2 x float>, ptr %6, align 4, !tbaa !14
  %16 = load float, ptr %14, align 4, !tbaa !14
  %i.p = load <2 x float>, ptr %7, align 4, !tbaa !14
  %17 = load float, ptr %15, align 4, !tbaa !14
  %18 = fmul float %13, %17
  %19 = fmul float %16, %13
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x float> poison, float %19, i64 0
  %21 = insertelement <2 x float> %20, float %18, i64 1
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %21)
  %i.t = insertelement <2 x float> %i.l, float %i.n, i64 1
  %i.u = insertelement <2 x float> poison, float %i.i, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.v, <2 x float> %i.s) ; 2 uses
  %shift = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.w, %shift
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !76   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76  ; 4 uses
  %i.ab = sext i32 %i.c to i64                    ; 3 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ab
  %i.ad = extractelement <2 x float> %i.h, i64 0
  store float %i.ad, ptr %i.ac, align 4, !tbaa !14
  %i.ae = load float, ptr %i.f, align 4, !tbaa !14
  %i.af = add nsw i32 %i.c, 1
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ag
  store float %i.ae, ptr %i.ah, align 4, !tbaa !14
  %i.ai = load float, ptr %i.g, align 4, !tbaa !14
  %i.aj = add nsw i32 %i.c, 2
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ak
  store float %i.ai, ptr %i.al, align 4, !tbaa !14
  %i.am = load float, ptr %10, align 4, !tbaa !14
  %i.an = fneg float %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  store float %i.an, ptr %i.ao, align 4, !tbaa !14
  %i.ap = load float, ptr %i.f, align 4, !tbaa !14
  %i.aq = fneg float %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ag
  store float %i.aq, ptr %i.ar, align 4, !tbaa !14
  %i.as = load float, ptr %i.g, align 4, !tbaa !14
  %i.at = fneg float %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ak
  store float %i.at, ptr %i.au, align 4, !tbaa !14
  br label %bb.d

.split368:                                        ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76 ; 3 uses
  %i.be = sext i32 %i.c to i64                    ; 5 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.be
  %i.bg = add nsw i32 %i.c, 1
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bh
  %i.bj = add nsw i32 %i.c, 2
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bk
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bh
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bx = load <2 x float>, ptr %4, align 4, !tbaa !14
  %i.by = load <2 x float>, ptr %5, align 4, !tbaa !14 ; 2 uses
  %i.bz = extractelement <2 x float> %i.h, i64 0
  store float %i.bz, ptr %i.bf, align 4, !tbaa !14
  %i.ca = load float, ptr %i.f, align 4, !tbaa !14
  store float %i.ca, ptr %i.bi, align 4, !tbaa !14
  %i.cb = load float, ptr %i.g, align 4, !tbaa !14
  store float %i.cb, ptr %i.bl, align 4, !tbaa !14
  %i.cc = load float, ptr %10, align 4, !tbaa !14
  %i.cd = fneg float %i.cc
  store float %i.cd, ptr %i.bm, align 4, !tbaa !14
  %i.ce = load float, ptr %i.f, align 4, !tbaa !14
  %i.cf = fneg float %i.ce
  store float %i.cf, ptr %i.bn, align 4, !tbaa !14
  %i.cg = load float, ptr %i.g, align 4, !tbaa !14
  %i.ch = fneg float %i.cg
  store float %i.ch, ptr %i.bo, align 4, !tbaa !14
  %i.ci = load float, ptr %i.bp, align 4, !tbaa !14
  %i.cj = load float, ptr %i.bq, align 4, !tbaa !14
  %i.ck = load float, ptr %i.bt, align 4, !tbaa !14
  %i.cl = load float, ptr %i.bu, align 4, !tbaa !14
  %i.cm = load float, ptr %10, align 4, !tbaa !14 ; 2 uses
  %i.cn = fneg float %i.cm
  %i.co = load <2 x float>, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.cp = load <2 x float>, ptr %i.bs, align 4, !tbaa !14 ; 2 uses
  %i.cq = fsub <2 x float> %i.co, %i.cp           ; 2 uses
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.ci, i64 1
  %i.ct = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x float> %i.ct, float %i.cj, i64 1
  %i.cv = fsub <2 x float> %i.cs, %i.cu           ; 2 uses
  %i.cw = load <2 x float>, ptr %i.f, align 4, !tbaa !14 ; 3 uses
  %i.cx = load <2 x float>, ptr %i.bv, align 8, !tbaa !14 ; 2 uses
  %i.cy = load <2 x float>, ptr %i.bw, align 4, !tbaa !14 ; 2 uses
  %i.cz = fsub <2 x float> %i.cx, %i.cy           ; 2 uses
  %i.da = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x float> %i.da, float %i.ck, i64 1
  %i.dc = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = insertelement <2 x float> %i.dc, float %i.cl, i64 1
  %i.de = fsub <2 x float> %i.db, %i.dd           ; 2 uses
  %i.df = shufflevector <2 x float> %i.cz, <2 x float> %i.cq, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.dg = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.di = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dk = shufflevector <2 x float> %i.h, <2 x float> %i.by, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.dl = insertelement <4 x float> %i.dk, float %i.cn, i64 1
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dn = fmul <4 x float> %i.dj, %i.dm
  %i.do = shufflevector <2 x float> %i.de, <2 x float> %i.cv, <4 x i32> <i32 poison, i32 1, i32 poison, i32 3>
  %i.dp = shufflevector <4 x float> %i.dg, <4 x float> %i.do, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.dq = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ds = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dt = shufflevector <2 x float> %i.h, <2 x float> %i.cw, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.du = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.dt, <4 x float> %i.dn) ; 5 uses
  %i.dv = extractelement <4 x float> %i.du, i64 0
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.i, float %i.dv)
  %i.dx = extractelement <4 x float> %i.du, i64 2
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.i, float %i.dx)
  %i.dz = fsub float %i.dw, %i.dy
  %i.ea = fneg <2 x float> %i.cw                  ; 2 uses
  %i.eb = fmul <2 x float> %i.de, %i.ea
  %i.ec = insertelement <2 x float> %i.ds, float %i.cm, i64 1 ; 2 uses
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.ec, <2 x float> %i.eb) ; 2 uses
  %i.ee = shufflevector <4 x float> %i.du, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ef = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.du, <2 x i32> <i32 5, i32 1> ; 2 uses
  %i.eg = fmul <2 x float> %i.cv, %i.ea
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.ec, <2 x float> %i.eg) ; 2 uses
  %i.ei = insertelement <2 x float> %i.ee, float 0.000000e+00, i64 1
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1476
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !57, !range !65, !noundef !41
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = icmp eq i32 %12, 0
  %or.cond.not.i395 = and i1 %i.em, %i.el
  br i1 %or.cond.not.i395, label %bb.c, label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413

bb.c:                                             ; preds = %.split368
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.eo = load <2 x float>, ptr %i.en, align 4, !tbaa !14 ; 3 uses
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.ed, %i.ep
  %i.er = shufflevector <4 x float> %i.du, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.es = fmul <2 x float> %i.er, %i.eo           ; 2 uses
  %i.et = shufflevector <2 x float> %i.es, <2 x float> %i.ef, <2 x i32> <i32 0, i32 3>
  %i.eu = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = fmul <2 x float> %i.eh, %i.eu
  %i.ew = shufflevector <2 x float> %i.es, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413

_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413: ; preds = %.split368, %bb.c
  %.sroa.8.0.i397 = phi <2 x float> [ %i.et, %bb.c ], [ %i.ef, %.split368 ]
  %.sroa.082.0.i398 = phi <2 x float> [ %i.eq, %bb.c ], [ %i.ed, %.split368 ]
  %.sroa.9.0.i399 = phi <2 x float> [ %i.ew, %bb.c ], [ %i.ei, %.split368 ]
  %.sroa.0.0.i400 = phi <2 x float> [ %i.ev, %bb.c ], [ %i.eh, %.split368 ]
  %i.ex = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %i.ey = shl nsw i64 %i.be, 2
  %scevgep.i401 = getelementptr i8, ptr %i.ex, i64 %i.ey ; 2 uses
  store <2 x float> %.sroa.082.0.i398, ptr %scevgep.i401, align 4, !tbaa !14
  %.sroa.8.0.scevgep.sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %scevgep.i401, i64 8
  %.sroa.8.0.vec.extract.i403 = extractelement <2 x float> %.sroa.8.0.i397, i64 0
  store float %.sroa.8.0.vec.extract.i403, ptr %.sroa.8.0.scevgep.sroa_idx.i402, align 4, !tbaa !14
  %i.ez = load ptr, ptr %i.bb, align 8, !tbaa !78 ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.be ; 2 uses
  %i.fb = fneg <2 x float> %.sroa.0.0.i400
  store <2 x float> %i.fb, ptr %i.fa, align 4, !tbaa !14
  %.sroa.9.8.vec.extract81.i406 = extractelement <2 x float> %.sroa.9.0.i399, i64 0
  %i.fc = fneg float %.sroa.9.8.vec.extract81.i406
  %i.fd = getelementptr i8, ptr %i.fa, i64 8
  store float %i.fc, ptr %i.fd, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit
  %.pre-phi = phi i64 [ %i.be, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ %i.ab, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ] ; 4 uses
  %i.fe = phi ptr [ %i.ez, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ %i.aa, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ]
  %i.ff = phi ptr [ %i.ex, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ %i.y, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ]
  %i.fg = phi float [ 1.000000e+00, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ -1.000000e+00, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ] ; 2 uses
  %i.fh = phi float [ %i.dz, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ %i.x, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ] ; 6 uses
  %i.fi = load float, ptr %8, align 8, !tbaa !116
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !70
  %i.fl = fmul float %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !63
  %i.fo = fmul float %i.fl, %i.fn
  %i.fp = fmul float %i.fg, %i.fo                 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !117 ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %.pre-phi ; 2 uses
  store float %i.fp, ptr %i.fs, align 4, !tbaa !14
  %i.ft = load float, ptr %i.fj, align 4, !tbaa !70
  %i.fu = fneg float %i.fh
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.ft, float %i.fp) ; 2 uses
end_hunk_0
