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
  %i.m = load double, ptr %i.l, align 8, !tbaa !43 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.p = load double, ptr %i.o, align 8, !tbaa !39
  %i.q = fneg double %i.p                         ; 3 uses
  %i.r = load double, ptr %i.i, align 8, !tbaa !41 ; 2 uses
  %i.s = tail call double @llvm.fmuladd.f64(double %1, double %i.m, double %i.q) ; 2 uses
  %i.t = fneg double %i.s
  %i.u = fmul double %i.r, %i.t
  %i.v = load double, ptr %i.j, align 8, !tbaa !41 ; 2 uses
  %i.w = load double, ptr %i.n, align 8, !tbaa !43 ; 4 uses
  %i.x = load double, ptr %i.k, align 8, !tbaa !39 ; 3 uses
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
  %i.ak = load <2 x double>, ptr %i.h, align 8, !tbaa !40 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !43 ; 3 uses
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
  br i1 %exitcond.i, label %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread, label %bb.b, !llvm.loop !66

_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i
  %i.bn = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.e

_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 7360
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr %i.bo, i64 %indvars.iv.i ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !40, !noalias !69
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !40, !noalias !69
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !40, !noalias !69
  %i.by = load <2 x double>, ptr %i.bp, align 8, !tbaa !40, !noalias !69 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bq, align 8, !tbaa !40, !noalias !69 ; 2 uses
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
  %i.q = tail call double @sin(double noundef %.0) #10 ; 5 uses
  %i.r = tail call double @cos(double noundef %.0) #10
  %i.s = tail call double @sin(double noundef %0) #10
  %i.t = tail call double @cos(double noundef %0) #10
  %i.u = insertelement <2 x double> poison, double %i.r, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x double> poison, double %i.t, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.s, i64 1
  %i.y = fmul <2 x double> %i.v, %i.x             ; 6 uses
  %i.z = extractelement <2 x double> %i.y, i64 1  ; 2 uses
  %i.aa = fneg double %i.z                        ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.q, i64 1 ; 2 uses
  %3 = extractelement <2 x double> %i.y, i64 0    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv.i ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !43 ; 3 uses
  %i.ai = load <2 x double>, ptr %i.af, align 8, !tbaa !40 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !39
  %i.al = fneg double %i.ak                       ; 3 uses
  %i.am = extractelement <2 x double> %i.ai, i64 1
  %i.an = fmul double %i.am, %i.al
  %i.ao = extractelement <2 x double> %i.ai, i64 0
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ah, double %i.an)
  %i.aq = load double, ptr %i.ad, align 8, !tbaa !41 ; 2 uses
  %i.ar = fmul double %i.q, %i.al
  %i.as = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ah, double %i.ar) ; 2 uses
  %i.at = load double, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %4 = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x double> %4, double %i.as, i64 0
  %i.av = fneg <2 x double> %i.au                 ; 2 uses
  %i.aw = insertelement <2 x double> %i.ab, double %i.aq, i64 0
  %i.ax = fmul <2 x double> %i.aw, %i.av
  %i.ay = insertelement <2 x double> %i.ai, double %i.ap, i64 0
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.ay, <2 x double> %i.ax) ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = extractelement <2 x double> %i.az, i64 1
  %i.bc = tail call noundef double @llvm.fmuladd.f64(double %i.at, double %i.bb, double %i.ba)
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = load double, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bh = load <2 x double>, ptr %i.bf, align 8, !tbaa !40 ; 3 uses
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %i.bj = fmul double %i.bi, %i.al
  %i.bk = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.ah, double %i.bj)
  %i.bm = fneg double %i.bl
  %i.bn = fmul double %3, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.be, double %i.as, double %i.bn)
  %i.bp = fmul double %i.bi, %i.aa
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.q, double %i.bp) ; 2 uses
  %i.br = tail call noundef double @llvm.fmuladd.f64(double %i.at, double %i.bq, double %i.bo)
  %i.bs = fcmp ugt double %i.br, 0.000000e+00
  br i1 %i.bs, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i: ; preds = %bb.e
  %i.bt = shufflevector <2 x double> %i.ai, <2 x double> %i.bh, <2 x i32> <i32 1, i32 3>
  %5 = insertelement <2 x double> %i.av, double %i.aa, i64 0
  %i.bu = fmul <2 x double> %i.bt, %5
  %i.bv = fneg double %i.bq
  %i.bw = fmul double %i.aq, %i.bv
  %i.bx = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.by = insertelement <2 x double> %i.bx, double %i.q, i64 0
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.by, <2 x double> %i.bu) ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.be, double %i.ca, double %i.bw)
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
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !43, !noalias !73
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load <2 x double>, ptr %i.ch, align 8, !tbaa !40, !noalias !73 ; 2 uses
  %i.cp = load double, ptr %i.ck, align 8, !tbaa !39, !noalias !73
  %i.cq = load double, ptr %i.cj, align 8, !tbaa !41, !noalias !73
  %i.cr = load double, ptr %i.cn, align 8, !tbaa !43, !noalias !73
  %6 = shufflevector <2 x double> %i.co, <2 x double> %i.y, <2 x i32> <i32 1, i32 3>
  %i.cs = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x double> %6, %i.ct
  %7 = shufflevector <2 x double> %i.co, <2 x double> %i.y, <2 x i32> <i32 0, i32 2>
  %i.cv = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %i.cw, <2 x double> %i.cu)
  %i.cy = insertelement <2 x double> %i.ab, double %i.cm, i64 0
  %i.cz = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.da, <2 x double> %i.cx) ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  %i.dd = extractelement <2 x double> %i.db, i64 1
  %i.de = fdiv double %i.dc, %i.dd
  %i.df = fsub double 1.000000e+00, %i.de
  %i.dg = fneg double %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 4416
  %i.di = getelementptr inbounds nuw [128 x i8], ptr %i.dh, i64 %indvars.iv.i
  %8 = insertelement <3 x double> poison, double %i.dg, i64 0
  %9 = shufflevector <3 x double> %8, <3 x double> poison, <3 x i32> zeroinitializer
  %10 = insertelement <3 x double> poison, double %i.q, i64 0
  %11 = shufflevector <2 x double> %i.y, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %12 = shufflevector <3 x double> %10, <3 x double> %11, <3 x i32> <i32 0, i32 3, i32 4> ; 2 uses
  %13 = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %9, <3 x double> %12, <3 x double> %12) ; 3 uses
  %i.dj = load <8 x double>, ptr %i.di, align 8, !tbaa !40 ; 4 uses
  %i.dk = shufflevector <8 x double> %i.dj, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %14 = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.dl = fmul <2 x double> %i.dk, %14
  %i.dm = shufflevector <8 x double> %i.dj, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dn = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dn, <2 x double> %i.dl)
  %i.dp = shufflevector <8 x double> %i.dj, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dq = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dq, <2 x double> %i.do)
  %i.ds = shufflevector <8 x double> %i.dj, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dt = fadd <2 x double> %i.ds, %i.dr
  br label %bb.f

