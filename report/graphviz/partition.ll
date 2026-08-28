Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/partition?download=true
inline.NumInlined: 85
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@make_new_monotone_poly:bb.a
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
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !11 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.ay ; 2 uses
  %.val44.1.i = load double, ptr %i.az, align 8, !tbaa !80
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val45.1.i = load double, ptr %i.ba, align 8, !tbaa !81
  %i.bb = load <2 x double>, ptr %i.e, align 8, !tbaa !34 ; 3 uses
  %i.bc = load <2 x double>, ptr %i.g, align 8, !tbaa !34
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
  %.128.1.i = phi i32 [ 0, %bb.f ], [ 1, %bb.j ], [ 0, %get_angle.exit.1.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.cm ; 2 uses
  %.val44.2.i = load double, ptr %i.cn, align 8, !tbaa !80
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %.val45.2.i = load double, ptr %i.co, align 8, !tbaa !81
  %i.cp = load <2 x double>, ptr %i.e, align 8, !tbaa !34 ; 3 uses
  %i.cq = load <2 x double>, ptr %i.g, align 8, !tbaa !34
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
  %.128.2.i = phi i32 [ %.128.1.i, %bb.k ], [ 2, %bb.o ], [ %.128.1.i, %get_angle.exit.2.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !11 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.ea ; 2 uses
  %.val44.3.i = load double, ptr %i.eb, align 8, !tbaa !80
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %.val45.3.i = load double, ptr %i.ec, align 8, !tbaa !81
  %i.ed = load <2 x double>, ptr %i.e, align 8, !tbaa !34 ; 3 uses
  %i.ee = load <2 x double>, ptr %i.g, align 8, !tbaa !34
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
  %spec.select.i = select i1 %i.fk, i32 3, i32 %.128.2.i
  br label %bb.t

bb.t:                                             ; preds = %get_angle.exit.3.i, %bb.p
  %.128.3.i = phi i32 [ %.128.2.i, %bb.p ], [ %spec.select.i, %get_angle.exit.3.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !11 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 1
  br i1 %i.fn, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.fo ; 2 uses
  %.val38.i = load double, ptr %i.fp, align 8, !tbaa !80
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %.val39.i = load double, ptr %i.fq, align 8, !tbaa !81
  %i.fr = load <2 x double>, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  %i.fs = load <2 x double>, ptr %i.e, align 8, !tbaa !34
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
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !11 ; 2 uses
  %i.hb = icmp slt i32 %i.ha, 1
  br i1 %i.hb, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hc = zext nneg i32 %i.ha to i64
  %i.hd = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.hc ; 2 uses
  %.val38.1.i = load double, ptr %i.hd, align 8, !tbaa !80
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %.val39.1.i = load double, ptr %i.he, align 8, !tbaa !81
  %i.hf = load <2 x double>, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  %i.hg = load <2 x double>, ptr %i.e, align 8, !tbaa !34
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
  %.1.1.i = phi i32 [ 0, %bb.y ], [ 1, %bb.ac ], [ 0, %get_angle.exit49.1.i ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.io = load i32, ptr %i.in, align 4, !tbaa !11 ; 2 uses
  %i.ip = icmp slt i32 %i.io, 1
  br i1 %i.ip, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iq = zext nneg i32 %i.io to i64
  %i.ir = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.iq ; 2 uses
  %.val38.2.i = load double, ptr %i.ir, align 8, !tbaa !80
  %i.is = getelementptr i8, ptr %i.ir, i64 8
  %.val39.2.i = load double, ptr %i.is, align 8, !tbaa !81
  %i.it = load <2 x double>, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  %i.iu = load <2 x double>, ptr %i.e, align 8, !tbaa !34
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
  %.1.2.i = phi i32 [ %.1.1.i, %bb.ad ], [ 2, %bb.ah ], [ %.1.1.i, %get_angle.exit49.2.i ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !11 ; 2 uses
  %i.kd = icmp slt i32 %i.kc, 1
  br i1 %i.kd, label %get_vertex_positions.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ke = zext nneg i32 %i.kc to i64
  %i.kf = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.ke ; 2 uses
  %.val38.3.i = load double, ptr %i.kf, align 8, !tbaa !80
  %i.kg = getelementptr i8, ptr %i.kf, i64 8
  %.val39.3.i = load double, ptr %i.kg, align 8, !tbaa !81
  %i.kh = load <2 x double>, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  %i.ki = load <2 x double>, ptr %i.e, align 8, !tbaa !34
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
  %spec.select65.i = select i1 %i.lo, i32 3, i32 %.1.2.i
  br label %get_vertex_positions.exit

get_vertex_positions.exit:                        ; preds = %bb.ai, %get_angle.exit49.3.i
  %.1.3.i = phi i32 [ %.1.2.i, %bb.ai ], [ %spec.select65.i, %get_angle.exit49.3.i ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.lq = zext nneg i32 %.128.3.i to i64          ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !11 ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.lu = zext nneg i32 %.1.3.i to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !11 ; 5 uses
  %i.lx = load i32, ptr @chain_idx, align 4, !tbaa !11 ; 3 uses
  %i.ly = add nsw i32 %i.lx, 1                    ; 6 uses
  %i.lz = add nsw i32 %i.lx, 2                    ; 5 uses
  store i32 %i.lz, ptr @chain_idx, align 4, !tbaa !11
  %i.ma = sext i32 %i.ly to i64                   ; 9 uses
  %i.mb = getelementptr i8, ptr %0, i64 16        ; 26 uses
  %.val9.i = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not10.i = icmp ugt i64 %.val9.i, %i.ma
  br i1 %.not10.i, label %monchains_at.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %get_vertex_positions.exit
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mc, i8 0, i64 16, i1 false)
  %i.md = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.me = load ptr, ptr %0, align 8, !tbaa !29
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.md
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mf, ptr noundef nonnull align 8 dereferenceable(16) %i.mc, i64 16, i1 false), !tbaa.struct !60
  %.val.i73 = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not.i = icmp ugt i64 %.val.i73, %i.ma
  br i1 %.not.i, label %monchains_at.exit, label %bb.am, !llvm.loop !61

monchains_at.exit:                                ; preds = %bb.am, %get_vertex_positions.exit
  %i.mg = load ptr, ptr %0, align 8, !tbaa !29
  %i.mh = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ma) #18
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %i.mg, i64 %i.mh
  store i32 %2, ptr %i.mi, align 4, !tbaa !65
  %i.mj = sext i32 %i.lz to i64                   ; 9 uses
  %.val9.i74 = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not10.i75 = icmp ugt i64 %.val9.i74, %i.mj
  br i1 %.not10.i75, label %monchains_at.exit79, label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %monchains_at.exit
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph.i76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, i8 0, i64 16, i1 false)
  %i.ml = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.mm = load ptr, ptr %0, align 8, !tbaa !29
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.ml
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mn, ptr noundef nonnull align 8 dereferenceable(16) %i.mk, i64 16, i1 false), !tbaa.struct !60
  %.val.i77 = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not.i78 = icmp ugt i64 %.val.i77, %i.mj
  br i1 %.not.i78, label %monchains_at.exit79, label %bb.an, !llvm.loop !61

monchains_at.exit79:                              ; preds = %bb.an, %monchains_at.exit
  %i.mo = load ptr, ptr %0, align 8, !tbaa !29
  %i.mp = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.mj) #18
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %i.mp
  store i32 %3, ptr %i.mq, align 4, !tbaa !65
  %i.mr = icmp slt i32 %i.ls, 0                   ; 2 uses
  %.val9.i82.pre189 = load i64, ptr %i.mb, align 8, !tbaa !18 ; 3 uses
  br i1 %i.mr, label %monchains_get.exit, label %bb.ao

