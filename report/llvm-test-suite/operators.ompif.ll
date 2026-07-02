loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@interpolation_linear:bb.a
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !44
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.cy, double %i.ct)
  %i.da = fmul nnan double %i.br, %.0268
  %i.db = add nsw i32 %i.cg, 1                    ; 5 uses
  %i.dc = sub nsw i32 %i.db, %i.s                 ; 3 uses
  %i.dd = sub nsw i32 %i.dc, %i.u
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !44
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dg, double %i.cz)
  %i.di = fmul nnan double %i.bh, %.0270
  %i.dj = sub nsw i32 %i.cm, %i.u
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !44
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dm, double %i.dh)
  %i.do = sub nsw i32 %i.cg, %i.u
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !44
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.dr, double %i.dn)
  %i.dt = fmul nnan double %i.bh, %.0268
  %i.du = sub nsw i32 %i.db, %i.u
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !44
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dx, double %i.ds)
  %i.dz = fmul nnan double %i.bt, %.0270
  %i.ea = add nsw i32 %i.cm, %i.s                 ; 3 uses
  %i.eb = sub nsw i32 %i.ea, %i.u
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !44
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ee, double %i.dy)
  %i.eg = add nsw i32 %i.cg, %i.s                 ; 3 uses
  %i.eh = sub nsw i32 %i.eg, %i.u
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !44
  %i.el = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.ek, double %i.ef)
  %i.em = fmul nnan double %i.bt, %.0268
  %i.en = add nsw i32 %i.db, %i.s                 ; 3 uses
  %i.eo = sub nsw i32 %i.en, %i.u
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !44
  %i.es = tail call double @llvm.fmuladd.f64(double %i.em, double %i.er, double %i.el)
  %i.et = fmul nnan double %i.bv, %.0270
  %i.eu = sext i32 %i.cn to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !44
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.et, double %i.ew, double %i.es)
  %i.ey = sext i32 %i.cu to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !44
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.fa, double %i.ex)
  %i.fc = fmul nnan double %i.bv, %.0268
  %i.fd = sext i32 %i.dc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !44
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ff, double %i.fb)
  %i.fh = fmul nnan double %.0270, f0x3FEC200000000000
  %i.fi = sext i32 %i.cm to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !44
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fk, double %i.fg)
  %i.fm = sext i32 %i.cg to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !44
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double f0x3FEA5E0000000000, double %i.fl)
  %i.fq = fmul nnan double %.0268, f0x3FEC200000000000
  %i.fr = sext i32 %i.db to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !44
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.ft, double %i.fp)
  %i.fv = fmul nnan double %i.bx, %.0270
  %i.fw = sext i32 %i.ea to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !44
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fy, double %i.fu)
  %i.ga = sext i32 %i.eg to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !44
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.by, double %i.gc, double %i.fz)
  %i.ge = fmul nnan double %i.bx, %.0268
  %i.gf = sext i32 %i.en to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.gf
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !44
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gh, double %i.gd)
  %i.gj = fmul nnan double %i.bz, %.0270
  %i.gk = add nsw i32 %i.cn, %i.u
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.gl
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !44
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.gn, double %i.gi)
  %i.gp = add nsw i32 %i.cu, %i.u
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !44
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.gs, double %i.go)
  %i.gu = fmul nnan double %i.bz, %.0268
  %i.gv = add nsw i32 %i.dc, %i.u
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !44
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.gy, double %i.gt)
  %i.ha = fmul nnan double %i.bj, %.0270
  %i.hb = add nsw i32 %i.cm, %i.u
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.hc
  %i.he = load double, ptr %i.hd, align 8, !tbaa !44
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.he, double %i.gz)
  %i.hg = add nsw i32 %i.cg, %i.u
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !44
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.hj, double %i.hf)
  %i.hl = fmul nnan double %i.bj, %.0268
  %i.hm = add nsw i32 %i.db, %i.u
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !44
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.hp, double %i.hk)
  %i.hr = fmul nnan double %i.cb, %.0270
  %i.hs = add nsw i32 %i.ea, %i.u
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !44
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.hv, double %i.hq)
  %i.hx = add nsw i32 %i.eg, %i.u
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !44
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.ia, double %i.hw)
  %i.ic = fmul nnan double %i.cb, %.0268
  %i.id = add nsw i32 %i.en, %i.u
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ie
  %i.ig = load double, ptr %i.if, align 8, !tbaa !44
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.ig, double %i.ib)
  store double %i.ih, ptr %i.cj, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !281

._crit_edge:                                      ; preds = %bb.c
  %i.ii = add nuw nsw i32 %.0273279, 1            ; 2 uses
  %exitcond290.not = icmp eq i32 %i.ii, %i.af
  br i1 %exitcond290.not, label %._crit_edge280, label %.preheader, !llvm.loop !282

._crit_edge280:                                   ; preds = %._crit_edge
  %i.ij = add nuw nsw i32 %.0274281, 1            ; 2 uses
  %exitcond291.not = icmp eq i32 %i.ij, %i.ah
  br i1 %exitcond291.not, label %._crit_edge282.split, label %.preheader277, !llvm.loop !283

