Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/eam?download=true
inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@eamForce:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54
  %i.k = shl nsw i32 %i.j, 6
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3                      ; 2 uses
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -17179869184, 17179869177) %i.m) #16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !55
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -17179869184, 17179869177) %i.m) #16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.t = tail call ptr @initForceHaloExchange(ptr noundef %i.s, ptr noundef %i.h) #17
  store ptr %i.t, ptr %i.d, align 8, !tbaa !50
  %i.u = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %i.u, ptr %i.v, align 8, !tbaa !58
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !55
  store ptr %i.w, ptr %i.u, align 8, !tbaa !60
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !61
  br label %._crit_edge360

._crit_edge360:                                   ; preds = %bb.a, %bb.b
  %i.z = phi ptr [ %i.x, %bb.b ], [ %i.h, %bb.a ]
  %i.aa = load double, ptr %i.c, align 8, !tbaa !16 ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !54
  %i.aj = shl nsw i32 %i.ai, 6
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ak, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.al, i1 false)
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !54
  %i.as = shl nsw i32 %i.ar, 6
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !54
  %i.ba = shl nsw i32 %i.az, 6
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.bc, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !54
  %i.bi = shl nsw i32 %i.bh, 6
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.bk, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !66
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph257, label %._crit_edge270

.lr.ph257:                                        ; preds = %._crit_edge360
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  br label %bb.c

