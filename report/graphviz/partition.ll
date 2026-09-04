Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/partition?download=true
inline.NumInlined: 85
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@traverse_polygon:bb.a
  %i.kn = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.km)
  %i.ko = fcmp ole <2 x double> %i.kn, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %i.kp = extractelement <2 x i1> %i.ko, i64 0
  %i.kq = extractelement <2 x i1> %i.ko, i64 1
  %i.kr = select i1 %i.kq, i1 %i.kp, i1 false
  br i1 %i.kr, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %._crit_edge907
  %i.ks = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.kt = load <2 x double>, ptr %i.ac, align 8
  %i.ku = load <2 x double>, ptr %i.ks, align 8
  %i.kv = fsub <2 x double> %i.kt, %i.ku
  %i.kw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.kv)
  %i.kx = fcmp ole <2 x double> %i.kw, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %i.ky = extractelement <2 x i1> %i.kx, i64 0
  %i.kz = extractelement <2 x i1> %i.kx, i64 1
  %i.la = select i1 %i.kz, i1 %i.ky, i1 false
  br i1 %i.la, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 56
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !26 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !26 ; 2 uses
  %i.lf = icmp eq i32 %.tr895900, 1
  br i1 %i.lf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lg = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.le, i32 noundef %i.lc) ; 2 uses
  %i.lh = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.lh, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.li = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.lj, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.lg, i64 noundef %i.ll, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  br label %tailrecurse.backedge

bb.bk:                                            ; preds = %bb.bi
  %i.lm = tail call fastcc i64 @make_new_monotone_poly(ptr noundef %9, i64 noundef %.tr891897, i32 noundef %i.lc, i32 noundef %i.le) ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !35
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.lo, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.lp = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.lp, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.lq = load i64, ptr %i.bf, align 8, !tbaa !32
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.lm, i64 noundef %i.lq, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  br label %tailrecurse.backedge

bb.bl:                                            ; preds = %bb.bh, %._crit_edge907
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.bg, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.ls = load i64, ptr %i.cl, align 8, !tbaa !34
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.ls, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 1, ptr noundef %9)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !33
  tail call fastcc void @traverse_polygon(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %.tr891897, i64 noundef %i.lu, i64 noundef %.tr892898, i32 noundef %7, i32 noundef 2, ptr noundef %9)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  br label %tailrecurse.backedge

._crit_edge:                                      ; preds = %bb.b, %tailrecurse.backedge, %bb.ar, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @make_new_monotone_poly(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mon_idx, align 8, !tbaa !43
  %i.b = add i64 %i.a, 1                          ; 3 uses
  store i64 %i.b, ptr @mon_idx, align 8, !tbaa !43
  %i.c = load ptr, ptr @vert, align 8, !tbaa !24  ; 10 uses
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [56 x i8], ptr %i.c, i64 %i.d ; 14 uses
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr inbounds [56 x i8], ptr %i.c, i64 %i.f ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12   ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %.val44.i = load double, ptr %i.l, align 8, !tbaa !80
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val45.i = load double, ptr %i.m, align 8, !tbaa !81
  %i.n = load <2 x double>, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.o = load <2 x double>, ptr %i.g, align 8, !tbaa !22
  %i.p = extractelement <2 x double> %i.n, i64 0
  %i.q = fsub double %.val44.i, %i.p              ; 3 uses
  %i.r = extractelement <2 x double> %i.n, i64 1
  %i.s = fsub double %.val45.i, %i.r              ; 4 uses
  %i.t = fsub <2 x double> %i.o, %i.n             ; 6 uses
  %i.u = fneg double %i.s
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.s, i64 1
  %i.x = fmul <2 x double> %i.t, %i.w
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.z = insertelement <2 x double> poison, double %i.q, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.t, <2 x double> %i.y) ; 3 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 1
  %i.ad = fcmp ult double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = tail call double @hypot(double noundef %i.q, double noundef %i.s) #18
  %i.af = extractelement <2 x double> %i.ab, i64 0
  %i.ag = fdiv double %i.af, %i.ae
  %i.ah = extractelement <2 x double> %i.t, i64 0
  %i.ai = extractelement <2 x double> %i.t, i64 1
  %i.aj = tail call double @hypot(double noundef %i.ah, double noundef %i.ai) #18
  %i.ak = fdiv double %i.ag, %i.aj
  br label %get_angle.exit.i

bb.d:                                             ; preds = %bb.b
  %i.al = extractelement <2 x double> %i.ab, i64 0
  %i.am = fneg double %i.al
  %i.an = tail call double @hypot(double noundef %i.q, double noundef %i.s) #18
  %i.ao = fdiv double %i.am, %i.an
  %i.ap = extractelement <2 x double> %i.t, i64 0
  %i.aq = extractelement <2 x double> %i.t, i64 1
  %i.ar = tail call double @hypot(double noundef %i.ap, double noundef %i.aq) #18
  %i.as = fdiv double %i.ao, %i.ar
  %i.at = fadd double %i.as, -2.000000e+00
  br label %get_angle.exit.i

get_angle.exit.i:                                 ; preds = %bb.d, %bb.c
  %.0.i.i = phi double [ %i.ak, %bb.c ], [ %i.at, %bb.d ] ; 2 uses
  %i.au = fcmp ogt double %.0.i.i, -4.000000e+00
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %get_angle.exit.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %get_angle.exit.i, %bb.a
  %.130.i = phi double [ -4.000000e+00, %bb.a ], [ %.0.i.i, %bb.e ], [ -4.000000e+00, %get_angle.exit.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.ay ; 2 uses
  %.val44.1.i = load double, ptr %i.az, align 8, !tbaa !80
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val45.1.i = load double, ptr %i.ba, align 8, !tbaa !81
  %i.bb = load <2 x double>, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.bc = load <2 x double>, ptr %i.g, align 8, !tbaa !22
  %i.bd = extractelement <2 x double> %i.bb, i64 0
  %i.be = fsub double %.val44.1.i, %i.bd          ; 3 uses
  %i.bf = extractelement <2 x double> %i.bb, i64 1
  %i.bg = fsub double %.val45.1.i, %i.bf          ; 4 uses
  %i.bh = fsub <2 x double> %i.bc, %i.bb          ; 6 uses
  %i.bi = fneg double %i.bg
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bg, i64 1
  %i.bl = fmul <2 x double> %i.bh, %i.bk
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bh, <2 x double> %i.bm) ; 3 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 1
  %i.br = fcmp ult double %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = tail call double @hypot(double noundef %i.be, double noundef %i.bg) #18
  %i.bt = extractelement <2 x double> %i.bp, i64 0
  %i.bu = fdiv double %i.bt, %i.bs
  %i.bv = extractelement <2 x double> %i.bh, i64 0
  %i.bw = extractelement <2 x double> %i.bh, i64 1
  %i.bx = tail call double @hypot(double noundef %i.bv, double noundef %i.bw) #18
  %i.by = fdiv double %i.bu, %i.bx
  br label %get_angle.exit.1.i