._crit_edge282.split:                             ; preds = %._crit_edge280, %.preheader277.lr.ph, %bb.b
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge286, label %bb.b, !llvm.loop !284

._crit_edge286:                                   ; preds = %._crit_edge282.split, %bb.a
  %i.ik = tail call i64 (...) @CycleTime() #10
  %i.il = sub i64 %i.ik, %i.b
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.in = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.c ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !63
  %i.ip = add i64 %i.il, %i.io
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zero_grid(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge70

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge66.split
  %indvars.iv75 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next76, %._crit_edge66.split ] ; 2 uses
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv75
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds [216 x i8], ptr %i.k, i64 %i.b ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !65   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !66   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !67   ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.y = add nsw i32 %i.n, 1
  %i.z = add nsw i32 %i.y, %i.p
  %i.aa = mul nsw i32 %i.r, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ab ; 6 uses
  %i.ad = sub nsw i32 0, %i.r                     ; 6 uses
  %i.ae = add i32 %i.t, %i.r                      ; 2 uses
  %i.af = icmp sgt i32 %i.ae, %i.ad
  br i1 %i.af, label %.preheader61.lr.ph, label %._crit_edge66.split

.preheader61.lr.ph:                               ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !70 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !69
  %i.ak = add i32 %i.aj, %i.r                     ; 2 uses
  %i.al = icmp sle i32 %i.ak, %i.ad
  %i.am = add i32 %i.ah, %i.r                     ; 2 uses
  %i.an = icmp sle i32 %i.am, %i.ad
  %brmerge = select i1 %i.al, i1 true, i1 %i.an
  br i1 %brmerge, label %._crit_edge66.split, label %.preheader61.preheader

.preheader61.preheader:                           ; preds = %.preheader61.lr.ph
  %i.ao = zext i32 %i.ad to i64                   ; 3 uses
  %i.ap = add i32 %i.ah, -1
  %i.aq = shl i32 %i.r, 1
  %i.ar = add i32 %i.ap, %i.aq
  %i.as = xor i32 %i.n, -1
  %i.at = sub i32 %i.as, %i.p
  %i.au = mul i32 %i.r, %i.at
  %3 = add i32 %i.ah, %i.r
  %4 = add i32 %i.ah, -1
  %i.av = add i32 %4, %i.r
  %5 = shl i32 %i.r, 1
  %i.aw = add i32 %i.ah, %5
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  %6 = zext i32 %i.ax to i64
  %7 = add nuw nsw i64 %6, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.ax, 3
  %n.vec = and i64 %7, 8589934588                 ; 3 uses
  %i.ay = add nuw nsw i64 %n.vec, %i.ao
  %cmp.n = icmp eq i64 %7, %n.vec
  br label %.preheader61

.preheader61:                                     ; preds = %.preheader61.preheader, %._crit_edge64
  %indvar = phi i32 [ 0, %.preheader61.preheader ], [ %indvar.next, %._crit_edge64 ] ; 2 uses
  %.06065 = phi i32 [ %i.ad, %.preheader61.preheader ], [ %i.cj, %._crit_edge64 ] ; 2 uses
  %i.az = mul i32 %i.p, %indvar
  %i.ba = add i32 %i.au, %i.az
  %i.bb = mul nsw i32 %.06065, %i.p
  br label %.preheader

.preheader:                                       ; preds = %.preheader61, %._crit_edge
  %indvar85 = phi i32 [ 0, %.preheader61 ], [ %indvar.next86, %._crit_edge ] ; 2 uses
  %.05963 = phi i32 [ %i.ad, %.preheader61 ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.bc = mul nsw i32 %.05963, %i.n
  %i.bd = add i32 %i.bc, %i.bb                    ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.be = mul i32 %i.n, %indvar85
  %i.bf = add i32 %i.ba, %i.be                    ; 2 uses
  %i.bg = add i32 %i.bf, %i.ar
  %i.bh = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bh, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %invariant.op = sub i32 %i.bd, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = trunc i64 %index to i32
  %.reass = add i32 %i.bi, %invariant.op
  %i.bj = sext i32 %.reass to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <2 x double> zeroinitializer, ptr %i.bk, align 8, !tbaa !44
  store <2 x double> zeroinitializer, ptr %i.bl, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ao, %vector.scevcheck ], [ %i.ao, %.preheader ], [ %i.ay, %middle.block ] ; 3 uses
  %i.bn = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.bo = sub i32 %3, %i.bn
  %i.bp = sub i32 %i.av, %i.bn
  %xtraiter = and i32 %i.bo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bq = trunc i64 %indvars.iv.prol to i32
  %i.br = add i32 %i.bd, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bs
  store double 0.000000e+00, ptr %i.bt, align 8, !tbaa !44
  %indvars.iv.next.prol = add i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !286

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bu = icmp ult i32 %i.bp, 3
  br i1 %i.bu, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op87 = add i32 1, %i.bd
  %invariant.op89 = add i32 2, %i.bd
  %invariant.op91 = add i32 3, %i.bd
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.bv = trunc i64 %indvars.iv to i32
  %i.bw = add i32 %i.bd, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bx
  store double 0.000000e+00, ptr %i.by, align 8, !tbaa !44
  %i.bz = trunc i64 %indvars.iv to i32
  %.reass88 = add i32 %i.bz, %invariant.op87
  %i.ca = sext i32 %.reass88 to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ca
  store double 0.000000e+00, ptr %i.cb, align 8, !tbaa !44
  %i.cc = trunc i64 %indvars.iv to i32
  %.reass90 = add i32 %i.cc, %invariant.op89
  %i.cd = sext i32 %.reass90 to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cd
  store double 0.000000e+00, ptr %i.ce, align 8, !tbaa !44
  %i.cf = trunc i64 %indvars.iv to i32
  %.reass92 = add i32 %i.cf, %invariant.op91
  %i.cg = sext i32 %.reass92 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cg
  store double 0.000000e+00, ptr %i.ch, align 8, !tbaa !44
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.am, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !287

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ci = add nsw i32 %.05963, 1                  ; 2 uses
  %exitcond73.not = icmp eq i32 %i.ci, %i.ak
  %indvar.next86 = add i32 %indvar85, 1
  br i1 %exitcond73.not, label %._crit_edge64, label %.preheader, !llvm.loop !288

