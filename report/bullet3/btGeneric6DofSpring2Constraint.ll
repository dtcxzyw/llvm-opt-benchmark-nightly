Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofSpring2Constraint?download=true
inline.NumInlined: 593
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN30btGeneric6DofSpring2Constraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_:.peel.begin
  %.in81 = select i1 %.not80, ptr %i.av, ptr %i.fz
  %i.ga = load float, ptr %.in81, align 4, !tbaa !13
  store float %i.ga, ptr %i.e, align 4, !tbaa !104
  %i.gb = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %.cmp.not = icmp eq i64 %indvars.iv, 2
  %i.gc = add i64 %indvars.iv, 4294967295
  %i.gd = select i1 %.cmp.not, i64 0, i64 %i.gb
  %i.ge = getelementptr inbounds nuw [88 x i8], ptr %i.ay, i64 %i.gd ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 84
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !91
  switch i32 %i.gg, label %.thread.fold.split [
    i32 1, label %.thread
    i32 2, label %.thread
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gi = load float, ptr %i.gh, align 8, !tbaa !92
  %i.gj = tail call float @llvm.fabs.f32(float %i.gi)
  %i.gk = fpext float %i.gj to double
  %or.cond82 = fcmp ogt double %i.gk, 1.000000e-03
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gm = load float, ptr %i.gl, align 8, !tbaa !92
  %i.gn = fpext float %i.gm to double
  %i.go = fcmp olt double %i.gn, -1.000000e-03
  br i1 %i.go, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 76
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !93
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
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !91
  switch i32 %i.gx, label %.split71 [
    i32 1, label %bb.ac
    i32 2, label %bb.ac
    i32 3, label %bb.z
    i32 4, label %bb.aa
  ]

bb.z:                                             ; preds = %.thread
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 72
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !92
  %i.ha = tail call float @llvm.fabs.f32(float %i.gz)
  %i.hb = fpext float %i.ha to double
  %or.cond83 = fcmp ogt double %i.hb, 1.000000e-03
  br i1 %or.cond83, label %bb.ac, label %.split71

bb.aa:                                            ; preds = %.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 72
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !92
  %i.he = fpext float %i.hd to double
  %i.hf = fcmp olt double %i.he, -1.000000e-03
  br i1 %i.hf, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 76
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !93
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
  br i1 %exitcond.not, label %.loopexit, label %bb.n, !llvm.loop !109
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 6) i32 @_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef readonly %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !112  ; 4 uses
  %i.c = mul nsw i32 %i.b, %9                     ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !91
  switch i32 %i.e, label %bb.t [
    i32 4, label %bb.b
    i32 3, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %.not378 = icmp eq i32 %11, 0                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 5 uses
  %i.g = load <2 x float>, ptr %10, align 4, !tbaa !13 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br i1 %.not378, label %.split368, label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit

_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit: ; preds = %bb.b
  %i.k = load <4 x float>, ptr %6, align 4
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !13
  %i.o = load <2 x float>, ptr %6, align 4, !tbaa !13 ; 2 uses
  %i.p = load <2 x float>, ptr %7, align 4, !tbaa !13 ; 2 uses
  %i.q = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 1, i32 3>
  %i.s = fmul <2 x float> %i.q, %i.r
  %i.t = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.u, <2 x float> %i.s)
  %i.w = insertelement <2 x float> %i.l, float %i.n, i64 1
  %i.x = insertelement <2 x float> poison, float %i.i, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.v) ; 2 uses
  %shift = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.z, %shift
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !113 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !113 ; 4 uses
  %i.ae = sext i32 %i.c to i64                    ; 3 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = extractelement <2 x float> %i.g, i64 0
  store float %i.ag, ptr %i.af, align 4, !tbaa !13
  %i.ah = load float, ptr %i.f, align 4, !tbaa !13
  %i.ai = add nsw i32 %i.c, 1
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.aj
  store float %i.ah, ptr %i.ak, align 4, !tbaa !13
  %i.al = load float, ptr %i.h, align 4, !tbaa !13
  %i.am = add nsw i32 %i.c, 2
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.an
  store float %i.al, ptr %i.ao, align 4, !tbaa !13
  %i.ap = load float, ptr %10, align 4, !tbaa !13
  %i.aq = fneg float %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  store float %i.aq, ptr %i.ar, align 4, !tbaa !13
  %i.as = load float, ptr %i.f, align 4, !tbaa !13
  %i.at = fneg float %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.aj
  store float %i.at, ptr %i.au, align 4, !tbaa !13
  %i.av = load float, ptr %i.h, align 4, !tbaa !13
  %i.aw = fneg float %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.an
  store float %i.aw, ptr %i.ax, align 4, !tbaa !13
  br label %bb.d