bb.i:                                             ; preds = %bb.g
  %i.bz = extractelement <2 x double> %i.bp, i64 0
  %i.ca = fneg double %i.bz
  %i.cb = tail call double @hypot(double noundef %i.be, double noundef %i.bg) #18
  %i.cc = fdiv double %i.ca, %i.cb
  %i.cd = extractelement <2 x double> %i.bh, i64 0
  %i.ce = extractelement <2 x double> %i.bh, i64 1
  %i.cf = tail call double @hypot(double noundef %i.cd, double noundef %i.ce) #18
  %i.cg = fdiv double %i.cc, %i.cf
  %i.ch = fadd double %i.cg, -2.000000e+00
  br label %get_angle.exit.1.i

get_angle.exit.1.i:                               ; preds = %bb.i, %bb.h
  %.0.i.1.i = phi double [ %i.by, %bb.h ], [ %i.ch, %bb.i ] ; 2 uses
  %i.ci = fcmp ogt double %.0.i.1.i, %.130.i
  br i1 %i.ci, label %bb.j, label %bb.k

bb.j:                                             ; preds = %get_angle.exit.1.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %get_angle.exit.1.i, %bb.f
  %.130.1.i = phi double [ %.130.i, %bb.f ], [ %.0.i.1.i, %bb.j ], [ %.130.i, %get_angle.exit.1.i ] ; 3 uses
  %.128.1.i = phi i64 [ 0, %bb.f ], [ 1, %bb.j ], [ 0, %get_angle.exit.1.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !12 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.cm ; 2 uses
  %.val44.2.i = load double, ptr %i.cn, align 8, !tbaa !80
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %.val45.2.i = load double, ptr %i.co, align 8, !tbaa !81
  %i.cp = load <2 x double>, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.cq = load <2 x double>, ptr %i.g, align 8, !tbaa !22
  %i.cr = extractelement <2 x double> %i.cp, i64 0
  %i.cs = fsub double %.val44.2.i, %i.cr          ; 3 uses
  %i.ct = extractelement <2 x double> %i.cp, i64 1
  %i.cu = fsub double %.val45.2.i, %i.ct          ; 4 uses
  %i.cv = fsub <2 x double> %i.cq, %i.cp          ; 6 uses
  %i.cw = fneg double %i.cu
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cu, i64 1
  %i.cz = fmul <2 x double> %i.cv, %i.cy
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.db = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.cv, <2 x double> %i.da) ; 3 uses
  %i.de = extractelement <2 x double> %i.dd, i64 1
  %i.df = fcmp ult double %i.de, 0.000000e+00
  br i1 %i.df, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = tail call double @hypot(double noundef %i.cs, double noundef %i.cu) #18
  %i.dh = extractelement <2 x double> %i.dd, i64 0
  %i.di = fdiv double %i.dh, %i.dg
  %i.dj = extractelement <2 x double> %i.cv, i64 0
  %i.dk = extractelement <2 x double> %i.cv, i64 1
  %i.dl = tail call double @hypot(double noundef %i.dj, double noundef %i.dk) #18
  %i.dm = fdiv double %i.di, %i.dl
  br label %get_angle.exit.2.i

bb.n:                                             ; preds = %bb.l
  %i.dn = extractelement <2 x double> %i.dd, i64 0
  %i.do = fneg double %i.dn
  %i.dp = tail call double @hypot(double noundef %i.cs, double noundef %i.cu) #18
  %i.dq = fdiv double %i.do, %i.dp
  %i.dr = extractelement <2 x double> %i.cv, i64 0
  %i.ds = extractelement <2 x double> %i.cv, i64 1
  %i.dt = tail call double @hypot(double noundef %i.dr, double noundef %i.ds) #18
  %i.du = fdiv double %i.dq, %i.dt
  %i.dv = fadd double %i.du, -2.000000e+00
  br label %get_angle.exit.2.i

get_angle.exit.2.i:                               ; preds = %bb.n, %bb.m
  %.0.i.2.i = phi double [ %i.dm, %bb.m ], [ %i.dv, %bb.n ] ; 2 uses
  %i.dw = fcmp ogt double %.0.i.2.i, %.130.1.i
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %get_angle.exit.2.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %get_angle.exit.2.i, %bb.k
  %.130.2.i = phi double [ %.130.1.i, %bb.k ], [ %.0.i.2.i, %bb.o ], [ %.130.1.i, %get_angle.exit.2.i ]
  %.128.2.i = phi i64 [ %.128.1.i, %bb.k ], [ 2, %bb.o ], [ %.128.1.i, %get_angle.exit.2.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !12 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.ea ; 2 uses
  %.val44.3.i = load double, ptr %i.eb, align 8, !tbaa !80
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %.val45.3.i = load double, ptr %i.ec, align 8, !tbaa !81
  %i.ed = load <2 x double>, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.ee = load <2 x double>, ptr %i.g, align 8, !tbaa !22
  %i.ef = extractelement <2 x double> %i.ed, i64 0
  %i.eg = fsub double %.val44.3.i, %i.ef          ; 3 uses
  %i.eh = extractelement <2 x double> %i.ed, i64 1
  %i.ei = fsub double %.val45.3.i, %i.eh          ; 4 uses
  %i.ej = fsub <2 x double> %i.ee, %i.ed          ; 6 uses
  %i.ek = fneg double %i.ei
  %i.el = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ei, i64 1
  %i.en = fmul <2 x double> %i.ej, %i.em
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ep = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.ej, <2 x double> %i.eo) ; 3 uses
  %i.es = extractelement <2 x double> %i.er, i64 1
  %i.et = fcmp ult double %i.es, 0.000000e+00
  br i1 %i.et, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eu = tail call double @hypot(double noundef %i.eg, double noundef %i.ei) #18
  %i.ev = extractelement <2 x double> %i.er, i64 0
  %i.ew = fdiv double %i.ev, %i.eu
  %i.ex = extractelement <2 x double> %i.ej, i64 0
  %i.ey = extractelement <2 x double> %i.ej, i64 1
  %i.ez = tail call double @hypot(double noundef %i.ex, double noundef %i.ey) #18
  %i.fa = fdiv double %i.ew, %i.ez
  br label %get_angle.exit.3.i