._crit_edge64:                                    ; preds = %._crit_edge
  %i.cj = add nsw i32 %.06065, 1                  ; 2 uses
  %exitcond74.not = icmp eq i32 %i.cj, %i.ae
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond74.not, label %._crit_edge66.split, label %.preheader61, !llvm.loop !289

._crit_edge66.split:                              ; preds = %._crit_edge64, %.preheader61.lr.ph, %bb.b
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond78.not, label %._crit_edge70, label %bb.b, !llvm.loop !290

._crit_edge70:                                    ; preds = %._crit_edge66.split, %bb.a
  %i.ck = tail call i64 (...) @CycleTime() #10
  %i.cl = sub i64 %i.ck, %i.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.b ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !63
  %i.cp = add i64 %i.cl, %i.co
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initialize_grid_to_scalar(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %broadcast.splatinsert134 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat135 = shufflevector <2 x double> %broadcast.splatinsert134, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge87
  %indvars.iv115 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next116, %._crit_edge87 ] ; 2 uses
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv115
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds [216 x i8], ptr %i.k, i64 %i.b ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !65   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !66   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !67   ; 18 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !68   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !69   ; 2 uses
  %i.x = load i32, ptr %i.s, align 4, !tbaa !70   ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.h
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = add nsw i32 %i.n, 1
  %i.ad = add nsw i32 %i.ac, %i.p
  %i.ae = mul nsw i32 %i.r, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.af ; 16 uses
  %i.ah = sub nsw i32 0, %i.r                     ; 8 uses
  %i.ai = add i32 %i.u, %i.r                      ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader78.lr.ph, label %._crit_edge87

.preheader78.lr.ph:                               ; preds = %bb.b
  %i.ak = add nsw i32 %i.w, %i.r                  ; 3 uses
  %i.al = icmp sgt i32 %i.ak, %i.ah
  %i.am = add i32 %i.x, %i.r                      ; 4 uses
  %i.an = icmp sgt i32 %i.am, %i.ah
  %or.cond = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond, label %.preheader78.us.preheader, label %._crit_edge87

.preheader78.us.preheader:                        ; preds = %.preheader78.lr.ph
  %i.ao = sext i32 %i.ah to i64                   ; 8 uses
  %i.ap = sext i32 %i.x to i64                    ; 4 uses
  %i.aq = add i32 %i.x, -1
  %i.ar = shl i32 %i.r, 1
  %i.as = add i32 %i.aq, %i.ar                    ; 3 uses
  %i.at = xor i32 %i.n, -1
  %i.au = sub i32 %i.at, %i.p
  %i.av = mul i32 %i.r, %i.au                     ; 3 uses
  %4 = add i32 %i.x, %i.r
  %i.aw = add i32 %i.x, -1
  %i.ax = add i32 %i.aw, %i.r
  %5 = add i32 %i.x, %i.r
  %6 = add i32 %i.x, -1
  %7 = add i32 %6, %i.r
  %8 = add i32 %i.x, %i.r
  %9 = add i32 %i.x, -1
  %i.ay = add i32 %9, %i.r
  %i.az = shl i32 %i.r, 1
  %i.ba = add i32 %i.x, %i.az
  %10 = add i32 %i.ba, -1                         ; 2 uses
  %i.bb = zext i32 %10 to i64
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check160 = icmp ult i32 %10, 3
  %n.vec163 = and i64 %i.bc, 8589934588           ; 3 uses
  %11 = add nsw i64 %n.vec163, %i.ao
  %cmp.n168 = icmp eq i64 %i.bc, %n.vec163
  %12 = shl i32 %i.r, 1
  %i.bd = add i32 %i.x, %12
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  %13 = zext i32 %i.be to i64
  %i.bf = add nuw nsw i64 %13, 1                  ; 4 uses
  %min.iters.check146 = icmp ult i32 %i.be, 3     ; 2 uses
  %n.vec149 = and i64 %i.bf, 8589934588           ; 3 uses
  %i.bg = add nsw i64 %n.vec149, %i.ao
  %cmp.n154 = icmp eq i64 %i.bf, %n.vec149
  %n.vec = and i64 %i.bf, 8589934588              ; 3 uses
  %i.bh = add nsw i64 %n.vec, %i.ao
  %broadcast.splatinsert132 = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat133 = shufflevector <2 x i64> %broadcast.splatinsert132, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert136 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat137 = shufflevector <2 x i64> %broadcast.splatinsert136, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat137, <i64 0, i64 1>
  %broadcast.splatinsert138 = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat139 = shufflevector <2 x i32> %broadcast.splatinsert138, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction140 = add <2 x i32> %broadcast.splat139, <i32 0, i32 1>
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br label %.preheader78.us