bb.ao:                                            ; preds = %monchains_at.exit79
  %i.ms = zext nneg i32 %i.ls to i64              ; 2 uses
  %.not.i81 = icmp ugt i64 %.val9.i82.pre189, %i.ms
  br i1 %.not.i81, label %bb.ap, label %monchains_get.exit

bb.ap:                                            ; preds = %bb.ao
  %i.mt = load ptr, ptr %0, align 8, !tbaa !29
  %i.mu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ms) #18
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.mu
  %.sroa.0.0.copyload.i = load i64, ptr %i.mv, align 4
  %i.mw = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.mx = trunc nuw i64 %i.mw to i32
  %.val9.i82.pre = load i64, ptr %i.mb, align 8, !tbaa !18
  br label %monchains_get.exit

monchains_get.exit:                               ; preds = %monchains_at.exit79, %bb.ao, %bb.ap
  %.val9.i82 = phi i64 [ %.val9.i82.pre, %bb.ap ], [ %.val9.i82.pre189, %bb.ao ], [ %.val9.i82.pre189, %monchains_at.exit79 ]
  %.sroa.0.sroa.0.0.insert.insert.i = phi i32 [ %i.mx, %bb.ap ], [ 0, %bb.ao ], [ 0, %monchains_at.exit79 ]
  %.not10.i83 = icmp ugt i64 %.val9.i82, %i.ma
  br i1 %.not10.i83, label %monchains_at.exit87, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %monchains_get.exit
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.i84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.my, i8 0, i64 16, i1 false)
  %i.mz = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.na = load ptr, ptr %0, align 8, !tbaa !29
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %i.mz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nb, ptr noundef nonnull align 8 dereferenceable(16) %i.my, i64 16, i1 false), !tbaa.struct !60
  %.val.i85 = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not.i86 = icmp ugt i64 %.val.i85, %i.ma
  br i1 %.not.i86, label %monchains_at.exit87, label %bb.aq, !llvm.loop !61

monchains_at.exit87:                              ; preds = %bb.aq, %monchains_get.exit
  %i.nc = load ptr, ptr %0, align 8, !tbaa !29
  %i.nd = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ma) #18
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  store i32 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.nf, align 4, !tbaa !64
  %.val9.i98.pre191 = load i64, ptr %i.mb, align 8, !tbaa !18 ; 3 uses
  br i1 %i.mr, label %monchains_get.exit97, label %bb.ar

