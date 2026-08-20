inline.NumInlined: 15
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL16airocean_inverse5PJ_XYP8PJconsts:bb.a
  %i.ae = insertelement <2 x double> %i.ad, double %i.aa, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.ac, <2 x double> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = tail call noundef double @llvm.fmuladd.f64(double %i.v, double %i.ah, double %i.ag)
  %i.aj = fcmp ugt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load <2 x double>, ptr %i.h, align 8, !tbaa !50 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !62 ; 3 uses
  %i.an = fmul double %i.am, %i.q
  %i.ao = extractelement <2 x double> %i.ak, i64 1 ; 2 uses
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.m, double %i.an)
  %i.aq = fneg double %i.ap
  %i.ar = fmul double %0, %i.aq
  %i.as = extractelement <2 x double> %i.ak, i64 0
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.s, double %i.ar)
  %i.au = fmul double %1, %i.am
  %i.av = fsub double %i.ao, %i.au                ; 2 uses
  %i.aw = tail call noundef double @llvm.fmuladd.f64(double %i.v, double %i.av, double %i.at)
  %i.ax = fcmp ugt double %i.aw, 0.000000e+00
  br i1 %i.ax, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i: ; preds = %bb.c
  %i.ay = fmul double %1, %i.w
  %i.az = fsub double %i.x, %i.ay
  %i.ba = fneg double %i.av
  %i.bb = insertelement <2 x double> poison, double %i.r, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.am, i64 1
  %i.bd = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.aa, i64 1
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.w, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.bh, <2 x double> %i.bf) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = extractelement <2 x double> %i.bi, i64 1
  %i.bl = tail call noundef double @llvm.fmuladd.f64(double %0, double %i.bk, double %i.bj)
  %i.bm = fcmp ugt double %i.bl, 0.000000e+00
  br i1 %i.bm, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 23
  br i1 %exitcond.i, label %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread, label %bb.b, !llvm.loop !63

_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i
  %i.bn = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.e