.preheader78.us:                                  ; preds = %.preheader78.us.preheader, %._crit_edge81.us
  %indvar = phi i32 [ 0, %.preheader78.us.preheader ], [ %indvar.next, %._crit_edge81.us ] ; 4 uses
  %.07484.us = phi i32 [ %i.ah, %.preheader78.us.preheader ], [ %i.ei, %._crit_edge81.us ] ; 4 uses
  %i.bi = mul i32 %i.p, %indvar
  %i.bj = add i32 %i.av, %i.bi
  %i.bk = mul i32 %i.p, %indvar
  %i.bl = add i32 %i.av, %i.bk
  %i.bm = mul i32 %i.p, %indvar
  %i.bn = add i32 %i.av, %i.bm
  %i.bo = mul nsw i32 %.07484.us, %i.p            ; 2 uses
  %.not76.us = icmp slt i32 %.07484.us, %i.u
  %.not76.fr.us = freeze i1 %.not76.us
  br i1 %.not76.fr.us, label %.preheader.us89, label %.preheader.us.us

.lr.ph.split.us92:                                ; preds = %.lr.ph.split.us92.prol.loopexit, %.lr.ph.split.us92
  %indvars.iv108 = phi i64 [ %indvars.iv.next109.1, %.lr.ph.split.us92 ], [ %indvars.iv108.unr, %.lr.ph.split.us92.prol.loopexit ] ; 4 uses
  %i.bp = trunc nsw i64 %indvars.iv108 to i32     ; 2 uses
  %i.bq = add i32 %i.ca, %i.bp
  %i.br = or i32 %i.cb, %i.bp
  %or.cond3.not.us = icmp sgt i32 %i.br, -1
  %.not.us = icmp slt i64 %indvars.iv108, %i.ap
  %or.cond.us = select i1 %or.cond3.not.us, i1 %.not.us, i1 false
  %unswitched.select.us = select i1 %or.cond.us, double %3, double 0.000000e+00
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bs
  store double %unswitched.select.us, ptr %i.bt, align 8, !tbaa !44
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.bu = trunc nsw i64 %indvars.iv.next109 to i32 ; 2 uses
  %i.bv = add i32 %i.ca, %i.bu
  %i.bw = or i32 %i.cb, %i.bu
  %or.cond3.not.us.1 = icmp sgt i32 %i.bw, -1
  %.not.us.1 = icmp slt i64 %indvars.iv.next109, %i.ap
  %or.cond.us.1 = select i1 %or.cond3.not.us.1, i1 %.not.us.1, i1 false
  %unswitched.select.us.1 = select i1 %or.cond.us.1, double %3, double 0.000000e+00
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bx
  store double %unswitched.select.us.1, ptr %i.by, align 8, !tbaa !44
  %indvars.iv.next109.1 = add nsw i64 %indvars.iv108, 2 ; 2 uses
  %lftr.wideiv111.1 = trunc i64 %indvars.iv.next109.1 to i32
  %exitcond112.not.1 = icmp eq i32 %i.am, %lftr.wideiv111.1
  br i1 %exitcond112.not.1, label %._crit_edge.us, label %.lr.ph.split.us92, !llvm.loop !291

.preheader.us89:                                  ; preds = %.preheader78.us, %._crit_edge.us
  %indvar130 = phi i32 [ %indvar.next131, %._crit_edge.us ], [ 0, %.preheader78.us ] ; 3 uses
  %.07380.us90 = phi i32 [ %i.du, %._crit_edge.us ], [ %i.ah, %.preheader78.us ] ; 4 uses
  %i.bz = mul nsw i32 %.07380.us90, %i.n
  %i.ca = add i32 %i.bz, %i.bo                    ; 10 uses
  %i.cb = or i32 %.07380.us90, %.07484.us         ; 4 uses
  %.not75.us = icmp slt i32 %.07380.us90, %i.w
  %.not75.fr.us = freeze i1 %.not75.us
  br i1 %.not75.fr.us, label %.lr.ph.split.us92.preheader, label %.lr.ph.split.us.us.preheader

