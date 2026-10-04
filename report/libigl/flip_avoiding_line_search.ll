Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/flip_avoiding_line_search?download=true
inline.NumInlined: 420
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3igl13flip_avoiding19get_min_pos_root_2DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i:bb.a
  %i.ad = getelementptr [8 x i8], ptr %i.w, i64 %i.t ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load double, ptr %i.y, align 8, !tbaa !18 ; 4 uses
  %i.ag = load double, ptr %i.ac, align 8, !tbaa !18 ; 4 uses
  %i.ah = load double, ptr %i.aa, align 8, !tbaa !18 ; 4 uses
  %i.ai = load double, ptr %i.ab, align 8, !tbaa !18 ; 3 uses
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fmul double %i.ah, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ag, double %i.ak)
  %i.am = load double, ptr %i.ae, align 8, !tbaa !18 ; 4 uses
  %i.an = fneg double %i.af
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.am, double %i.al)
  %i.ap = load double, ptr %i.ad, align 8, !tbaa !18 ; 4 uses
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ap, double %i.ao)
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.am, double %i.aq)
  %i.as = fneg double %i.ag
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ap, double %i.ar) ; 5 uses
  %i.au = load double, ptr %i.n, align 8, !tbaa !18 ; 3 uses
  %i.av = load double, ptr %i.p, align 8, !tbaa !18 ; 4 uses
  %i.aw = fmul double %i.av, %i.aj
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.au, double %i.ag, double %i.aw)
  %i.ay = load double, ptr %i.r, align 8, !tbaa !18 ; 3 uses
  %i.az = fneg double %i.ay                       ; 2 uses
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.ah, double %i.ax)
  %i.bb = load double, ptr %i.s, align 8, !tbaa !18 ; 3 uses
  %i.bc = fneg double %i.au                       ; 2 uses
  %i.bd = load double, ptr %i.u, align 8, !tbaa !18 ; 4 uses
  %i.be = load double, ptr %i.v, align 8, !tbaa !18 ; 3 uses
  %i.bf = fneg double %i.be
  %i.bg = fneg double %i.bb
  %i.bh = fneg double %i.bd
  %i.bi = fmul double %i.av, %i.az
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.af, double %i.ba)
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.am, double %i.bj)
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ap, double %i.bk)
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.ah, double %i.bl)
  %i.bn = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.au, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.af, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bb, i64 1
  %i.br = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bi, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bq, <2 x double> %i.bs)
  %i.bu = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bc, i64 1
  %i.bw = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.be, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bx, <2 x double> %i.bt)
  %i.bz = insertelement <2 x double> poison, double %i.bg, i64 0 ; 2 uses
  %i.ca = insertelement <2 x double> %i.bz, double %i.av, i64 1
  %i.cb = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bd, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cc, <2 x double> %i.by)
  %i.ce = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.ay, i64 1
  %i.cg = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.be, i64 1 ; 2 uses
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.ch, <2 x double> %i.cd)
  %i.cj = shufflevector <2 x double> %i.ch, <2 x double> %i.bz, <2 x i32> <i32 1, i32 2>
  %i.ck = insertelement <2 x double> poison, double %i.ai, i64 0
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
  %i.b = load ptr, ptr %1, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr [4 x i8], ptr %i.b, i64 %i.a ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %i.f = load i64, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.g = getelementptr [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23
  %.idx = shl i64 %i.f, 3
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23
  %.idx662 = mul i64 %i.f, 12
  %i.k = getelementptr i8, ptr %i.d, i64 %.idx662
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23
  %i.m = sext i32 %i.e to i64                     ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.m ; 3 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !27   ; 5 uses
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
  %i.ag = load ptr, ptr %2, align 8, !tbaa !26    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.m ; 3 uses
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !27 ; 5 uses
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
  %i.aw = load double, ptr %i.ai, align 8, !tbaa !18 ; 7 uses
  %i.ax = load double, ptr %i.ao, align 8, !tbaa !18 ; 8 uses
  %i.ay = fmul double %i.aw, %i.ax                ; 3 uses
  %i.az = load double, ptr %i.as, align 8, !tbaa !18 ; 12 uses
  %i.ba = load double, ptr %i.ap, align 8, !tbaa !18 ; 8 uses
  %i.bb = fmul double %i.aw, %i.ba                ; 4 uses
  %i.bc = load double, ptr %i.ar, align 8, !tbaa !18 ; 11 uses
  %i.bd = fneg double %i.bc                       ; 5 uses
  %i.be = fmul double %i.bb, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double %i.be)
  %i.bg = load double, ptr %i.ak, align 8, !tbaa !18 ; 6 uses
  %i.bh = load double, ptr %i.an, align 8, !tbaa !18 ; 7 uses
  %i.bi = fmul double %i.bg, %i.bh                ; 2 uses
  %i.bj = fneg double %i.bi                       ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.az, double %i.bf)
  %i.bl = fmul double %i.ba, %i.bg                ; 3 uses
  %i.bm = load double, ptr %i.aq, align 8, !tbaa !18 ; 11 uses
  %i.bn = load double, ptr %i.am, align 8, !tbaa !18 ; 8 uses
  %i.bo = fmul double %i.bh, %i.bn                ; 3 uses
  %i.bp = fmul double %i.ax, %i.bn                ; 3 uses
  %i.bq = fneg double %i.bp                       ; 2 uses
  %i.br = load double, ptr %i.av, align 8, !tbaa !18 ; 19 uses
  %i.bs = fneg double %i.ay                       ; 2 uses
  %i.bt = load double, ptr %i.au, align 8, !tbaa !18 ; 20 uses
  %i.bu = load double, ptr %i.at, align 8, !tbaa !18 ; 16 uses
  %i.bv = fneg double %i.bl                       ; 2 uses
  %i.bw = fneg double %i.bo
  %i.bx = fneg double %i.az                       ; 5 uses
  %i.by = fmul double %i.bm, %i.bn                ; 2 uses
  %i.bz = fmul double %i.bn, %i.bd                ; 2 uses
  %i.ca = fmul double %i.bh, %i.bd                ; 2 uses
  %i.cb = fmul double %i.az, %i.bh                ; 2 uses
  %i.cc = fmul double %i.ax, %i.bm                ; 2 uses
  %i.cd = fmul double %i.ax, %i.bx                ; 2 uses
  %i.ce = load double, ptr %i.z, align 8, !tbaa !18 ; 8 uses
  %i.cf = load double, ptr %i.v, align 8, !tbaa !18 ; 4 uses
  %i.cg = fmul double %i.bg, %i.cf                ; 4 uses
  %i.ch = fmul double %i.cg, %i.bx
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.ce, double %i.ch)
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.ce, double %i.ci)
  %i.ck = load double, ptr %i.p, align 8, !tbaa !18 ; 6 uses
  %i.cl = fmul double %i.ax, %i.ck                ; 3 uses
  %i.cm = fmul double %i.ba, %i.ck                ; 3 uses
  %i.cn = fneg double %i.cm                       ; 2 uses
  %i.co = load double, ptr %i.aa, align 8, !tbaa !18 ; 10 uses
  %i.cp = fneg double %i.bb
  %i.cq = load double, ptr %i.w, align 8, !tbaa !18 ; 6 uses
  %i.cr = fmul double %i.aw, %i.cq                ; 3 uses
  %i.cs = load double, ptr %i.r, align 8, !tbaa !18 ; 6 uses
  %i.ct = fmul double %i.bh, %i.cs                ; 3 uses
  %i.cu = fneg double %i.ct                       ; 2 uses
  %i.cv = load double, ptr %i.ab, align 8, !tbaa !18 ; 8 uses
  %i.cw = load double, ptr %i.x, align 8, !tbaa !18 ; 6 uses
  %i.cx = fmul double %i.aw, %i.cw                ; 3 uses
  %i.cy = fneg double %i.cx                       ; 2 uses
  %i.cz = fmul double %i.bg, %i.cw                ; 3 uses
  %i.da = load double, ptr %i.t, align 8, !tbaa !18 ; 5 uses
  %i.db = fmul double %i.bh, %i.da                ; 3 uses
  %i.dc = load double, ptr %i.ad, align 8, !tbaa !18 ; 16 uses
  %i.dd = fneg double %i.cl                       ; 2 uses
  %i.de = load double, ptr %i.ae, align 8, !tbaa !18 ; 16 uses
  %i.df = fneg double %i.cr                       ; 2 uses
  %i.dg = load double, ptr %i.af, align 8, !tbaa !18 ; 13 uses
  %i.dh = fneg double %i.cz                       ; 2 uses
  %i.di = fneg double %i.db                       ; 2 uses
  %i.dj = fmul double %i.bn, %i.ce                ; 2 uses
  %i.dk = fmul double %i.bc, %i.ck                ; 2 uses
  %i.dl = fmul double %i.ck, %i.bx                ; 2 uses
  %i.dm = fmul double %i.aw, %i.co                ; 2 uses
  %i.dn = fneg double %i.cv                       ; 4 uses
  %i.do = fmul double %i.da, %i.bd                ; 2 uses
  %i.dp = fmul double %i.cq, %i.bx                ; 2 uses
  %i.dq = fmul double %i.ax, %i.dn                ; 2 uses
  %i.dr = fneg double %i.cg
  %i.ds = fmul double %i.ck, %i.dn                ; 2 uses
  %i.dt = insertelement <2 x double> poison, double %i.ce, i64 0 ; 3 uses
  %i.du = insertelement <2 x double> %i.dt, double %i.bm, i64 1 ; 2 uses
  %i.dv = fneg <2 x double> %i.du                 ; 5 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 1 ; 2 uses
  %i.dx = insertelement <2 x double> poison, double %i.aw, i64 0 ; 2 uses
  %i.dy = insertelement <2 x double> %i.dx, double %i.ax, i64 1
  %i.dz = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.da, i64 1
  %i.eb = fmul <2 x double> %i.dy, %i.ea          ; 3 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 1 ; 2 uses
  %i.ed = fneg double %i.ec                       ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.df, i64 1
  %i.eg = insertelement <2 x double> poison, double %i.bm, i64 0 ; 2 uses
  %i.eh = insertelement <2 x double> %i.eg, double %i.br, i64 1 ; 2 uses
  %i.ei = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.ej = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.bw, i64 1 ; 2 uses
  %i.el = insertelement <2 x double> poison, double %i.bc, i64 0 ; 2 uses
  %i.em = insertelement <2 x double> %i.el, double %i.de, i64 1
  %i.en = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.eo = insertelement <2 x double> %i.eg, double %i.bu, i64 1
  %i.ep = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.ct, i64 1
  %i.er = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.es = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.et = insertelement <2 x double> poison, double %i.bt, i64 0 ; 3 uses
  %i.eu = insertelement <2 x double> %i.et, double %i.bu, i64 1 ; 2 uses
  %i.ev = insertelement <2 x double> poison, double %i.bi, i64 0 ; 2 uses
  %i.ew = insertelement <2 x double> %i.ev, double %i.bs, i64 1
  %i.ex = insertelement <2 x double> poison, double %i.br, i64 0 ; 3 uses
  %i.ey = insertelement <2 x double> %i.ex, double %i.dg, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.cx, i64 1
  %i.fb = insertelement <2 x double> poison, double %i.bu, i64 0 ; 5 uses
  %i.fc = insertelement <2 x double> %i.fb, double %i.bt, i64 1
  %i.fd = shufflevector <2 x double> %i.ek, <2 x double> %i.ev, <2 x i32> <i32 1, i32 2>
  %i.fe = insertelement <2 x double> %i.et, double %i.dg, i64 1
  %i.ff = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.dh, i64 1
  %i.fh = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x double> %i.ex, double %i.bt, i64 1
  %i.fj = insertelement <2 x double> poison, double %i.bg, i64 0 ; 2 uses
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fm = insertelement <2 x double> %i.fl, double %i.az, i64 1
  %i.fn = fmul <2 x double> %i.fk, %i.fm          ; 3 uses
  %i.fo = insertelement <2 x double> %i.ex, double %i.dc, i64 1
  %i.fp = extractelement <2 x double> %i.fn, i64 1
  %i.fq = fmul double %i.ba, %i.dw                ; 2 uses
  %i.fr = insertelement <2 x double> poison, double %i.co, i64 0 ; 2 uses
  %i.fs = insertelement <2 x double> %i.fr, double %i.ce, i64 1 ; 2 uses
  %i.ft = fneg <2 x double> %i.fs                 ; 4 uses
  %i.fu = extractelement <2 x double> %i.dv, i64 0 ; 2 uses
  %i.fv = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.bg, i64 1
  %i.fx = insertelement <2 x double> %i.fl, double %i.bc, i64 0
  %i.fy = fmul <2 x double> %i.fw, %i.fx          ; 3 uses
  %i.fz = insertelement <2 x double> %i.fb, double %i.br, i64 1
  %i.ga = extractelement <2 x double> %i.eb, i64 0
  %i.gb = extractelement <2 x double> %i.ft, i64 0
  %i.gc = fmul double %i.bn, %i.gb                ; 2 uses
  %i.gd = fmul double %i.cs, %i.dw                ; 2 uses
  %i.ge = fmul double %i.ba, %i.fu                ; 2 uses
  %i.gf = insertelement <2 x double> poison, double %i.cs, i64 0 ; 2 uses
  %i.gg = insertelement <2 x double> %i.gf, double %i.cf, i64 1 ; 2 uses
  %i.gh = insertelement <2 x double> %i.dv, double %i.bd, i64 1
  %i.gi = fmul <2 x double> %i.gg, %i.gh          ; 3 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 1
  %i.gk = insertelement <2 x double> poison, double %i.cf, i64 0 ; 3 uses
  %i.gl = insertelement <2 x double> %i.gk, double %i.bh, i64 1 ; 2 uses
  %i.gm = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x double> %i.gl, %i.gm          ; 3 uses
  %i.go = extractelement <2 x double> %i.gn, i64 1
  %i.gp = insertelement <2 x double> poison, double %i.cq, i64 0 ; 2 uses
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x double> %i.du, %i.gq          ; 3 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 1
  %i.gt = insertelement <2 x double> poison, double %i.cv, i64 0 ; 4 uses
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = fmul <2 x double> %i.gl, %i.gu          ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 1
  %i.gx = insertelement <2 x double> poison, double %i.cw, i64 0 ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x double> %i.gy, %i.dv          ; 2 uses
  %5 = extractelement <2 x double> %i.gz, i64 1
  %i.ha = insertelement <2 x double> %i.dt, double %i.bc, i64 1
  %i.hb = insertelement <2 x double> poison, double %i.da, i64 0 ; 2 uses
  %6 = insertelement <2 x double> %i.hb, double %i.cw, i64 1 ; 2 uses
  %7 = fmul <2 x double> %i.ha, %6                ; 3 uses
  %i.hc = insertelement <2 x double> %i.dx, double %i.bn, i64 1
  %i.hd = insertelement <2 x double> %i.el, double %i.cf, i64 1
  %i.he = fmul <2 x double> %i.hc, %i.hd          ; 3 uses
  %i.hf = extractelement <2 x double> %i.he, i64 1 ; 2 uses
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.bc, double %i.cj)
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.az, double %i.hg)
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.bc, double %i.hh)
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.co, double %i.hi)
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.az, double %i.hj)
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.co, double %i.hk)
  %i.hm = fmul double %i.bn, %i.cq                ; 4 uses
  %i.hn = fneg double %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hn, double %i.bm, double %i.hl)
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.az, double %i.ho)
  %i.hq = fneg double %i.hf                       ; 2 uses
  %i.hr = fmul double %i.az, %i.cs                ; 2 uses
  %i.hs = insertelement <2 x double> %i.en, double %i.hm, i64 1
  %i.ht = insertelement <2 x double> %i.he, double %i.di, i64 1
  %i.hu = fmul double %i.hm, %i.fu
  %i.hv = insertelement <2 x double> poison, double %i.dg, i64 0 ; 5 uses
  %i.hw = insertelement <2 x double> %i.hv, double %i.co, i64 1
  %i.hx = extractelement <2 x double> %i.gi, i64 0
  %i.hy = extractelement <2 x double> %7, i64 0
  %i.hz = fmul <2 x double> %i.gg, %i.gu          ; 2 uses
  %i.ia = fmul <2 x double> %6, %i.ft             ; 2 uses
  %i.ib = fmul double %i.cq, %i.dn
  %i.ic = fmul double %i.co, %i.cw
  %i.id = insertelement <2 x double> %i.gf, double %i.az, i64 1
  %i.ie = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x double> %i.id, %i.ie          ; 3 uses
  %i.ig = extractelement <2 x double> %i.if, i64 0 ; 2 uses
  %8 = fneg double %i.ig                          ; 2 uses
  %i.ih = insertelement <2 x double> poison, double %i.ck, i64 0 ; 3 uses
  %i.ii = insertelement <2 x double> %i.ih, double %i.ba, i64 1
  %i.ij = insertelement <2 x double> %i.gx, double %i.co, i64 1
  %i.ik = fmul <2 x double> %i.ii, %i.ij          ; 4 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0 ; 2 uses
  %i.im = fneg double %i.il
  %i.in = insertelement <2 x double> %i.gk, double %i.bm, i64 1
  %i.io = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x double> %i.in, %i.io          ; 3 uses
  %i.iq = fmul double %i.cs, %i.cw                ; 3 uses
  %i.ir = fmul double %i.cq, %i.da                ; 3 uses
  %i.is = fneg double %i.ir                       ; 2 uses
  %i.it = extractelement <2 x double> %i.ip, i64 0 ; 2 uses
  %i.iu = fneg double %i.it                       ; 2 uses
  %i.iv = fneg double %i.iq                       ; 2 uses
  %i.iw = insertelement <2 x double> %i.ih, double %i.ax, i64 1
  %i.ix = fmul <2 x double> %i.iw, %i.fs          ; 3 uses
  %i.iy = extractelement <2 x double> %i.ip, i64 1
  %i.iz = extractelement <2 x double> %i.ix, i64 1
  %i.ja = extractelement <2 x double> %i.if, i64 1
  %i.jb = extractelement <2 x double> %i.ik, i64 1
  %i.jc = extractelement <2 x double> %i.ix, i64 0
  %foldExtExtBinop = fmul <2 x double> %i.ik, %i.ft
  %i.jd = insertelement <2 x double> %i.ih, double %i.aw, i64 1
  %i.je = insertelement <2 x double> %i.gp, double %i.dn, i64 1
  %i.jf = fmul <2 x double> %i.jd, %i.je          ; 4 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 0
  %i.jh = fneg double %i.jg                       ; 2 uses
  %i.ji = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jj = insertelement <2 x double> %i.ji, double %i.cn, i64 1
  %i.jk = insertelement <2 x double> %i.et, double %i.co, i64 1
  %i.jl = shufflevector <2 x double> %i.fn, <2 x double> %i.jf, <2 x i32> <i32 0, i32 2>
  %i.jm = insertelement <2 x double> %i.hv, double %i.az, i64 1
  %i.jn = insertelement <2 x double> %i.fj, double %i.ba, i64 1
  %i.jo = insertelement <2 x double> %i.gt, double %i.cs, i64 1
  %i.jp = fmul <2 x double> %i.jn, %i.jo          ; 3 uses
  %i.jq = extractelement <2 x double> %i.jp, i64 1 ; 2 uses
  %i.jr = fneg double %i.jq                       ; 2 uses
  %i.js = insertelement <2 x double> %i.es, double %i.jr, i64 1
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.jq, double %i.bm, double %i.hp)
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.cv, double %i.jt)
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.bc, double %i.ju)
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.cv, double %i.jv)
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.bm, double %i.jw)
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.db, double %i.bc, double %i.jx)
  %i.jz = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.bm, double %i.jy)
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.dc, double %i.jz)
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.br, double %i.ka)
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.dc, double %i.kb)
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.bt, double %i.kc)
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.br, double %i.kd)
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.bt, double %i.ke)
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.de, double %i.kf)
  %i.kh = insertelement <2 x double> %i.ei, double %i.kg, i64 1
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eh, <2 x double> %i.kh)
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.em, <2 x double> %i.ki)
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.eo, <2 x double> %i.kj)
  %i.kl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.er, <2 x double> %i.kk)
  %i.km = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.eu, <2 x double> %i.kl)
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ey, <2 x double> %i.km)
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fc, <2 x double> %i.kn)
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fe, <2 x double> %i.ko)
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fh, <2 x double> %i.kp)
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.fi, <2 x double> %i.kq)
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eu, <2 x double> %i.kr)
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fo, <2 x double> %i.ks) ; 2 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 0
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.bu, double %i.ku)
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bt, double %i.kv)
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bu, double %i.kw)
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.br, double %i.kx)
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.bt, double %i.ky)
  %i.la = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.br, double %i.kz)
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.bu, double %i.la)
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.bt, double %i.lb)
  %i.ld = insertelement <2 x double> %i.kt, double %i.lc, i64 0
  %i.le = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.fz, <2 x double> %i.ld) ; 3 uses
  %i.lf = extractelement <2 x double> %i.le, i64 1
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.dc, double %i.lf)
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.bt, double %i.lg)
  %i.li = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.br, double %i.lh)
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.bt, double %i.li)
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.de, double %i.lj)
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.br, double %i.lk)
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.by, double %i.de, double %i.ll)
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.bu, double %i.lm)
  %i.lo = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.br, double %i.ln)
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.bu, double %i.lo)
  %i.lq = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.lr = insertelement <2 x double> %i.lq, double %i.hu, i64 1
  %i.ls = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.hw, <2 x double> %i.lr)
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.jk, <2 x double> %i.ls)
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jm, <2 x double> %9)
  %10 = insertelement <2 x double> %i.fb, double %i.ce, i64 1
  %i.lu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %10, <2 x double> %i.lt) ; 2 uses
  %i.lv = extractelement <2 x double> %i.lu, i64 0
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.iy, double %i.bt, double %i.lv)
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.do, double %i.bu, double %i.lw)
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.dc, double %i.lx)
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.iz, double %i.br, double %i.ly)
  %11 = extractelement <2 x double> %i.fy, i64 0
  %i.ma = tail call double @llvm.fmuladd.f64(double %11, double %i.dc, double %i.lz)
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.bt, double %i.ma)
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.br, double %i.mb)
  %i.md = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.bt, double %i.mc)
  %i.me = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.de, double %i.md)
  %i.mf = tail call double @llvm.fmuladd.f64(double %i.go, double %i.br, double %i.me)
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.de, double %i.mf)
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.bu, double %i.mg)
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.br, double %i.mh)
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.bu, double %i.mi)
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.dg, double %i.mj)
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.bt, double %i.mk)
  %i.mm = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.dg, double %i.ml)
  %12 = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.bu, double %i.mm)
  %13 = tail call double @llvm.fmuladd.f64(double %5, double %i.bt, double %12)
  %14 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x double> %14, double %8, i64 1
  %i.mn = insertelement <2 x double> %i.fb, double %i.az, i64 1
  %i.mo = insertelement <2 x double> %i.lu, double %13, i64 0
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.mn, <2 x double> %i.mo) ; 2 uses
  %i.mq = extractelement <2 x double> %i.mp, i64 0 ; 6 uses
  %i.mr = extractelement <2 x double> %i.mp, i64 1
  %i.ms = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.cv, double %i.mr)
  %i.mt = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.ce, double %i.ms)
  %i.mu = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cv, double %i.mt)
  %i.mv = tail call double @llvm.fmuladd.f64(double %i.im, double %i.bc, double %i.mu)
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ce, double %i.mv)
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.it, double %i.bc, double %i.mw)
  %i.my = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cv, double %i.mx)
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.co, double %i.my)
  %i.na = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cv, double %i.mz)
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.bm, double %i.na)
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.db, double %i.co, double %i.nb)
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.is, double %i.bm, double %i.nc)
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.de, double %i.nd)
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.dc, double %i.ne)
  %i.ng = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.de, double %i.nf)
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.br, double %i.ng)
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.jr, double %i.dc, double %i.nh)
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.br, double %i.ni)
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.dg, double %i.nj)
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dc, double %i.nk)
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dg, double %i.nl)
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.il, double %i.bt, double %i.nm)
  %i.no = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.dc, double %i.nn)
  %i.np = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.bt, double %i.no)
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dg, double %i.np)
  %i.nr = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.de, double %i.nq)
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.dg, double %i.nr)
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.bu, double %i.ns)
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.di, double %i.de, double %i.nt)
  %i.nv = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.bu, double %i.nu)
  %i.nw = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.de, double %i.nv)
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.dc, double %i.nw)
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.de, double %i.nx)
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.br, double %i.ny)
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.dc, double %i.nz)
  %i.ob = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.br, double %i.oa)
  %i.oc = extractelement <2 x double> %i.fy, i64 1
  %i.od = tail call double @llvm.fmuladd.f64(double %i.oc, double %i.dg, double %i.ob)
  %16 = extractelement <2 x double> %i.jp, i64 0
  %i.oe = tail call double @llvm.fmuladd.f64(double %16, double %i.dc, double %i.od)
  %i.of = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dg, double %i.oe)
  %i.og = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.bt, double %i.of)
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dc, double %i.og)
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.hy, double %i.bt, double %i.oh)
  %i.oj = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dg, double %i.oi)
  %i.ok = insertelement <2 x double> %i.gt, double %i.de, i64 1
  %i.ol = insertelement <2 x double> %foldExtExtBinop, double %i.oj, i64 1
  %i.om = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.ok, <2 x double> %i.ol)
  %i.on = insertelement <2 x double> poison, double %8, i64 0
  %i.oo = insertelement <2 x double> %i.on, double %i.gd, i64 1
  %i.op = insertelement <2 x double> %i.gt, double %i.dg, i64 1
  %i.oq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oo, <2 x double> %i.op, <2 x double> %i.om)
  %i.or = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.os = insertelement <2 x double> %i.or, double %i.iq, i64 0
  %i.ot = insertelement <2 x double> %i.dt, double %i.bu, i64 1 ; 2 uses
  %i.ou = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.ot, <2 x double> %i.oq)
  %i.ov = insertelement <2 x double> %i.fr, double %i.de, i64 1
  %i.ow = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ov, <2 x double> %i.ou)
  %i.ox = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.oy = insertelement <2 x double> %i.ox, double %i.is, i64 0
  %i.oz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.ot, <2 x double> %i.ow)
  %i.pa = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.pb = insertelement <2 x double> %i.pa, double %i.ge, i64 1
  %i.pc = insertelement <2 x double> %i.hv, double %i.de, i64 1 ; 2 uses
  %i.pd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.pc, <2 x double> %i.oz)
  %i.pe = insertelement <2 x double> poison, double %i.de, i64 0 ; 2 uses
  %i.pf = insertelement <2 x double> %i.pe, double %i.dc, i64 1 ; 4 uses
  %i.pg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.pf, <2 x double> %i.pd)
  %i.ph = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.pc, <2 x double> %i.pg)
  %i.pi = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pj = insertelement <2 x double> %i.pi, double %i.iv, i64 0
  %i.pk = insertelement <2 x double> poison, double %i.dc, i64 0 ; 3 uses
  %i.pl = insertelement <2 x double> %i.pk, double %i.br, i64 1 ; 2 uses
  %i.pm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> %i.pl, <2 x double> %i.ph)
  %i.pn = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.po = insertelement <2 x double> %i.pn, double %i.dp, i64 1
  %i.pp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.po, <2 x double> %i.pf, <2 x double> %i.pm)
  %i.pq = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pr = insertelement <2 x double> %i.pq, double %i.ir, i64 0
  %i.ps = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pr, <2 x double> %i.pl, <2 x double> %i.pp)
  %i.pt = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.pt, <2 x double> %i.ps)
  %i.pv = insertelement <2 x double> poison, double %i.ds, i64 0
  %17 = insertelement <2 x double> %i.pv, double %i.dq, i64 1
  %i.pw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.pf, <2 x double> %i.pu)
  %i.px = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.py = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.px, <2 x double> %i.pw)
  %i.pz = insertelement <2 x double> %i.pk, double %i.bt, i64 1 ; 2 uses
  %i.qa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.pz, <2 x double> %i.py)
  %i.qb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %i.pf, <2 x double> %i.qa)
  %i.qc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.pz, <2 x double> %i.qb)
  %i.qd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.px, <2 x double> %i.qc)
  %i.qe = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.qe, <2 x double> %i.qd)
  %i.qg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.px, <2 x double> %i.qf)
  %i.qh = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qj = insertelement <2 x double> %i.pk, double %i.bu, i64 1 ; 2 uses
  %i.qk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qi, <2 x double> %i.qj, <2 x double> %i.qg)
  %i.ql = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.qe, <2 x double> %i.qk)
  %i.qm = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.qn = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qn, <2 x double> %i.qj, <2 x double> %i.ql) ; 7 uses
  %i.qp = extractelement <2 x double> %i.le, i64 0 ; 2 uses
  %i.qq = tail call noundef double @llvm.fabs.f64(double %i.qp)
  %i.qr = fcmp ugt double %i.qq, 1.000000e-10
  br i1 %i.qr, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.qs = tail call noundef double @llvm.fabs.f64(double %i.mq)
  %i.qt = fcmp ogt double %i.qs, 1.000000e-10
  br i1 %i.qt, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.qu = extractelement <2 x double> %i.qo, i64 1 ; 3 uses
  %i.qv = tail call noundef double @pow(double noundef %i.qu, double noundef 2.000000e+00) #18
  %i.qw = fmul nnan double %i.mq, -4.000000e+00
  %i.qx = extractelement <2 x double> %i.qo, i64 0 ; 2 uses
  %i.qy = tail call double @llvm.fmuladd.f64(double %i.qw, double %i.qx, double %i.qv) ; 2 uses
  %i.qz = fcmp ugt double %i.qy, 0.000000e+00
  br i1 %i.qz, label %bb.d, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.d:                                             ; preds = %bb.c
  %i.ra = tail call double @sqrt(double noundef %i.qy) #18 ; 2 uses
  %i.rb = fcmp ult double %i.qu, 0.000000e+00
  br i1 %i.rb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.rc = fneg double %i.qu
  %i.rd = fsub double %i.rc, %i.ra                ; 2 uses
  %i.re = fmul double %i.qx, 2.000000e+00
  %i.rf = fmul nnan double %i.mq, 2.000000e+00
  %i.rg = insertelement <2 x double> poison, double %i.rd, i64 0
  %i.rh = insertelement <2 x double> %i.rg, double %i.rf, i64 1
  %i.ri = insertelement <2 x double> poison, double %i.re, i64 0
  %i.rj = insertelement <2 x double> %i.ri, double %i.rd, i64 1
  %i.rk = fdiv <2 x double> %i.rj, %i.rh
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.rl = fmul nnan double %i.mq, 2.000000e+00
  %i.rm = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.ra, i64 1 ; 2 uses
  %i.rn = fsub <2 x double> %i.rm, %i.qo          ; 2 uses
  %i.ro = fmul <2 x double> %i.rm, %i.qo
  %i.rp = shufflevector <2 x double> %i.rn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rq = insertelement <2 x double> %i.rp, double %i.rl, i64 1
  %i.rr = shufflevector <2 x double> %i.rn, <2 x double> %i.ro, <2 x i32> <i32 1, i32 2>
  %i.rs = shufflevector <2 x double> %i.rq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rt = fdiv <2 x double> %i.rr, %i.rs
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ru = phi <2 x double> [ %i.rt, %bb.f ], [ %i.rk, %bb.e ] ; 2 uses
  %i.rv = fcmp olt double %i.mq, 0.000000e+00     ; 2 uses
  %i.rw = extractelement <2 x double> %i.ru, i64 0 ; 2 uses
  %i.rx = extractelement <2 x double> %i.ru, i64 1 ; 2 uses
  %.1.i = select i1 %i.rv, double %i.rx, double %i.rw ; 2 uses
  %i.ry = fcmp ogt double %.1.i, 0.000000e+00
  br i1 %i.ry, label %bb.h, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.h:                                             ; preds = %bb.g
  %.0.i = select i1 %i.rv, double %i.rw, double %i.rx ; 2 uses
  %i.rz = fcmp ogt double %.0.i, 0.000000e+00
  %i.sa = select i1 %i.rz, double %.0.i, double %.1.i
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.i:                                             ; preds = %bb.b
  %i.sb = extractelement <2 x double> %i.qo, i64 1 ; 2 uses
  %i.sc = fcmp oeq double %i.sb, 0.000000e+00
  br i1 %i.sc, label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.sd = extractelement <2 x double> %i.qo, i64 0
  %i.se = fneg double %i.sd
  %i.sf = fdiv double %i.se, %i.sb                ; 2 uses
  %i.sg = fcmp ogt double %i.sf, 0.000000e+00
  %i.sh = select i1 %i.sg, double %i.sf, double +inf
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.si = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 12 uses
  store ptr %i.si, ptr %4, align 8, !tbaa !16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 24 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.sj, ptr %i.sk, align 8, !tbaa !33
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 8 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.si, i8 0, i64 24, i1 false)
  store ptr %i.sj, ptr %i.sm, align 8, !tbaa !34
  %i.sn = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.so = fdiv <2 x double> %i.qo, %i.sn          ; 2 uses
  %i.sp = fdiv double %i.mq, %i.qp
  %i.sq = extractelement <2 x double> %i.so, i64 0
  %i.sr = extractelement <2 x double> %i.so, i64 1
  %i.ss = call noundef i32 @_ZN3igl13flip_avoiding7SolveP3ERSt6vectorIdSaIdEEddd(ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.sp, double noundef %i.sr, double noundef %i.sq)
  switch i32 %i.ss, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.st = load double, ptr %i.si, align 8, !tbaa !18 ; 2 uses
  %i.su = fcmp ult double %i.st, 0.000000e+00
  br i1 %i.su, label %_ZNSt6vectorIdSaIdEED2Ev.exit661, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit661

