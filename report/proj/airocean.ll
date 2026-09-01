Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/airocean?download=true
inline.NumInlined: 15
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL16airocean_inverse5PJ_XYP8PJconsts:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv.i ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.m = load double, ptr %i.l, align 8, !tbaa !62 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.p = load double, ptr %i.o, align 8, !tbaa !45
  %i.q = fneg double %i.p                         ; 3 uses
  %i.r = load double, ptr %i.i, align 8, !tbaa !57 ; 2 uses
  %i.s = tail call double @llvm.fmuladd.f64(double %1, double %i.m, double %i.q) ; 2 uses
  %i.t = fneg double %i.s
  %i.u = fmul double %i.r, %i.t
  %i.v = load double, ptr %i.j, align 8, !tbaa !57 ; 2 uses
  %i.w = load double, ptr %i.n, align 8, !tbaa !62 ; 4 uses
  %i.x = load double, ptr %i.k, align 8, !tbaa !45 ; 3 uses
  %i.y = fmul double %i.w, %i.q
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %i.m, double %i.y)
  %i.aa = fneg double %i.x                        ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.w, i64 1
  %i.ad = insertelement <2 x double> poison, double %i.u, i64 0
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
  %3 = extractelement <2 x double> %i.y, i64 0    ; 2 uses
  %4 = fneg double %i.z                           ; 2 uses
  %5 = insertelement <2 x double> poison, double %i.q, i64 1 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv.i ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.af = load double, ptr %i.ae, align 8, !tbaa !62 ; 3 uses
  %i.ag = load <2 x double>, ptr %i.ad, align 8, !tbaa !50 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !45
  %i.aj = fneg double %i.ai                       ; 3 uses
  %i.ak = extractelement <2 x double> %i.ag, i64 1
  %i.al = fmul double %i.ak, %i.aj
  %i.am = extractelement <2 x double> %i.ag, i64 0
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.af, double %i.al)
  %i.ao = load double, ptr %i.ab, align 8, !tbaa !57 ; 2 uses
  %i.ap = fmul double %i.q, %i.aj
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.z, double %i.af, double %i.ap) ; 2 uses
  %i.ar = load double, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  %i.as = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 0
  %i.au = fneg <2 x double> %i.at                 ; 2 uses
  %i.av = insertelement <2 x double> %5, double %i.ao, i64 0
  %i.aw = fmul <2 x double> %i.av, %i.au
  %i.ax = insertelement <2 x double> %i.ag, double %i.an, i64 0
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.ax, <2 x double> %i.aw) ; 2 uses
  %i.az = extractelement <2 x double> %i.ay, i64 0
  %i.ba = extractelement <2 x double> %i.ay, i64 1
  %i.bb = tail call noundef double @llvm.fmuladd.f64(double %i.ar, double %i.ba, double %i.az)
  %i.bc = fcmp ugt double %i.bb, 0.000000e+00
  br i1 %i.bc, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = load double, ptr %i.aa, align 8, !tbaa !57 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !50 ; 3 uses
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !62 ; 2 uses
  %i.bi = fmul double %i.bh, %i.aj
  %i.bj = extractelement <2 x double> %i.bg, i64 0 ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.af, double %i.bi)
  %i.bl = fneg double %i.bk
  %i.bm = fmul double %3, %i.bl
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.aq, double %i.bm)
  %i.bo = fmul double %i.bh, %4
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.q, double %i.bo) ; 2 uses
  %i.bq = tail call noundef double @llvm.fmuladd.f64(double %i.ar, double %i.bp, double %i.bn)
  %i.br = fcmp ugt double %i.bq, 0.000000e+00
  br i1 %i.br, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i: ; preds = %bb.e
  %i.bs = shufflevector <2 x double> %i.ag, <2 x double> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bt = insertelement <2 x double> %i.au, double %4, i64 0
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  %i.bv = fneg double %i.bp
  %i.bw = fmul double %i.ao, %i.bv
  %i.bx = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.by = insertelement <2 x double> %i.bx, double %i.q, i64 0
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.by, <2 x double> %i.bu) ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.ca, double %i.bw)
  %i.cc = extractelement <2 x double> %i.bz, i64 1
  %i.cd = tail call noundef double @llvm.fmuladd.f64(double %3, double %i.cc, double %i.cb)
  %i.ce = fcmp ugt double %i.cd, 0.000000e+00
  br i1 %i.ce, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 23
  br i1 %exitcond.not.i, label %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread, label %bb.d, !llvm.loop !70