.lr.ph.split.us.us.preheader:                     ; preds = %.preheader.us89
  %i.cc = mul i32 %i.n, %indvar130
  %i.cd = add i32 %i.bl, %i.cc                    ; 2 uses
  %i.ce = add i32 %i.cd, %i.as
  %i.cf = icmp slt i32 %i.ce, %i.cd
  %or.cond171 = select i1 %min.iters.check146, i1 true, i1 %i.cf
  br i1 %or.cond171, label %.lr.ph.split.us.us.preheader175, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph.split.us.us.preheader
  %invariant.op190 = sub i32 %i.ca, %i.r
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph147
  %index151 = phi i64 [ 0, %vector.ph147 ], [ %index.next152, %vector.body150 ] ; 2 uses
  %i.cg = trunc i64 %index151 to i32
  %.reass191 = add i32 %i.cg, %invariant.op190
  %i.ch = sext i32 %.reass191 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x double> zeroinitializer, ptr %i.ci, align 8, !tbaa !44
  store <2 x double> zeroinitializer, ptr %i.cj, align 8, !tbaa !44
  %index.next152 = add nuw i64 %index151, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next152, %n.vec149
  br i1 %i.ck, label %middle.block153, label %vector.body150, !llvm.loop !292

middle.block153:                                  ; preds = %vector.body150
  br i1 %cmp.n154, label %._crit_edge.us, label %.lr.ph.split.us.us.preheader175

.lr.ph.split.us.us.preheader175:                  ; preds = %.lr.ph.split.us.us.preheader, %middle.block153
  %indvars.iv103.ph = phi i64 [ %i.ao, %.lr.ph.split.us.us.preheader ], [ %i.bg, %middle.block153 ] ; 3 uses
  %i.cl = trunc i64 %indvars.iv103.ph to i32      ; 2 uses
  %i.cm = sub i32 %5, %i.cl
  %i.cn = sub i32 %7, %i.cl
  %xtraiter178 = and i32 %i.cm, 3                 ; 2 uses
  %lcmp.mod179.not = icmp eq i32 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.lr.ph.split.us.us.prol.loopexit, label %.lr.ph.split.us.us.prol

.lr.ph.split.us.us.prol:                          ; preds = %.lr.ph.split.us.us.preheader175, %.lr.ph.split.us.us.prol
  %indvars.iv103.prol = phi i64 [ %indvars.iv.next104.prol, %.lr.ph.split.us.us.prol ], [ %indvars.iv103.ph, %.lr.ph.split.us.us.preheader175 ] ; 2 uses
  %prol.iter180 = phi i32 [ %prol.iter180.next, %.lr.ph.split.us.us.prol ], [ 0, %.lr.ph.split.us.us.preheader175 ]
  %i.co = trunc nsw i64 %indvars.iv103.prol to i32
  %i.cp = add i32 %i.ca, %i.co
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cq
  store double 0.000000e+00, ptr %i.cr, align 8, !tbaa !44
  %indvars.iv.next104.prol = add nsw i64 %indvars.iv103.prol, 1 ; 2 uses
  %prol.iter180.next = add i32 %prol.iter180, 1   ; 2 uses
  %prol.iter180.cmp.not = icmp eq i32 %prol.iter180.next, %xtraiter178
  br i1 %prol.iter180.cmp.not, label %.lr.ph.split.us.us.prol.loopexit, label %.lr.ph.split.us.us.prol, !llvm.loop !293

.lr.ph.split.us.us.prol.loopexit:                 ; preds = %.lr.ph.split.us.us.prol, %.lr.ph.split.us.us.preheader175
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %.lr.ph.split.us.us.preheader175 ], [ %indvars.iv.next104.prol, %.lr.ph.split.us.us.prol ]
  %i.cs = icmp ult i32 %i.cn, 3
  br i1 %i.cs, label %._crit_edge.us, label %.lr.ph.split.us.us.preheader175.new

.lr.ph.split.us.us.preheader175.new:              ; preds = %.lr.ph.split.us.us.prol.loopexit
  %invariant.op192 = add i32 1, %i.ca
  %invariant.op194 = add i32 2, %i.ca
  %invariant.op196 = add i32 3, %i.ca
  br label %.lr.ph.split.us.us