.split368:                                        ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !113 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !113 ; 3 uses
  %i.bh = sext i32 %i.c to i64                    ; 5 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = add nsw i32 %i.c, 1
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bk
  %i.bm = add nsw i32 %i.c, 2
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bk
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 52
  %13 = load <4 x float>, ptr %4, align 4         ; 2 uses
  %i.ca = load <2 x float>, ptr %5, align 4, !tbaa !13 ; 2 uses
  %i.cb = extractelement <2 x float> %i.g, i64 0
  store float %i.cb, ptr %i.bi, align 4, !tbaa !13
  %i.cc = load float, ptr %i.f, align 4, !tbaa !13
  store float %i.cc, ptr %i.bl, align 4, !tbaa !13
  %i.cd = load float, ptr %i.h, align 4, !tbaa !13
  store float %i.cd, ptr %i.bo, align 4, !tbaa !13
  %i.ce = load float, ptr %10, align 4, !tbaa !13
  %i.cf = fneg float %i.ce
  store float %i.cf, ptr %i.bp, align 4, !tbaa !13
  %i.cg = load float, ptr %i.f, align 4, !tbaa !13
  %i.ch = fneg float %i.cg
  store float %i.ch, ptr %i.bq, align 4, !tbaa !13
  %i.ci = load float, ptr %i.h, align 4, !tbaa !13
  %i.cj = fneg float %i.ci
  store float %i.cj, ptr %i.br, align 4, !tbaa !13
  %i.ck = load float, ptr %i.bs, align 4, !tbaa !13
  %i.cl = load float, ptr %i.bt, align 4, !tbaa !13
  %i.cm = load float, ptr %i.bw, align 4, !tbaa !13
  %i.cn = load float, ptr %i.bx, align 4, !tbaa !13
  %i.co = load float, ptr %10, align 4, !tbaa !13 ; 2 uses
  %i.cp = fneg float %i.co
  %i.cq = load <2 x float>, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.cr = load <2 x float>, ptr %i.bv, align 4, !tbaa !13 ; 2 uses
  %i.cs = fsub <2 x float> %i.cq, %i.cr           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x float> %i.ct, float %i.ck, i64 1
  %i.cv = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x float> %i.cv, float %i.cl, i64 1
  %i.cx = fsub <2 x float> %i.cu, %i.cw           ; 2 uses
  %i.cy = load <2 x float>, ptr %i.f, align 4, !tbaa !13 ; 3 uses
  %i.cz = load <2 x float>, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.da = load <2 x float>, ptr %i.bz, align 4, !tbaa !13 ; 2 uses
  %i.db = fsub <2 x float> %i.cz, %i.da           ; 2 uses
  %i.dc = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = insertelement <2 x float> %i.dc, float %i.cm, i64 1
  %i.de = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x float> %i.de, float %i.cn, i64 1
  %i.dg = fsub <2 x float> %i.dd, %i.df           ; 2 uses
  %i.dh = shufflevector <2 x float> %i.db, <2 x float> %i.cs, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %13, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.dj = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dl = shufflevector <2 x float> %i.g, <2 x float> %i.ca, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.dm = insertelement <4 x float> %i.dl, float %i.cp, i64 1
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.do = fmul <4 x float> %i.dk, %i.dn
  %i.dp = shufflevector <2 x float> %i.dg, <2 x float> %i.cx, <4 x i32> <i32 poison, i32 1, i32 poison, i32 3>
  %i.dq = shufflevector <4 x float> %13, <4 x float> %i.dp, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.dr = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.dt = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = shufflevector <2 x float> %i.g, <2 x float> %i.cy, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.du, <4 x float> %i.do) ; 5 uses
  %i.dw = extractelement <4 x float> %i.dv, i64 0
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.az, float %i.i, float %i.dw)
  %i.dy = extractelement <4 x float> %i.dv, i64 2
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.i, float %i.dy)
  %i.ea = fsub float %i.dx, %i.dz
  %i.eb = fneg <2 x float> %i.cy                  ; 2 uses
  %i.ec = fmul <2 x float> %i.dg, %i.eb
  %i.ed = insertelement <2 x float> %i.dt, float %i.co, i64 1 ; 2 uses
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.ed, <2 x float> %i.ec) ; 2 uses
  %i.ef = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.eg = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.dv, <2 x i32> <i32 5, i32 1> ; 2 uses
  %i.eh = fmul <2 x float> %i.cx, %i.eb
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ed, <2 x float> %i.eh) ; 2 uses
  %i.ej = insertelement <2 x float> %i.ef, float 0.000000e+00, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1476
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !81, !range !97, !noundef !41
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = icmp eq i32 %12, 0
  %or.cond.not.i395 = and i1 %i.en, %i.em
  br i1 %or.cond.not.i395, label %bb.c, label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413

bb.c:                                             ; preds = %.split368
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.ep = load <2 x float>, ptr %i.eo, align 4, !tbaa !13 ; 3 uses
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.ee, %i.eq
  %i.es = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.et = fmul <2 x float> %i.es, %i.ep           ; 2 uses
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> %i.eg, <2 x i32> <i32 0, i32 3>
  %i.ev = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ew = fmul <2 x float> %i.ei, %i.ev
  %i.ex = shufflevector <2 x float> %i.et, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413