bb.n:                                             ; preds = %bb.k
  %i.sv = load double, ptr %i.si, align 8, !tbaa !18 ; 4 uses
  %i.sw = load double, ptr %i.sl, align 8, !tbaa !18 ; 4 uses
  %i.sx = fcmp olt double %i.sv, %i.sw
  %i.sy = select i1 %i.sx, double %i.sw, double %i.sv ; 2 uses
  %i.sz = fcmp olt double %i.sw, %i.sv
  %i.ta = select i1 %i.sz, double %i.sw, double %i.sv ; 2 uses
  %i.tb = fcmp ogt double %i.ta, 0.000000e+00
  %i.tc = fcmp ogt double %i.sy, 0.000000e+00
  %. = select i1 %i.tc, double %i.sy, double +inf
  %.0 = select i1 %i.tb, double %i.ta, double %.
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit661

bb.o:                                             ; preds = %bb.k
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.si, ptr nonnull %i.sj, i64 noundef 2)
          to label %.noexc unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

.noexc:                                           ; preds = %bb.o
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.si, ptr nonnull %i.sj)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit: ; preds = %.noexc
  %i.td = load double, ptr %i.si, align 8, !tbaa !18 ; 2 uses
  %i.te = fcmp ogt double %i.td, 0.000000e+00
  br i1 %i.te, label %_ZNSt6vectorIdSaIdEED2Ev.exit661, label %bb.p

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.noexc, %bb.o
  %i.tf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef 24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.tf