.lr.ph.split.us92.preheader:                      ; preds = %.preheader.us89
  %i.ct = mul i32 %i.n, %indvar130
  %i.cu = add i32 %i.bn, %i.ct                    ; 2 uses
  %i.cv = add i32 %i.cu, %i.as
  %i.cw = icmp slt i32 %i.cv, %i.cu
  %or.cond173 = select i1 %min.iters.check146, i1 true, i1 %i.cw
  br i1 %or.cond173, label %.lr.ph.split.us92.preheader174, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us92.preheader
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op198 = sub i32 %i.ca, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind141 = phi <2 x i32> [ %induction140, %vector.ph ], [ %vec.ind.next143, %vector.body ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind, splat (i64 2)
  %step.add142 = add <2 x i32> %vec.ind141, splat (i32 2)
  %i.cx = trunc i64 %index to i32
  %.reass199 = add i32 %i.cx, %invariant.op198
  %i.cy = or <2 x i32> %broadcast.splat, %vec.ind141
  %i.cz = or <2 x i32> %broadcast.splat, %step.add142
  %i.da = icmp sgt <2 x i32> %i.cy, splat (i32 -1)
  %i.db = icmp sgt <2 x i32> %i.cz, splat (i32 -1)
  %i.dc = icmp slt <2 x i64> %vec.ind, %broadcast.splat133
  %i.dd = icmp slt <2 x i64> %step.add, %broadcast.splat133
  %i.de = select <2 x i1> %i.da, <2 x i1> %i.dc, <2 x i1> zeroinitializer
  %i.df = select <2 x i1> %i.db, <2 x i1> %i.dd, <2 x i1> zeroinitializer
  %i.dg = select <2 x i1> %i.de, <2 x double> %broadcast.splat135, <2 x double> zeroinitializer
  %i.dh = select <2 x i1> %i.df, <2 x double> %broadcast.splat135, <2 x double> zeroinitializer
  %i.di = sext i32 %.reass199 to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x double> %i.dg, ptr %i.dj, align 8, !tbaa !44
  store <2 x double> %i.dh, ptr %i.dk, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next143 = add <2 x i32> %vec.ind141, splat (i32 4)
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph.split.us92.preheader174

.lr.ph.split.us92.preheader174:                   ; preds = %.lr.ph.split.us92.preheader, %middle.block
  %indvars.iv108.ph = phi i64 [ %i.ao, %.lr.ph.split.us92.preheader ], [ %i.bh, %middle.block ] ; 5 uses
  %i.dm = trunc i64 %indvars.iv108.ph to i32      ; 2 uses
  %i.dn = sub i32 %8, %i.dm
  %xtraiter181 = and i32 %i.dn, 1
  %lcmp.mod182.not = icmp eq i32 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph.split.us92.prol.loopexit, label %.lr.ph.split.us92.prol

.lr.ph.split.us92.prol:                           ; preds = %.lr.ph.split.us92.preheader174
  %i.do = trunc nsw i64 %indvars.iv108.ph to i32  ; 2 uses
  %i.dp = add i32 %i.ca, %i.do
  %i.dq = or i32 %i.cb, %i.do
  %or.cond3.not.us.prol = icmp sgt i32 %i.dq, -1
  %.not.us.prol = icmp slt i64 %indvars.iv108.ph, %i.ap
  %or.cond.us.prol = select i1 %or.cond3.not.us.prol, i1 %.not.us.prol, i1 false
  %unswitched.select.us.prol = select i1 %or.cond.us.prol, double %3, double 0.000000e+00
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.dr
  store double %unswitched.select.us.prol, ptr %i.ds, align 8, !tbaa !44
  %indvars.iv.next109.prol = add nsw i64 %indvars.iv108.ph, 1
  br label %.lr.ph.split.us92.prol.loopexit

.lr.ph.split.us92.prol.loopexit:                  ; preds = %.lr.ph.split.us92.prol, %.lr.ph.split.us92.preheader174
  %indvars.iv108.unr = phi i64 [ %indvars.iv108.ph, %.lr.ph.split.us92.preheader174 ], [ %indvars.iv.next109.prol, %.lr.ph.split.us92.prol ]
  %i.dt = icmp eq i32 %i.ay, %i.dm
  br i1 %i.dt, label %._crit_edge.us, label %.lr.ph.split.us92

._crit_edge.us:                                   ; preds = %.lr.ph.split.us.us.prol.loopexit, %.lr.ph.split.us.us, %.lr.ph.split.us92.prol.loopexit, %.lr.ph.split.us92, %middle.block153, %middle.block
  %i.du = add nsw i32 %.07380.us90, 1             ; 2 uses
  %exitcond113.not = icmp eq i32 %i.du, %i.ak
  %indvar.next131 = add i32 %indvar130, 1
  br i1 %exitcond113.not, label %._crit_edge81.us, label %.preheader.us89, !llvm.loop !295

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us, %.lr.ph.split.us.us.preheader175.new
  %indvars.iv103 = phi i64 [ %indvars.iv103.unr, %.lr.ph.split.us.us.preheader175.new ], [ %indvars.iv.next104.3, %.lr.ph.split.us.us ] ; 5 uses
  %i.dv = trunc nsw i64 %indvars.iv103 to i32
  %i.dw = add i32 %i.ca, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.dx
  store double 0.000000e+00, ptr %i.dy, align 8, !tbaa !44
  %i.dz = trunc i64 %indvars.iv103 to i32
  %.reass193 = add i32 %i.dz, %invariant.op192
  %i.ea = sext i32 %.reass193 to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ea
  store double 0.000000e+00, ptr %i.eb, align 8, !tbaa !44
  %i.ec = trunc i64 %indvars.iv103 to i32
  %.reass195 = add i32 %i.ec, %invariant.op194
  %i.ed = sext i32 %.reass195 to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ed
  store double 0.000000e+00, ptr %i.ee, align 8, !tbaa !44
  %i.ef = trunc i64 %indvars.iv103 to i32
  %.reass197 = add i32 %i.ef, %invariant.op196
  %i.eg = sext i32 %.reass197 to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.eg
  store double 0.000000e+00, ptr %i.eh, align 8, !tbaa !44
  %indvars.iv.next104.3 = add nsw i64 %indvars.iv103, 4 ; 2 uses
  %lftr.wideiv106.3 = trunc i64 %indvars.iv.next104.3 to i32
  %exitcond107.not.3 = icmp eq i32 %i.am, %lftr.wideiv106.3
  br i1 %exitcond107.not.3, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !296

._crit_edge81.us:                                 ; preds = %._crit_edge.split.us.us.us, %._crit_edge.us
  %i.ei = add nsw i32 %.07484.us, 1               ; 2 uses
  %exitcond114.not = icmp eq i32 %i.ei, %i.ai
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond114.not, label %._crit_edge87, label %.preheader78.us, !llvm.loop !297

.preheader.us.us:                                 ; preds = %.preheader78.us, %._crit_edge.split.us.us.us
  %indvar157 = phi i32 [ %indvar.next158, %._crit_edge.split.us.us.us ], [ 0, %.preheader78.us ] ; 2 uses
  %.07380.us.us = phi i32 [ %i.fp, %._crit_edge.split.us.us.us ], [ %i.ah, %.preheader78.us ] ; 2 uses
  %i.ej = mul nsw i32 %.07380.us.us, %i.n
  %i.ek = add i32 %i.ej, %i.bo                    ; 6 uses
  br i1 %min.iters.check160, label %scalar.ph159.preheader, label %vector.scevcheck156

vector.scevcheck156:                              ; preds = %.preheader.us.us
  %i.el = mul i32 %i.n, %indvar157
  %i.em = add i32 %i.bj, %i.el                    ; 2 uses
  %i.en = add i32 %i.em, %i.as
  %i.eo = icmp slt i32 %i.en, %i.em
  br i1 %i.eo, label %scalar.ph159.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %vector.scevcheck156
  %invariant.op = sub i32 %i.ek, %i.r
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next166, %vector.body164 ] ; 2 uses
  %i.ep = trunc i64 %index165 to i32
  %.reass = add i32 %i.ep, %invariant.op
  %i.eq = sext i32 %.reass to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x double> zeroinitializer, ptr %i.er, align 8, !tbaa !44
  store <2 x double> zeroinitializer, ptr %i.es, align 8, !tbaa !44
  %index.next166 = add nuw i64 %index165, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.et, label %middle.block167, label %vector.body164, !llvm.loop !298