_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 7360
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr %i.bo, i64 %indvars.iv.i ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !50, !noalias !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !50, !noalias !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !50, !noalias !64
  %i.by = load <2 x double>, ptr %i.bp, align 8, !tbaa !50, !noalias !64 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bq, align 8, !tbaa !50, !noalias !64 ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %1, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x double> %i.by, double %i.bs, i64 0
  %i.cd = fmul <2 x double> %i.cb, %i.cc
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> %i.by, <2 x i32> <i32 1, i32 2>
  %i.cf = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cf, <2 x double> %i.cd)
  %i.ch = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ci = insertelement <2 x double> %i.ch, double %i.bu, i64 0
  %i.cj = fadd <2 x double> %i.ci, %i.cg          ; 5 uses
  %i.ck = load <2 x double>, ptr %i.bv, align 8, !tbaa !50, !noalias !64 ; 2 uses
  %i.cl = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = insertelement <2 x double> %i.cl, double %1, i64 0
  %i.cn = shufflevector <2 x double> %i.ck, <2 x double> %i.cj, <2 x i32> <i32 1, i32 2>
  %i.co = fmul <2 x double> %i.cm, %i.cn
  %i.cp = shufflevector <2 x double> %i.ck, <2 x double> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.cq = insertelement <2 x double> %i.cj, double %0, i64 0
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cq, <2 x double> %i.co) ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0
  %i.ct = fadd double %i.bx, %i.cs                ; 3 uses
  %i.cu = extractelement <2 x double> %i.cr, i64 1
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cu)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.cv) ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv <2 x double> %i.cj, %i.cx          ; 2 uses
  %i.cz = fneg double %i.ct
  %i.da = fdiv double %i.cz, %sqrt
  %i.db = tail call double @acos(double noundef %i.da) #10
  %i.dc = fadd double %i.db, f0xBFF921FB54442D18  ; 3 uses
  %i.dd = extractelement <2 x double> %i.cy, i64 0
  %i.de = extractelement <2 x double> %i.cy, i64 1
  %i.df = tail call double @atan2(double noundef %i.dd, double noundef %i.de) #10 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !67
  %i.di = fcmp une double %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dj = fcmp olt double %i.dc, 0.000000e+00
  %i.dk = tail call double @tan(double noundef %i.dc) #10
  store volatile double %i.dk, ptr %i.a, align 8, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !68 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.do = load double, ptr %i.dn, align 8, !tbaa !69 ; 2 uses
  %i.dp = fsub double %i.dm, %i.do
  %i.dq = fdiv double %i.dp, %i.dm
  %i.dr = fsub double 1.000000e+00, %i.dq         ; 3 uses
  %i.ds = fmul double %i.dm, %i.dm
  %.0..0..0..0.7 = load volatile double, ptr %i.a, align 8, !tbaa !50
  %.0..0..0..0.8 = load volatile double, ptr %i.a, align 8, !tbaa !50
  %i.dt = fmul double %i.dr, %i.dr
  %i.du = tail call double @llvm.fmuladd.f64(double %.0..0..0..0.7, double %.0..0..0..0.8, double %i.dt)
  %i.dv = tail call double @sqrt(double noundef %i.du) #10
  %i.dw = fdiv double %i.do, %i.dv
  store volatile double %i.dw, ptr %i.b, align 8, !tbaa !50
  %.0..0..0..0.4 = load volatile double, ptr %i.b, align 8, !tbaa !50
  %.0..0..0..0.5 = load volatile double, ptr %i.b, align 8, !tbaa !50
  %i.dx = fneg double %.0..0..0..0.4
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %.0..0..0..0.5, double %i.ds)
  %i.dz = tail call double @sqrt(double noundef %i.dy) #10
  %.0..0..0..0.6 = load volatile double, ptr %i.b, align 8, !tbaa !50
  %i.ea = fmul double %i.dr, %.0..0..0..0.6
  %i.eb = fdiv double %i.dz, %i.ea
  %i.ec = tail call double @atan(double noundef %i.eb) #10 ; 2 uses
  %i.ed = fneg double %i.ec
  %.sroa.4.0 = select i1 %i.dj, double %i.ed, double %i.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit, %bb.d, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread
  %.sroa.4.2 = phi double [ +inf, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread ], [ %.sroa.4.0, %bb.d ], [ %i.dc, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit ]
  %.sroa.0.0 = phi double [ +inf, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread ], [ %i.df, %bb.d ], [ %i.df, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.4.2, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL16airocean_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.d = load double, ptr %i.c, align 8, !tbaa !67
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.g = load double, ptr %i.f, align 8, !tbaa !68 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.i = load double, ptr %i.h, align 8, !tbaa !69
  %i.j = fsub double %i.g, %i.i
  %i.k = fdiv double %i.j, %i.g
  %i.l = fsub double 1.000000e+00, %i.k           ; 2 uses
  %i.m = fmul double %i.l, %i.l
  %i.n = tail call double @tan(double noundef %1) #10
  %i.o = fmul double %i.n, %i.m
  %i.p = tail call double @atan(double noundef %i.o) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.p, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.q = tail call double @sin(double noundef %.0) #10 ; 6 uses
  %i.r = tail call double @cos(double noundef %.0) #10
  %i.s = tail call double @sin(double noundef %0) #10
  %i.t = tail call double @cos(double noundef %0) #10
  %i.u = insertelement <2 x double> poison, double %i.r, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x double> poison, double %i.t, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.s, i64 1
  %i.y = fmul <2 x double> %i.v, %i.x             ; 7 uses
  %i.z = extractelement <2 x double> %i.y, i64 1  ; 2 uses
  %i.aa = extractelement <2 x double> %i.y, i64 0 ; 2 uses
  %i.ab = fneg double %i.z                        ; 2 uses
  %i.ac = insertelement <2 x double> poison, double %i.q, i64 1 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv.i ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !62 ; 3 uses
  %i.aj = load <2 x double>, ptr %i.ag, align 8, !tbaa !50 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.al = load double, ptr %i.ak, align 8, !tbaa !45
  %i.am = fneg double %i.al                       ; 3 uses
  %3 = extractelement <2 x double> %i.aj, i64 1
  %i.an = fmul double %3, %i.am
  %4 = extractelement <2 x double> %i.aj, i64 0
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %i.ai, double %i.an)
  %6 = load double, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %7 = fmul double %i.q, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ai, double %7) ; 2 uses
  %8 = load double, ptr %i.af, align 8, !tbaa !57 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 0
  %i.ar = fneg <2 x double> %i.aq                 ; 2 uses
  %i.as = insertelement <2 x double> %i.ac, double %6, i64 0
  %i.at = fmul <2 x double> %i.as, %i.ar
  %i.au = insertelement <2 x double> %i.aj, double %5, i64 0
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.au, <2 x double> %i.at) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = extractelement <2 x double> %i.av, i64 1
  %i.ay = tail call noundef double @llvm.fmuladd.f64(double %8, double %i.ax, double %i.aw)
  %i.az = fcmp ugt double %i.ay, 0.000000e+00
  br i1 %i.az, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = load double, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !50 ; 3 uses
  %i.be = load double, ptr %i.bc, align 8, !tbaa !62 ; 2 uses
  %i.bf = fmul double %i.be, %i.am
  %i.bg = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.ai, double %i.bf)
  %i.bi = fneg double %i.bh
  %i.bj = fmul double %i.aa, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ao, double %i.bj)
  %i.bl = fmul double %i.be, %i.ab
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.q, double %i.bl) ; 2 uses
  %i.bn = tail call noundef double @llvm.fmuladd.f64(double %8, double %i.bm, double %i.bk)
  %i.bo = fcmp ugt double %i.bn, 0.000000e+00
  br i1 %i.bo, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i: ; preds = %bb.e
  %i.bp = shufflevector <2 x double> %i.aj, <2 x double> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bq = insertelement <2 x double> %i.ar, double %i.ab, i64 0
  %i.br = fmul <2 x double> %i.bp, %i.bq
  %i.bs = fneg double %i.bm
  %i.bt = fmul double %6, %i.bs
  %i.bu = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bv = insertelement <2 x double> %i.bu, double %i.q, i64 0
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.bv, <2 x double> %i.br) ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0
  %i.by = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.bx, double %i.bt)
  %i.bz = extractelement <2 x double> %i.bw, i64 1
  %i.ca = tail call noundef double @llvm.fmuladd.f64(double %i.aa, double %i.bz, double %i.by)
  %i.cb = fcmp ugt double %i.ca, 0.000000e+00
  br i1 %i.cb, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 23
  br i1 %exitcond.not.i, label %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread, label %bb.d, !llvm.loop !70