_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413: ; preds = %.split368, %bb.c
  %.sroa.8.0.i397 = phi <2 x float> [ %i.eu, %bb.c ], [ %i.eg, %.split368 ]
  %.sroa.082.0.i398 = phi <2 x float> [ %i.er, %bb.c ], [ %i.ee, %.split368 ]
  %.sroa.9.0.i399 = phi <2 x float> [ %i.ex, %bb.c ], [ %i.ej, %.split368 ]
  %.sroa.0.0.i400 = phi <2 x float> [ %i.ew, %bb.c ], [ %i.ei, %.split368 ]
  %i.ey = load ptr, ptr %i.j, align 8, !tbaa !114 ; 2 uses
  %i.ez = shl nsw i64 %i.bh, 2
  %scevgep.i401 = getelementptr i8, ptr %i.ey, i64 %i.ez ; 2 uses
  store <2 x float> %.sroa.082.0.i398, ptr %scevgep.i401, align 4, !tbaa !13
  %.sroa.8.0.scevgep.sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %scevgep.i401, i64 8
  %.sroa.8.0.vec.extract.i403 = extractelement <2 x float> %.sroa.8.0.i397, i64 0
  store float %.sroa.8.0.vec.extract.i403, ptr %.sroa.8.0.scevgep.sroa_idx.i402, align 4, !tbaa !13
  %i.fa = load ptr, ptr %i.be, align 8, !tbaa !115 ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.bh ; 2 uses
  %i.fc = fneg <2 x float> %.sroa.0.0.i400
  store <2 x float> %i.fc, ptr %i.fb, align 4, !tbaa !13
  %.sroa.9.8.vec.extract81.i406 = extractelement <2 x float> %.sroa.9.0.i399, i64 0
  %i.fd = fneg float %.sroa.9.8.vec.extract81.i406
  %i.fe = getelementptr i8, ptr %i.fb, i64 8
  store float %i.fd, ptr %i.fe, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit
  %.pre-phi = phi i64 [ %i.bh, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ %i.ae, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ] ; 4 uses
  %i.ff = phi ptr [ %i.fa, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ %i.ad, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ]
  %i.fg = phi ptr [ %i.ey, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ %i.ab, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ]
  %i.fh = phi float [ 1.000000e+00, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ -1.000000e+00, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ] ; 2 uses
  %i.fi = phi float [ %i.ea, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit413 ], [ %i.aa, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit ] ; 6 uses
  %i.fj = load float, ptr %8, align 8, !tbaa !116
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !103
  %i.fm = fmul float %i.fj, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !92
  %i.fp = fmul float %i.fm, %i.fo
  %i.fq = fmul float %i.fh, %i.fp                 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !117 ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.pre-phi ; 2 uses
  store float %i.fq, ptr %i.ft, align 4, !tbaa !13
  %i.fu = load float, ptr %i.fk, align 4, !tbaa !103
  %i.fv = fneg float %i.fi
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fu, float %i.fq) ; 2 uses
  br i1 %.not378, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fx = fcmp ogt float %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !105
  %i.ga = fneg float %i.fz
  %i.gb = fmul float %i.fi, %i.ga                 ; 2 uses
  %i.gc = fcmp ogt float %i.gb, %i.fq
  br i1 %i.gc, label %.sink.split, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.gd = fcmp olt float %i.fw, 0.000000e+00
  br i1 %i.gd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !105
  %i.gg = fneg float %i.gf
  %i.gh = fmul float %i.fi, %i.gg                 ; 2 uses
  %i.gi = fcmp olt float %i.gh, %i.fq
  br i1 %i.gi, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %bb.f
  %.sink = phi float [ %i.gb, %bb.f ], [ %i.gh, %bb.h ]
  %.in50.i416.v.ph = phi i64 [ 32, %bb.f ], [ 24, %bb.h ]
  %.in.i415.v.ph = phi i64 [ 16, %bb.f ], [ 8, %bb.h ]
  %.ph = phi float [ f0x7F7FFFFF, %bb.f ], [ 0.000000e+00, %bb.h ]
  %.ph639 = phi float [ 0.000000e+00, %bb.f ], [ f0xFF7FFFFF, %bb.h ]
  store float %.sink, ptr %i.ft, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %bb.f, %bb.g, %bb.e
  %.in50.i416.v = phi i64 [ 24, %bb.g ], [ 32, %bb.f ], [ 32, %bb.e ], [ 24, %bb.h ], [ %.in50.i416.v.ph, %.sink.split ]
  %.in.i415.v = phi i64 [ 8, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ 8, %bb.h ], [ %.in.i415.v.ph, %.sink.split ]
  %i.gj = phi float [ 0.000000e+00, %bb.g ], [ f0x7F7FFFFF, %bb.f ], [ f0x7F7FFFFF, %bb.e ], [ 0.000000e+00, %bb.h ], [ %.ph, %.sink.split ]
  %i.gk = phi float [ f0xFF7FFFFF, %bb.g ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ], [ f0xFF7FFFFF, %bb.h ], [ %.ph639, %.sink.split ]
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !118 ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %.pre-phi
  store float %i.gk, ptr %i.gn, align 4, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !119 ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %.pre-phi
  store float %i.gj, ptr %i.gq, align 4, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !101
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !98 ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %.pre-phi
  store float %i.gs, ptr %i.gv, align 4, !tbaa !13
  %i.gw = add nsw i32 %i.c, %i.b                  ; 4 uses
  %.in.i415 = getelementptr inbounds nuw i8, ptr %8, i64 %.in.i415.v
  %i.gx = load ptr, ptr %.in.i415, align 8, !tbaa !113 ; 3 uses
  %.in50.i416 = getelementptr inbounds nuw i8, ptr %8, i64 %.in50.i416.v
  %i.gy = load ptr, ptr %.in50.i416, align 8, !tbaa !113 ; 3 uses
  %i.gz = load float, ptr %10, align 4, !tbaa !13
  %i.ha = sext i32 %i.gw to i64                   ; 8 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.ha
  store float %i.gz, ptr %i.hb, align 4, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !13
  %i.he = add nsw i32 %i.gw, 1
  %i.hf = sext i32 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hf
  store float %i.hd, ptr %i.hg, align 4, !tbaa !13
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !13
  %i.hj = add nsw i32 %i.gw, 2
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hk
  store float %i.hi, ptr %i.hl, align 4, !tbaa !13
  %i.hm = load float, ptr %10, align 4, !tbaa !13
  %i.hn = fneg float %i.hm
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  store float %i.hn, ptr %i.ho, align 4, !tbaa !13
  %i.hp = load float, ptr %i.hc, align 4, !tbaa !13
  %i.hq = fneg float %i.hp
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hf
  store float %i.hq, ptr %i.hr, align 4, !tbaa !13
  %i.hs = load float, ptr %i.hh, align 4, !tbaa !13
  %i.ht = fneg float %i.hs
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hk
  store float %i.ht, ptr %i.hu, align 4, !tbaa !13
  br i1 %.not378, label %bb.j, label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit441

bb.j:                                             ; preds = %bb.i
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hx = load float, ptr %i.hv, align 4, !tbaa !13
  %i.hy = load float, ptr %i.hw, align 4, !tbaa !13
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.id = load float, ptr %i.ib, align 4, !tbaa !13
  %i.ie = load float, ptr %i.ic, align 4, !tbaa !13
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ih = load float, ptr %10, align 4, !tbaa !13 ; 2 uses
  %i.ii = fneg float %i.ih
  %i.ij = load <2 x float>, ptr %i.hz, align 8, !tbaa !13 ; 2 uses
  %i.ik = load <2 x float>, ptr %i.ia, align 4, !tbaa !13 ; 2 uses
  %i.il = fsub <2 x float> %i.ij, %i.ik           ; 2 uses
  %i.im = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.in = insertelement <2 x float> %i.im, float %i.hx, i64 1
  %i.io = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ip = insertelement <2 x float> %i.io, float %i.hy, i64 1
  %i.iq = fsub <2 x float> %i.in, %i.ip           ; 2 uses
  %i.ir = load <2 x float>, ptr %i.hc, align 4, !tbaa !13 ; 3 uses
  %i.is = fneg <2 x float> %i.ir                  ; 2 uses
  %i.it = load <2 x float>, ptr %i.if, align 8, !tbaa !13 ; 2 uses
  %i.iu = load <2 x float>, ptr %i.ig, align 4, !tbaa !13 ; 2 uses
  %i.iv = fsub <2 x float> %i.it, %i.iu           ; 2 uses
  %i.iw = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
end_hunk_0
begin_hunk_1_@_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii:bb.a
  br i1 %.not380, label %bb.ae, label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit525