middle.block167:                                  ; preds = %vector.body164
  br i1 %cmp.n168, label %._crit_edge.split.us.us.us, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %vector.scevcheck156, %.preheader.us.us, %middle.block167
  %indvars.iv.ph = phi i64 [ %i.ao, %vector.scevcheck156 ], [ %i.ao, %.preheader.us.us ], [ %11, %middle.block167 ] ; 3 uses
  %i.eu = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.ev = sub i32 %4, %i.eu
  %i.ew = sub i32 %i.ax, %i.eu
  %xtraiter = and i32 %i.ev, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph159.prol.loopexit, label %scalar.ph159.prol

scalar.ph159.prol:                                ; preds = %scalar.ph159.preheader, %scalar.ph159.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph159.prol ], [ %indvars.iv.ph, %scalar.ph159.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph159.prol ], [ 0, %scalar.ph159.preheader ]
  %i.ex = trunc nsw i64 %indvars.iv.prol to i32
  %i.ey = add i32 %i.ek, %i.ex
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ez
  store double 0.000000e+00, ptr %i.fa, align 8, !tbaa !44
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph159.prol.loopexit, label %scalar.ph159.prol, !llvm.loop !299

scalar.ph159.prol.loopexit:                       ; preds = %scalar.ph159.prol, %scalar.ph159.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph159.preheader ], [ %indvars.iv.next.prol, %scalar.ph159.prol ]
  %i.fb = icmp ult i32 %i.ew, 3
  br i1 %i.fb, label %._crit_edge.split.us.us.us, label %scalar.ph159.preheader.new

scalar.ph159.preheader.new:                       ; preds = %scalar.ph159.prol.loopexit
  %invariant.op184 = add i32 1, %i.ek
  %invariant.op186 = add i32 2, %i.ek
  %invariant.op188 = add i32 3, %i.ek
  br label %scalar.ph159

scalar.ph159:                                     ; preds = %scalar.ph159, %scalar.ph159.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph159.preheader.new ], [ %indvars.iv.next.3, %scalar.ph159 ] ; 5 uses
  %i.fc = trunc nsw i64 %indvars.iv to i32
  %i.fd = add i32 %i.ek, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.fe
  store double 0.000000e+00, ptr %i.ff, align 8, !tbaa !44
  %i.fg = trunc i64 %indvars.iv to i32
  %.reass185 = add i32 %i.fg, %invariant.op184
  %i.fh = sext i32 %.reass185 to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.fh
  store double 0.000000e+00, ptr %i.fi, align 8, !tbaa !44
  %i.fj = trunc i64 %indvars.iv to i32
  %.reass187 = add i32 %i.fj, %invariant.op186
  %i.fk = sext i32 %.reass187 to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.fk
  store double 0.000000e+00, ptr %i.fl, align 8, !tbaa !44
  %i.fm = trunc i64 %indvars.iv to i32
  %.reass189 = add i32 %i.fm, %invariant.op188
  %i.fn = sext i32 %.reass189 to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.fn
  store double 0.000000e+00, ptr %i.fo, align 8, !tbaa !44
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.am, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge.split.us.us.us, label %scalar.ph159, !llvm.loop !300