_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i
  %i.cc = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.f

_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 1656
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %indvars.iv.i ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 2208
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %indvars.iv.i ; 3 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !57, !noalias !71
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !45, !noalias !71
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !62, !noalias !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !62, !noalias !71
  %i.co = load <2 x double>, ptr %i.ce, align 8, !tbaa !50, !noalias !71 ; 2 uses
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> %i.y, <2 x i32> <i32 1, i32 3>
  %i.cq = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = shufflevector <2 x double> %i.co, <2 x double> %i.y, <2 x i32> <i32 0, i32 2>
  %i.cu = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cv, <2 x double> %i.cs)
  %i.cx = insertelement <2 x double> %i.ac, double %i.cl, i64 0
  %i.cy = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cz, <2 x double> %i.cw) ; 2 uses
  %i.db = extractelement <2 x double> %i.da, i64 0
  %i.dc = extractelement <2 x double> %i.da, i64 1
  %i.dd = fdiv double %i.db, %i.dc
  %i.de = fsub double 1.000000e+00, %i.dd
  %i.df = fneg double %i.de                       ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.y, <2 x double> %i.y) ; 2 uses
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.df, double %i.q, double %i.q)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 4416
  %i.dl = getelementptr inbounds nuw [128 x i8], ptr %i.dk, i64 %indvars.iv.i
  %i.dm = load <8 x double>, ptr %i.dl, align 8, !tbaa !50 ; 4 uses
  %i.dn = shufflevector <8 x double> %i.dm, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.do = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = fmul <2 x double> %i.dn, %i.do
  %i.dq = shufflevector <8 x double> %i.dm, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dr = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.dr, <2 x double> %i.dp)
  %i.dt = shufflevector <8 x double> %i.dm, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.du = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.dv, <2 x double> %i.ds)
  %i.dx = shufflevector <8 x double> %i.dm, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dy = fadd <2 x double> %i.dx, %i.dw
  br label %bb.f