.preheader:                                       ; preds = %._crit_edge
  %i.br = icmp sgt i32 %i.if, 0
  br i1 %i.br, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %i.id, i64 120
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %wide.trip.count329 = zext nneg i32 %i.if to i64
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph257, %._crit_edge
  %indvars.iv317 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next318, %._crit_edge ] ; 5 uses
  %indvars.iv307 = phi i32 [ 0, %.lr.ph257 ], [ %indvars.iv.next308, %._crit_edge ] ; 2 uses
  %i.bv = phi ptr [ %i.bl, %.lr.ph257 ], [ %i.id, %._crit_edge ] ; 2 uses
  %.0204253 = phi double [ 0.000000e+00, %.lr.ph257 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.bw = zext i32 %indvars.iv307 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !67
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv317
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %.fr295 = freeze i32 %i.ca                      ; 2 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv317 to i32
  %i.cc = call i32 @getNeighborBoxes(ptr noundef nonnull %i.bv, i32 noundef %i.cb, ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  %i.ce = icmp sgt i32 %.fr295, 0
  %or.cond = and i1 %i.cd, %i.ce
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.cc to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %..loopexit230_crit_edge.us
  %indvars.iv313 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next314, %..loopexit230_crit_edge.us ] ; 2 uses
  %.1245.us = phi double [ %.0204253, %.lr.ph.split.us.preheader ], [ %.7.us, %..loopexit230_crit_edge.us ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv313
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7  ; 4 uses
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp sgt i64 %indvars.iv317, %i.ch
  br i1 %i.ci, label %..loopexit230_crit_edge.us, label %.lr.ph243.us

.lr.ph243.us:                                     ; preds = %.lr.ph.split.us
  %i.cj = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !67
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7  ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  %i.cp = zext i32 %i.cg to i64
  %i.cq = icmp ne i64 %indvars.iv317, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  br i1 %i.co, label %.lr.ph.us.us.preheader, label %..loopexit230_crit_edge.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph243.us
  %i.cs = shl i32 %i.cg, 6
  %i.ct = zext i32 %i.cs to i64
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv309 = phi i64 [ %i.bw, %.lr.ph.us.us.preheader ], [ %indvars.iv.next310, %._crit_edge.us.us ] ; 5 uses
  %.0200241.us.us = phi i32 [ 0, %.lr.ph.us.us.preheader ], [ %i.ic, %._crit_edge.us.us ] ; 2 uses
  %.2239.us.us = phi double [ %.1245.us, %.lr.ph.us.us.preheader ], [ %.6.us.us, %._crit_edge.us.us ]
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %i.ct, %.lr.ph.us.us ] ; 5 uses
  %.0198238.us.us = phi i32 [ %i.ib, %bb.g ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.3235.us.us = phi double [ %.6.us.us, %bb.g ], [ %.2239.us.us, %.lr.ph.us.us ] ; 4 uses
  %.not207.us.us = icmp samesign ugt i32 %.0198238.us.us, %.0200241.us.us
  %or.cond.us.us = select i1 %i.cq, i1 true, i1 %.not207.us.us
  br i1 %or.cond.us.us, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.cu = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !68 ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv309 ; 2 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv ; 2 uses
  %i.cz = load <2 x double>, ptr %i.cx, align 8, !tbaa !15
  %i.da = load <2 x double>, ptr %i.cy, align 8, !tbaa !15
  %i.db = fsub <2 x double> %i.cz, %i.da          ; 3 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0 ; 2 uses
  %i.dd = call double @llvm.fmuladd.f64(double %i.dc, double %i.dc, double 0.000000e+00)
  %i.de = extractelement <2 x double> %i.db, i64 1 ; 2 uses
  %i.df = call double @llvm.fmuladd.f64(double %i.de, double %i.de, double %i.dd)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dj = load double, ptr %i.di, align 8, !tbaa !15
  %i.dk = fsub double %i.dh, %i.dj                ; 3 uses
  %i.dl = call double @llvm.fmuladd.f64(double %i.dk, double %i.dk, double %i.df) ; 2 uses
  %i.dm = fcmp ogt double %i.dl, %i.ab
  br i1 %i.dm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dn = call double @sqrt(double noundef %i.dl) #17, !tbaa !7 ; 4 uses
  %i.do = load ptr, ptr %i.bp, align 8, !tbaa !27 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load i32, ptr %i.do, align 8, !tbaa !22 ; 3 uses
  %i.du = load ptr, ptr %i.bq, align 8, !tbaa !26 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !21
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i32, ptr %i.du, align 8, !tbaa !22 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !64 ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %indvars.iv309 ; 3 uses
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %indvars.iv ; 3 uses
  %i.ed = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ef = load <2 x double>, ptr %i.eb, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.ej = load i32, ptr %i.cr, align 4, !tbaa !66
  %i.ek = icmp slt i32 %i.cg, %i.ej
  %i.el = load <2 x double>, ptr %i.dr, align 8, !tbaa !15 ; 3 uses
  %i.em = load double, ptr %i.ds, align 8, !tbaa !23
  %i.en = extractelement <2 x double> %i.el, i64 0
  %i.eo = fcmp olt double %i.dn, %i.en
  %i.ep = sitofp i32 %i.dt to double
  %i.eq = load <2 x double>, ptr %i.dx, align 8, !tbaa !15 ; 3 uses
  %i.er = extractelement <2 x double> %i.eq, i64 0
  %i.es = fcmp olt double %i.dn, %i.er
  %i.et = insertelement <2 x i1> poison, i1 %i.es, i64 0
  %i.eu = insertelement <2 x i1> %i.et, i1 %i.eo, i64 1
  %i.ev = shufflevector <2 x double> %i.eq, <2 x double> %i.el, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ew = select <2 x i1> %i.eu, <2 x double> %i.ev, <2 x double> %i.ee
  %i.ex = fsub <2 x double> %i.ew, %i.ev
  %i.ey = shufflevector <2 x double> %i.eq, <2 x double> %i.el, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ez = fmul <2 x double> %i.ey, %i.ex          ; 2 uses
  %i.fa = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ez)
  %i.fb = fptosi <2 x double> %i.fa to <2 x i32>  ; 3 uses
  %i.fc = extractelement <2 x i32> %i.fb, i64 1
  %.040.i.us.us = call i32 @llvm.smin.i32(i32 %i.dt, i32 %i.fc)
  %i.fd = insertelement <2 x i32> poison, i32 %i.dy, i64 0
  %i.fe = insertelement <2 x i32> %i.fd, i32 %i.dt, i64 1
  %i.ff = icmp slt <2 x i32> %i.fe, %i.fb
  %i.fg = sitofp i32 %i.dy to double
  %i.fh = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.ep, i64 1
  %i.fj = fdiv <2 x double> %i.fi, %i.ey
  %i.fk = select <2 x i1> %i.ff, <2 x double> %i.fj, <2 x double> %i.ez ; 3 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 1
  %i.fm = call double @llvm.floor.f64(double %i.fl)
  %i.fn = sext i32 %.040.i.us.us to i64
  %i.fo = getelementptr [8 x i8], ptr %i.dq, i64 %i.fn ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  %i.fq = getelementptr i8, ptr %i.fo, i64 -8
  %i.fr = load <2 x double>, ptr %i.fp, align 8, !tbaa !15 ; 2 uses
  %i.fs = load <2 x double>, ptr %i.fq, align 8, !tbaa !15 ; 4 uses
  %i.ft = fsub <2 x double> %i.fr, %i.fs          ; 4 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 0
  %shift = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.ft
  %i.fv = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fw = extractelement <2 x double> %i.fk, i64 0
  %i.fx = call double @llvm.floor.f64(double %i.fw)
  %i.fy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fm, i64 1
  %i.ga = fsub <2 x double> %i.fk, %i.fz          ; 4 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 1
  %i.gc = call double @llvm.fmuladd.f64(double %i.gb, double %i.fv, double %i.fu)
  %i.gd = fmul double %i.gc, 5.000000e-01
  %i.ge = fmul double %i.em, %i.gd                ; 2 uses
  %i.gf = extractelement <2 x i32> %i.fb, i64 0
  %.040.i210.us.us = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.gf)
  %i.gg = sext i32 %.040.i210.us.us to i64
  %i.gh = getelementptr [8 x i8], ptr %i.dw, i64 %i.gg ; 3 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !15 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gh, i64 -8
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !15 ; 2 uses
  %i.gm = load double, ptr %i.gh, align 8, !tbaa !15
  %i.gn = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x double> %i.go, %i.db
  %i.gq = fdiv <2 x double> %i.gp, %i.ee          ; 2 uses
  %i.gr = fsub <2 x double> %i.ef, %i.gq
  store <2 x double> %i.gr, ptr %i.eb, align 8, !tbaa !15
  %i.gs = load <2 x double>, ptr %i.ec, align 8, !tbaa !15
  %i.gt = fadd <2 x double> %i.gq, %i.gs
  store <2 x double> %i.gt, ptr %i.ec, align 8, !tbaa !15
  %i.gu = fmul double %i.ge, %i.dk
  %i.gv = fdiv double %i.gu, %i.dn                ; 2 uses
  %i.gw = fsub double %i.eh, %i.gv
  store double %i.gw, ptr %i.eg, align 8, !tbaa !15
  %i.gx = load double, ptr %i.ei, align 8, !tbaa !15
  %i.gy = fadd double %i.gv, %i.gx
  store double %i.gy, ptr %i.ei, align 8, !tbaa !15
  %foldExtExtBinop383 = fadd <2 x double> %i.fr, %i.fs
  %i.gz = extractelement <2 x double> %foldExtExtBinop383, i64 0
  %i.ha = extractelement <2 x double> %i.fs, i64 1
  %i.hb = call double @llvm.fmuladd.f64(double %i.ha, double -2.000000e+00, double %i.gz)
  %i.hc = fmul <2 x double> %i.ga, <double 1.000000e+00, double 5.000000e-01>
  %i.hd = fsub double %i.gj, %i.gl
  %i.he = extractelement <2 x double> %i.ga, i64 0
  %i.hf = fmul double %i.he, 5.000000e-01
  %i.hg = fadd double %i.gj, %i.gl
  %i.hh = insertelement <2 x double> %i.ga, double %i.gm, i64 0 ; 2 uses
  %i.hi = insertelement <2 x double> <double -2.000000e+00, double poison>, double %i.hb, i64 1
  %i.hj = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hk = insertelement <2 x double> %i.hj, double %i.hg, i64 0
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.hi, <2 x double> %i.hk)
  %i.hm = insertelement <2 x double> %i.fs, double %i.hd, i64 0
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.hl, <2 x double> %i.hm) ; 2 uses
  %i.ho = extractelement <2 x double> %i.hn, i64 1 ; 3 uses
  %i.hp = fadd double %.3235.us.us, %i.ho
  %1 = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.hf, i64 0
  %2 = insertelement <2 x double> %i.hh, double %.3235.us.us, i64 1
  %3 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1, <2 x double> %i.hn, <2 x double> %2) ; 2 uses
  %4 = extractelement <2 x double> %3, i64 1
  %.4.us.us = select i1 %i.ek, double %i.hp, double %4
  %5 = load ptr, ptr %i.ac, align 8, !tbaa !62
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !65       ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv309 ; 2 uses
  %9 = load double, ptr %8, align 8, !tbaa !15
  %10 = call double @llvm.fmuladd.f64(double %i.ho, double 5.000000e-01, double %9)
  store double %10, ptr %8, align 8, !tbaa !15
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !15
  %i.hs = call double @llvm.fmuladd.f64(double %i.ho, double 5.000000e-01, double %i.hr)
  store double %i.hs, ptr %i.hq, align 8, !tbaa !15
  %i.ht = load ptr, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv309 ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !15
  %i.hw = extractelement <2 x double> %3, i64 0   ; 2 uses
  %i.hx = fadd double %i.hw, %i.hv
  store double %i.hx, ptr %i.hu, align 8, !tbaa !15
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !15
  %i.ia = fadd double %i.hw, %i.hz
  store double %i.ia, ptr %i.hy, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.6.us.us = phi double [ %.3235.us.us, %bb.d ], [ %.4.us.us, %bb.f ], [ %.3235.us.us, %bb.e ] ; 3 uses
  %i.ib = add nuw nsw i32 %.0198238.us.us, 1      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %i.ib, %i.cn
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.d