._crit_edge.split.us.us.us:                       ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159, %middle.block167
  %i.fp = add nsw i32 %.07380.us.us, 1            ; 2 uses
  %exitcond102.not = icmp eq i32 %i.fp, %i.ak
  %indvar.next158 = add i32 %indvar157, 1
  br i1 %exitcond102.not, label %._crit_edge81.us, label %.preheader.us.us, !llvm.loop !295

._crit_edge87:                                    ; preds = %._crit_edge81.us, %.preheader78.lr.ph, %bb.b
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count
  br i1 %exitcond118.not, label %._crit_edge, label %bb.b, !llvm.loop !301

._crit_edge:                                      ; preds = %._crit_edge87, %bb.a
  %i.fq = tail call i64 (...) @CycleTime() #10
  %i.fr = sub i64 %i.fq, %i.a
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.b ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !63
  %i.fv = add i64 %i.fr, %i.fu
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_grids(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, double noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge84

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = sext i32 %2 to i64
  %i.i = sext i32 %4 to i64
  %i.j = sext i32 %6 to i64
  %wide.trip.count92 = zext nneg i32 %i.d to i64
  %broadcast.splatinsert = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert100 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat101 = shufflevector <2 x double> %broadcast.splatinsert100, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge80.split
  %indvars.iv89 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next90, %._crit_edge80.split ] ; 2 uses
  %i.k = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv89
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds [216 x i8], ptr %i.m, i64 %i.b ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !65   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !66   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !68   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !69   ; 2 uses
  %i.z = load i32, ptr %i.u, align 4, !tbaa !70   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.h
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = add nsw i32 %i.p, 1
  %i.ag = add nsw i32 %i.af, %i.r
  %i.ah = mul nsw i32 %i.t, %i.ag
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42 ; 2 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ai ; 4 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.j
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ai ; 4 uses
  %i.as = icmp sgt i32 %i.w, 0
  br i1 %i.as, label %.preheader75.lr.ph, label %._crit_edge80.split

.preheader75.lr.ph:                               ; preds = %bb.b
  %i.at = icmp slt i32 %i.y, 1
  %i.au = icmp slt i32 %i.z, 1
  %brmerge = select i1 %i.at, i1 true, i1 %i.au
  br i1 %brmerge, label %._crit_edge80.split, label %.preheader75.preheader

.preheader75.preheader:                           ; preds = %.preheader75.lr.ph
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 6 uses
  %i.av = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.aw = sub i64 %i.ae, %i.am
  %i.ax = sub i64 %i.ae, %i.aq
  %min.iters.check = icmp ult i32 %i.z, 4
  %i.ay = trunc nsw i64 %i.av to i32
  %i.az = icmp ugt i64 %i.av, 4294967295
  %diff.check = icmp ult i64 %i.aw, 32
  %diff.check99 = icmp ult i64 %i.ax, 32
  %conflict.rdx = or i1 %diff.check, %diff.check99
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ba = add nsw i64 %wide.trip.count, -1
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75.preheader, %._crit_edge78
  %.07479 = phi i32 [ %i.dd, %._crit_edge78 ], [ 0, %.preheader75.preheader ] ; 3 uses
  %i.bb = mul i32 %i.r, %.07479
  %i.bc = mul nsw i32 %.07479, %i.r
  br label %.preheader

.preheader:                                       ; preds = %.preheader75, %._crit_edge
  %.07377 = phi i32 [ 0, %.preheader75 ], [ %i.dc, %._crit_edge ] ; 3 uses
  %i.bd = mul nsw i32 %.07377, %i.p
  %i.be = add i32 %i.bd, %i.bc                    ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.bf = mul i32 %i.p, %.07377
  %i.bg = add i32 %i.bb, %i.bf                    ; 2 uses
  %i.bh = add i32 %i.bg, %i.ay
  %i.bi = icmp slt i32 %i.bh, %i.bg
  %i.bj = or i1 %i.bi, %i.az
  %brmerge105 = select i1 %i.bj, i1 true, i1 %conflict.rdx
  br i1 %brmerge105, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bk = trunc nuw nsw i64 %index to i32
  %i.bl = add i32 %i.be, %i.bk
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <2 x double>, ptr %i.bn, align 8, !tbaa !44
  %wide.load102 = load <2 x double>, ptr %i.bo, align 8, !tbaa !44
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load103 = load <2 x double>, ptr %i.bp, align 8, !tbaa !44
  %wide.load104 = load <2 x double>, ptr %i.bq, align 8, !tbaa !44
  %i.br = fmul <2 x double> %broadcast.splat, %wide.load103
  %i.bs = fmul <2 x double> %broadcast.splat, %wide.load104
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat101, <2 x double> %wide.load, <2 x double> %i.br)
end_hunk_0