_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i
  %i.cf = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.f

_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 1656
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 2208
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %indvars.iv.i ; 3 uses
  %6 = load double, ptr %i.cj, align 8, !tbaa !57, !noalias !71
  %7 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %8 = load double, ptr %7, align 8, !tbaa !45, !noalias !71
  %9 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %10 = load double, ptr %9, align 8, !tbaa !62, !noalias !71
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !62, !noalias !71
  %i.cm = load <2 x double>, ptr %i.ch, align 8, !tbaa !50, !noalias !71 ; 2 uses
  %11 = shufflevector <2 x double> %i.cm, <2 x double> %i.y, <2 x i32> <i32 1, i32 3>
  %12 = insertelement <2 x double> poison, double %8, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x double> %11, %13
  %i.co = shufflevector <2 x double> %i.cm, <2 x double> %i.y, <2 x i32> <i32 0, i32 2>
  %14 = insertelement <2 x double> poison, double %6, i64 0
  %i.cp = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cp, <2 x double> %i.cn)
  %15 = insertelement <2 x double> %5, double %10, i64 0
  %i.cr = insertelement <2 x double> poison, double %i.cl, i64 0
  %16 = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %16, <2 x double> %i.cq) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  %i.cv = fdiv double %i.ct, %i.cu
  %i.cw = fsub double 1.000000e+00, %i.cv
  %i.cx = fneg double %i.cw                       ; 2 uses
  %17 = insertelement <2 x double> poison, double %i.cx, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.y, <2 x double> %i.y) ; 2 uses
  %20 = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.q, double %i.q)
  %21 = getelementptr inbounds nuw i8, ptr %i.b, i64 4416
  %22 = getelementptr inbounds nuw [128 x i8], ptr %21, i64 %indvars.iv.i
  %i.cy = load <8 x double>, ptr %22, align 8, !tbaa !50 ; 4 uses
  %i.cz = shufflevector <8 x double> %i.cy, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %23 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x double> %i.cz, %23
  %i.db = shufflevector <8 x double> %i.cy, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %24 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %24, <2 x double> %i.da)
  %i.dd = shufflevector <8 x double> %i.cy, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %25 = insertelement <2 x double> poison, double %20, i64 0
  %i.de = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.de, <2 x double> %i.dc)
  %i.dg = shufflevector <8 x double> %i.cy, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dh = fadd <2 x double> %i.dg, %i.df
  br label %bb.f