bb.ar:                                            ; preds = %monchains_at.exit87
  %i.ng = zext nneg i32 %i.ls to i64              ; 2 uses
  %.not.i89 = icmp ugt i64 %.val9.i98.pre191, %i.ng
  br i1 %.not.i89, label %bb.as, label %monchains_get.exit97

bb.as:                                            ; preds = %bb.ar
  %i.nh = load ptr, ptr %0, align 8, !tbaa !29
  %i.ni = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ng) #18
  %i.nj = getelementptr inbounds nuw [16 x i8], ptr %i.nh, i64 %i.ni
  %.sroa.0.0.copyload.i94 = load i64, ptr %i.nj, align 4
  %i.nk = ashr i64 %.sroa.0.0.copyload.i94, 32
  %.val9.i98.pre = load i64, ptr %i.mb, align 8, !tbaa !18
  br label %monchains_get.exit97

monchains_get.exit97:                             ; preds = %monchains_at.exit87, %bb.ar, %bb.as
  %.val9.i98 = phi i64 [ %.val9.i98.pre, %bb.as ], [ %.val9.i98.pre191, %bb.ar ], [ %.val9.i98.pre191, %monchains_at.exit87 ]
  %.sroa.0.sroa.0.0.insert.insert.i91 = phi i64 [ %i.nk, %bb.as ], [ 0, %bb.ar ], [ 0, %monchains_at.exit87 ] ; 3 uses
  %.not10.i99 = icmp ugt i64 %.val9.i98, %.sroa.0.sroa.0.0.insert.insert.i91
  br i1 %.not10.i99, label %monchains_at.exit103, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %monchains_get.exit97
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i8 0, i64 16, i1 false)
  %i.nm = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.nn = load ptr, ptr %0, align 8, !tbaa !29
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.nm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.no, ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i64 16, i1 false), !tbaa.struct !60
  %.val.i101 = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not.i102 = icmp ugt i64 %.val.i101, %.sroa.0.sroa.0.0.insert.insert.i91
  br i1 %.not.i102, label %monchains_at.exit103, label %bb.at, !llvm.loop !61

monchains_at.exit103:                             ; preds = %bb.at, %monchains_get.exit97
  %i.np = load ptr, ptr %0, align 8, !tbaa !29
  %i.nq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %.sroa.0.sroa.0.0.insert.insert.i91) #18
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.np, i64 %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store i32 %i.ly, ptr %i.ns, align 4, !tbaa !62
  %.val9.i104 = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not10.i105 = icmp ugt i64 %.val9.i104, %i.ma
  br i1 %.not10.i105, label %monchains_at.exit109, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %monchains_at.exit103
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nt, i8 0, i64 16, i1 false)
  %i.nu = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.nv = load ptr, ptr %0, align 8, !tbaa !29
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.nu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nw, ptr noundef nonnull align 8 dereferenceable(16) %i.nt, i64 16, i1 false), !tbaa.struct !60
  %.val.i107 = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not.i108 = icmp ugt i64 %.val.i107, %i.ma
  br i1 %.not.i108, label %monchains_at.exit109, label %bb.au, !llvm.loop !61

monchains_at.exit109:                             ; preds = %bb.au, %monchains_at.exit103
  %i.nx = load ptr, ptr %0, align 8, !tbaa !29
  %i.ny = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ma) #18
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store i32 %i.lz, ptr %i.oa, align 4, !tbaa !62
  %.val9.i110 = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not10.i111 = icmp ugt i64 %.val9.i110, %i.mj
  br i1 %.not10.i111, label %monchains_at.exit115, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %monchains_at.exit109
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ob, i8 0, i64 16, i1 false)
  %i.oc = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %0, i64 noundef 16) #18
  %i.od = load ptr, ptr %0, align 8, !tbaa !29
  %i.oe = getelementptr inbounds nuw [16 x i8], ptr %i.od, i64 %i.oc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oe, ptr noundef nonnull align 8 dereferenceable(16) %i.ob, i64 16, i1 false), !tbaa.struct !60
  %.val.i113 = load i64, ptr %i.mb, align 8, !tbaa !18
  %.not.i114 = icmp ugt i64 %.val.i113, %i.mj
  br i1 %.not.i114, label %monchains_at.exit115, label %bb.av, !llvm.loop !61

monchains_at.exit115:                             ; preds = %bb.av, %monchains_at.exit109
  %i.of = load ptr, ptr %0, align 8, !tbaa !29
  %i.og = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.mj) #18
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store i32 %i.ly, ptr %i.oi, align 4, !tbaa !64
  %i.oj = icmp slt i32 %i.lw, 0                   ; 2 uses
  %.val9.i126.pre193 = load i64, ptr %i.mb, align 8, !tbaa !18 ; 3 uses
  br i1 %i.oj, label %monchains_get.exit125, label %bb.aw
end_hunk_0