bb.p:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %i.tg = load double, ptr %i.sl, align 8, !tbaa !18 ; 2 uses
  %i.th = fcmp ogt double %i.tg, 0.000000e+00
  br i1 %i.th, label %_ZNSt6vectorIdSaIdEED2Ev.exit661, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ti = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !18 ; 2 uses
  %i.tk = fcmp ogt double %i.tj, 0.000000e+00
  br i1 %i.tk, label %bb.r, label %_ZNSt6vectorIdSaIdEED2Ev.exit661

bb.r:                                             ; preds = %bb.q
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit661

_ZNSt6vectorIdSaIdEED2Ev.exit661:                 ; preds = %bb.p, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, %bb.q, %bb.m, %bb.l, %bb.r, %bb.n
  %.1 = phi double [ +inf, %bb.q ], [ %i.td, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit ], [ %i.tj, %bb.r ], [ +inf, %bb.l ], [ %.0, %bb.n ], [ %i.st, %bb.m ], [ %i.tg, %bb.p ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef 24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit

_ZN3igl13flip_avoiding26get_smallest_pos_quad_zeroEddd.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c, %_ZNSt6vectorIdSaIdEED2Ev.exit661
  %.2 = phi double [ %.1, %_ZNSt6vectorIdSaIdEED2Ev.exit661 ], [ %i.sh, %bb.j ], [ +inf, %bb.g ], [ +inf, %bb.c ], [ %i.sa, %bb.h ], [ +inf, %bb.i ]
  ret double %.2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3igl13flip_avoiding35compute_max_step_from_singularitiesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  %i.c = icmp eq i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader23

.preheader23:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.a
  br i1 %i.f, label %.lr.ph29, label %.loopexit

.lr.ph29:                                         ; preds = %.preheader, %.lr.ph29
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %.lr.ph29 ], [ 0, %.preheader ] ; 2 uses
  %.02227 = phi double [ %.sroa.speculated17, %.lr.ph29 ], [ +inf, %.preheader ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.h = tail call noundef double @_ZN3igl13flip_avoiding19get_min_pos_root_2DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.g) ; 2 uses
  %i.i = fcmp olt double %i.h, %.02227
  %.sroa.speculated17 = select i1 %i.i, double %i.h, double %.02227 ; 2 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph29, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader23, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader23 ] ; 2 uses
  %.125 = phi double [ %.sroa.speculated, %.lr.ph ], [ +inf, %.preheader23 ] ; 2 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = tail call noundef double @_ZN3igl13flip_avoiding19get_min_pos_root_3DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.j) ; 2 uses
  %i.l = fcmp olt double %i.k, %.125
  %.sroa.speculated = select i1 %i.l, double %i.k, double %.125 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !24
  %i.n = icmp sgt i64 %i.m, %indvars.iv.next
  br i1 %i.n, label %.lr.ph, label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph29, %.preheader23, %.preheader
  %.2 = phi double [ %.sroa.speculated17, %.lr.ph29 ], [ +inf, %.preheader ], [ +inf, %.preheader23 ], [ %.sroa.speculated, %.lr.ph ]
  ret double %.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3igl25flip_avoiding_line_searchERKN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERNS1_IdLin1ELin1ELi0ELin1ELin1EEERKS5_RSt8functionIFdS6_EEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double noundef %4) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.3", align 8   ; 9 uses
  %6 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 5 uses
  %7 = alloca %"class.std::function", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %2, ptr %6, align 8, !tbaa !37, !alias.scope !38
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !37, !alias.scope !38
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_S9_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = icmp eq i64 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0                     ; 2 uses
  br i1 %i.d, label %.preheader.i, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.a
  br i1 %i.g, label %.lr.ph.i, label %_ZN3igl13flip_avoiding35compute_max_step_from_singularitiesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_.exit