bb.ae:                                            ; preds = %bb.ad
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.xi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.xj = load float, ptr %i.xh, align 4, !tbaa !13
  %i.xk = load float, ptr %i.xi, align 4, !tbaa !13
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.xm = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.xo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.xp = load float, ptr %i.xn, align 4, !tbaa !13
  %i.xq = load float, ptr %i.xo, align 4, !tbaa !13
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.xt = load float, ptr %10, align 4, !tbaa !13 ; 2 uses
  %i.xu = fneg float %i.xt
  %i.xv = load <2 x float>, ptr %i.xl, align 8, !tbaa !13 ; 2 uses
  %i.xw = load <2 x float>, ptr %i.xm, align 4, !tbaa !13 ; 2 uses
  %i.xx = fsub <2 x float> %i.xv, %i.xw           ; 2 uses
  %i.xy = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xz = insertelement <2 x float> %i.xy, float %i.xj, i64 1
  %i.ya = shufflevector <2 x float> %i.xw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yb = insertelement <2 x float> %i.ya, float %i.xk, i64 1
  %i.yc = fsub <2 x float> %i.xz, %i.yb           ; 2 uses
  %i.yd = load <2 x float>, ptr %i.wo, align 4, !tbaa !13 ; 3 uses
  %i.ye = fneg <2 x float> %i.yd                  ; 2 uses
  %i.yf = load <2 x float>, ptr %i.xr, align 8, !tbaa !13 ; 2 uses
  %i.yg = load <2 x float>, ptr %i.xs, align 4, !tbaa !13 ; 2 uses
  %i.yh = fsub <2 x float> %i.yf, %i.yg           ; 2 uses
  %i.yi = shufflevector <2 x float> %i.yf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yj = insertelement <2 x float> %i.yi, float %i.xp, i64 1
  %i.yk = shufflevector <2 x float> %i.yg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yl = insertelement <2 x float> %i.yk, float %i.xq, i64 1
  %i.ym = fsub <2 x float> %i.yj, %i.yl           ; 2 uses
  %i.yn = fmul <2 x float> %i.ym, %i.ye
  %i.yo = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yp = insertelement <2 x float> %i.yo, float %i.xt, i64 1 ; 2 uses
  %i.yq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yh, <2 x float> %i.yp, <2 x float> %i.yn) ; 2 uses
  %i.yr = fmul <2 x float> %i.yc, %i.ye
  %i.ys = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xx, <2 x float> %i.yp, <2 x float> %i.yr) ; 2 uses
  %i.yt = shufflevector <2 x float> %i.yh, <2 x float> %i.xx, <2 x i32> <i32 0, i32 2>
  %i.yu = insertelement <2 x float> poison, float %i.xu, i64 0
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yw = fmul <2 x float> %i.yt, %i.yv
  %i.yx = shufflevector <2 x float> %i.ym, <2 x float> %i.yc, <2 x i32> <i32 1, i32 3>
  %i.yy = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yx, <2 x float> %i.yy, <2 x float> %i.yw) ; 3 uses
  %i.za = insertelement <2 x float> %i.yz, float 0.000000e+00, i64 1
  %i.zb = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.yz, <2 x i32> <i32 3, i32 1>
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 1476
  %i.zd = load i8, ptr %i.zc, align 4, !tbaa !81, !range !97, !noundef !41
  %i.ze = trunc nuw i8 %i.zd to i1
  %i.zf = icmp eq i32 %12, 0
  %or.cond.not.i507 = and i1 %i.zf, %i.ze
  br i1 %or.cond.not.i507, label %bb.af, label %.preheader.i508

bb.af:                                            ; preds = %bb.ae
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.zh = load <2 x float>, ptr %i.zg, align 4, !tbaa !13 ; 3 uses
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = fmul <2 x float> %i.yq, %i.zi
  %i.zk = fmul <2 x float> %i.yz, %i.zh           ; 2 uses
  %i.zl = insertelement <2 x float> %i.zk, float 0.000000e+00, i64 1
  %i.zm = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zn = fmul <2 x float> %i.ys, %i.zm
  %i.zo = shufflevector <2 x float> %i.zk, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %.preheader.i508

.preheader.i508:                                  ; preds = %bb.af, %bb.ae
  %.sroa.8.0.i509 = phi <2 x float> [ %i.zl, %bb.af ], [ %i.za, %bb.ae ]
  %.sroa.082.0.i510 = phi <2 x float> [ %i.zj, %bb.af ], [ %i.yq, %bb.ae ]
  %.sroa.9.0.i511 = phi <2 x float> [ %i.zo, %bb.af ], [ %i.zb, %bb.ae ]
  %.sroa.0.0.i512 = phi <2 x float> [ %i.zn, %bb.af ], [ %i.ys, %bb.ae ]
  %i.zp = load ptr, ptr %i.wf, align 8, !tbaa !114
  %i.zq = shl nsw i64 %i.wm, 2
  %scevgep.i513 = getelementptr i8, ptr %i.zp, i64 %i.zq ; 2 uses
  store <2 x float> %.sroa.082.0.i510, ptr %scevgep.i513, align 4, !tbaa !13
  %.sroa.8.0.scevgep.sroa_idx.i514 = getelementptr inbounds nuw i8, ptr %scevgep.i513, i64 8
  %.sroa.8.0.vec.extract.i515 = extractelement <2 x float> %.sroa.8.0.i509, i64 0
  store float %.sroa.8.0.vec.extract.i515, ptr %.sroa.8.0.scevgep.sroa_idx.i514, align 4, !tbaa !13
  %i.zr = load ptr, ptr %i.wi, align 8, !tbaa !115
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.wm ; 2 uses
  %i.zt = fneg <2 x float> %.sroa.0.0.i512
  store <2 x float> %i.zt, ptr %i.zs, align 4, !tbaa !13
  %.sroa.9.8.vec.extract81.i518 = extractelement <2 x float> %.sroa.9.0.i511, i64 0
  %i.zu = fneg float %.sroa.9.8.vec.extract81.i518
  %i.zv = getelementptr i8, ptr %i.zs, i64 8
  store float %i.zu, ptr %i.zv, align 4, !tbaa !13
  br label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit525

_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit525: ; preds = %bb.ad, %.preheader.i508
  %i.zw = fcmp olt float %.1361, 0.000000e+00     ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !108 ; 2 uses
  %i.zz = fneg float %i.zy
  %i.aaa = select i1 %i.zw, float %i.zz, float %i.zy ; 2 uses
  %i.aab = fneg float %i.aaa
  %i.aac = fcmp une float %.1361, 0.000000e+00
  br i1 %i.aac, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit525
  %i.aad = load float, ptr %1, align 4, !tbaa !88 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !89 ; 3 uses
  %i.aag = fcmp ogt float %i.aad, %i.aaf
  %i.aah = fcmp ogt float %.1361, 0.000000e+00    ; 2 uses
  br i1 %i.aag, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.aai = select i1 %i.aah, float %.1359, float f0xFF7FFFFF
  %i.aaj = select i1 %i.zw, float %.1359, float f0x7F7FFFFF
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.aak = fcmp ogt float %.1359, %i.aad
  %or.cond = select i1 %i.aah, i1 %i.aak, i1 false
  %i.aal = select i1 %or.cond, float %.1359, float %i.aad ; 2 uses
  %i.aam = fcmp olt float %.1359, %i.aaf
  %or.cond622 = select i1 %i.zw, i1 %i.aam, i1 false
  br i1 %or.cond622, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %.0356 = phi float [ %i.aai, %bb.ah ], [ %i.aal, %bb.ai ], [ %i.aal, %bb.aj ]
  %.0355 = phi float [ %i.aaj, %bb.ah ], [ %.1359, %bb.ai ], [ %i.aaf, %bb.aj ]
  %i.aan = load float, ptr %i.vu, align 4, !tbaa !90
  %i.aao = load float, ptr %8, align 8, !tbaa !116
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !104
  %i.aar = fmul float %i.aao, %i.aaq
  %i.aas = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %i.aan, float noundef %.0356, float noundef %.0355, float noundef %i.aab, float noundef %i.aar)
  br label %bb.al

