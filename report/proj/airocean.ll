Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/airocean?download=true
inline.NumInlined: 15
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL16airocean_inverse5PJ_XYP8PJconsts:bb.a
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> %i.by, <2 x i32> <i32 1, i32 2>
  %i.cf = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cf, <2 x double> %i.cd)
  %i.ch = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ci = insertelement <2 x double> %i.ch, double %i.bu, i64 0
  %i.cj = fadd <2 x double> %i.ci, %i.cg          ; 5 uses
  %i.ck = load <2 x double>, ptr %i.bv, align 8, !tbaa !40, !noalias !69 ; 2 uses
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
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !44
  %i.di = fcmp une double %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dj = fcmp olt double %i.dc, 0.000000e+00
  %i.dk = tail call double @tan(double noundef %i.dc) #10
  store volatile double %i.dk, ptr %i.a, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !45 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.do = load double, ptr %i.dn, align 8, !tbaa !46 ; 2 uses
  %i.dp = fsub double %i.dm, %i.do
  %i.dq = fdiv double %i.dp, %i.dm
  %i.dr = fsub double 1.000000e+00, %i.dq         ; 3 uses
  %i.ds = fmul double %i.dm, %i.dm
  %.0..0..0..0.7 = load volatile double, ptr %i.a, align 8, !tbaa !40
  %.0..0..0..0.8 = load volatile double, ptr %i.a, align 8, !tbaa !40
  %i.dt = fmul double %i.dr, %i.dr
  %i.du = tail call double @llvm.fmuladd.f64(double %.0..0..0..0.7, double %.0..0..0..0.8, double %i.dt)
  %i.dv = tail call double @sqrt(double noundef %i.du) #10
  %i.dw = fdiv double %i.do, %i.dv
  store volatile double %i.dw, ptr %i.b, align 8, !tbaa !40
  %.0..0..0..0.4 = load volatile double, ptr %i.b, align 8, !tbaa !40
  %.0..0..0..0.5 = load volatile double, ptr %i.b, align 8, !tbaa !40
  %i.dx = fneg double %.0..0..0..0.4
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %.0..0..0..0.5, double %i.ds)
  %i.dz = tail call double @sqrt(double noundef %i.dy) #10
  %.0..0..0..0.6 = load volatile double, ptr %i.b, align 8, !tbaa !40
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.d = load double, ptr %i.c, align 8, !tbaa !44
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.g = load double, ptr %i.f, align 8, !tbaa !45 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.i = load double, ptr %i.h, align 8, !tbaa !46
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
  %i.q = tail call double @sin(double noundef %.0) #10 ; 7 uses
  %i.r = tail call double @cos(double noundef %.0) #10
  %i.s = tail call double @sin(double noundef %0) #10
  %i.t = tail call double @cos(double noundef %0) #10
  %i.u = insertelement <2 x double> poison, double %i.r, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x double> poison, double %i.s, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.t, i64 1
  %i.y = fmul <2 x double> %i.v, %i.x             ; 7 uses
  %i.z = extractelement <2 x double> %i.y, i64 1  ; 2 uses
  %i.aa = extractelement <2 x double> %i.y, i64 0 ; 2 uses
  %i.ab = fneg double %i.aa                       ; 2 uses
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = insertelement <2 x double> poison, double %i.q, i64 0
  br label %bb.d

bb.d:                                             ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv.i ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !43 ; 3 uses
  %i.ak = load <2 x double>, ptr %i.ah, align 8, !tbaa !40 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !39
  %i.an = fneg double %i.am                       ; 3 uses
  %i.ao = extractelement <2 x double> %i.ak, i64 1
  %i.ap = fmul double %i.ao, %i.an
  %i.aq = extractelement <2 x double> %i.ak, i64 0
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.aj, double %i.ap)
  %i.as = load double, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.at = fmul double %i.q, %i.an
  %i.au = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aj, double %i.at) ; 2 uses
  %i.av = load double, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  %i.aw = insertelement <2 x double> %i.ak, double %i.au, i64 1
  %i.ax = fneg <2 x double> %i.aw                 ; 2 uses
  %i.ay = insertelement <2 x double> %i.ad, double %i.as, i64 1
  %i.az = fmul <2 x double> %i.ay, %i.ax
  %i.ba = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bb = insertelement <2 x double> %i.ba, double %i.ar, i64 1
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.bb, <2 x double> %i.az) ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  %i.be = extractelement <2 x double> %i.bc, i64 1
  %i.bf = tail call noundef double @llvm.fmuladd.f64(double %i.av, double %i.bd, double %i.be)
  %i.bg = fcmp ugt double %i.bf, 0.000000e+00
  br i1 %i.bg, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = load double, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bk = load <2 x double>, ptr %i.bi, align 8, !tbaa !40 ; 3 uses
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !43 ; 2 uses
  %i.bm = fmul double %i.bl, %i.an
  %i.bn = extractelement <2 x double> %i.bk, i64 0 ; 2 uses
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.aj, double %i.bm)
  %i.bp = fneg double %i.bo
  %i.bq = fmul double %i.z, %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.au, double %i.bq)
  %i.bs = fmul double %i.bl, %i.ab
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.q, double %i.bs) ; 2 uses
  %i.bu = tail call noundef double @llvm.fmuladd.f64(double %i.av, double %i.bt, double %i.br)
  %i.bv = fcmp ugt double %i.bu, 0.000000e+00
  br i1 %i.bv, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i: ; preds = %bb.e
  %i.bw = shufflevector <2 x double> %i.ak, <2 x double> %i.bk, <2 x i32> <i32 1, i32 3>
  %i.bx = shufflevector <2 x double> %i.ac, <2 x double> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.by = fmul <2 x double> %i.bw, %i.bx
  %i.bz = fneg double %i.bt
  %i.ca = fmul double %i.as, %i.bz
  %i.cb = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cc = insertelement <2 x double> %i.cb, double %i.q, i64 0
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.cc, <2 x double> %i.by) ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.ce, double %i.ca)
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = tail call noundef double @llvm.fmuladd.f64(double %i.z, double %i.cg, double %i.cf)
  %i.ci = fcmp ugt double %i.ch, 0.000000e+00
  br i1 %i.ci, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 23
  br i1 %exitcond.not.i, label %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread, label %bb.d, !llvm.loop !70