bb.f:                                             ; preds = %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit, %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread
  %i.dz = phi <2 x double> [ splat (double +inf), %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread ], [ %i.dy, %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit ] ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ea, 0
  %i.eb = extractelement <2 x double> %i.dz, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.eb, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116pj_airocean_data8mat_multEPA4_KdS3_PA4_d(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %2) unnamed_addr #5 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load double, ptr %0, align 8, !tbaa !50
  %i.h = load double, ptr %1, align 8, !tbaa !50
  %i.i = load double, ptr %i.d, align 8, !tbaa !50
  %i.j = load double, ptr %i.a, align 8, !tbaa !50
  %i.k = fmul double %i.i, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.g, double %i.h, double %i.k)
  %i.m = load double, ptr %i.e, align 8, !tbaa !50
  %i.n = load double, ptr %i.b, align 8, !tbaa !50
  %i.o = tail call double @llvm.fmuladd.f64(double %i.m, double %i.n, double %i.l)
  %i.p = load double, ptr %i.f, align 8, !tbaa !50
  %i.q = load double, ptr %i.c, align 8, !tbaa !50
  %i.r = tail call double @llvm.fmuladd.f64(double %i.p, double %i.q, double %i.o)
  store double %i.r, ptr %2, align 8, !tbaa !50
  %i.s = load double, ptr %0, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !50
  %i.v = load double, ptr %i.d, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !50
  %i.y = fmul double %i.v, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %i.s, double %i.u, double %i.y)
  %i.aa = load double, ptr %i.e, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !50
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %i.z)
  %i.ae = load double, ptr %i.f, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !50
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %i.ad)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.ah, ptr %i.ai, align 8, !tbaa !50
  %i.aj = load double, ptr %0, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !50
  %i.am = load double, ptr %i.d, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !50
  %i.ap = fmul double %i.am, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.al, double %i.ap)
  %i.ar = load double, ptr %i.e, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !50
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.at, double %i.aq)
  %i.av = load double, ptr %i.f, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !50
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ax, double %i.au)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.ay, ptr %i.az, align 8, !tbaa !50
  %i.ba = load double, ptr %0, align 8, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !50
  %i.bd = load double, ptr %i.d, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !50
  %i.bg = fmul double %i.bd, %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.bc, double %i.bg)
  %i.bi = load double, ptr %i.e, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !50
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %i.bh)
  %i.bm = load double, ptr %i.f, align 8, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !50
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bo, double %i.bl)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.bp, ptr %i.bq, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load double, ptr %i.br, align 8, !tbaa !50
  %i.bx = load double, ptr %1, align 8, !tbaa !50
  %i.by = load double, ptr %i.bs, align 8, !tbaa !50
  %i.bz = load double, ptr %i.a, align 8, !tbaa !50
  %i.ca = fmul double %i.by, %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bx, double %i.ca)
  %i.cc = load double, ptr %i.bt, align 8, !tbaa !50
  %i.cd = load double, ptr %i.b, align 8, !tbaa !50
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cd, double %i.cb)
  %i.cf = load double, ptr %i.bu, align 8, !tbaa !50
  %i.cg = load double, ptr %i.c, align 8, !tbaa !50
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cg, double %i.ce)
  store double %i.ch, ptr %i.bv, align 8, !tbaa !50
  %i.ci = load double, ptr %i.br, align 8, !tbaa !50
  %i.cj = load double, ptr %i.t, align 8, !tbaa !50
  %i.ck = load double, ptr %i.bs, align 8, !tbaa !50
  %i.cl = load double, ptr %i.w, align 8, !tbaa !50
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cj, double %i.cm)
  %i.co = load double, ptr %i.bt, align 8, !tbaa !50
  %i.cp = load double, ptr %i.ab, align 8, !tbaa !50
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cp, double %i.cn)
  %i.cr = load double, ptr %i.bu, align 8, !tbaa !50
  %i.cs = load double, ptr %i.af, align 8, !tbaa !50
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.cq)
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.ct, ptr %i.cu, align 8, !tbaa !50
  %i.cv = load double, ptr %i.br, align 8, !tbaa !50
  %i.cw = load double, ptr %i.ak, align 8, !tbaa !50
  %i.cx = load double, ptr %i.bs, align 8, !tbaa !50
  %i.cy = load double, ptr %i.an, align 8, !tbaa !50
  %i.cz = fmul double %i.cx, %i.cy
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cw, double %i.cz)
  %i.db = load double, ptr %i.bt, align 8, !tbaa !50
  %i.dc = load double, ptr %i.as, align 8, !tbaa !50
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dc, double %i.da)
  %i.de = load double, ptr %i.bu, align 8, !tbaa !50
end_hunk_0