bb.s:                                             ; preds = %bb.q
  %i.fb = extractelement <2 x double> %i.er, i64 0
  %i.fc = fneg double %i.fb
  %i.fd = tail call double @hypot(double noundef %i.eg, double noundef %i.ei) #18
  %i.fe = fdiv double %i.fc, %i.fd
  %i.ff = extractelement <2 x double> %i.ej, i64 0
  %i.fg = extractelement <2 x double> %i.ej, i64 1
  %i.fh = tail call double @hypot(double noundef %i.ff, double noundef %i.fg) #18
  %i.fi = fdiv double %i.fe, %i.fh
  %i.fj = fadd double %i.fi, -2.000000e+00
  br label %get_angle.exit.3.i

get_angle.exit.3.i:                               ; preds = %bb.s, %bb.r
  %.0.i.3.i = phi double [ %i.fa, %bb.r ], [ %i.fj, %bb.s ]
  %i.fk = fcmp ogt double %.0.i.3.i, %.130.2.i
  %spec.select.i = select i1 %i.fk, i64 3, i64 %.128.2.i
  br label %bb.t

bb.t:                                             ; preds = %get_angle.exit.3.i, %bb.p
  %.128.3.i = phi i64 [ %.128.2.i, %bb.p ], [ %spec.select.i, %get_angle.exit.3.i ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !12 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 1
  br i1 %i.fn, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.fo ; 2 uses
  %.val38.i = load double, ptr %i.fp, align 8, !tbaa !80
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %.val39.i = load double, ptr %i.fq, align 8, !tbaa !81
  %i.fr = load <2 x double>, ptr %i.g, align 8, !tbaa !22 ; 3 uses
  %i.fs = load <2 x double>, ptr %i.e, align 8, !tbaa !22
  %i.ft = extractelement <2 x double> %i.fr, i64 0
  %i.fu = fsub double %.val38.i, %i.ft            ; 3 uses
  %i.fv = extractelement <2 x double> %i.fr, i64 1
  %i.fw = fsub double %.val39.i, %i.fv            ; 4 uses
  %i.fx = fsub <2 x double> %i.fs, %i.fr          ; 6 uses
  %i.fy = fneg double %i.fw
  %i.fz = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.fw, i64 1
  %i.gb = fmul <2 x double> %i.fx, %i.ga
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gd = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.fx, <2 x double> %i.gc) ; 3 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 1
  %i.gh = fcmp ult double %i.gg, 0.000000e+00
  br i1 %i.gh, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gi = tail call double @hypot(double noundef %i.fu, double noundef %i.fw) #18
  %i.gj = extractelement <2 x double> %i.gf, i64 0
  %i.gk = fdiv double %i.gj, %i.gi
  %i.gl = extractelement <2 x double> %i.fx, i64 0
  %i.gm = extractelement <2 x double> %i.fx, i64 1
  %i.gn = tail call double @hypot(double noundef %i.gl, double noundef %i.gm) #18
  %i.go = fdiv double %i.gk, %i.gn
  br label %get_angle.exit49.i

bb.w:                                             ; preds = %bb.u
  %i.gp = extractelement <2 x double> %i.gf, i64 0
  %i.gq = fneg double %i.gp
  %i.gr = tail call double @hypot(double noundef %i.fu, double noundef %i.fw) #18
  %i.gs = fdiv double %i.gq, %i.gr
  %i.gt = extractelement <2 x double> %i.fx, i64 0
  %i.gu = extractelement <2 x double> %i.fx, i64 1
  %i.gv = tail call double @hypot(double noundef %i.gt, double noundef %i.gu) #18
  %i.gw = fdiv double %i.gs, %i.gv
  %i.gx = fadd double %i.gw, -2.000000e+00
  br label %get_angle.exit49.i

get_angle.exit49.i:                               ; preds = %bb.w, %bb.v
  %.0.i48.i = phi double [ %i.go, %bb.v ], [ %i.gx, %bb.w ] ; 2 uses
  %i.gy = fcmp ogt double %.0.i48.i, -4.000000e+00
  br i1 %i.gy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %get_angle.exit49.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %get_angle.exit49.i, %bb.t
  %.3.i = phi double [ -4.000000e+00, %bb.t ], [ %.0.i48.i, %bb.x ], [ -4.000000e+00, %get_angle.exit49.i ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !12 ; 2 uses
  %i.hb = icmp slt i32 %i.ha, 1
  br i1 %i.hb, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hc = zext nneg i32 %i.ha to i64
  %i.hd = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.hc ; 2 uses
  %.val38.1.i = load double, ptr %i.hd, align 8, !tbaa !80
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %.val39.1.i = load double, ptr %i.he, align 8, !tbaa !81
  %i.hf = load <2 x double>, ptr %i.g, align 8, !tbaa !22 ; 3 uses
  %i.hg = load <2 x double>, ptr %i.e, align 8, !tbaa !22
  %i.hh = extractelement <2 x double> %i.hf, i64 0
  %i.hi = fsub double %.val38.1.i, %i.hh          ; 3 uses
  %i.hj = extractelement <2 x double> %i.hf, i64 1
  %i.hk = fsub double %.val39.1.i, %i.hj          ; 4 uses
  %i.hl = fsub <2 x double> %i.hg, %i.hf          ; 6 uses
  %i.hm = fneg double %i.hk
  %i.hn = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hk, i64 1
  %i.hp = fmul <2 x double> %i.hl, %i.ho
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hr = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.hl, <2 x double> %i.hq) ; 3 uses
  %i.hu = extractelement <2 x double> %i.ht, i64 1
  %i.hv = fcmp ult double %i.hu, 0.000000e+00
  br i1 %i.hv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hw = tail call double @hypot(double noundef %i.hi, double noundef %i.hk) #18
  %i.hx = extractelement <2 x double> %i.ht, i64 0
  %i.hy = fdiv double %i.hx, %i.hw
  %i.hz = extractelement <2 x double> %i.hl, i64 0
  %i.ia = extractelement <2 x double> %i.hl, i64 1
  %i.ib = tail call double @hypot(double noundef %i.hz, double noundef %i.ia) #18
  %i.ic = fdiv double %i.hy, %i.ib
  br label %get_angle.exit49.1.i