_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i
  %i.cj = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.f

_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 1656
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv.i ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 2208
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %indvars.iv.i ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !43, !noalias !73
  %4 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load <2 x double>, ptr %i.cl, align 8, !tbaa !40, !noalias !73 ; 2 uses
  %5 = load double, ptr %3, align 8, !tbaa !39, !noalias !73
  %6 = load double, ptr %i.cn, align 8, !tbaa !41, !noalias !73
  %7 = load double, ptr %4, align 8, !tbaa !43, !noalias !73
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> %i.y, <2 x i32> <i32 1, i32 2>
  %8 = insertelement <2 x double> poison, double %5, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.cr, %9
  %i.ct = shufflevector <2 x double> %i.cq, <2 x double> %i.y, <2 x i32> <i32 0, i32 3>
  %10 = insertelement <2 x double> poison, double %6, i64 0
  %i.cu = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cu, <2 x double> %i.cs)
  %11 = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cw = insertelement <2 x double> %11, double %i.q, i64 1
  %i.cx = insertelement <2 x double> poison, double %7, i64 0
  %12 = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %12, <2 x double> %i.cv) ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0
  %i.da = extractelement <2 x double> %i.cy, i64 1
  %i.db = fdiv double %i.cz, %i.da
  %i.dc = fsub double 1.000000e+00, %i.db
  %i.dd = fneg double %i.dc                       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 4416
  %i.df = getelementptr inbounds nuw [128 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.dg = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.y, <2 x double> %i.y) ; 2 uses
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.q, double %i.q)
  %i.dk = load <8 x double>, ptr %i.df, align 8, !tbaa !40 ; 4 uses
  %i.dl = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.dm = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dl, %i.dm
  %i.do = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dp = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.dp, <2 x double> %i.dn)
  %i.dr = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ds = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dt, <2 x double> %i.dq)
  %i.dv = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dw = fadd <2 x double> %i.dv, %i.du
  br label %bb.f

