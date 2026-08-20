inline.NumInlined: 420
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3igl13flip_avoiding19get_min_pos_root_2DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i:bb.a
  %i.cl = insertelement <2 x double> %i.ck, double %i.bd, i64 1
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cl, <2 x double> %i.ci) ; 6 uses
  %i.cn = tail call noundef double @llvm.fabs.f64(double %i.at)
  %i.co = fcmp ogt double %i.cn, 1.000000e-10
  br i1 %i.co, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.cp = extractelement <2 x double> %i.cm, i64 0 ; 3 uses
  %i.cq = tail call noundef double @pow(double noundef %i.cp, double noundef 2.000000e+00) #18
  %i.cr = fmul nnan double %i.at, -4.000000e+00
  %i.cs = extractelement <2 x double> %i.cm, i64 1 ; 2 uses
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.cq) ; 2 uses
  %i.cu = fcmp ugt double %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.c, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.c:                                             ; preds = %bb.b
  %i.cv = tail call double @sqrt(double noundef %i.ct) #18 ; 2 uses
  %i.cw = fcmp ult double %i.cp, 0.000000e+00
  br i1 %i.cw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cx = fneg double %i.cp
  %i.cy = fsub double %i.cx, %i.cv                ; 2 uses
  %i.cz = fmul double %i.cs, 2.000000e+00
  %i.da = fmul nnan double %i.at, 2.000000e+00
  %i.db = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.cy, i64 1
  %i.df = fdiv <2 x double> %i.de, %i.dc
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.dg = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.cv, i64 0 ; 2 uses
  %i.dh = fsub <2 x double> %i.dg, %i.cm          ; 2 uses
  %i.di = fmul <2 x double> %i.dg, %i.cm
  %i.dj = shufflevector <2 x double> %i.dh, <2 x double> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dk = fmul nnan double %i.at, 2.000000e+00
  %i.dl = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 0
  %i.dn = fdiv <2 x double> %i.dj, %i.dm
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.do = phi <2 x double> [ %i.dn, %bb.e ], [ %i.df, %bb.d ] ; 2 uses
  %i.dp = fcmp olt double %i.at, 0.000000e+00     ; 2 uses
  %i.dq = extractelement <2 x double> %i.do, i64 0 ; 2 uses
  %i.dr = extractelement <2 x double> %i.do, i64 1 ; 2 uses
  %.1.i = select i1 %i.dp, double %i.dr, double %i.dq ; 2 uses
  %i.ds = fcmp ogt double %.1.i, 0.000000e+00
  br i1 %i.ds, label %bb.g, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.g:                                             ; preds = %bb.f
  %.0.i = select i1 %i.dp, double %i.dq, double %i.dr ; 2 uses
  %i.dt = fcmp ogt double %.0.i, 0.000000e+00
  %i.du = select i1 %i.dt, double %.0.i, double %.1.i
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.h:                                             ; preds = %bb.a
  %i.dv = extractelement <2 x double> %i.cm, i64 0 ; 2 uses
  %i.dw = fcmp oeq double %i.dv, 0.000000e+00
  br i1 %i.dw, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dx = extractelement <2 x double> %i.cm, i64 1
  %i.dy = fneg double %i.dx
  %i.dz = fdiv double %i.dy, %i.dv                ; 2 uses
  %i.ea = fcmp ogt double %i.dz, 0.000000e+00
  %i.eb = select i1 %i.ea, double %i.dz, double +inf
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit: ; preds = %bb.b, %bb.f, %bb.g, %bb.h, %bb.i
  %.2.i = phi double [ %i.eb, %bb.i ], [ +inf, %bb.f ], [ +inf, %bb.b ], [ %i.du, %bb.g ], [ +inf, %bb.h ]
  ret double %.2.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3igl13flip_avoiding19get_min_pos_root_3DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = sext i32 %3 to i64
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr [4 x i8], ptr %i.b, i64 %i.a ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = load i64, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.g = getelementptr [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %.idx = shl i64 %i.f, 3
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %.idx662 = mul i64 %i.f, 12
  %i.k = getelementptr i8, ptr %i.d, i64 %.idx662
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = sext i32 %i.e to i64                     ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.m ; 3 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23   ; 5 uses
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.s = shl nsw i64 %i.q, 1                      ; 4 uses
  %i.t = getelementptr [8 x i8], ptr %i.p, i64 %i.s
  %i.u = sext i32 %i.h to i64                     ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.n, i64 %i.u ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.q
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.s
  %i.y = sext i32 %i.j to i64                     ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.n, i64 %i.y ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.q
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.s
  %i.ac = sext i32 %i.l to i64                    ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.n, i64 %i.ac ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.q
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.s
  %i.ag = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.m ; 3 uses
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !23 ; 5 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = shl nsw i64 %i.aj, 1                    ; 4 uses
  %i.am = getelementptr [8 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr [8 x i8], ptr %i.ag, i64 %i.u ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.aj
  %i.ap = getelementptr [8 x i8], ptr %i.an, i64 %i.al
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %i.y ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.aj
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.al
  %i.at = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac ; 3 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aj
  %i.av = getelementptr [8 x i8], ptr %i.at, i64 %i.al
  %i.aw = load double, ptr %i.ai, align 8, !tbaa !13 ; 7 uses
  %i.ax = load double, ptr %i.ao, align 8, !tbaa !13 ; 8 uses
  %i.ay = fmul double %i.aw, %i.ax                ; 3 uses
  %i.az = load double, ptr %i.as, align 8, !tbaa !13 ; 12 uses
  %i.ba = load double, ptr %i.ap, align 8, !tbaa !13 ; 8 uses
  %i.bb = fmul double %i.aw, %i.ba                ; 4 uses
  %i.bc = load double, ptr %i.ar, align 8, !tbaa !13 ; 11 uses
  %i.bd = fneg double %i.bc                       ; 5 uses
  %i.be = fmul double %i.bb, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double %i.be)
  %i.bg = load double, ptr %i.ak, align 8, !tbaa !13 ; 7 uses
  %i.bh = load double, ptr %i.an, align 8, !tbaa !13 ; 7 uses
  %i.bi = fmul double %i.bg, %i.bh                ; 2 uses
  %i.bj = fneg double %i.bi                       ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.az, double %i.bf)
  %i.bl = fmul double %i.ba, %i.bg                ; 3 uses
  %i.bm = load double, ptr %i.aq, align 8, !tbaa !13 ; 11 uses
  %i.bn = load double, ptr %i.am, align 8, !tbaa !13 ; 8 uses
  %i.bo = fmul double %i.bh, %i.bn                ; 3 uses
  %i.bp = fmul double %i.ax, %i.bn                ; 3 uses
  %i.bq = fneg double %i.bp                       ; 2 uses
  %i.br = load double, ptr %i.av, align 8, !tbaa !13 ; 19 uses
  %i.bs = fneg double %i.ay                       ; 2 uses
  %i.bt = load double, ptr %i.au, align 8, !tbaa !13 ; 19 uses
  %i.bu = load double, ptr %i.at, align 8, !tbaa !13 ; 17 uses
  %i.bv = fneg double %i.bl                       ; 2 uses
  %i.bw = fneg double %i.bo
  %i.bx = fneg double %i.az                       ; 5 uses
  %i.by = fmul double %i.bm, %i.bn                ; 2 uses
  %i.bz = fmul double %i.bn, %i.bd                ; 2 uses
  %i.ca = fmul double %i.bh, %i.bd                ; 2 uses
  %i.cb = fmul double %i.az, %i.bh                ; 2 uses
  %i.cc = fmul double %i.ax, %i.bm                ; 2 uses
  %i.cd = fmul double %i.ax, %i.bx                ; 2 uses
  %i.ce = load double, ptr %i.z, align 8, !tbaa !13 ; 8 uses
  %i.cf = load double, ptr %i.v, align 8, !tbaa !13 ; 4 uses
  %i.cg = fmul double %i.bg, %i.cf                ; 4 uses
  %i.ch = fmul double %i.cg, %i.bx
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.ce, double %i.ch)
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.ce, double %i.ci)
  %i.ck = load double, ptr %i.p, align 8, !tbaa !13 ; 6 uses
  %i.cl = fmul double %i.ax, %i.ck                ; 3 uses
  %i.cm = fmul double %i.ba, %i.ck                ; 3 uses
  %i.cn = fneg double %i.cm                       ; 2 uses
  %i.co = load double, ptr %i.aa, align 8, !tbaa !13 ; 10 uses
  %i.cp = fneg double %i.bb
  %i.cq = load double, ptr %i.w, align 8, !tbaa !13 ; 6 uses
  %i.cr = fmul double %i.aw, %i.cq                ; 3 uses
  %i.cs = load double, ptr %i.r, align 8, !tbaa !13 ; 6 uses
  %i.ct = fmul double %i.bh, %i.cs                ; 3 uses
  %i.cu = fneg double %i.ct                       ; 2 uses
  %i.cv = load double, ptr %i.ab, align 8, !tbaa !13 ; 9 uses
  %i.cw = load double, ptr %i.x, align 8, !tbaa !13 ; 6 uses
  %i.cx = fmul double %i.aw, %i.cw                ; 3 uses
  %i.cy = fneg double %i.cx                       ; 2 uses
  %i.cz = fmul double %i.bg, %i.cw                ; 3 uses
  %i.da = load double, ptr %i.t, align 8, !tbaa !13 ; 5 uses
  %i.db = fmul double %i.bh, %i.da                ; 3 uses
  %i.dc = load double, ptr %i.ad, align 8, !tbaa !13 ; 16 uses
  %i.dd = fneg double %i.cl                       ; 2 uses
  %i.de = load double, ptr %i.ae, align 8, !tbaa !13 ; 16 uses
  %i.df = fneg double %i.cr                       ; 2 uses
  %i.dg = load double, ptr %i.af, align 8, !tbaa !13 ; 13 uses
  %i.dh = fneg double %i.cz                       ; 2 uses
  %i.di = fneg double %i.db                       ; 2 uses
  %i.dj = fmul double %i.bn, %i.ce                ; 2 uses
  %i.dk = fmul double %i.bc, %i.ck                ; 2 uses
  %i.dl = fmul double %i.ck, %i.bx                ; 2 uses
  %i.dm = fmul double %i.aw, %i.co                ; 2 uses
  %i.dn = fneg double %i.cv                       ; 4 uses
  %i.do = fmul double %i.bg, %i.cv                ; 2 uses
  %i.dp = fmul double %i.da, %i.bd                ; 2 uses
  %i.dq = fmul double %i.cq, %i.bx                ; 2 uses
  %i.dr = fneg double %i.cg
  %i.ds = fmul double %i.ck, %i.dn                ; 2 uses
  %i.dt = fmul double %i.cq, %i.dn
  %i.du = fmul double %i.co, %i.cw
  %i.dv = insertelement <2 x double> poison, double %i.ce, i64 0 ; 3 uses
  %i.dw = insertelement <2 x double> %i.dv, double %i.bm, i64 1 ; 2 uses
  %i.dx = fneg <2 x double> %i.dw                 ; 5 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 1 ; 2 uses
  %i.dz = insertelement <2 x double> poison, double %i.aw, i64 0 ; 2 uses
  %i.ea = insertelement <2 x double> %i.dz, double %i.ax, i64 1
  %i.eb = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.da, i64 1
  %i.ed = fmul <2 x double> %i.ea, %i.ec          ; 3 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 1 ; 2 uses
  %i.ef = fneg double %i.ee                       ; 2 uses
  %i.eg = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.df, i64 1
  %i.ei = insertelement <2 x double> poison, double %i.bm, i64 0 ; 2 uses
  %i.ej = insertelement <2 x double> %i.ei, double %i.br, i64 1 ; 2 uses
  %i.ek = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.el = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.bw, i64 1 ; 2 uses
  %i.en = insertelement <2 x double> poison, double %i.bc, i64 0 ; 2 uses
  %i.eo = insertelement <2 x double> %i.en, double %i.de, i64 1
  %i.ep = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.eq = insertelement <2 x double> %i.ei, double %i.bu, i64 1
  %i.er = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.ct, i64 1
  %i.et = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.ev = insertelement <2 x double> poison, double %i.bt, i64 0 ; 4 uses
  %i.ew = insertelement <2 x double> %i.ev, double %i.bu, i64 1 ; 2 uses
  %i.ex = insertelement <2 x double> poison, double %i.bi, i64 0 ; 2 uses
  %i.ey = insertelement <2 x double> %i.ex, double %i.bs, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.br, i64 0 ; 3 uses
  %i.fa = insertelement <2 x double> %i.ez, double %i.dg, i64 1
  %i.fb = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.cx, i64 1
  %i.fd = insertelement <2 x double> poison, double %i.bu, i64 0 ; 4 uses
  %i.fe = insertelement <2 x double> %i.fd, double %i.bt, i64 1
  %i.ff = shufflevector <2 x double> %i.em, <2 x double> %i.ex, <2 x i32> <i32 1, i32 2>
  %i.fg = insertelement <2 x double> %i.ev, double %i.dg, i64 1
  %i.fh = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.dh, i64 1
  %i.fj = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = insertelement <2 x double> %i.ez, double %i.bt, i64 1
  %i.fl = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fn = insertelement <2 x double> %5, double %i.az, i64 1
  %i.fo = fmul <2 x double> %i.fm, %i.fn          ; 3 uses
  %i.fp = insertelement <2 x double> %i.ez, double %i.dc, i64 1
  %i.fq = extractelement <2 x double> %i.fo, i64 1
  %i.fr = fmul double %i.ba, %i.dy                ; 2 uses
  %i.fs = insertelement <2 x double> poison, double %i.co, i64 0 ; 2 uses
  %i.ft = insertelement <2 x double> %i.fs, double %i.ce, i64 1 ; 2 uses
  %i.fu = fneg <2 x double> %i.ft                 ; 4 uses
  %i.fv = extractelement <2 x double> %i.dx, i64 0 ; 2 uses
  %6 = insertelement <2 x double> poison, double %i.ba, i64 0
  %7 = insertelement <2 x double> %6, double %i.bg, i64 1
  %i.fw = insertelement <2 x double> %5, double %i.bc, i64 0
  %8 = fmul <2 x double> %7, %i.fw                ; 3 uses
  %i.fx = insertelement <2 x double> %i.fd, double %i.br, i64 1
  %i.fy = extractelement <2 x double> %i.ed, i64 0
  %i.fz = extractelement <2 x double> %i.fu, i64 0
  %i.ga = fmul double %i.bn, %i.fz                ; 2 uses
  %i.gb = fmul double %i.cs, %i.dy                ; 2 uses
  %i.gc = fmul double %i.ba, %i.fv                ; 2 uses
  %i.gd = insertelement <2 x double> poison, double %i.cs, i64 0 ; 2 uses
  %i.ge = insertelement <2 x double> %i.gd, double %i.cf, i64 1 ; 2 uses
  %i.gf = insertelement <2 x double> %i.dx, double %i.bd, i64 1
  %i.gg = fmul <2 x double> %i.ge, %i.gf          ; 3 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 1
  %i.gi = insertelement <2 x double> poison, double %i.cf, i64 0 ; 3 uses
  %i.gj = insertelement <2 x double> %i.gi, double %i.bh, i64 1 ; 2 uses
  %i.gk = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = fmul <2 x double> %i.gj, %i.gk          ; 3 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 1
  %i.gn = insertelement <2 x double> poison, double %i.cq, i64 0 ; 2 uses
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x double> %i.dw, %i.go          ; 3 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 1
  %i.gr = insertelement <2 x double> poison, double %i.cv, i64 0 ; 3 uses
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = fmul <2 x double> %i.gj, %i.gs          ; 2 uses
  %i.gu = extractelement <2 x double> %i.gt, i64 1
  %i.gv = insertelement <2 x double> poison, double %i.cw, i64 0 ; 2 uses
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fmul <2 x double> %i.gw, %i.dx          ; 2 uses
  %i.gy = insertelement <2 x double> %i.dv, double %i.bc, i64 1
  %i.gz = insertelement <2 x double> poison, double %i.da, i64 0 ; 2 uses
  %i.ha = insertelement <2 x double> %i.gz, double %i.cw, i64 1 ; 2 uses
  %i.hb = fmul <2 x double> %i.gy, %i.ha          ; 3 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 1
  %i.hd = insertelement <2 x double> %i.dz, double %i.bn, i64 1
  %i.he = insertelement <2 x double> %i.en, double %i.cf, i64 1
  %i.hf = fmul <2 x double> %i.hd, %i.he          ; 3 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 1 ; 2 uses
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.bc, double %i.cj)
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.az, double %i.hh)
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.bc, double %i.hi)
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.co, double %i.hj)
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.az, double %i.hk)
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.co, double %i.hl)
  %i.hn = fmul double %i.bn, %i.cq                ; 4 uses
  %i.ho = fmul double %i.az, %i.cs                ; 2 uses
  %i.hp = fneg double %i.hn
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.bm, double %i.hm)
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.az, double %i.hq)
  %i.hs = fneg double %i.hg                       ; 2 uses
  %i.ht = insertelement <2 x double> %i.ep, double %i.hn, i64 1
  %i.hu = insertelement <2 x double> %i.hf, double %i.di, i64 1
  %i.hv = fmul double %i.hn, %i.fv
  %i.hw = insertelement <2 x double> poison, double %i.dg, i64 0 ; 5 uses
  %i.hx = insertelement <2 x double> %i.hw, double %i.co, i64 1
  %i.hy = extractelement <2 x double> %i.gg, i64 0
  %i.hz = extractelement <2 x double> %i.hb, i64 0
  %i.ia = fmul <2 x double> %i.ge, %i.gs          ; 2 uses
  %i.ib = fmul <2 x double> %i.ha, %i.fu          ; 2 uses
  %i.ic = insertelement <2 x double> %i.gd, double %i.az, i64 1
  %i.id = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x double> %i.ic, %i.id          ; 3 uses
  %i.if = extractelement <2 x double> %i.ie, i64 0 ; 2 uses
  %i.ig = insertelement <2 x double> poison, double %i.ck, i64 0 ; 3 uses
  %i.ih = insertelement <2 x double> %i.ig, double %i.ba, i64 1
  %i.ii = insertelement <2 x double> %i.gv, double %i.co, i64 1
  %i.ij = fmul <2 x double> %i.ih, %i.ii          ; 4 uses
  %i.ik = extractelement <2 x double> %i.ij, i64 0 ; 2 uses
  %i.il = fneg double %i.ik
  %i.im = insertelement <2 x double> %i.gi, double %i.bm, i64 1
  %i.in = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x double> %i.im, %i.in          ; 3 uses
  %9 = fmul double %i.cs, %i.cw                   ; 3 uses
  %10 = fmul double %i.cq, %i.da                  ; 3 uses
  %11 = fneg double %10                           ; 2 uses
  %i.ip = extractelement <2 x double> %i.io, i64 0 ; 2 uses
  %12 = fneg double %i.ip                         ; 2 uses
  %i.iq = fneg double %9                          ; 2 uses
  %i.ir = insertelement <2 x double> %i.ig, double %i.ax, i64 1
  %i.is = fmul <2 x double> %i.ir, %i.ft          ; 3 uses
  %i.it = extractelement <2 x double> %i.io, i64 1
  %i.iu = extractelement <2 x double> %i.is, i64 1
  %i.iv = extractelement <2 x double> %i.ie, i64 1
  %i.iw = extractelement <2 x double> %i.ij, i64 1
  %i.ix = extractelement <2 x double> %i.is, i64 0
  %i.iy = insertelement <2 x double> %i.ig, double %i.aw, i64 1
  %i.iz = insertelement <2 x double> %i.gn, double %i.dn, i64 1
  %i.ja = fmul <2 x double> %i.iy, %i.iz          ; 4 uses
  %i.jb = extractelement <2 x double> %i.ja, i64 0
  %i.jc = fneg double %i.jb                       ; 2 uses
  %i.jd = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.je = insertelement <2 x double> %i.jd, double %i.cn, i64 1
  %i.jf = insertelement <2 x double> %i.ev, double %i.co, i64 1
  %i.jg = shufflevector <2 x double> %i.fo, <2 x double> %i.ja, <2 x i32> <i32 0, i32 2>
  %i.jh = insertelement <2 x double> %i.hw, double %i.az, i64 1
  %13 = extractelement <2 x double> %8, i64 0
  %i.ji = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.jj = insertelement <2 x double> %i.ji, double %i.ba, i64 1
  %i.jk = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %i.cs, i64 1
  %i.jm = fmul <2 x double> %i.jj, %i.jl          ; 3 uses
  %i.jn = extractelement <2 x double> %i.jm, i64 1 ; 2 uses
  %i.jo = fneg double %i.jn                       ; 2 uses
  %i.jp = insertelement <2 x double> %i.eu, double %i.jo, i64 1
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.bm, double %i.hr)
  %i.jr = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.cv, double %i.jq)
  %i.js = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.bc, double %i.jr)
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.cv, double %i.js)
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.bm, double %i.jt)
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.db, double %i.bc, double %i.ju)
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.bm, double %i.jv)
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.dc, double %i.jw)
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.br, double %i.jx)
  %i.jz = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.dc, double %i.jy)
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.bt, double %i.jz)
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.br, double %i.ka)
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.bt, double %i.kb)
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.de, double %i.kc)
  %i.ke = insertelement <2 x double> %i.ek, double %i.kd, i64 1
  %i.kf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ej, <2 x double> %i.ke)
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.eo, <2 x double> %i.kf)
  %i.kh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.eq, <2 x double> %i.kg)
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.et, <2 x double> %i.kh)
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.ew, <2 x double> %i.ki)
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fa, <2 x double> %i.kj)
  %i.kl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> %i.fe, <2 x double> %i.kk)
  %i.km = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.fg, <2 x double> %i.kl)
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fj, <2 x double> %i.km)
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.fk, <2 x double> %i.kn)
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ew, <2 x double> %i.ko)
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fp, <2 x double> %i.kp) ; 2 uses
  %i.kr = extractelement <2 x double> %i.kq, i64 0
  %i.ks = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.bu, double %i.kr)
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bt, double %i.ks)
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bu, double %i.kt)
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.br, double %i.ku)
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.bt, double %i.kv)
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.br, double %i.kw)
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.bu, double %i.kx)
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.bt, double %i.ky)
  %i.la = insertelement <2 x double> %i.kq, double %i.kz, i64 0
  %i.lb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %i.fx, <2 x double> %i.la) ; 3 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 1
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.dc, double %i.lc)
  %i.le = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.bt, double %i.ld)
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.br, double %i.le)
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.bt, double %i.lf)
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.de, double %i.lg)
  %i.li = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.br, double %i.lh)
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.by, double %i.de, double %i.li)
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.bu, double %i.lj)
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.br, double %i.lk)
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.bu, double %i.ll)
  %i.ln = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lo = insertelement <2 x double> %i.ln, double %i.hv, i64 1
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hx, <2 x double> %i.lo)
  %14 = fneg double %i.if                         ; 2 uses
  %i.lq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> %i.jf, <2 x double> %i.lp)
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.jh, <2 x double> %i.lq) ; 2 uses
  %i.ls = extractelement <2 x double> %i.lr, i64 0
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.do, double %i.bu, double %i.ls)
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.it, double %i.bt, double %i.lt)
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.bu, double %i.lu)
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.dc, double %i.lv)
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.br, double %i.lw)
  %i.ly = tail call double @llvm.fmuladd.f64(double %13, double %i.dc, double %i.lx)
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.bt, double %i.ly)
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.br, double %i.lz)
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.bt, double %i.ma)
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.de, double %i.mb)
  %i.md = tail call double @llvm.fmuladd.f64(double %i.gm, double %i.br, double %i.mc)
  %i.me = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.de, double %i.md)
  %i.mf = tail call double @llvm.fmuladd.f64(double %i.iw, double %i.bu, double %i.me)
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.br, double %i.mf)
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.bu, double %i.mg)
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.dg, double %i.mh)
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.bt, double %i.mi)
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.dg, double %i.mj)
  %i.ml = insertelement <2 x double> %i.fd, double %i.ce, i64 1
  %i.mm = insertelement <2 x double> %i.lr, double %i.mk, i64 0
  %i.mn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.ml, <2 x double> %i.mm)
  %i.mo = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mp = insertelement <2 x double> %i.mo, double %14, i64 1
  %i.mq = insertelement <2 x double> %i.ev, double %i.az, i64 1
  %i.mr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> %i.mq, <2 x double> %i.mn) ; 2 uses
  %i.ms = extractelement <2 x double> %i.mr, i64 0
  %i.mt = tail call double @llvm.fmuladd.f64(double %i.hc, double %i.bu, double %i.ms) ; 6 uses
  %i.mu = extractelement <2 x double> %i.mr, i64 1
  %i.mv = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.cv, double %i.mu)
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.ce, double %i.mv)
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cv, double %i.mw)
  %i.my = tail call double @llvm.fmuladd.f64(double %i.il, double %i.bc, double %i.mx)
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.ce, double %i.my)
  %i.na = tail call double @llvm.fmuladd.f64(double %i.ip, double %i.bc, double %i.mz)
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cv, double %i.na)
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.co, double %i.nb)
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cv, double %i.nc)
  %i.ne = tail call double @llvm.fmuladd.f64(double %9, double %i.bm, double %i.nd)
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.db, double %i.co, double %i.ne)
  %i.ng = tail call double @llvm.fmuladd.f64(double %11, double %i.bm, double %i.nf)
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.de, double %i.ng)
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.hn, double %i.dc, double %i.nh)
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.de, double %i.ni)
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.br, double %i.nj)
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.jo, double %i.dc, double %i.nk)
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.if, double %i.br, double %i.nl)
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.dg, double %i.nm)
  %i.no = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dc, double %i.nn)
  %i.np = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dg, double %i.no)
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.bt, double %i.np)
  %i.nr = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.dc, double %i.nq)
  %i.ns = tail call double @llvm.fmuladd.f64(double %12, double %i.bt, double %i.nr)
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dg, double %i.ns)
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.de, double %i.nt)
  %i.nv = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.dg, double %i.nu)
  %i.nw = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.bu, double %i.nv)
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.di, double %i.de, double %i.nw)
  %i.ny = tail call double @llvm.fmuladd.f64(double %10, double %i.bu, double %i.nx)
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.de, double %i.ny)
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.dc, double %i.nz)
  %i.ob = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.de, double %i.oa)
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.br, double %i.ob)
  %i.od = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.dc, double %i.oc)
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.hy, double %i.br, double %i.od)
  %15 = extractelement <2 x double> %8, i64 1
  %i.of = tail call double @llvm.fmuladd.f64(double %15, double %i.dg, double %i.oe)
  %i.og = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dc, double %i.of)
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dg, double %i.og)
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.bt, double %i.oh)
  %i.oj = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dc, double %i.oi)
  %i.ok = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.bt, double %i.oj)
  %foldExtExtBinop = fmul <2 x double> %i.ij, %i.fu
  %i.ol = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dg, double %i.ok)
  %i.om = insertelement <2 x double> %i.gr, double %i.de, i64 1
  %i.on = insertelement <2 x double> %foldExtExtBinop, double %i.ol, i64 1
  %i.oo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.om, <2 x double> %i.on)
  %i.op = insertelement <2 x double> poison, double %14, i64 0
  %i.oq = insertelement <2 x double> %i.op, double %i.gb, i64 1
  %i.or = insertelement <2 x double> %i.gr, double %i.dg, i64 1
  %i.os = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.or, <2 x double> %i.oo)
  %i.ot = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ou = insertelement <2 x double> %i.ot, double %9, i64 0
  %i.ov = insertelement <2 x double> %i.dv, double %i.bu, i64 1 ; 2 uses
  %i.ow = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.ov, <2 x double> %i.os)
  %i.ox = insertelement <2 x double> %i.fs, double %i.de, i64 1
  %i.oy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.ox, <2 x double> %i.ow)
  %i.oz = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pa = insertelement <2 x double> %i.oz, double %11, i64 0
  %i.pb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pa, <2 x double> %i.ov, <2 x double> %i.oy)
  %i.pc = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.pd = insertelement <2 x double> %i.pc, double %i.gc, i64 1
  %i.pe = insertelement <2 x double> %i.hw, double %i.de, i64 1 ; 2 uses
  %i.pf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.pe, <2 x double> %i.pb)
  %i.pg = insertelement <2 x double> poison, double %i.de, i64 0 ; 2 uses
  %i.ph = insertelement <2 x double> %i.pg, double %i.dc, i64 1 ; 4 uses
  %i.pi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.ph, <2 x double> %i.pf)
  %i.pj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.pe, <2 x double> %i.pi)
  %i.pk = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pl = insertelement <2 x double> %i.pk, double %i.iq, i64 0
  %i.pm = insertelement <2 x double> poison, double %i.dc, i64 0 ; 3 uses
  %i.pn = insertelement <2 x double> %i.pm, double %i.br, i64 1 ; 2 uses
  %i.po = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pl, <2 x double> %i.pn, <2 x double> %i.pj)
  %i.pp = insertelement <2 x double> poison, double %12, i64 0
  %i.pq = insertelement <2 x double> %i.pp, double %i.dq, i64 1
  %i.pr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> %i.ph, <2 x double> %i.po)
  %i.ps = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pt = insertelement <2 x double> %i.ps, double %10, i64 0
  %i.pu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> %i.pn, <2 x double> %i.pr)
  %i.pv = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.pv, <2 x double> %i.pu)
  %i.px = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.py = shufflevector <2 x double> %i.px, <2 x double> %i.jm, <2 x i32> <i32 0, i32 2>
  %i.pz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.ph, <2 x double> %i.pw)
  %i.qa = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.qa, <2 x double> %i.pz)
  %i.qc = insertelement <2 x double> %i.pm, double %i.bt, i64 1 ; 2 uses
  %i.qd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.qc, <2 x double> %i.qb)
  %i.qe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.ph, <2 x double> %i.qd)
  %i.qf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.qc, <2 x double> %i.qe)
  %i.qg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.qa, <2 x double> %i.qf)
  %i.qh = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.qh, <2 x double> %i.qg)
  %i.qj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.qa, <2 x double> %i.qi)
  %i.qk = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qm = insertelement <2 x double> %i.pm, double %i.bu, i64 1 ; 2 uses
  %i.qn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ql, <2 x double> %i.qm, <2 x double> %i.qj)
  %i.qo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.qh, <2 x double> %i.qn)
  %i.qp = insertelement <2 x double> poison, double %i.du, i64 0
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qq, <2 x double> %i.qm, <2 x double> %i.qo) ; 7 uses
  %i.qs = extractelement <2 x double> %i.lb, i64 0 ; 2 uses
  %i.qt = tail call noundef double @llvm.fabs.f64(double %i.qs)
  %i.qu = fcmp ugt double %i.qt, 1.000000e-10
  br i1 %i.qu, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.qv = tail call noundef double @llvm.fabs.f64(double %i.mt)
  %i.qw = fcmp ogt double %i.qv, 1.000000e-10
  br i1 %i.qw, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.qx = extractelement <2 x double> %i.qr, i64 1 ; 3 uses
  %i.qy = tail call noundef double @pow(double noundef %i.qx, double noundef 2.000000e+00) #18
  %i.qz = fmul nnan double %i.mt, -4.000000e+00
  %i.ra = extractelement <2 x double> %i.qr, i64 0 ; 2 uses
  %i.rb = tail call double @llvm.fmuladd.f64(double %i.qz, double %i.ra, double %i.qy) ; 2 uses
  %i.rc = fcmp ugt double %i.rb, 0.000000e+00
  br i1 %i.rc, label %bb.d, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.d:                                             ; preds = %bb.c
  %i.rd = tail call double @sqrt(double noundef %i.rb) #18 ; 2 uses
  %i.re = fcmp ult double %i.qx, 0.000000e+00
  br i1 %i.re, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.rf = fneg double %i.qx
  %i.rg = fsub double %i.rf, %i.rd                ; 2 uses
  %i.rh = fmul double %i.ra, 2.000000e+00
  %i.ri = fmul nnan double %i.mt, 2.000000e+00
  %i.rj = insertelement <2 x double> poison, double %i.rg, i64 0
  %i.rk = insertelement <2 x double> %i.rj, double %i.ri, i64 1
  %i.rl = insertelement <2 x double> poison, double %i.rh, i64 0
  %i.rm = insertelement <2 x double> %i.rl, double %i.rg, i64 1
  %i.rn = fdiv <2 x double> %i.rm, %i.rk
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ro = fmul nnan double %i.mt, 2.000000e+00
  %i.rp = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.rd, i64 1 ; 2 uses
  %i.rq = fsub <2 x double> %i.rp, %i.qr          ; 2 uses
  %i.rr = fmul <2 x double> %i.rp, %i.qr
  %i.rs = shufflevector <2 x double> %i.rq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rt = insertelement <2 x double> %i.rs, double %i.ro, i64 1
  %i.ru = shufflevector <2 x double> %i.rq, <2 x double> %i.rr, <2 x i32> <i32 1, i32 2>
  %i.rv = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rw = fdiv <2 x double> %i.ru, %i.rv
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.rx = phi <2 x double> [ %i.rw, %bb.f ], [ %i.rn, %bb.e ] ; 2 uses
  %i.ry = fcmp olt double %i.mt, 0.000000e+00     ; 2 uses
  %i.rz = extractelement <2 x double> %i.rx, i64 0 ; 2 uses
  %i.sa = extractelement <2 x double> %i.rx, i64 1 ; 2 uses
  %.1.i = select i1 %i.ry, double %i.sa, double %i.rz ; 2 uses
  %i.sb = fcmp ogt double %.1.i, 0.000000e+00
  br i1 %i.sb, label %bb.h, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.h:                                             ; preds = %bb.g
  %.0.i = select i1 %i.ry, double %i.rz, double %i.sa ; 2 uses
  %i.sc = fcmp ogt double %.0.i, 0.000000e+00
  %i.sd = select i1 %i.sc, double %.0.i, double %.1.i
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.i:                                             ; preds = %bb.b
  %i.se = extractelement <2 x double> %i.qr, i64 1 ; 2 uses
  %i.sf = fcmp oeq double %i.se, 0.000000e+00
  br i1 %i.sf, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.sg = extractelement <2 x double> %i.qr, i64 0
  %i.sh = fneg double %i.sg
  %i.si = fdiv double %i.sh, %i.se                ; 2 uses
  %i.sj = fcmp ogt double %i.si, 0.000000e+00
  %i.sk = select i1 %i.sj, double %i.si, double +inf
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.sl = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 12 uses
  store ptr %i.sl, ptr %4, align 8, !tbaa !9
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 24 ; 4 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.sm, ptr %i.sn, align 8, !tbaa !24
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sl, i8 0, i64 24, i1 false)
  store ptr %i.sm, ptr %i.sp, align 8, !tbaa !25
  %i.sq = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sr = fdiv <2 x double> %i.qr, %i.sq          ; 2 uses
  %i.ss = fdiv double %i.mt, %i.qs
  %i.st = extractelement <2 x double> %i.sr, i64 0
  %i.su = extractelement <2 x double> %i.sr, i64 1
  %i.sv = call noundef i32 @_ZN3igl13flip_avoiding7SolveP3ERSt6vectorIdSaIdEEddd(ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.ss, double noundef %i.su, double noundef %i.st)
  switch i32 %i.sv, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.sw = load double, ptr %i.sl, align 8, !tbaa !13 ; 2 uses
  %i.sx = fcmp ult double %i.sw, 0.000000e+00
  br i1 %i.sx, label %_ZNSt6vectorIdSaIdEED2Ev.exit661, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit661