bb.al:                                            ; preds = %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit525, %bb.ak
  %.0357 = phi float [ %i.aas, %bb.ak ], [ 0.000000e+00, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit525 ]
  %i.aat = fmul float %i.aaa, %.0357
  %i.aau = select i1 %.not380, i32 1, i32 -1
  %i.aav = sitofp i32 %i.aau to float
  %i.aaw = fmul float %i.aat, %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !117
  %i.aaz = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %i.wm
  store float %i.aaw, ptr %i.aaz, align 4, !tbaa !13
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !107
  %i.abc = fneg float %i.abb
  %i.abd = load float, ptr %8, align 8, !tbaa !116
  %i.abe = fdiv float %i.abc, %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !118
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.abg, i64 %i.wm
  store float %i.abe, ptr %i.abh, align 4, !tbaa !13
  %i.abi = load float, ptr %i.aba, align 4, !tbaa !107
  %i.abj = load float, ptr %8, align 8, !tbaa !116
  %i.abk = fdiv float %i.abi, %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !119
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.abm, i64 %i.wm
  store float %i.abk, ptr %i.abn, align 4, !tbaa !13
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !17
  %i.abq = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !98
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.wm
  store float %i.abp, ptr %i.abs, align 4, !tbaa !13
  %i.abt = load i32, ptr %i.a, align 8, !tbaa !112
  %i.abu = add nsw i32 %i.abt, %.1365634
  %i.abv = add nuw nsw i32 %.1363635, 1
  br label %.thread636

.thread636:                                       ; preds = %bb.t, %bb.al, %.thread631, %bb.z
  %.2366 = phi i32 [ %i.abu, %bb.al ], [ %.1365634, %.thread631 ], [ %i.vo, %bb.z ], [ %.0364, %bb.t ] ; 3 uses
  %.2 = phi i32 [ %i.abv, %bb.al ], [ %.1363635, %.thread631 ], [ %i.vp, %bb.z ], [ %.0362, %bb.t ] ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.abx = load i8, ptr %i.abw, align 4, !tbaa !22, !range !97, !noundef !41
  %i.aby = trunc nuw i8 %i.abx to i1
  br i1 %i.aby, label %bb.am, label %bb.bd