.preheader.i:                                     ; preds = %bb.a
  br i1 %i.g, label %.lr.ph29.i, label %_ZN3igl13flip_avoiding35compute_max_step_from_singularitiesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_.exit

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph29.i ], [ 0, %.preheader.i ] ; 2 uses
  %.02227.i = phi double [ %.sroa.speculated17.i, %.lr.ph29.i ], [ +inf, %.preheader.i ] ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv33.i to i32
  %i.i = call noundef double @_ZN3igl13flip_avoiding19get_min_pos_root_2DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i(ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i32 noundef %i.h) ; 2 uses
  %i.j = fcmp olt double %i.i, %.02227.i
  %.sroa.speculated17.i = select i1 %i.j, double %i.i, double %.02227.i ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next34.i, %i.f
  br i1 %exitcond.not.i, label %_ZN3igl13flip_avoiding35compute_max_step_from_singularitiesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_.exit, label %.lr.ph29.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader23.i, %.noexc
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc ], [ 0, %.preheader23.i ] ; 2 uses
  %.125.i = phi double [ %.sroa.speculated.i, %.noexc ], [ +inf, %.preheader23.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.l = invoke noundef double @_ZN3igl13flip_avoiding19get_min_pos_root_3DERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_i(ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i32 noundef %i.k)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.m = fcmp olt double %i.l, %.125.i
  %.sroa.speculated.i = select i1 %i.m, double %i.l, double %.125.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !24
  %i.o = icmp sgt i64 %i.n, %indvars.iv.next.i
  br i1 %i.o, label %.lr.ph.i, label %_ZN3igl13flip_avoiding35compute_max_step_from_singularitiesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_.exit, !llvm.loop !1

_ZN3igl13flip_avoiding35compute_max_step_from_singularitiesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_.exit: ; preds = %.noexc, %.lr.ph29.i, %.preheader.i, %.preheader23.i
  %.2.i = phi double [ %.sroa.speculated17.i, %.lr.ph29.i ], [ +inf, %.preheader.i ], [ +inf, %.preheader23.i ], [ %.sroa.speculated.i, %.noexc ]
  %i.p = fmul double %.2.i, 8.000000e-01          ; 2 uses
  %i.q = fcmp olt double %i.p, 1.000000e+00
  %.sroa.speculated = select i1 %i.q, double %i.p, double 1.000000e+00
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFdRN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3igl13flip_avoiding35compute_max_step_from_singularitiesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEERS3_.exit
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !41
  store <2 x ptr> %i.v, ptr %i.r, align 8, !tbaa !41
  br label %_ZNSt8functionIFdRN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEC2ERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
end_hunk_0