bb.ab:                                            ; preds = %bb.z
  %i.id = extractelement <2 x double> %i.ht, i64 0
  %i.ie = fneg double %i.id
  %i.if = tail call double @hypot(double noundef %i.hi, double noundef %i.hk) #18
  %i.ig = fdiv double %i.ie, %i.if
  %i.ih = extractelement <2 x double> %i.hl, i64 0
  %i.ii = extractelement <2 x double> %i.hl, i64 1
  %i.ij = tail call double @hypot(double noundef %i.ih, double noundef %i.ii) #18
  %i.ik = fdiv double %i.ig, %i.ij
  %i.il = fadd double %i.ik, -2.000000e+00
  br label %get_angle.exit49.1.i

get_angle.exit49.1.i:                             ; preds = %bb.ab, %bb.aa
  %.0.i48.1.i = phi double [ %i.ic, %bb.aa ], [ %i.il, %bb.ab ] ; 2 uses
  %i.im = fcmp ogt double %.0.i48.1.i, %.3.i
  br i1 %i.im, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %get_angle.exit49.1.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %get_angle.exit49.1.i, %bb.y
  %.3.1.i = phi double [ %.3.i, %bb.y ], [ %.0.i48.1.i, %bb.ac ], [ %.3.i, %get_angle.exit49.1.i ] ; 3 uses
  %.1.1.i = phi i64 [ 0, %bb.y ], [ 1, %bb.ac ], [ 0, %get_angle.exit49.1.i ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.io = load i32, ptr %i.in, align 4, !tbaa !12 ; 2 uses
  %i.ip = icmp slt i32 %i.io, 1
  br i1 %i.ip, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iq = zext nneg i32 %i.io to i64
  %i.ir = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.iq ; 2 uses
  %.val38.2.i = load double, ptr %i.ir, align 8, !tbaa !80
  %i.is = getelementptr i8, ptr %i.ir, i64 8
  %.val39.2.i = load double, ptr %i.is, align 8, !tbaa !81
  %i.it = load <2 x double>, ptr %i.g, align 8, !tbaa !22 ; 3 uses
  %i.iu = load <2 x double>, ptr %i.e, align 8, !tbaa !22
  %i.iv = extractelement <2 x double> %i.it, i64 0
  %i.iw = fsub double %.val38.2.i, %i.iv          ; 3 uses
  %i.ix = extractelement <2 x double> %i.it, i64 1
  %i.iy = fsub double %.val39.2.i, %i.ix          ; 4 uses
  %i.iz = fsub <2 x double> %i.iu, %i.it          ; 6 uses
  %i.ja = fneg double %i.iy
  %i.jb = insertelement <2 x double> poison, double %i.ja, i64 0
  %i.jc = insertelement <2 x double> %i.jb, double %i.iy, i64 1
  %i.jd = fmul <2 x double> %i.iz, %i.jc
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jf = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.iz, <2 x double> %i.je) ; 3 uses
  %i.ji = extractelement <2 x double> %i.jh, i64 1
  %i.jj = fcmp ult double %i.ji, 0.000000e+00
  br i1 %i.jj, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jk = tail call double @hypot(double noundef %i.iw, double noundef %i.iy) #18
  %i.jl = extractelement <2 x double> %i.jh, i64 0
  %i.jm = fdiv double %i.jl, %i.jk
  %i.jn = extractelement <2 x double> %i.iz, i64 0
  %i.jo = extractelement <2 x double> %i.iz, i64 1
  %i.jp = tail call double @hypot(double noundef %i.jn, double noundef %i.jo) #18
  %i.jq = fdiv double %i.jm, %i.jp
  br label %get_angle.exit49.2.i

bb.ag:                                            ; preds = %bb.ae
  %i.jr = extractelement <2 x double> %i.jh, i64 0
  %i.js = fneg double %i.jr
  %i.jt = tail call double @hypot(double noundef %i.iw, double noundef %i.iy) #18
  %i.ju = fdiv double %i.js, %i.jt
  %i.jv = extractelement <2 x double> %i.iz, i64 0
  %i.jw = extractelement <2 x double> %i.iz, i64 1
  %i.jx = tail call double @hypot(double noundef %i.jv, double noundef %i.jw) #18
  %i.jy = fdiv double %i.ju, %i.jx
  %i.jz = fadd double %i.jy, -2.000000e+00
  br label %get_angle.exit49.2.i

get_angle.exit49.2.i:                             ; preds = %bb.ag, %bb.af
  %.0.i48.2.i = phi double [ %i.jq, %bb.af ], [ %i.jz, %bb.ag ] ; 2 uses
  %i.ka = fcmp ogt double %.0.i48.2.i, %.3.1.i
  br i1 %i.ka, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %get_angle.exit49.2.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %get_angle.exit49.2.i, %bb.ad
  %.3.2.i = phi double [ %.3.1.i, %bb.ad ], [ %.0.i48.2.i, %bb.ah ], [ %.3.1.i, %get_angle.exit49.2.i ]
  %.1.2.i = phi i64 [ %.1.1.i, %bb.ad ], [ 2, %bb.ah ], [ %.1.1.i, %get_angle.exit49.2.i ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !12 ; 2 uses
  %i.kd = icmp slt i32 %i.kc, 1
  br i1 %i.kd, label %get_vertex_positions.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ke = zext nneg i32 %i.kc to i64
  %i.kf = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.ke ; 2 uses
  %.val38.3.i = load double, ptr %i.kf, align 8, !tbaa !80
  %i.kg = getelementptr i8, ptr %i.kf, i64 8
  %.val39.3.i = load double, ptr %i.kg, align 8, !tbaa !81
  %i.kh = load <2 x double>, ptr %i.g, align 8, !tbaa !22 ; 3 uses
  %i.ki = load <2 x double>, ptr %i.e, align 8, !tbaa !22
  %i.kj = extractelement <2 x double> %i.kh, i64 0
  %i.kk = fsub double %.val38.3.i, %i.kj          ; 3 uses
  %i.kl = extractelement <2 x double> %i.kh, i64 1
  %i.km = fsub double %.val39.3.i, %i.kl          ; 4 uses
  %i.kn = fsub <2 x double> %i.ki, %i.kh          ; 6 uses
  %i.ko = fneg double %i.km
  %i.kp = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kq = insertelement <2 x double> %i.kp, double %i.km, i64 1
  %i.kr = fmul <2 x double> %i.kn, %i.kq
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kt = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> %i.kn, <2 x double> %i.ks) ; 3 uses
  %i.kw = extractelement <2 x double> %i.kv, i64 1
  %i.kx = fcmp ult double %i.kw, 0.000000e+00
  br i1 %i.kx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ky = tail call double @hypot(double noundef %i.kk, double noundef %i.km) #18
  %i.kz = extractelement <2 x double> %i.kv, i64 0
  %i.la = fdiv double %i.kz, %i.ky
  %i.lb = extractelement <2 x double> %i.kn, i64 0
  %i.lc = extractelement <2 x double> %i.kn, i64 1
  %i.ld = tail call double @hypot(double noundef %i.lb, double noundef %i.lc) #18
  %i.le = fdiv double %i.la, %i.ld
  br label %get_angle.exit49.3.i