bb.am:                                            ; preds = %.thread636
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !90
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !106
  %i.acd = fsub float %i.aca, %i.acc
  %.not49.i526 = icmp eq i32 %11, 0               ; 5 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.in.i527 = select i1 %.not49.i526, ptr %i.acf, ptr %i.ace
  %i.acg = load ptr, ptr %.in.i527, align 8, !tbaa !113 ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.in50.i528 = select i1 %.not49.i526, ptr %i.aci, ptr %i.ach
  %i.acj = load ptr, ptr %.in50.i528, align 8, !tbaa !113 ; 3 uses
  %i.ack = load float, ptr %10, align 4, !tbaa !13
  %i.acl = sext i32 %.2366 to i64                 ; 9 uses
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.acl
  store float %i.ack, ptr %i.acm, align 4, !tbaa !13
  %i.acn = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 4 uses
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !13
  %i.acp = add nsw i32 %.2366, 1
  %i.acq = sext i32 %i.acp to i64                 ; 2 uses
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.acq
  store float %i.aco, ptr %i.acr, align 4, !tbaa !13
  %i.acs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.act = load float, ptr %i.acs, align 4, !tbaa !13
  %i.acu = add nsw i32 %.2366, 2
  %i.acv = sext i32 %i.acu to i64                 ; 2 uses
  %i.acw = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.acv
  store float %i.act, ptr %i.acw, align 4, !tbaa !13
  %i.acx = load float, ptr %10, align 4, !tbaa !13
  %i.acy = fneg float %i.acx
  %i.acz = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.acl
  store float %i.acy, ptr %i.acz, align 4, !tbaa !13
  %i.ada = load float, ptr %i.acn, align 4, !tbaa !13
  %i.adb = fneg float %i.ada
  %i.adc = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.acq
  store float %i.adb, ptr %i.adc, align 4, !tbaa !13
  %i.add = load float, ptr %i.acs, align 4, !tbaa !13
  %i.ade = fneg float %i.add
  %i.adf = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.acv
  store float %i.ade, ptr %i.adf, align 4, !tbaa !13
  br i1 %.not49.i526, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.adi = load float, ptr %i.adg, align 4, !tbaa !13
  %i.adj = load float, ptr %i.adh, align 4, !tbaa !13
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.adl = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.adn = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.adq = load float, ptr %i.ado, align 4, !tbaa !13
  %i.adr = load float, ptr %i.adp, align 4, !tbaa !13
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.adt = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 1316
  %i.adv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.adw = load float, ptr %10, align 4, !tbaa !13 ; 2 uses
  %i.adx = fneg float %i.adw
  %i.ady = load <2 x float>, ptr %i.adk, align 8, !tbaa !13 ; 2 uses
  %i.adz = load <2 x float>, ptr %i.adl, align 4, !tbaa !13 ; 2 uses
  %i.aea = fsub <2 x float> %i.ady, %i.adz        ; 2 uses
  %i.aeb = shufflevector <2 x float> %i.ady, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aec = insertelement <2 x float> %i.aeb, float %i.adi, i64 1
  %i.aed = shufflevector <2 x float> %i.adz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aee = insertelement <2 x float> %i.aed, float %i.adj, i64 1
  %i.aef = fsub <2 x float> %i.aec, %i.aee        ; 2 uses
  %i.aeg = load <2 x float>, ptr %i.acn, align 4, !tbaa !13 ; 3 uses
  %i.aeh = fneg <2 x float> %i.aeg                ; 2 uses
  %i.aei = load <2 x float>, ptr %i.ads, align 8, !tbaa !13 ; 2 uses
  %i.aej = load <2 x float>, ptr %i.adt, align 4, !tbaa !13 ; 2 uses
  %i.aek = fsub <2 x float> %i.aei, %i.aej        ; 2 uses
  %i.ael = shufflevector <2 x float> %i.aei, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aem = insertelement <2 x float> %i.ael, float %i.adq, i64 1
  %i.aen = shufflevector <2 x float> %i.aej, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aeo = insertelement <2 x float> %i.aen, float %i.adr, i64 1
  %i.aep = fsub <2 x float> %i.aem, %i.aeo        ; 2 uses
  %i.aeq = fmul <2 x float> %i.aep, %i.aeh
  %i.aer = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aes = insertelement <2 x float> %i.aer, float %i.adw, i64 1 ; 2 uses
  %i.aet = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aek, <2 x float> %i.aes, <2 x float> %i.aeq) ; 2 uses
  %i.aeu = fmul <2 x float> %i.aef, %i.aeh
  %i.aev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aea, <2 x float> %i.aes, <2 x float> %i.aeu) ; 2 uses
  %i.aew = shufflevector <2 x float> %i.aek, <2 x float> %i.aea, <2 x i32> <i32 0, i32 2>
  %i.aex = insertelement <2 x float> poison, float %i.adx, i64 0
  %i.aey = shufflevector <2 x float> %i.aex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aez = fmul <2 x float> %i.aew, %i.aey
  %i.afa = shufflevector <2 x float> %i.aep, <2 x float> %i.aef, <2 x i32> <i32 1, i32 3>
  %i.afb = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afa, <2 x float> %i.afb, <2 x float> %i.aez) ; 3 uses
  %i.afd = insertelement <2 x float> %i.afc, float 0.000000e+00, i64 1
  %i.afe = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.afc, <2 x i32> <i32 3, i32 1>
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 1476
  %i.afg = load i8, ptr %i.aff, align 4, !tbaa !81, !range !97, !noundef !41
  %i.afh = trunc nuw i8 %i.afg to i1
  %i.afi = icmp eq i32 %12, 0
  %or.cond.not.i535 = and i1 %i.afi, %i.afh
  br i1 %or.cond.not.i535, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.afk = load <2 x float>, ptr %i.afj, align 4, !tbaa !13 ; 3 uses
  %i.afl = shufflevector <2 x float> %i.afk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afm = fmul <2 x float> %i.aet, %i.afl
  %i.afn = fmul <2 x float> %i.afc, %i.afk        ; 2 uses
  %i.afo = insertelement <2 x float> %i.afn, float 0.000000e+00, i64 1
  %i.afp = shufflevector <2 x float> %i.afk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afq = fmul <2 x float> %i.aev, %i.afp
  %i.afr = shufflevector <2 x float> %i.afn, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.an
  %.sroa.8.0.i537 = phi <2 x float> [ %i.afo, %bb.ao ], [ %i.afd, %bb.an ]
  %.sroa.082.0.i538 = phi <2 x float> [ %i.afm, %bb.ao ], [ %i.aet, %bb.an ]
  %.sroa.9.0.i539 = phi <2 x float> [ %i.afr, %bb.ao ], [ %i.afe, %bb.an ]
  %.sroa.0.0.i540 = phi <2 x float> [ %i.afq, %bb.ao ], [ %i.aev, %bb.an ]
  %i.afs = load ptr, ptr %i.ace, align 8, !tbaa !114
  %i.aft = shl nsw i64 %i.acl, 2
  %scevgep.i541 = getelementptr i8, ptr %i.afs, i64 %i.aft ; 2 uses
  store <2 x float> %.sroa.082.0.i538, ptr %scevgep.i541, align 4, !tbaa !13
  %.sroa.8.0.scevgep.sroa_idx.i542 = getelementptr inbounds nuw i8, ptr %scevgep.i541, i64 8
  %.sroa.8.0.vec.extract.i543 = extractelement <2 x float> %.sroa.8.0.i537, i64 0
  store float %.sroa.8.0.vec.extract.i543, ptr %.sroa.8.0.scevgep.sroa_idx.i542, align 4, !tbaa !13
  %i.afu = load ptr, ptr %i.ach, align 8, !tbaa !115
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.acl ; 2 uses
  %i.afw = fneg <2 x float> %.sroa.0.0.i540
  store <2 x float> %i.afw, ptr %i.afv, align 4, !tbaa !13
  %.sroa.9.8.vec.extract81.i546 = extractelement <2 x float> %.sroa.9.0.i539, i64 0
  %i.afx = fneg float %.sroa.9.8.vec.extract81.i546
  %i.afy = getelementptr i8, ptr %i.afv, i64 8
  store float %i.afx, ptr %i.afy, align 4, !tbaa !13
  %i.afz = load float, ptr %8, align 8, !tbaa !116
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !25
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !23
  %14 = load <4 x float>, ptr %i.adu, align 4
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.age = load float, ptr %i.adv, align 4, !tbaa !13
  %16 = load <4 x float>, ptr %6, align 4
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.agf = load float, ptr %i.adm, align 4, !tbaa !13
  %i.agg = load float, ptr %i.adn, align 4, !tbaa !13
  %i.agh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !13
  %18 = load <4 x float>, ptr %4, align 4
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %20 = load <4 x float>, ptr %10, align 4        ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !13
  %i.agl = load <2 x float>, ptr %i.ado, align 4, !tbaa !13 ; 2 uses
  %i.agm = load <2 x float>, ptr %i.adp, align 4, !tbaa !13 ; 2 uses
  %i.agn = load <2 x float>, ptr %6, align 4, !tbaa !13 ; 2 uses
  %i.ago = load <2 x float>, ptr %i.adg, align 4, !tbaa !13 ; 2 uses
  %i.agp = load <2 x float>, ptr %i.adh, align 4, !tbaa !13 ; 2 uses
  %i.agq = shufflevector <2 x float> %i.agl, <2 x float> %i.ago, <2 x i32> <i32 0, i32 2>
  %i.agr = shufflevector <2 x float> %i.agm, <2 x float> %i.agp, <2 x i32> <i32 0, i32 2>
  %i.ags = fsub <2 x float> %i.agq, %i.agr        ; 2 uses
  %i.agt = shufflevector <2 x float> %i.agl, <2 x float> %i.ago, <2 x i32> <i32 1, i32 3>
  %i.agu = shufflevector <2 x float> %i.agm, <2 x float> %i.agp, <2 x i32> <i32 1, i32 3>
  %i.agv = fsub <2 x float> %i.agt, %i.agu        ; 2 uses
  %i.agw = insertelement <2 x float> %15, float %i.agf, i64 1
  %i.agx = insertelement <2 x float> poison, float %i.age, i64 0
  %i.agy = insertelement <2 x float> %i.agx, float %i.agg, i64 1
  %i.agz = fsub <2 x float> %i.agw, %i.agy        ; 2 uses
  %i.aha = fneg <2 x float> %i.agv
  %i.ahb = insertelement <2 x float> %17, float %i.agi, i64 1 ; 2 uses
  %i.ahc = fmul <2 x float> %i.ahb, %i.aha
  %i.ahd = load <2 x float>, ptr %7, align 4, !tbaa !13 ; 2 uses
  %i.ahe = shufflevector <2 x float> %i.agn, <2 x float> %i.ahd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ahf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahe, <2 x float> %i.agz, <2 x float> %i.ahc)
  %i.ahg = fneg <2 x float> %i.agz
  %i.ahh = shufflevector <2 x float> %i.agn, <2 x float> %i.ahd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ahi = fmul <2 x float> %i.ahh, %i.ahg
  %i.ahj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahb, <2 x float> %i.ags, <2 x float> %i.ahi)
  %i.ahk = fneg <2 x float> %i.ags
  %i.ahl = fmul <2 x float> %i.ahe, %i.ahk
  %i.ahm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahh, <2 x float> %i.agv, <2 x float> %i.ahl)
  %i.ahn = load <2 x float>, ptr %4, align 4, !tbaa !13 ; 2 uses
  %i.aho = load <2 x float>, ptr %5, align 4, !tbaa !13 ; 2 uses
  %i.ahp = shufflevector <2 x float> %i.ahn, <2 x float> %i.aho, <2 x i32> <i32 0, i32 2>
  %i.ahq = fadd <2 x float> %i.ahf, %i.ahp
  %i.ahr = shufflevector <2 x float> %i.ahn, <2 x float> %i.aho, <2 x i32> <i32 1, i32 3>
  %i.ahs = fadd <2 x float> %i.ahj, %i.ahr
  %i.aht = insertelement <2 x float> %19, float %i.agk, i64 1
  %i.ahu = fadd <2 x float> %i.ahm, %i.aht
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ahv = fmul <2 x float> %i.ahs, %21
  %i.ahw = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ahx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahq, <2 x float> %i.ahw, <2 x float> %i.ahv)
  %22 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ahy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahu, <2 x float> %22, <2 x float> %i.ahx) ; 2 uses
  %shift653 = shufflevector <2 x float> %i.ahy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop654 = fsub <2 x float> %i.ahy, %shift653
  %i.ahz = extractelement <2 x float> %foldExtExtBinop654, i64 0
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 452
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !68 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !43, !nonnull !41, !align !42
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 452
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !68 ; 2 uses
  %i.aii = insertelement <2 x float> poison, float %i.aid, i64 0
  %i.aij = insertelement <2 x float> %i.aii, float %i.aih, i64 1
  %i.aik = fdiv <2 x float> splat (float 1.000000e+00), %i.aij
  br label %bb.at