bb.n:                                             ; preds = %bb.k
  %i.sy = load double, ptr %i.sl, align 8, !tbaa !13 ; 4 uses
  %i.sz = load double, ptr %i.so, align 8, !tbaa !13 ; 4 uses
  %i.ta = fcmp olt double %i.sy, %i.sz
  %i.tb = select i1 %i.ta, double %i.sz, double %i.sy ; 2 uses
  %i.tc = fcmp olt double %i.sz, %i.sy
  %i.td = select i1 %i.tc, double %i.sz, double %i.sy ; 2 uses
  %i.te = fcmp ogt double %i.td, 0.000000e+00
  %i.tf = fcmp ogt double %i.tb, 0.000000e+00
  %. = select i1 %i.tf, double %i.tb, double +inf
  %.0 = select i1 %i.te, double %i.td, double %.
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit661

bb.o:                                             ; preds = %bb.k
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.sl, ptr nonnull %i.sm, i64 noundef 2)
          to label %.noexc unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

.noexc:                                           ; preds = %bb.o
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.sl, ptr nonnull %i.sm)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit: ; preds = %.noexc
  %i.tg = load double, ptr %i.sl, align 8, !tbaa !13 ; 2 uses
  %i.th = fcmp ogt double %i.tg, 0.000000e+00
  br i1 %i.th, label %_ZNSt6vectorIdSaIdEED2Ev.exit661, label %bb.p

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.noexc, %bb.o
  %i.ti = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef 24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.ti