bb.al:                                            ; preds = %bb.aj
  %i.lf = extractelement <2 x double> %i.kv, i64 0
  %i.lg = fneg double %i.lf
  %i.lh = tail call double @hypot(double noundef %i.kk, double noundef %i.km) #18
  %i.li = fdiv double %i.lg, %i.lh
  %i.lj = extractelement <2 x double> %i.kn, i64 0
  %i.lk = extractelement <2 x double> %i.kn, i64 1
  %i.ll = tail call double @hypot(double noundef %i.lj, double noundef %i.lk) #18
  %i.lm = fdiv double %i.li, %i.ll
  %i.ln = fadd double %i.lm, -2.000000e+00
  br label %get_angle.exit49.3.i

get_angle.exit49.3.i:                             ; preds = %bb.al, %bb.ak
  %.0.i48.3.i = phi double [ %i.le, %bb.ak ], [ %i.ln, %bb.al ]
  %i.lo = fcmp ogt double %.0.i48.3.i, %.3.2.i
  %spec.select65.i = select i1 %i.lo, i64 3, i64 %.1.2.i
  br label %get_vertex_positions.exit

get_vertex_positions.exit:                        ; preds = %bb.ai, %get_angle.exit49.3.i
  %.1.3.i = phi i64 [ %.1.2.i, %bb.ai ], [ %spec.select65.i, %get_angle.exit49.3.i ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %.128.3.i
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !12 ; 6 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %.1.3.i
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !12 ; 5 uses
  %i.lv = load i32, ptr @chain_idx, align 4, !tbaa !12 ; 3 uses
  %i.lw = add nsw i32 %i.lv, 1                    ; 6 uses
  %i.lx = add nsw i32 %i.lv, 2                    ; 5 uses
  store i32 %i.lx, ptr @chain_idx, align 4, !tbaa !12
  %i.ly = sext i32 %i.lw to i64                   ; 9 uses
  %i.lz = getelementptr i8, ptr %0, i64 16        ; 26 uses
  %.val9.i = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not10.i = icmp ugt i64 %.val9.i, %i.ly
  br i1 %.not10.i, label %monchains_at.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %get_vertex_positions.exit
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, i8 0, i64 16, i1 false)
  %i.mb = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.mc = load ptr, ptr %0, align 8, !tbaa !21
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.mc, i64 %i.mb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.md, ptr noundef nonnull align 8 dereferenceable(16) %i.ma, i64 16, i1 false), !tbaa.struct !36
  %.val.i73 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i = icmp ugt i64 %.val.i73, %i.ly
  br i1 %.not.i, label %monchains_at.exit, label %bb.am, !llvm.loop !0

monchains_at.exit:                                ; preds = %bb.am, %get_vertex_positions.exit
  %i.me = load ptr, ptr %0, align 8, !tbaa !21
  %i.mf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ly) #18
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.mf
  store i32 %2, ptr %i.mg, align 4, !tbaa !40
  %i.mh = sext i32 %i.lx to i64                   ; 9 uses
  %.val9.i74 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not10.i75 = icmp ugt i64 %.val9.i74, %i.mh
  br i1 %.not10.i75, label %monchains_at.exit79, label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %monchains_at.exit
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph.i76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mi, i8 0, i64 16, i1 false)
  %i.mj = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.mk = load ptr, ptr %0, align 8, !tbaa !21
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.mk, i64 %i.mj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ml, ptr noundef nonnull align 8 dereferenceable(16) %i.mi, i64 16, i1 false), !tbaa.struct !36
  %.val.i77 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i78 = icmp ugt i64 %.val.i77, %i.mh
  br i1 %.not.i78, label %monchains_at.exit79, label %bb.an, !llvm.loop !0

monchains_at.exit79:                              ; preds = %bb.an, %monchains_at.exit
  %i.mm = load ptr, ptr %0, align 8, !tbaa !21
  %i.mn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.mh) #18
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.mn
  store i32 %3, ptr %i.mo, align 4, !tbaa !40
  %i.mp = icmp slt i32 %i.lr, 0                   ; 2 uses
  %.val9.i82.pre189 = load i64, ptr %i.lz, align 8, !tbaa !16 ; 3 uses
  br i1 %i.mp, label %monchains_get.exit, label %bb.ao

bb.ao:                                            ; preds = %monchains_at.exit79
  %i.mq = zext nneg i32 %i.lr to i64              ; 2 uses
  %.not.i81 = icmp ugt i64 %.val9.i82.pre189, %i.mq
  br i1 %.not.i81, label %bb.ap, label %monchains_get.exit

bb.ap:                                            ; preds = %bb.ao
  %i.mr = load ptr, ptr %0, align 8, !tbaa !21
  %i.ms = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.mq) #18
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %i.ms
  %.sroa.0.0.copyload.i = load i64, ptr %i.mt, align 4
  %i.mu = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.mv = trunc nuw i64 %i.mu to i32
  %.val9.i82.pre = load i64, ptr %i.lz, align 8, !tbaa !16
  br label %monchains_get.exit

monchains_get.exit:                               ; preds = %monchains_at.exit79, %bb.ao, %bb.ap
  %.val9.i82 = phi i64 [ %.val9.i82.pre, %bb.ap ], [ %.val9.i82.pre189, %bb.ao ], [ %.val9.i82.pre189, %monchains_at.exit79 ]
  %.sroa.0.sroa.0.0.insert.insert.i = phi i32 [ %i.mv, %bb.ap ], [ 0, %bb.ao ], [ 0, %monchains_at.exit79 ]
  %.not10.i83 = icmp ugt i64 %.val9.i82, %i.ly
  br i1 %.not10.i83, label %monchains_at.exit87, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %monchains_get.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.i84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, i8 0, i64 16, i1 false)
  %i.mx = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.my = load ptr, ptr %0, align 8, !tbaa !21
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.my, i64 %i.mx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mz, ptr noundef nonnull align 8 dereferenceable(16) %i.mw, i64 16, i1 false), !tbaa.struct !36
  %.val.i85 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i86 = icmp ugt i64 %.val.i85, %i.ly
  br i1 %.not.i86, label %monchains_at.exit87, label %bb.aq, !llvm.loop !0