bb.ap:                                            ; preds = %bb.am
  %i.ail = load float, ptr %8, align 8, !tbaa !116 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !25 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !23 ; 2 uses
  %i.aiq = load float, ptr %6, align 4, !tbaa !13
  %i.air = load float, ptr %10, align 4, !tbaa !13 ; 8 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !13
  %i.aiu = load float, ptr %i.acn, align 4, !tbaa !13 ; 8 uses
  %i.aiv = fmul float %i.ait, %i.aiu
  %i.aiw = tail call float @llvm.fmuladd.f32(float %i.aiq, float %i.air, float %i.aiv)
  %i.aix = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !13
  %i.aiz = load float, ptr %i.acs, align 4, !tbaa !13 ; 8 uses
  %i.aja = tail call noundef float @llvm.fmuladd.f32(float %i.aiy, float %i.aiz, float %i.aiw)
  %i.ajb = load float, ptr %7, align 4, !tbaa !13
  %i.ajc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !13
  %i.aje = fmul float %i.aiu, %i.ajd
  %i.ajf = tail call float @llvm.fmuladd.f32(float %i.ajb, float %i.air, float %i.aje)
  %i.ajg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !13
  %i.aji = tail call noundef float @llvm.fmuladd.f32(float %i.ajh, float %i.aiz, float %i.ajf)
  %i.ajj = fsub float %i.aja, %i.aji              ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !40, !nonnull !41, !align !42 ; 10 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 452
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !68 ; 4 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !43, !nonnull !41, !align !42 ; 10 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 452
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !68 ; 4 uses
  %i.ajs = insertelement <2 x float> poison, float %i.ajn, i64 0
  %i.ajt = insertelement <2 x float> %i.ajs, float %i.ajr, i64 1
  %i.aju = fdiv <2 x float> splat (float 1.000000e+00), %i.ajt ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.ajw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ajx = load float, ptr %i.ajv, align 4, !tbaa !13
  %i.ajy = load float, ptr %i.ajw, align 4, !tbaa !13
  %i.ajz = fsub float %i.ajx, %i.ajy              ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.akb = load float, ptr %i.aka, align 8, !tbaa !13
  %i.akc = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !13
  %i.ake = fsub float %i.akb, %i.akd              ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !13
  %i.akh = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !13
  %i.akj = fsub float %i.akg, %i.aki              ; 2 uses
  %i.akk = fmul float %i.ake, %i.ake
  %i.akl = tail call float @llvm.fmuladd.f32(float %i.ajz, float %i.ajz, float %i.akk)
  %i.akm = tail call noundef float @llvm.fmuladd.f32(float %i.akj, float %i.akj, float %i.akl)
  %i.akn = fcmp une float %i.ajn, 0.000000e+00
  %i.ako = extractelement <2 x float> %i.aju, i64 0 ; 2 uses
  br i1 %i.akn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 1316
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !13
  %i.akr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !13
  %i.akt = fsub float %i.akq, %i.aks              ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !13
  %i.akw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !13
  %i.aky = fsub float %i.akv, %i.akx              ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.ala = load float, ptr %i.akz, align 8, !tbaa !13
  %i.alb = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !13
  %i.ald = fsub float %i.ala, %i.alc              ; 2 uses
  %i.ale = fmul float %i.ald, %i.ald
  %i.alf = tail call float @llvm.fmuladd.f32(float %i.aky, float %i.aky, float %i.ale)
  %i.alg = tail call noundef float @llvm.fmuladd.f32(float %i.akt, float %i.akt, float %i.alf)
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ajl, i64 372
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !13
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ajl, i64 376
  %i.alk = load float, ptr %i.alj, align 8, !tbaa !13
  %i.all = fmul float %i.alk, %i.aiu
  %i.alm = tail call float @llvm.fmuladd.f32(float %i.ali, float %i.air, float %i.all)
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ajl, i64 380
  %i.alo = load float, ptr %i.aln, align 4, !tbaa !13
  %i.alp = tail call noundef float @llvm.fmuladd.f32(float %i.alo, float %i.aiz, float %i.alm) ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.ajl, i64 388
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !13
  %i.als = getelementptr inbounds nuw i8, ptr %i.ajl, i64 392
  %i.alt = load float, ptr %i.als, align 8, !tbaa !13
  %i.alu = fmul float %i.aiu, %i.alt
  %i.alv = tail call float @llvm.fmuladd.f32(float %i.alr, float %i.air, float %i.alu)
  %i.alw = getelementptr inbounds nuw i8, ptr %i.ajl, i64 396
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !13
  %i.aly = tail call noundef float @llvm.fmuladd.f32(float %i.alx, float %i.aiz, float %i.alv) ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ajl, i64 404
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !13
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ajl, i64 408
  %i.amc = load float, ptr %i.amb, align 8, !tbaa !13
  %i.amd = fmul float %i.aiu, %i.amc
  %i.ame = tail call float @llvm.fmuladd.f32(float %i.ama, float %i.air, float %i.amd)
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ajl, i64 412
  %i.amg = load float, ptr %i.amf, align 4, !tbaa !13
  %i.amh = tail call noundef float @llvm.fmuladd.f32(float %i.amg, float %i.aiz, float %i.ame) ; 2 uses
  %i.ami = fmul float %i.aly, %i.aly
  %i.amj = tail call float @llvm.fmuladd.f32(float %i.alp, float %i.alp, float %i.ami)
  %i.amk = tail call noundef float @llvm.fmuladd.f32(float %i.amh, float %i.amh, float %i.amj)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.amk)
  %i.aml = fdiv float 1.000000e+00, %sqrt.i
  %i.amm = tail call float @llvm.fmuladd.f32(float %i.ako, float %i.alg, float %i.aml)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0350 = phi float [ %i.amm, %bb.aq ], [ %i.ako, %bb.ap ]
  %i.amn = fcmp une float %i.ajr, 0.000000e+00
  %i.amo = insertelement <2 x float> %i.aju, float %.0350, i64 0 ; 2 uses
  br i1 %i.amn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ajp, i64 372
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !13
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ajp, i64 376
  %i.ams = load float, ptr %i.amr, align 8, !tbaa !13
  %i.amt = fmul float %i.ams, %i.aiu
  %i.amu = tail call float @llvm.fmuladd.f32(float %i.amq, float %i.air, float %i.amt)
  %i.amv = getelementptr inbounds nuw i8, ptr %i.ajp, i64 380
  %i.amw = load float, ptr %i.amv, align 4, !tbaa !13
  %i.amx = tail call noundef float @llvm.fmuladd.f32(float %i.amw, float %i.aiz, float %i.amu) ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.ajp, i64 388
  %i.amz = load float, ptr %i.amy, align 4, !tbaa !13
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ajp, i64 392
  %i.anb = load float, ptr %i.ana, align 8, !tbaa !13
  %i.anc = fmul float %i.aiu, %i.anb
  %i.and = tail call float @llvm.fmuladd.f32(float %i.amz, float %i.air, float %i.anc)
  %i.ane = getelementptr inbounds nuw i8, ptr %i.ajp, i64 396
  %i.anf = load float, ptr %i.ane, align 4, !tbaa !13
  %i.ang = tail call noundef float @llvm.fmuladd.f32(float %i.anf, float %i.aiz, float %i.and) ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ajp, i64 404
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !13
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ajp, i64 408
  %i.ank = load float, ptr %i.anj, align 8, !tbaa !13
  %i.anl = fmul float %i.aiu, %i.ank
  %i.anm = tail call float @llvm.fmuladd.f32(float %i.ani, float %i.air, float %i.anl)
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ajp, i64 412
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !13
  %i.anp = tail call noundef float @llvm.fmuladd.f32(float %i.ano, float %i.aiz, float %i.anm) ; 2 uses
  %i.anq = fmul float %i.ang, %i.ang
  %i.anr = tail call float @llvm.fmuladd.f32(float %i.amx, float %i.amx, float %i.anq)
  %i.ans = tail call noundef float @llvm.fmuladd.f32(float %i.anp, float %i.anp, float %i.anr)
  %sqrt.i601 = tail call noundef float @llvm.sqrt.f32(float %i.ans)
  %i.ant = fdiv float 1.000000e+00, %sqrt.i601
  %i.anu = extractelement <2 x float> %i.aju, i64 1
  %i.anv = tail call float @llvm.fmuladd.f32(float %i.anu, float %i.akm, float %i.ant)
  %i.anw = insertelement <2 x float> %i.amo, float %i.anv, i64 1
  br label %bb.at