bb.f:                                             ; preds = %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit, %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread
  %i.dx = phi <2 x double> [ splat (double +inf), %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread ], [ %i.dw, %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit ] ; 2 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.dy, 0
  %i.dz = extractelement <2 x double> %i.dx, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.dz, 1
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
  %i.g = load double, ptr %0, align 8, !tbaa !40
  %i.h = load double, ptr %1, align 8, !tbaa !40
  %i.i = load double, ptr %i.d, align 8, !tbaa !40
  %i.j = load double, ptr %i.a, align 8, !tbaa !40
  %i.k = fmul double %i.i, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.g, double %i.h, double %i.k)
  %i.m = load double, ptr %i.e, align 8, !tbaa !40
  %i.n = load double, ptr %i.b, align 8, !tbaa !40
  %i.o = tail call double @llvm.fmuladd.f64(double %i.m, double %i.n, double %i.l)
  %i.p = load double, ptr %i.f, align 8, !tbaa !40
  %i.q = load double, ptr %i.c, align 8, !tbaa !40
  %i.r = tail call double @llvm.fmuladd.f64(double %i.p, double %i.q, double %i.o)
  store double %i.r, ptr %2, align 8, !tbaa !40
  %i.s = load double, ptr %0, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !40
  %i.v = load double, ptr %i.d, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !40
  %i.y = fmul double %i.v, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %i.s, double %i.u, double %i.y)
  %i.aa = load double, ptr %i.e, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !40
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %i.z)
  %i.ae = load double, ptr %i.f, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !40
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %i.ad)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.ah, ptr %i.ai, align 8, !tbaa !40
  %i.aj = load double, ptr %0, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !40
  %i.am = load double, ptr %i.d, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !40
  %i.ap = fmul double %i.am, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.al, double %i.ap)
  %i.ar = load double, ptr %i.e, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !40
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.at, double %i.aq)
  %i.av = load double, ptr %i.f, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !40
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ax, double %i.au)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.ay, ptr %i.az, align 8, !tbaa !40
  %i.ba = load double, ptr %0, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !40
  %i.bd = load double, ptr %i.d, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !40
  %i.bg = fmul double %i.bd, %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.bc, double %i.bg)
  %i.bi = load double, ptr %i.e, align 8, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !40
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %i.bh)
  %i.bm = load double, ptr %i.f, align 8, !tbaa !40
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !40
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bo, double %i.bl)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.bp, ptr %i.bq, align 8, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load double, ptr %i.br, align 8, !tbaa !40
  %i.bx = load double, ptr %1, align 8, !tbaa !40
  %i.by = load double, ptr %i.bs, align 8, !tbaa !40
  %i.bz = load double, ptr %i.a, align 8, !tbaa !40
  %i.ca = fmul double %i.by, %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bx, double %i.ca)
  %i.cc = load double, ptr %i.bt, align 8, !tbaa !40
  %i.cd = load double, ptr %i.b, align 8, !tbaa !40
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cd, double %i.cb)
  %i.cf = load double, ptr %i.bu, align 8, !tbaa !40
  %i.cg = load double, ptr %i.c, align 8, !tbaa !40
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cg, double %i.ce)
  store double %i.ch, ptr %i.bv, align 8, !tbaa !40
  %i.ci = load double, ptr %i.br, align 8, !tbaa !40
  %i.cj = load double, ptr %i.t, align 8, !tbaa !40
  %i.ck = load double, ptr %i.bs, align 8, !tbaa !40
  %i.cl = load double, ptr %i.w, align 8, !tbaa !40
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cj, double %i.cm)
  %i.co = load double, ptr %i.bt, align 8, !tbaa !40
  %i.cp = load double, ptr %i.ab, align 8, !tbaa !40
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cp, double %i.cn)
  %i.cr = load double, ptr %i.bu, align 8, !tbaa !40
  %i.cs = load double, ptr %i.af, align 8, !tbaa !40
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.cq)
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.ct, ptr %i.cu, align 8, !tbaa !40
  %i.cv = load double, ptr %i.br, align 8, !tbaa !40
  %i.cw = load double, ptr %i.ak, align 8, !tbaa !40
  %i.cx = load double, ptr %i.bs, align 8, !tbaa !40
  %i.cy = load double, ptr %i.an, align 8, !tbaa !40
  %i.cz = fmul double %i.cx, %i.cy
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cw, double %i.cz)
  %i.db = load double, ptr %i.bt, align 8, !tbaa !40
  %i.dc = load double, ptr %i.as, align 8, !tbaa !40
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dc, double %i.da)
  %i.de = load double, ptr %i.bu, align 8, !tbaa !40
  %i.df = load double, ptr %i.aw, align 8, !tbaa !40
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.de, double %i.df, double %i.dd)
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.dg, ptr %i.dh, align 8, !tbaa !40
  %i.di = load double, ptr %i.br, align 8, !tbaa !40
  %i.dj = load double, ptr %i.bb, align 8, !tbaa !40
  %i.dk = load double, ptr %i.bs, align 8, !tbaa !40
  %i.dl = load double, ptr %i.be, align 8, !tbaa !40
  %i.dm = fmul double %i.dk, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dj, double %i.dm)
  %i.do = load double, ptr %i.bt, align 8, !tbaa !40
  %i.dp = load double, ptr %i.bj, align 8, !tbaa !40
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dp, double %i.dn)
  %i.dr = load double, ptr %i.bu, align 8, !tbaa !40
  %i.ds = load double, ptr %i.bn, align 8, !tbaa !40
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.ds, double %i.dq)
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 56
  store double %i.dt, ptr %i.du, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ea = load double, ptr %i.dv, align 8, !tbaa !40
  %i.eb = load double, ptr %1, align 8, !tbaa !40
  %i.ec = load double, ptr %i.dw, align 8, !tbaa !40
  %i.ed = load double, ptr %i.a, align 8, !tbaa !40
  %i.ee = fmul double %i.ec, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.eb, double %i.ee)
  %i.eg = load double, ptr %i.dx, align 8, !tbaa !40
  %i.eh = load double, ptr %i.b, align 8, !tbaa !40
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.eh, double %i.ef)
  %i.ej = load double, ptr %i.dy, align 8, !tbaa !40
  %i.ek = load double, ptr %i.c, align 8, !tbaa !40
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ek, double %i.ei)
  store double %i.el, ptr %i.dz, align 8, !tbaa !40
  %i.em = load double, ptr %i.dv, align 8, !tbaa !40
  %i.en = load double, ptr %i.t, align 8, !tbaa !40
  %i.eo = load double, ptr %i.dw, align 8, !tbaa !40
  %i.ep = load double, ptr %i.w, align 8, !tbaa !40
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = tail call double @llvm.fmuladd.f64(double %i.em, double %i.en, double %i.eq)
  %i.es = load double, ptr %i.dx, align 8, !tbaa !40
  %i.et = load double, ptr %i.ab, align 8, !tbaa !40
end_hunk_0