monchains_at.exit87:                              ; preds = %bb.aq, %monchains_get.exit
  %i.na = load ptr, ptr %0, align 8, !tbaa !21
  %i.nb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ly) #18
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store i32 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.nd, align 4, !tbaa !39
  %.val9.i98.pre191 = load i64, ptr %i.lz, align 8, !tbaa !16 ; 3 uses
  br i1 %i.mp, label %monchains_get.exit97, label %bb.ar

bb.ar:                                            ; preds = %monchains_at.exit87
  %i.ne = zext nneg i32 %i.lr to i64              ; 2 uses
  %.not.i89 = icmp ugt i64 %.val9.i98.pre191, %i.ne
  br i1 %.not.i89, label %bb.as, label %monchains_get.exit97

bb.as:                                            ; preds = %bb.ar
  %i.nf = load ptr, ptr %0, align 8, !tbaa !21
  %i.ng = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ne) #18
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %i.nf, i64 %i.ng
  %.sroa.0.0.copyload.i94 = load i64, ptr %i.nh, align 4
  %i.ni = ashr i64 %.sroa.0.0.copyload.i94, 32
  %.val9.i98.pre = load i64, ptr %i.lz, align 8, !tbaa !16
  br label %monchains_get.exit97

monchains_get.exit97:                             ; preds = %monchains_at.exit87, %bb.ar, %bb.as
  %.val9.i98 = phi i64 [ %.val9.i98.pre, %bb.as ], [ %.val9.i98.pre191, %bb.ar ], [ %.val9.i98.pre191, %monchains_at.exit87 ]
  %.sroa.0.sroa.0.0.insert.insert.i91 = phi i64 [ %i.ni, %bb.as ], [ 0, %bb.ar ], [ 0, %monchains_at.exit87 ] ; 3 uses
  %.not10.i99 = icmp ugt i64 %.val9.i98, %.sroa.0.sroa.0.0.insert.insert.i91
  br i1 %.not10.i99, label %monchains_at.exit103, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %monchains_get.exit97
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nj, i8 0, i64 16, i1 false)
  %i.nk = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.nl = load ptr, ptr %0, align 8, !tbaa !21
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nl, i64 %i.nk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nm, ptr noundef nonnull align 8 dereferenceable(16) %i.nj, i64 16, i1 false), !tbaa.struct !36
  %.val.i101 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i102 = icmp ugt i64 %.val.i101, %.sroa.0.sroa.0.0.insert.insert.i91
  br i1 %.not.i102, label %monchains_at.exit103, label %bb.at, !llvm.loop !0

monchains_at.exit103:                             ; preds = %bb.at, %monchains_get.exit97
  %i.nn = load ptr, ptr %0, align 8, !tbaa !21
  %i.no = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %.sroa.0.sroa.0.0.insert.insert.i91) #18
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  store i32 %i.lw, ptr %i.nq, align 4, !tbaa !38
  %.val9.i104 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not10.i105 = icmp ugt i64 %.val9.i104, %i.ly
  br i1 %.not10.i105, label %monchains_at.exit109, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %monchains_at.exit103
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false)
  %i.ns = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.nt = load ptr, ptr %0, align 8, !tbaa !21
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %i.ns
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nu, ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i64 16, i1 false), !tbaa.struct !36
  %.val.i107 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i108 = icmp ugt i64 %.val.i107, %i.ly
  br i1 %.not.i108, label %monchains_at.exit109, label %bb.au, !llvm.loop !0

monchains_at.exit109:                             ; preds = %bb.au, %monchains_at.exit103
  %i.nv = load ptr, ptr %0, align 8, !tbaa !21
  %i.nw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ly) #18
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store i32 %i.lx, ptr %i.ny, align 4, !tbaa !38
  %.val9.i110 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not10.i111 = icmp ugt i64 %.val9.i110, %i.mh
  br i1 %.not10.i111, label %monchains_at.exit115, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %monchains_at.exit109
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i8 0, i64 16, i1 false)
  %i.oa = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.ob = load ptr, ptr %0, align 8, !tbaa !21
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.ob, i64 %i.oa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oc, ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i64 16, i1 false), !tbaa.struct !36
  %.val.i113 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i114 = icmp ugt i64 %.val.i113, %i.mh
  br i1 %.not.i114, label %monchains_at.exit115, label %bb.av, !llvm.loop !0

monchains_at.exit115:                             ; preds = %bb.av, %monchains_at.exit109
  %i.od = load ptr, ptr %0, align 8, !tbaa !21
  %i.oe = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.mh) #18
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.od, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  store i32 %i.lw, ptr %i.og, align 4, !tbaa !39
  %i.oh = icmp slt i32 %i.lu, 0                   ; 2 uses
  %.val9.i126.pre193 = load i64, ptr %i.lz, align 8, !tbaa !16 ; 3 uses
  br i1 %i.oh, label %monchains_get.exit125, label %bb.aw

bb.aw:                                            ; preds = %monchains_at.exit115
  %i.oi = zext nneg i32 %i.lu to i64              ; 2 uses
  %.not.i117 = icmp ugt i64 %.val9.i126.pre193, %i.oi
  br i1 %.not.i117, label %bb.ax, label %monchains_get.exit125

bb.ax:                                            ; preds = %bb.aw
  %i.oj = load ptr, ptr %0, align 8, !tbaa !21
  %i.ok = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.oi) #18
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %i.oj, i64 %i.ok
  %.sroa.4.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %.sroa.4.0.copyload.i124 = load i64, ptr %.sroa.4.0..sroa_idx.i123, align 4
  %i.om = trunc i64 %.sroa.4.0.copyload.i124 to i32
  %.val9.i126.pre = load i64, ptr %i.lz, align 8, !tbaa !16
  br label %monchains_get.exit125