._crit_edge.us.us:                                ; preds = %bb.g
  %i.ic = add nuw nsw i32 %.0200241.us.us, 1      ; 2 uses
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1
  %exitcond312.not = icmp eq i32 %i.ic, %.fr295
  br i1 %exitcond312.not, label %..loopexit230_crit_edge.us, label %.lr.ph.us.us

..loopexit230_crit_edge.us:                       ; preds = %._crit_edge.us.us, %.lr.ph243.us, %.lr.ph.split.us
  %.7.us = phi double [ %.1245.us, %.lr.ph.split.us ], [ %.1245.us, %.lr.ph243.us ], [ %.6.us.us, %._crit_edge.us.us ] ; 2 uses
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count
  br i1 %exitcond316.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %..loopexit230_crit_edge.us, %bb.c
  %.1.lcssa = phi double [ %.0204253, %bb.c ], [ %.7.us, %..loopexit230_crit_edge.us ] ; 3 uses
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %i.id = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !66 ; 3 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = icmp slt i64 %indvars.iv.next318, %i.ig
  %indvars.iv.next308 = add i32 %indvars.iv307, 64
  br i1 %i.ih, label %bb.c, label %.preheader

._crit_edge270:                                   ; preds = %._crit_edge265, %._crit_edge360, %.preheader
  %.8.lcssa = phi double [ %.1.lcssa, %.preheader ], [ 0.000000e+00, %._crit_edge360 ], [ %.9.lcssa, %._crit_edge265 ]
  call void @profileStart(i32 noundef 8) #17
  %i.ii = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !58
  call void @haloExchange(ptr noundef %i.ii, ptr noundef %i.ik) #17
  call void @profileStop(i32 noundef 8) #17
  %i.il = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.in = load i32, ptr %i.im, align 4, !tbaa !66
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %._crit_edge270
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph269, %._crit_edge265
  %indvars.iv326 = phi i64 [ 0, %.lr.ph269 ], [ %indvars.iv.next327, %._crit_edge265 ] ; 2 uses
  %indvars.iv320 = phi i32 [ 0, %.lr.ph269 ], [ %indvars.iv.next321, %._crit_edge265 ] ; 3 uses
  %.8267 = phi double [ %.1.lcssa, %.lr.ph269 ], [ %.9.lcssa, %._crit_edge265 ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv326
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !7  ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph264, label %._crit_edge265

.lr.ph264:                                        ; preds = %bb.h
  %i.it = zext i32 %indvars.iv320 to i64
  %i.iu = load ptr, ptr %i.bu, align 8, !tbaa !25 ; 4 uses
  %i.iv = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !21
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.ja = load i32, ptr %i.iu, align 8, !tbaa !22 ; 3 uses
  %i.jb = sitofp i32 %i.ja to double
  %i.jc = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.jd = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !65
  %i.jg = add i32 %i.ir, %indvars.iv320
  br label %bb.i

._crit_edge265:                                   ; preds = %bb.i, %bb.h
  %.9.lcssa = phi double [ %.8267, %bb.h ], [ %i.kn, %bb.i ] ; 2 uses
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %indvars.iv.next321 = add i32 %indvars.iv320, 64
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge270, label %bb.h

bb.i:                                             ; preds = %.lr.ph264, %bb.i
  %indvars.iv322 = phi i64 [ %i.it, %.lr.ph264 ], [ %indvars.iv.next323, %bb.i ] ; 4 uses
  %.9260 = phi double [ %.8267, %.lr.ph264 ], [ %i.kn, %bb.i ]
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv322
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !15 ; 2 uses
  %i.jj = load double, ptr %i.iy, align 8, !tbaa !24 ; 3 uses
  %i.jk = fcmp olt double %i.ji, %i.jj
  %.0.i212 = select i1 %i.jk, double %i.jj, double %i.ji
  %i.jl = fsub double %.0.i212, %i.jj
  %i.jm = load double, ptr %i.iz, align 8, !tbaa !23 ; 3 uses
  %i.jn = fmul double %i.jm, %i.jl                ; 2 uses
  %i.jo = call double @llvm.floor.f64(double %i.jn)
  %i.jp = fptosi double %i.jo to i32              ; 2 uses
  %i.jq = icmp slt i32 %i.ja, %i.jp
  %i.jr = fdiv double %i.jb, %i.jm
  %.040.i213 = call i32 @llvm.smin.i32(i32 %i.ja, i32 %i.jp)
  %.1.i214 = select i1 %i.jq, double %i.jr, double %i.jn ; 2 uses
  %i.js = call double @llvm.floor.f64(double %.1.i214)
  %i.jt = fsub double %.1.i214, %i.js             ; 3 uses
  %i.ju = sext i32 %.040.i213 to i64
  %i.jv = getelementptr [8 x i8], ptr %i.ix, i64 %i.ju ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 8
  %i.jx = getelementptr i8, ptr %i.jv, i64 -8
  %i.jy = load <2 x double>, ptr %i.jw, align 8, !tbaa !15 ; 2 uses
  %i.jz = load <2 x double>, ptr %i.jx, align 8, !tbaa !15 ; 3 uses
  %i.ka = fsub <2 x double> %i.jy, %i.jz          ; 3 uses
  %i.kb = fmul double %i.jt, 5.000000e-01
  %foldExtExtBinop385 = fadd <2 x double> %i.jy, %i.jz
  %i.kc = extractelement <2 x double> %foldExtExtBinop385, i64 0
  %i.kd = extractelement <2 x double> %i.jz, i64 1 ; 2 uses
  %i.ke = call double @llvm.fmuladd.f64(double %i.kd, double -2.000000e+00, double %i.kc)
  %i.kf = extractelement <2 x double> %i.ka, i64 0 ; 2 uses
  %i.kg = call double @llvm.fmuladd.f64(double %i.jt, double %i.ke, double %i.kf)
  %i.kh = call double @llvm.fmuladd.f64(double %i.kb, double %i.kg, double %i.kd) ; 2 uses
  %shift387 = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop388 = fsub <2 x double> %shift387, %i.ka
  %i.ki = extractelement <2 x double> %foldExtExtBinop388, i64 0
  %i.kj = call double @llvm.fmuladd.f64(double %i.jt, double %i.ki, double %i.kf)
  %i.kk = fmul double %i.kj, 5.000000e-01
  %i.kl = fmul double %i.jm, %i.kk
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv322
  store double %i.kl, ptr %i.km, align 8, !tbaa !15
  %i.kn = fadd double %.9260, %i.kh               ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv322 ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !15
  %i.kq = fadd double %i.kp, %i.kh
  store double %i.kq, ptr %i.ko, align 8, !tbaa !15
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next323 to i32
  %exitcond325.not = icmp eq i32 %i.jg, %lftr.wideiv
  br i1 %exitcond325.not, label %._crit_edge265, label %bb.i

._crit_edge294:                                   ; preds = %._crit_edge288, %._crit_edge270
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.8.lcssa, ptr %i.kr, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0

bb.j:                                             ; preds = %.lr.ph293, %._crit_edge288
  %indvars.iv354 = phi i64 [ 0, %.lr.ph293 ], [ %indvars.iv.next355, %._crit_edge288 ] ; 5 uses
  %indvars.iv343 = phi i32 [ 0, %.lr.ph293 ], [ %indvars.iv.next344, %._crit_edge288 ] ; 2 uses
  %i.ks = phi ptr [ %i.il, %.lr.ph293 ], [ %i.qd, %._crit_edge288 ] ; 2 uses
  %i.kt = zext i32 %indvars.iv343 to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 120
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !67
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv354
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !7
  %.fr = freeze i32 %i.kx                         ; 2 uses
  %i.ky = trunc nuw nsw i64 %indvars.iv354 to i32
  %i.kz = call i32 @getNeighborBoxes(ptr noundef nonnull %i.ks, i32 noundef %i.ky, ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.la = icmp sgt i32 %i.kz, 0
  %i.lb = icmp sgt i32 %.fr, 0
  %or.cond379 = and i1 %i.la, %i.lb
  br i1 %or.cond379, label %.lr.ph287.split.us.preheader, label %._crit_edge288

.lr.ph287.split.us.preheader:                     ; preds = %bb.j
  %wide.trip.count352 = zext nneg i32 %i.kz to i64
  br label %.lr.ph287.split.us

.lr.ph287.split.us:                               ; preds = %.lr.ph287.split.us.preheader, %..loopexit229_crit_edge.split.us
  %indvars.iv349 = phi i64 [ 0, %.lr.ph287.split.us.preheader ], [ %indvars.iv.next350, %..loopexit229_crit_edge.split.us ] ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv349
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !7  ; 3 uses
  %i.le = sext i32 %i.ld to i64                   ; 2 uses
  %i.lf = icmp sgt i64 %indvars.iv354, %i.le
  br i1 %i.lf, label %..loopexit229_crit_edge.split.us, label %.lr.ph284.us

.lr.ph284.us:                                     ; preds = %.lr.ph287.split.us
  %i.lg = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 120
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !67
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.le
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !7  ; 2 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  %i.lm = zext i32 %i.ld to i64
  %i.ln = icmp ne i64 %indvars.iv354, %i.lm
  br i1 %i.ll, label %.lr.ph279.us.preheader, label %..loopexit229_crit_edge.split.us

.lr.ph279.us.preheader:                           ; preds = %.lr.ph284.us
  %i.lo = shl i32 %i.ld, 6
  %i.lp = zext i32 %i.lo to i64
  br label %.lr.ph279.us

.lr.ph279.us:                                     ; preds = %.lr.ph279.us.preheader, %._crit_edge280.us
  %indvars.iv345 = phi i64 [ %i.kt, %.lr.ph279.us.preheader ], [ %indvars.iv.next346, %._crit_edge280.us ] ; 4 uses
  %.0188282.us = phi i32 [ 0, %.lr.ph279.us.preheader ], [ %i.qc, %._crit_edge280.us ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.us, %.lr.ph279.us
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %.loopexit.us ], [ %i.lp, %.lr.ph279.us ] ; 4 uses
  %.0186277.us = phi i32 [ %i.qb, %.loopexit.us ], [ 0, %.lr.ph279.us ] ; 2 uses
end_hunk_0