bb.at:                                            ; preds = %.thread, %bb.ar, %bb.as
  %i.anx = phi float [ %i.aih, %.thread ], [ %i.ajr, %bb.as ], [ %i.ajr, %bb.ar ]
  %i.any = phi float [ %i.aid, %.thread ], [ %i.ajn, %bb.as ], [ %i.ajn, %bb.ar ]
  %.0352621 = phi float [ %i.ahz, %.thread ], [ %i.ajj, %bb.as ], [ %i.ajj, %bb.ar ] ; 2 uses
  %.pn = phi float [ %i.afz, %.thread ], [ %i.ail, %bb.as ], [ %i.ail, %bb.ar ]
  %i.anz = phi float [ %i.agb, %.thread ], [ %i.ain, %bb.as ], [ %i.ain, %bb.ar ] ; 2 uses
  %i.aoa = phi float [ %i.agd, %.thread ], [ %i.aip, %bb.as ], [ %i.aip, %bb.ar ] ; 2 uses
  %i.aob = phi <2 x float> [ %i.aik, %.thread ], [ %i.anw, %bb.as ], [ %i.amo, %bb.ar ] ; 2 uses
  %i.aoc = fdiv float 1.000000e+00, %.pn          ; 7 uses
  %i.aod = fcmp oeq float %i.any, 0.000000e+00
  %i.aoe = extractelement <2 x float> %i.aob, i64 1 ; 3 uses
  br i1 %i.aod, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aof = fcmp oeq float %i.anx, 0.000000e+00
  %i.aog = extractelement <2 x float> %i.aob, i64 0 ; 3 uses
  br i1 %i.aof, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aoh = fmul float %i.aog, %i.aoe
  %i.aoi = fadd float %i.aog, %i.aoe
  %i.aoj = fdiv float %i.aoh, %i.aoi
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.av
  %.0 = phi float [ %i.aoj, %bb.av ], [ %i.aoe, %bb.at ], [ %i.aog, %bb.au ] ; 5 uses
  %i.aok = fdiv float %i.aoa, %.0
end_hunk_1