monchains_get.exit125:                            ; preds = %monchains_at.exit115, %bb.aw, %bb.ax
  %.val9.i126 = phi i64 [ %.val9.i126.pre, %bb.ax ], [ %.val9.i126.pre193, %bb.aw ], [ %.val9.i126.pre193, %monchains_at.exit115 ]
  %.sroa.4.0.i118 = phi i32 [ %i.om, %bb.ax ], [ 0, %bb.aw ], [ 0, %monchains_at.exit115 ]
  %.not10.i127 = icmp ugt i64 %.val9.i126, %i.mh
  br i1 %.not10.i127, label %monchains_at.exit131, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %monchains_get.exit125
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, i8 0, i64 16, i1 false)
  %i.oo = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.op = load ptr, ptr %0, align 8, !tbaa !21
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %i.op, i64 %i.oo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oq, ptr noundef nonnull align 8 dereferenceable(16) %i.on, i64 16, i1 false), !tbaa.struct !36
  %.val.i129 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i130 = icmp ugt i64 %.val.i129, %i.mh
  br i1 %.not.i130, label %monchains_at.exit131, label %bb.ay, !llvm.loop !0

monchains_at.exit131:                             ; preds = %bb.ay, %monchains_get.exit125
  %i.or = load ptr, ptr %0, align 8, !tbaa !21
  %i.os = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.mh) #18
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store i32 %.sroa.4.0.i118, ptr %i.ou, align 4, !tbaa !38
  %.val9.i142.pre195 = load i64, ptr %i.lz, align 8, !tbaa !16 ; 3 uses
  br i1 %i.oh, label %monchains_get.exit141, label %bb.az

bb.az:                                            ; preds = %monchains_at.exit131
  %i.ov = zext nneg i32 %i.lu to i64              ; 2 uses
  %.not.i133 = icmp ugt i64 %.val9.i142.pre195, %i.ov
  br i1 %.not.i133, label %bb.ba, label %monchains_get.exit141

bb.ba:                                            ; preds = %bb.az
  %i.ow = load ptr, ptr %0, align 8, !tbaa !21
  %i.ox = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ov) #18
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr %i.ow, i64 %i.ox
  %.sroa.4.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %.sroa.4.0.copyload.i140 = load i64, ptr %.sroa.4.0..sroa_idx.i139, align 4
  %sext = shl i64 %.sroa.4.0.copyload.i140, 32
  %i.oz = ashr exact i64 %sext, 32
  %.val9.i142.pre = load i64, ptr %i.lz, align 8, !tbaa !16
  br label %monchains_get.exit141

monchains_get.exit141:                            ; preds = %monchains_at.exit131, %bb.az, %bb.ba
  %.val9.i142 = phi i64 [ %.val9.i142.pre, %bb.ba ], [ %.val9.i142.pre195, %bb.az ], [ %.val9.i142.pre195, %monchains_at.exit131 ]
  %.sroa.4.0.i134 = phi i64 [ %i.oz, %bb.ba ], [ 0, %bb.az ], [ 0, %monchains_at.exit131 ] ; 3 uses
  %.not10.i143 = icmp ugt i64 %.val9.i142, %.sroa.4.0.i134
  br i1 %.not10.i143, label %monchains_at.exit147, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %monchains_get.exit141
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, i8 0, i64 16, i1 false)
  %i.pb = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.pc = load ptr, ptr %0, align 8, !tbaa !21
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.pc, i64 %i.pb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pd, ptr noundef nonnull align 8 dereferenceable(16) %i.pa, i64 16, i1 false), !tbaa.struct !36
  %.val.i145 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i146 = icmp ugt i64 %.val.i145, %.sroa.4.0.i134
  br i1 %.not.i146, label %monchains_at.exit147, label %bb.bb, !llvm.loop !0

monchains_at.exit147:                             ; preds = %bb.bb, %monchains_get.exit141
  %i.pe = load ptr, ptr %0, align 8, !tbaa !21
  %i.pf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %.sroa.4.0.i134) #18
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  store i32 %i.lx, ptr %i.ph, align 4, !tbaa !39
  %i.pi = sext i32 %i.lr to i64                   ; 3 uses
  %.val9.i148 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not10.i149 = icmp ugt i64 %.val9.i148, %i.pi
  br i1 %.not10.i149, label %monchains_at.exit153, label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %monchains_at.exit147
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph.i150
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i8 0, i64 16, i1 false)
  %i.pk = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.pl = load ptr, ptr %0, align 8, !tbaa !21
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %i.pk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pm, ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i64 16, i1 false), !tbaa.struct !36
  %.val.i151 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i152 = icmp ugt i64 %.val.i151, %i.pi
  br i1 %.not.i152, label %monchains_at.exit153, label %bb.bc, !llvm.loop !0

monchains_at.exit153:                             ; preds = %bb.bc, %monchains_at.exit147
  %i.pn = load ptr, ptr %0, align 8, !tbaa !21
  %i.po = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.pi) #18
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %i.pn, i64 %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  store i32 %i.lu, ptr %i.pq, align 4, !tbaa !39
  %i.pr = sext i32 %i.lu to i64                   ; 3 uses
  %.val9.i154 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not10.i155 = icmp ugt i64 %.val9.i154, %i.pr
  br i1 %.not10.i155, label %monchains_at.exit159, label %.lr.ph.i156

.lr.ph.i156:                                      ; preds = %monchains_at.exit153
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ps, i8 0, i64 16, i1 false)
  %i.pt = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.pu = load ptr, ptr %0, align 8, !tbaa !21
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.pt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pv, ptr noundef nonnull align 8 dereferenceable(16) %i.ps, i64 16, i1 false), !tbaa.struct !36
  %.val.i157 = load i64, ptr %i.lz, align 8, !tbaa !16
  %.not.i158 = icmp ugt i64 %.val.i157, %i.pr
  br i1 %.not.i158, label %monchains_at.exit159, label %bb.bd, !llvm.loop !0

monchains_at.exit159:                             ; preds = %bb.bd, %monchains_at.exit153
  %i.pw = load ptr, ptr %0, align 8, !tbaa !21
  %i.px = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.pr) #18
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.pw, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store i32 %i.lr, ptr %i.pz, align 4, !tbaa !38
  %i.qa = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !42
  %i.qc = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !42
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.128.3.i
  store i32 %3, ptr %i.qe, align 4, !tbaa !12
  %i.qf = sext i32 %i.qb to i64                   ; 2 uses
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.qf
  store i32 %i.lw, ptr %i.qg, align 4, !tbaa !12
  %i.qh = icmp slt i32 %i.lv, -1
  %.val.i170.pre197 = load i64, ptr %i.lz, align 8, !tbaa !16 ; 3 uses
  br i1 %i.qh, label %monchains_get.exit169.thread, label %bb.be

bb.be:                                            ; preds = %monchains_at.exit159
  %i.qi = zext nneg i32 %i.lw to i64              ; 2 uses
  %.not.i161 = icmp ugt i64 %.val.i170.pre197, %i.qi
  br i1 %.not.i161, label %monchains_get.exit169, label %monchains_get.exit169.thread