bb.f:                                             ; preds = %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit, %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread
  %i.du = phi <2 x double> [ splat (double +inf), %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread ], [ %i.dt, %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit ] ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.dv, 0
  %i.dw = extractelement <2 x double> %i.du, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.dw, 1
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
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.es, double %i.et, double %i.er)
  %i.ev = load double, ptr %i.dy, align 8, !tbaa !40
  %i.ew = load double, ptr %i.af, align 8, !tbaa !40
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.ew, double %i.eu)
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 72
  store double %i.ex, ptr %i.ey, align 8, !tbaa !40
  %i.ez = load double, ptr %i.dv, align 8, !tbaa !40
  %i.fa = load double, ptr %i.ak, align 8, !tbaa !40
  %i.fb = load double, ptr %i.dw, align 8, !tbaa !40
  %i.fc = load double, ptr %i.an, align 8, !tbaa !40
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fa, double %i.fd)
  %i.ff = load double, ptr %i.dx, align 8, !tbaa !40
  %i.fg = load double, ptr %i.as, align 8, !tbaa !40
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.fg, double %i.fe)
  %i.fi = load double, ptr %i.dy, align 8, !tbaa !40
  %i.fj = load double, ptr %i.aw, align 8, !tbaa !40
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fj, double %i.fh)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 80
  store double %i.fk, ptr %i.fl, align 8, !tbaa !40
  %i.fm = load double, ptr %i.dv, align 8, !tbaa !40
  %i.fn = load double, ptr %i.bb, align 8, !tbaa !40
  %i.fo = load double, ptr %i.dw, align 8, !tbaa !40
  %i.fp = load double, ptr %i.be, align 8, !tbaa !40
  %i.fq = fmul double %i.fo, %i.fp
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fn, double %i.fq)
  %i.fs = load double, ptr %i.dx, align 8, !tbaa !40
  %i.ft = load double, ptr %i.bj, align 8, !tbaa !40
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.ft, double %i.fr)
  %i.fv = load double, ptr %i.dy, align 8, !tbaa !40
  %i.fw = load double, ptr %i.bn, align 8, !tbaa !40
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fw, double %i.fu)
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 88
  store double %i.fx, ptr %i.fy, align 8, !tbaa !40
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ge = load double, ptr %i.fz, align 8, !tbaa !40
  %i.gf = load double, ptr %1, align 8, !tbaa !40
  %i.gg = load double, ptr %i.ga, align 8, !tbaa !40
  %i.gh = load double, ptr %i.a, align 8, !tbaa !40
  %i.gi = fmul double %i.gg, %i.gh
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gf, double %i.gi)
  %i.gk = load double, ptr %i.gb, align 8, !tbaa !40
  %i.gl = load double, ptr %i.b, align 8, !tbaa !40
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gl, double %i.gj)
  %i.gn = load double, ptr %i.gc, align 8, !tbaa !40
  %i.go = load double, ptr %i.c, align 8, !tbaa !40
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.go, double %i.gm)
  store double %i.gp, ptr %i.gd, align 8, !tbaa !40
  %i.gq = load double, ptr %i.fz, align 8, !tbaa !40
  %i.gr = load double, ptr %i.t, align 8, !tbaa !40
  %i.gs = load double, ptr %i.ga, align 8, !tbaa !40
  %i.gt = load double, ptr %i.w, align 8, !tbaa !40
  %i.gu = fmul double %i.gs, %i.gt
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gr, double %i.gu)
  %i.gw = load double, ptr %i.gb, align 8, !tbaa !40
  %i.gx = load double, ptr %i.ab, align 8, !tbaa !40
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gx, double %i.gv)
  %i.gz = load double, ptr %i.gc, align 8, !tbaa !40
  %i.ha = load double, ptr %i.af, align 8, !tbaa !40
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.ha, double %i.gy)
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 104
  store double %i.hb, ptr %i.hc, align 8, !tbaa !40
  %i.hd = load double, ptr %i.fz, align 8, !tbaa !40
  %i.he = load double, ptr %i.ak, align 8, !tbaa !40
  %i.hf = load double, ptr %i.ga, align 8, !tbaa !40
  %i.hg = load double, ptr %i.an, align 8, !tbaa !40
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.he, double %i.hh)
  %i.hj = load double, ptr %i.gb, align 8, !tbaa !40
  %i.hk = load double, ptr %i.as, align 8, !tbaa !40
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hk, double %i.hi)
  %i.hm = load double, ptr %i.gc, align 8, !tbaa !40
  %i.hn = load double, ptr %i.aw, align 8, !tbaa !40
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.hn, double %i.hl)
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 112
  store double %i.ho, ptr %i.hp, align 8, !tbaa !40
  %i.hq = load double, ptr %i.fz, align 8, !tbaa !40
  %i.hr = load double, ptr %i.bb, align 8, !tbaa !40
  %i.hs = load double, ptr %i.ga, align 8, !tbaa !40
  %i.ht = load double, ptr %i.be, align 8, !tbaa !40
  %i.hu = fmul double %i.hs, %i.ht
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.hr, double %i.hu)
  %i.hw = load double, ptr %i.gb, align 8, !tbaa !40
  %i.hx = load double, ptr %i.bj, align 8, !tbaa !40
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.hx, double %i.hv)
  %i.hz = load double, ptr %i.gc, align 8, !tbaa !40
  %i.ia = load double, ptr %i.bn, align 8, !tbaa !40
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.ia, double %i.hy)
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 120
  store double %i.ib, ptr %i.ic, align 8, !tbaa !40
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x double> @llvm.fmuladd.v3f64(<3 x double>, <3 x double>, <3 x double>) #6

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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !8, i64 88}
!38 = !{!"_ZTS6PJ_XYZ", !14, i64 0, !14, i64 8, !14, i64 16}
!39 = !{!38, !14, i64 8}
!40 = !{!14, !14, i64 0}
!41 = !{!38, !14, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!38, !14, i64 16}
!44 = !{!36, !14, i64 216}
!45 = !{!36, !14, i64 168}
!46 = !{!36, !14, i64 176}
!47 = !{!36, !10, i64 8}
!48 = !{!36, !10, i64 16}
!49 = !{!36, !5, i64 360}
!50 = !{!36, !15, i64 380}
!51 = !{!36, !15, i64 384}
!52 = distinct !{!52, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ"}
!53 = distinct !{!53, !52, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ: argument 0"}
!54 = distinct !{!54, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ"}
!55 = distinct !{!55, !54, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ: argument 0"}
!56 = distinct !{!56, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ"}
!57 = distinct !{!57, !56, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ: argument 0"}
!58 = distinct !{!58, !42}
!59 = !{!36, !9, i64 0}
!60 = !{!36, !11, i64 24}
!61 = !{!53}
!62 = !{!55}
!63 = !{!57}
!64 = !{!36, !8, i64 112}
!65 = !{!36, !8, i64 104}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !"_Z10dym_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XYh"}
!68 = distinct !{!68, !67, !"_Z10dym_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XYh: argument 0"}
!69 = !{!68}
!70 = distinct !{!70, !42}
!71 = distinct !{!71, !"_Z16cartesian_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZh"}
!72 = distinct !{!72, !71, !"_Z16cartesian_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZh: argument 0"}
!73 = !{!72}
end_hunk_0