bb.f:                                             ; preds = %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit, %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread
  %i.di = phi <2 x double> [ splat (double +inf), %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread ], [ %i.dh, %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit ] ; 2 uses
  %i.dj = extractelement <2 x double> %i.di, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.dj, 0
  %i.dk = extractelement <2 x double> %i.di, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.dk, 1
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
  %i.df = load double, ptr %i.aw, align 8, !tbaa !50
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.de, double %i.df, double %i.dd)
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.dg, ptr %i.dh, align 8, !tbaa !50
  %i.di = load double, ptr %i.br, align 8, !tbaa !50
  %i.dj = load double, ptr %i.bb, align 8, !tbaa !50
  %i.dk = load double, ptr %i.bs, align 8, !tbaa !50
  %i.dl = load double, ptr %i.be, align 8, !tbaa !50
  %i.dm = fmul double %i.dk, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dj, double %i.dm)
  %i.do = load double, ptr %i.bt, align 8, !tbaa !50
  %i.dp = load double, ptr %i.bj, align 8, !tbaa !50
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dp, double %i.dn)
  %i.dr = load double, ptr %i.bu, align 8, !tbaa !50
  %i.ds = load double, ptr %i.bn, align 8, !tbaa !50
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.ds, double %i.dq)
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 56
  store double %i.dt, ptr %i.du, align 8, !tbaa !50
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ea = load double, ptr %i.dv, align 8, !tbaa !50
  %i.eb = load double, ptr %1, align 8, !tbaa !50
  %i.ec = load double, ptr %i.dw, align 8, !tbaa !50
  %i.ed = load double, ptr %i.a, align 8, !tbaa !50
  %i.ee = fmul double %i.ec, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.eb, double %i.ee)
  %i.eg = load double, ptr %i.dx, align 8, !tbaa !50
  %i.eh = load double, ptr %i.b, align 8, !tbaa !50
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.eh, double %i.ef)
  %i.ej = load double, ptr %i.dy, align 8, !tbaa !50
  %i.ek = load double, ptr %i.c, align 8, !tbaa !50
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ek, double %i.ei)
  store double %i.el, ptr %i.dz, align 8, !tbaa !50
  %i.em = load double, ptr %i.dv, align 8, !tbaa !50
  %i.en = load double, ptr %i.t, align 8, !tbaa !50
  %i.eo = load double, ptr %i.dw, align 8, !tbaa !50
  %i.ep = load double, ptr %i.w, align 8, !tbaa !50
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = tail call double @llvm.fmuladd.f64(double %i.em, double %i.en, double %i.eq)
  %i.es = load double, ptr %i.dx, align 8, !tbaa !50
  %i.et = load double, ptr %i.ab, align 8, !tbaa !50
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.es, double %i.et, double %i.er)
  %i.ev = load double, ptr %i.dy, align 8, !tbaa !50
  %i.ew = load double, ptr %i.af, align 8, !tbaa !50
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.ew, double %i.eu)
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 72
  store double %i.ex, ptr %i.ey, align 8, !tbaa !50
  %i.ez = load double, ptr %i.dv, align 8, !tbaa !50
  %i.fa = load double, ptr %i.ak, align 8, !tbaa !50
  %i.fb = load double, ptr %i.dw, align 8, !tbaa !50
  %i.fc = load double, ptr %i.an, align 8, !tbaa !50
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fa, double %i.fd)
  %i.ff = load double, ptr %i.dx, align 8, !tbaa !50
  %i.fg = load double, ptr %i.as, align 8, !tbaa !50
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.fg, double %i.fe)
  %i.fi = load double, ptr %i.dy, align 8, !tbaa !50
  %i.fj = load double, ptr %i.aw, align 8, !tbaa !50
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fj, double %i.fh)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 80
  store double %i.fk, ptr %i.fl, align 8, !tbaa !50
  %i.fm = load double, ptr %i.dv, align 8, !tbaa !50
  %i.fn = load double, ptr %i.bb, align 8, !tbaa !50
  %i.fo = load double, ptr %i.dw, align 8, !tbaa !50
  %i.fp = load double, ptr %i.be, align 8, !tbaa !50
  %i.fq = fmul double %i.fo, %i.fp
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fn, double %i.fq)
  %i.fs = load double, ptr %i.dx, align 8, !tbaa !50
  %i.ft = load double, ptr %i.bj, align 8, !tbaa !50
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.ft, double %i.fr)
  %i.fv = load double, ptr %i.dy, align 8, !tbaa !50
  %i.fw = load double, ptr %i.bn, align 8, !tbaa !50
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fw, double %i.fu)
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 88
  store double %i.fx, ptr %i.fy, align 8, !tbaa !50
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ge = load double, ptr %i.fz, align 8, !tbaa !50
  %i.gf = load double, ptr %1, align 8, !tbaa !50
  %i.gg = load double, ptr %i.ga, align 8, !tbaa !50
  %i.gh = load double, ptr %i.a, align 8, !tbaa !50
  %i.gi = fmul double %i.gg, %i.gh
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gf, double %i.gi)
  %i.gk = load double, ptr %i.gb, align 8, !tbaa !50
  %i.gl = load double, ptr %i.b, align 8, !tbaa !50
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gl, double %i.gj)
  %i.gn = load double, ptr %i.gc, align 8, !tbaa !50
  %i.go = load double, ptr %i.c, align 8, !tbaa !50
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.go, double %i.gm)
  store double %i.gp, ptr %i.gd, align 8, !tbaa !50
  %i.gq = load double, ptr %i.fz, align 8, !tbaa !50
  %i.gr = load double, ptr %i.t, align 8, !tbaa !50
  %i.gs = load double, ptr %i.ga, align 8, !tbaa !50
  %i.gt = load double, ptr %i.w, align 8, !tbaa !50
  %i.gu = fmul double %i.gs, %i.gt
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gr, double %i.gu)
  %i.gw = load double, ptr %i.gb, align 8, !tbaa !50
  %i.gx = load double, ptr %i.ab, align 8, !tbaa !50
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gx, double %i.gv)
  %i.gz = load double, ptr %i.gc, align 8, !tbaa !50
  %i.ha = load double, ptr %i.af, align 8, !tbaa !50
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.ha, double %i.gy)
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 104
  store double %i.hb, ptr %i.hc, align 8, !tbaa !50
  %i.hd = load double, ptr %i.fz, align 8, !tbaa !50
  %i.he = load double, ptr %i.ak, align 8, !tbaa !50
  %i.hf = load double, ptr %i.ga, align 8, !tbaa !50
  %i.hg = load double, ptr %i.an, align 8, !tbaa !50
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.he, double %i.hh)
  %i.hj = load double, ptr %i.gb, align 8, !tbaa !50
  %i.hk = load double, ptr %i.as, align 8, !tbaa !50
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hk, double %i.hi)
  %i.hm = load double, ptr %i.gc, align 8, !tbaa !50
  %i.hn = load double, ptr %i.aw, align 8, !tbaa !50
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.hn, double %i.hl)
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 112
  store double %i.ho, ptr %i.hp, align 8, !tbaa !50
  %i.hq = load double, ptr %i.fz, align 8, !tbaa !50
  %i.hr = load double, ptr %i.bb, align 8, !tbaa !50
  %i.hs = load double, ptr %i.ga, align 8, !tbaa !50
  %i.ht = load double, ptr %i.be, align 8, !tbaa !50
  %i.hu = fmul double %i.hs, %i.ht
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.hr, double %i.hu)
  %i.hw = load double, ptr %i.gb, align 8, !tbaa !50
  %i.hx = load double, ptr %i.bj, align 8, !tbaa !50
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.hx, double %i.hv)
  %i.hz = load double, ptr %i.gc, align 8, !tbaa !50
  %i.ia = load double, ptr %i.bn, align 8, !tbaa !50
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.ia, double %i.hy)
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 120
  store double %i.ib, ptr %i.ic, align 8, !tbaa !50
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTS8PJconsts", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !17, i64 380, !17, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !11, i64 600, !11, i64 608, !16, i64 616, !16, i64 624, !5, i64 632, !6, i64 636, !18, i64 640, !23, i64 656, !16, i64 664, !23, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !23, i64 776, !27, i64 784, !32, i64 808, !33, i64 816, !5, i64 840, !23, i64 844, !23, i64 845, !23, i64 846, !14, i64 848}
!10 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!14 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!15 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"_ZTS11pj_io_units", !6, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!32 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!33 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!38 = !{!9, !12, i64 16}
!39 = !{!9, !5, i64 360}
!40 = !{!9, !17, i64 380}
!41 = !{!9, !17, i64 384}
!42 = !{!9, !11, i64 88}
!43 = !{!9, !10, i64 0}
!44 = !{!9, !13, i64 24}
!45 = !{!46, !16, i64 8}
!46 = !{!"_ZTS6PJ_XYZ", !16, i64 0, !16, i64 8, !16, i64 16}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ: argument 0"}
!49 = distinct !{!49, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ"}
!50 = !{!16, !16, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ: argument 0"}
!53 = distinct !{!53, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ: argument 0"}
!56 = distinct !{!56, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ"}
!57 = !{!46, !16, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!9, !11, i64 112}
!61 = !{!9, !11, i64 104}
!62 = !{!46, !16, i64 16}
!63 = distinct !{!63, !59}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_Z10dym_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XYh: argument 0"}
!66 = distinct !{!66, !"_Z10dym_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XYh"}
!67 = !{!9, !16, i64 216}
!68 = !{!9, !16, i64 168}
!69 = !{!9, !16, i64 176}
!70 = distinct !{!70, !59}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_Z16cartesian_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZh: argument 0"}
!73 = distinct !{!73, !"_Z16cartesian_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZh"}
end_hunk_0