monchains_get.exit169:                            ; preds = %bb.be
  %i.qj = load ptr, ptr %0, align 8, !tbaa !21
  %i.qk = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.qi) #18
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %i.qk
  %.sroa.0.0.copyload.i166 = load i64, ptr %i.ql, align 4 ; 2 uses
  %i.qm = icmp slt i64 %.sroa.0.0.copyload.i166, 0
  br i1 %i.qm, label %monchains_get.exit179, label %monchains_get.exit169.monchains_get.exit169.thread_crit_edge

monchains_get.exit169.monchains_get.exit169.thread_crit_edge: ; preds = %monchains_get.exit169
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i166, 32
  %.val.i170.pre = load i64, ptr %i.lz, align 8, !tbaa !16
  br label %monchains_get.exit169.thread

monchains_get.exit169.thread:                     ; preds = %monchains_get.exit169.monchains_get.exit169.thread_crit_edge, %monchains_at.exit159, %bb.be
  %.val.i170 = phi i64 [ %.val.i170.pre, %monchains_get.exit169.monchains_get.exit169.thread_crit_edge ], [ %.val.i170.pre197, %bb.be ], [ %.val.i170.pre197, %monchains_at.exit159 ]
  %.sroa.0.4.extract.shift188 = phi i64 [ %.sroa.0.4.extract.shift, %monchains_get.exit169.monchains_get.exit169.thread_crit_edge ], [ 0, %bb.be ], [ 0, %monchains_at.exit159 ] ; 2 uses
  %.not.i171 = icmp ugt i64 %.val.i170, %.sroa.0.4.extract.shift188
  br i1 %.not.i171, label %bb.bf, label %monchains_get.exit179

bb.bf:                                            ; preds = %monchains_get.exit169.thread
  %i.qn = load ptr, ptr %0, align 8, !tbaa !21
  %i.qo = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %.sroa.0.4.extract.shift188) #18
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %i.qo
  %.sroa.0.0.copyload.i176 = load i64, ptr %i.qp, align 4
  %i.qq = trunc i64 %.sroa.0.0.copyload.i176 to i32
  br label %monchains_get.exit179

monchains_get.exit179:                            ; preds = %monchains_get.exit169, %monchains_get.exit169.thread, %bb.bf
  %.sroa.0.sroa.0.0.insert.insert.i173 = phi i32 [ %i.qq, %bb.bf ], [ 0, %monchains_get.exit169.thread ], [ 0, %monchains_get.exit169 ]
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.qf
  store i32 %.sroa.0.sroa.0.0.insert.insert.i173, ptr %i.qr, align 4, !tbaa !12
  %i.qs = sext i32 %i.qd to i64                   ; 2 uses
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.qs
  store i32 %i.lx, ptr %i.qt, align 4, !tbaa !12
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.qs
  store i32 %2, ptr %i.qu, align 4, !tbaa !12
  %i.qv = load i32, ptr %i.qa, align 8, !tbaa !42
  %i.qw = add nsw i32 %i.qv, 1
  store i32 %i.qw, ptr %i.qa, align 8, !tbaa !42
  %i.qx = load i32, ptr %i.qc, align 8, !tbaa !42
  %i.qy = add nsw i32 %i.qx, 1
  store i32 %i.qy, ptr %i.qc, align 8, !tbaa !42
  %i.qz = load ptr, ptr @mon, align 8, !tbaa !29  ; 2 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %1
  store i32 %i.lr, ptr %i.ra, align 4, !tbaa !12
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.b
  store i32 %i.lw, ptr %i.rb, align 4, !tbaa !12
  ret i64 %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind }
attributes #21 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !13}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"long", !5, i64 0}
!15 = !{!"", !9, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!16 = !{!15, !14, i64 16}
!17 = !{!"double", !5, i64 0}
!18 = !{!"pointf_s", !17, i64 0, !17, i64 8}
!19 = !{!"_Bool", !5, i64 0}
!20 = !{!"", !6, i64 0, !6, i64 4, !18, i64 8, !18, i64 24, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !6, i64 88, !19, i64 92}
!21 = !{!5, !5, i64 0}
!22 = !{!17, !17, i64 0}
!23 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 8, !22}
!24 = !{!9, !9, i64 0}
!25 = !{!"", !18, i64 0, !18, i64 16, !19, i64 32, !14, i64 40, !14, i64 48, !6, i64 56, !6, i64 60}
!26 = !{!25, !6, i64 56}
!27 = !{!25, !6, i64 60}
!28 = !{!"p1 int", !9, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!20, !6, i64 4}
!31 = !{!20, !6, i64 0}
!32 = !{!20, !14, i64 40}
!33 = !{!20, !14, i64 48}
!34 = !{!20, !14, i64 56}
!35 = !{!20, !14, i64 64}
!36 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12}
!37 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!38 = !{!37, !6, i64 8}
!39 = !{!37, !6, i64 4}
!40 = !{!37, !6, i64 0}
!41 = !{!"", !18, i64 0, !5, i64 16, !5, i64 32, !6, i64 48}
!42 = !{!41, !6, i64 48}
!43 = !{!14, !14, i64 0}
!44 = !{!"", !5, i64 0, !14, i64 8}
!45 = !{!44, !14, i64 8}
!46 = distinct !{!46, !13, !57, !58}
!47 = distinct !{!47, !13, !58, !57}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13, !57, !58}
!50 = distinct !{!50, !13, !58, !57}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13, !61}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"", !5, i64 0, !9, i64 32, !20, i64 40}
!60 = !{!59, !9, i64 32}
!61 = !{!"llvm.loop.unswitch.partial.disable"}
!62 = !{!"", !18, i64 0, !18, i64 16}
!63 = !{!"", !5, i64 0, !9, i64 32, !62, i64 40}
!64 = !{!63, !9, i64 32}
!65 = distinct !{!65, !13}
!66 = !{!25, !19, i64 32}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = !{!20, !19, i64 92}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{i64 0, i64 8, !22, i64 8, i64 8, !22}
!74 = !{!"", !5, i64 0, !9, i64 32, !37, i64 40}
!75 = !{!74, !9, i64 32}
!76 = !{!20, !17, i64 16}
!77 = !{!20, !17, i64 32}
!78 = !{!25, !17, i64 0}
!79 = !{!25, !17, i64 16}
!80 = !{!18, !17, i64 0}
!81 = !{!18, !17, i64 8}
end_hunk_0