bb.p:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %i.tj = load double, ptr %i.so, align 8, !tbaa !13 ; 2 uses
  %i.tk = fcmp ogt double %i.tj, 0.000000e+00
  br i1 %i.tk, label %_ZNSt6vectorIdSaIdEED2Ev.exit661, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !13 ; 2 uses
  %i.tn = fcmp ogt double %i.tm, 0.000000e+00
  br i1 %i.tn, label %bb.r, label %_ZNSt6vectorIdSaIdEED2Ev.exit661

bb.r:                                             ; preds = %bb.q
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit661

_ZNSt6vectorIdSaIdEED2Ev.exit661:                 ; preds = %bb.p, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, %bb.q, %bb.m, %bb.l, %bb.r, %bb.n
  %.1 = phi double [ +inf, %bb.q ], [ %i.tg, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit ], [ %i.tm, %bb.r ], [ +inf, %bb.l ], [ %.0, %bb.n ], [ %i.sw, %bb.m ], [ %i.tj, %bb.p ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef 24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c, %_ZNSt6vectorIdSaIdEED2Ev.exit661
  %.2 = phi double [ %.1, %_ZNSt6vectorIdSaIdEED2Ev.exit661 ], [ %i.sk, %bb.j ], [ +inf, %bb.g ], [ +inf, %bb.c ], [ %i.sd, %bb.h ], [ +inf, %bb.i ]
  ret double %.2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3igl13flip_avoiding35compute_max_step_from_singularitiesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp eq i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader23
end_hunk_0
