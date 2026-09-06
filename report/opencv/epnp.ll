Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/epnp?download=true
inline.NumInlined: 402
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN2cv4epnp11compute_ccsEPKdS2_:.preheader23
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !31
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cr, double %i.as) ; 2 uses
  store double %i.cs, ptr %i.ar, align 8, !tbaa !31
  %i.ct = load double, ptr %i.bj, align 8, !tbaa !31
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !31
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cv, double %i.ax) ; 2 uses
  store double %i.cw, ptr %i.at, align 8, !tbaa !31
  %i.cx = load double, ptr %i.bj, align 8, !tbaa !31
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !31
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cz, double %i.bc) ; 2 uses
  store double %i.da, ptr %i.bb, align 8, !tbaa !31
  %i.db = load double, ptr %i.bj, align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !31
  %i.de = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dd, double %i.bh) ; 2 uses
  store double %i.de, ptr %i.bg, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 864
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !31
  %i.di = load double, ptr %i.df, align 8, !tbaa !31
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.di, double %i.bm) ; 2 uses
  store double %i.dj, ptr %i.a, align 8, !tbaa !31
  %i.dk = load double, ptr %i.dg, align 8, !tbaa !31
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 872
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !31
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dm, double %i.bq) ; 2 uses
  store double %i.dn, ptr %i.i, align 8, !tbaa !31
  %i.do = load double, ptr %i.dg, align 8, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 880
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !31
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dq, double %i.bu) ; 2 uses
  store double %i.dr, ptr %i.n, align 8, !tbaa !31
  %i.ds = load double, ptr %i.dg, align 8, !tbaa !31
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 888
  %i.du = load double, ptr %i.dt, align 8, !tbaa !31
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.du, double %i.by) ; 2 uses
  store double %i.dv, ptr %i.p, align 8, !tbaa !31
  %i.dw = load double, ptr %i.dg, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 896
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !31
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dy, double %i.cc) ; 2 uses
  store double %i.dz, ptr %i.x, align 8, !tbaa !31
  %i.ea = load double, ptr %i.dg, align 8, !tbaa !31
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 904
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !31
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.ec, double %i.cg) ; 2 uses
  store double %i.ed, ptr %i.ac, align 8, !tbaa !31
  %i.ee = load double, ptr %i.dg, align 8, !tbaa !31
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !31
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.eg, double %i.ck) ; 2 uses
  store double %i.eh, ptr %i.ae, align 8, !tbaa !31
  %i.ei = load double, ptr %i.dg, align 8, !tbaa !31
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 920
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !31
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ek, double %i.co) ; 2 uses
  store double %i.el, ptr %i.am, align 8, !tbaa !31
  %i.em = load double, ptr %i.dg, align 8, !tbaa !31
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 928
  %i.eo = load double, ptr %i.en, align 8, !tbaa !31
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.em, double %i.eo, double %i.cs) ; 2 uses
  store double %i.ep, ptr %i.ar, align 8, !tbaa !31
  %i.eq = load double, ptr %i.dg, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 936
  %i.es = load double, ptr %i.er, align 8, !tbaa !31
  %i.et = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.es, double %i.cw) ; 2 uses
  store double %i.et, ptr %i.at, align 8, !tbaa !31
  %i.eu = load double, ptr %i.dg, align 8, !tbaa !31
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 944
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !31
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.ew, double %i.da) ; 2 uses
  store double %i.ex, ptr %i.bb, align 8, !tbaa !31
  %i.ey = load double, ptr %i.dg, align 8, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 952
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !31
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.fa, double %i.de) ; 2 uses
  store double %i.fb, ptr %i.bg, align 8, !tbaa !31
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 12 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !31
  %i.ff = load double, ptr %i.fc, align 8, !tbaa !31
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.ff, double %i.dj)
  store double %i.fg, ptr %i.a, align 8, !tbaa !31
  %i.fh = load double, ptr %i.fd, align 8, !tbaa !31
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 776
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !31
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fj, double %i.dn)
  store double %i.fk, ptr %i.i, align 8, !tbaa !31
  %i.fl = load double, ptr %i.fd, align 8, !tbaa !31
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 784
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !31
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fn, double %i.dr)
  store double %i.fo, ptr %i.n, align 8, !tbaa !31
  %i.fp = load double, ptr %i.fd, align 8, !tbaa !31
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 792
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !31
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.fr, double %i.dv)
  store double %i.fs, ptr %i.p, align 8, !tbaa !31
  %i.ft = load double, ptr %i.fd, align 8, !tbaa !31
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 800
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !31
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.ft, double %i.fv, double %i.dz)
  store double %i.fw, ptr %i.x, align 8, !tbaa !31
  %i.fx = load double, ptr %i.fd, align 8, !tbaa !31
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 808
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !31
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.fz, double %i.ed)
  store double %i.ga, ptr %i.ac, align 8, !tbaa !31
  %i.gb = load double, ptr %i.fd, align 8, !tbaa !31
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 816
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !31
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gd, double %i.eh)
  store double %i.ge, ptr %i.ae, align 8, !tbaa !31
  %i.gf = load double, ptr %i.fd, align 8, !tbaa !31
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 824
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !31
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.gh, double %i.el)
  store double %i.gi, ptr %i.am, align 8, !tbaa !31
  %i.gj = load double, ptr %i.fd, align 8, !tbaa !31
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !31
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.gl, double %i.ep)
  store double %i.gm, ptr %i.ar, align 8, !tbaa !31
  %i.gn = load double, ptr %i.fd, align 8, !tbaa !31
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 840
  %i.gp = load double, ptr %i.go, align 8, !tbaa !31
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gp, double %i.et)
  store double %i.gq, ptr %i.at, align 8, !tbaa !31
  %i.gr = load double, ptr %i.fd, align 8, !tbaa !31
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 848
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !31
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.gt, double %i.ex)
  store double %i.gu, ptr %i.bb, align 8, !tbaa !31
  %i.gv = load double, ptr %i.fd, align 8, !tbaa !31
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 856
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !31
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gx, double %i.fb)
  store double %i.gy, ptr %i.bg, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv4epnp11compute_pcsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %min.iters.check = icmp eq i32 %i.b, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.t = mul nuw nsw i64 %wide.trip.count, 24
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.t ; 2 uses
  %i.u = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep22 = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep23 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %bound0 = icmp ult ptr %i.g, %scevgep22
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound024 = icmp ult ptr %i.g, %scevgep23
  %bound125 = icmp ult ptr %i.h, %scevgep
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx = or i1 %found.conflict, %found.conflict26
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %i.v = load <2 x double>, ptr %i.h, align 8
  %broadcast.splat28 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = load <2 x double>, ptr %i.i, align 8
  %broadcast.splat = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = load <2 x double>, ptr %i.j, align 8
  %broadcast.splat30 = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = load <2 x double>, ptr %i.k, align 8
  %broadcast.splat32 = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = load <2 x double>, ptr %i.l, align 8
  %broadcast.splat36 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %1 = shufflevector <2 x double> %broadcast.splat28, <2 x double> %broadcast.splat36, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aa = load <2 x double>, ptr %i.m, align 8
  %broadcast.splat34 = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = load <2 x double>, ptr %i.n, align 8
  %broadcast.splat38 = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %2 = shufflevector <2 x double> %broadcast.splat30, <2 x double> %broadcast.splat38, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ac = load <2 x double>, ptr %i.o, align 8
  %broadcast.splat40 = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = shufflevector <2 x double> %broadcast.splat32, <2 x double> %broadcast.splat40, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ad = load <2 x double>, ptr %i.p, align 8
  %broadcast.splat44 = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = load <2 x double>, ptr %i.q, align 8
  %broadcast.splat42 = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = load <2 x double>, ptr %i.r, align 8
  %broadcast.splat46 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = load <2 x double>, ptr %i.s, align 8
  %broadcast.splat48 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ah = shl nuw nsw i64 %index, 5
  %i.ai = shl i64 %index, 5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ah ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 3 uses
  %i.am = mul nuw nsw i64 %index, 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 3 uses
  %i.au = load double, ptr %i.aj, align 8, !tbaa !31, !alias.scope !96
  %i.av = load double, ptr %i.al, align 8, !tbaa !31, !alias.scope !96
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = load double, ptr %i.ao, align 8, !tbaa !31, !alias.scope !96
  %i.az = load double, ptr %i.ap, align 8, !tbaa !31, !alias.scope !96
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = fmul <2 x double> %i.bb, %broadcast.splat
  %i.bd = load double, ptr %i.aq, align 8, !tbaa !31, !alias.scope !96
  %i.be = load double, ptr %i.ar, align 8, !tbaa !31, !alias.scope !96
  %i.bf = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.be, i64 1
  %i.bh = load double, ptr %i.as, align 8, !tbaa !31, !alias.scope !96
  %i.bi = load double, ptr %i.at, align 8, !tbaa !31, !alias.scope !96
  %i.bj = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bi, i64 1
  %i.bl = load double, ptr %i.aj, align 8, !tbaa !31, !alias.scope !96
  %i.bm = load double, ptr %i.al, align 8, !tbaa !31, !alias.scope !96
  %i.bn = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1
  %4 = shufflevector <2 x double> %i.ax, <2 x double> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bp = load double, ptr %i.ao, align 8, !tbaa !31, !alias.scope !96
  %i.bq = load double, ptr %i.ap, align 8, !tbaa !31, !alias.scope !96
  %i.br = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bq, i64 1
  %i.bt = fmul <2 x double> %i.bs, %broadcast.splat34
  %5 = shufflevector <2 x double> %i.bc, <2 x double> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %4, <4 x double> %1, <4 x double> %5)
  %i.bu = load double, ptr %i.aq, align 8, !tbaa !31, !alias.scope !96
  %i.bv = load double, ptr %i.ar, align 8, !tbaa !31, !alias.scope !96
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1
  %7 = shufflevector <2 x double> %i.bg, <2 x double> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %7, <4 x double> %2, <4 x double> %6)
  %i.by = load double, ptr %i.as, align 8, !tbaa !31, !alias.scope !96
  %i.bz = load double, ptr %i.at, align 8, !tbaa !31, !alias.scope !96
  %i.ca = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %9 = shufflevector <2 x double> %i.bk, <2 x double> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cc = load double, ptr %i.aj, align 8, !tbaa !31, !alias.scope !96
  %i.cd = load double, ptr %i.al, align 8, !tbaa !31, !alias.scope !96
  %i.ce = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cd, i64 1
  %i.cg = load double, ptr %i.ao, align 8, !tbaa !31, !alias.scope !96
  %i.ch = load double, ptr %i.ap, align 8, !tbaa !31, !alias.scope !96
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1
  %i.ck = fmul <2 x double> %i.cj, %broadcast.splat42
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %broadcast.splat44, <2 x double> %i.ck)
  %i.cm = load double, ptr %i.aq, align 8, !tbaa !31, !alias.scope !96
  %i.cn = load double, ptr %i.ar, align 8, !tbaa !31, !alias.scope !96
  %i.co = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.cn, i64 1
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %broadcast.splat46, <2 x double> %i.cl)
  %i.cr = load double, ptr %i.as, align 8, !tbaa !31, !alias.scope !96
  %i.cs = load double, ptr %i.at, align 8, !tbaa !31, !alias.scope !96
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat48, <2 x double> %i.cq)
  %i.cw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %9, <4 x double> %3, <4 x double> %8)
  %i.cx = shufflevector <2 x double> %i.cv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.cw, <4 x double> %i.cx, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.an, align 8, !tbaa !31, !alias.scope !97, !noalias !98
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 6 uses
  %.idx21 = mul nuw nsw i64 %indvars.iv, 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx21 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 3 uses
  %i.de = load double, ptr %i.cz, align 8, !tbaa !31
  %i.df = load double, ptr %i.h, align 8, !tbaa !31
  %i.dg = load double, ptr %i.db, align 8, !tbaa !31
  %i.dh = load double, ptr %i.i, align 8, !tbaa !31
  %i.di = fmul double %i.dg, %i.dh
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.de, double %i.df, double %i.di)
  %i.dk = load double, ptr %i.dc, align 8, !tbaa !31
  %i.dl = load double, ptr %i.j, align 8, !tbaa !31
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dl, double %i.dj)
  %i.dn = load double, ptr %i.dd, align 8, !tbaa !31
  %i.do = load double, ptr %i.k, align 8, !tbaa !31
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.do, double %i.dm)
  store double %i.dp, ptr %i.da, align 8, !tbaa !31
  %i.dq = load double, ptr %i.cz, align 8, !tbaa !31
  %i.dr = load double, ptr %i.l, align 8, !tbaa !31
  %i.ds = load double, ptr %i.db, align 8, !tbaa !31
  %i.dt = load double, ptr %i.m, align 8, !tbaa !31
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dr, double %i.du)
  %i.dw = load double, ptr %i.dc, align 8, !tbaa !31
  %i.dx = load double, ptr %i.n, align 8, !tbaa !31
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dx, double %i.dv)
  %i.dz = load double, ptr %i.dd, align 8, !tbaa !31
  %i.ea = load double, ptr %i.o, align 8, !tbaa !31
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ea, double %i.dy)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store double %i.eb, ptr %i.ec, align 8, !tbaa !31
  %i.ed = load double, ptr %i.cz, align 8, !tbaa !31
  %i.ee = load double, ptr %i.p, align 8, !tbaa !31
  %i.ef = load double, ptr %i.db, align 8, !tbaa !31
  %i.eg = load double, ptr %i.q, align 8, !tbaa !31
  %i.eh = fmul double %i.ef, %i.eg
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ee, double %i.eh)
  %i.ej = load double, ptr %i.dc, align 8, !tbaa !31
  %i.ek = load double, ptr %i.r, align 8, !tbaa !31
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ek, double %i.ei)
  %i.em = load double, ptr %i.dd, align 8, !tbaa !31
  %i.en = load double, ptr %i.s, align 8, !tbaa !31
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.em, double %i.en, double %i.el)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store double %i.eo, ptr %i.ep, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !95
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv4epnp12compute_poseERNS_3MatES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) initializes((136, 160)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %i.a = alloca [144 x double], align 16          ; 5 uses
  %i.b = alloca [12 x double], align 16           ; 5 uses
  %i.c = alloca [144 x double], align 16          ; 9 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.d = alloca [60 x double], align 16           ; 6 uses
  %i.e = alloca [6 x double], align 16            ; 8 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %i.f = alloca [4 x [4 x double]], align 16      ; 7 uses
  %i.g = alloca [4 x [3 x [3 x double]]], align 16 ; 8 uses
  %i.h = alloca [4 x [3 x double]], align 16      ; 8 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  tail call void @_ZN2cv4epnp21choose_control_pointsEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  tail call void @_ZN2cv4epnp31compute_barycentric_coordinatesEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %i.k = shl nsw i32 %i.j, 1
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %i.k, i32 noundef 12, i32 noundef 6)
  %i.l = load i32, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1152) %i.a, i8 0, i64 1152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1152) %i.c, i8 0, i64 1152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 12, i32 noundef 12, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.c unwind label %bb.v

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.y = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 7 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.y ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !31 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !31 ; 4 uses
  %i.ae = mul i64 %i.u, %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ae ; 24 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load double, ptr %i.z, align 8, !tbaa !31
  %i.ai = load double, ptr %i.v, align 8, !tbaa !33
  %i.aj = fmul double %i.ah, %i.ai
  store double %i.aj, ptr %i.af, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !31
  %i.al = load double, ptr %i.z, align 8, !tbaa !31
  %i.am = load double, ptr %0, align 8, !tbaa !30
  %i.an = fsub double %i.am, %i.ab
  %i.ao = fmul double %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store double %i.ao, ptr %i.ap, align 8, !tbaa !31
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !31
  %i.aq = load double, ptr %i.z, align 8, !tbaa !31
  %i.ar = load double, ptr %i.w, align 8, !tbaa !34
  %i.as = fmul double %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store double %i.as, ptr %i.at, align 8, !tbaa !31
  %i.au = load double, ptr %i.z, align 8, !tbaa !31
  %i.av = load double, ptr %i.x, align 8, !tbaa !32
  %i.aw = fsub double %i.av, %i.ad
  %i.ax = fmul double %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store double %i.ax, ptr %i.ay, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !31
  %i.bb = load double, ptr %i.v, align 8, !tbaa !33
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store double %i.bc, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store double 0.000000e+00, ptr %i.be, align 8, !tbaa !31
  %i.bf = load double, ptr %i.az, align 8, !tbaa !31
  %i.bg = load double, ptr %0, align 8, !tbaa !30
  %i.bh = fsub double %i.bg, %i.ab
  %i.bi = fmul double %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store double %i.bi, ptr %i.bj, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store double 0.000000e+00, ptr %i.bk, align 8, !tbaa !31
  %i.bl = load double, ptr %i.az, align 8, !tbaa !31
  %i.bm = load double, ptr %i.w, align 8, !tbaa !34
  %i.bn = fmul double %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store double %i.bn, ptr %i.bo, align 8, !tbaa !31
  %i.bp = load double, ptr %i.az, align 8, !tbaa !31
  %i.bq = load double, ptr %i.x, align 8, !tbaa !32
  %i.br = fsub double %i.bq, %i.ad
  %i.bs = fmul double %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 136
end_hunk_0
begin_hunk_1_@_ZN2cv4epnp19find_betas_approx_1ERKNS_3MatES3_Pd:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv4epnp12gauss_newtonERKNS_3MatES3_Pd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [24 x double], align 16           ; 5 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  %i.c = alloca [4 x double], align 16            ; 11 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 16 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 16 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.a, i8 0, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 6, i32 noundef 4, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 6, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %i.b, i64 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 4, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %i.c, i64 noundef 0)
          to label %.preheader18.preheader unwind label %bb.d

.preheader18.preheader:                           ; preds = %bb.b
  call void @_ZN2cv4epnp28compute_A_and_b_gauss_newtonERKNS_3MatES3_PKdRS1_S6_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5)
  invoke void @_ZN2cv4epnp8qr_solveERNS_3MatES2_S2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %.preheader.preheader unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.preheader.preheader:                             ; preds = %.preheader18.preheader
  %i.f = load <2 x double>, ptr %i.c, align 16, !tbaa !31
  %i.g = load <2 x double>, ptr %3, align 8, !tbaa !31
  %i.h = fadd <2 x double> %i.f, %i.g
  store <2 x double> %i.h, ptr %3, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.k = load <2 x double>, ptr %i.i, align 16, !tbaa !31
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !31
  %i.m = fadd <2 x double> %i.k, %i.l
  store <2 x double> %i.m, ptr %i.j, align 8, !tbaa !31
  call void @_ZN2cv4epnp28compute_A_and_b_gauss_newtonERKNS_3MatES3_PKdRS1_S6_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5)
  invoke void @_ZN2cv4epnp8qr_solveERNS_3MatES2_S2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %.preheader.preheader.1 unwind label %bb.e

bb.e:                                             ; preds = %.preheader.preheader.3, %.preheader.preheader.2, %.preheader.preheader.1, %.preheader.preheader, %.preheader18.preheader
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  br label %bb.f

.preheader.preheader.1:                           ; preds = %.preheader.preheader
  %i.o = load <2 x double>, ptr %i.c, align 16, !tbaa !31
  %i.p = load <2 x double>, ptr %3, align 8, !tbaa !31
  %i.q = fadd <2 x double> %i.o, %i.p
  store <2 x double> %i.q, ptr %3, align 8, !tbaa !31
  %i.r = load <2 x double>, ptr %i.i, align 16, !tbaa !31
  %i.s = load <2 x double>, ptr %i.j, align 8, !tbaa !31
  %i.t = fadd <2 x double> %i.r, %i.s
  store <2 x double> %i.t, ptr %i.j, align 8, !tbaa !31
  call void @_ZN2cv4epnp28compute_A_and_b_gauss_newtonERKNS_3MatES3_PKdRS1_S6_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5)
  invoke void @_ZN2cv4epnp8qr_solveERNS_3MatES2_S2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %.preheader.preheader.2 unwind label %bb.e

.preheader.preheader.2:                           ; preds = %.preheader.preheader.1
  %i.u = load <2 x double>, ptr %i.c, align 16, !tbaa !31
  %i.v = load <2 x double>, ptr %3, align 8, !tbaa !31
  %i.w = fadd <2 x double> %i.u, %i.v
  store <2 x double> %i.w, ptr %3, align 8, !tbaa !31
  %i.x = load <2 x double>, ptr %i.i, align 16, !tbaa !31
  %i.y = load <2 x double>, ptr %i.j, align 8, !tbaa !31
  %i.z = fadd <2 x double> %i.x, %i.y
  store <2 x double> %i.z, ptr %i.j, align 8, !tbaa !31
  call void @_ZN2cv4epnp28compute_A_and_b_gauss_newtonERKNS_3MatES3_PKdRS1_S6_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5)
  invoke void @_ZN2cv4epnp8qr_solveERNS_3MatES2_S2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %.preheader.preheader.3 unwind label %bb.e

.preheader.preheader.3:                           ; preds = %.preheader.preheader.2
  %i.aa = load <2 x double>, ptr %i.c, align 16, !tbaa !31
  %i.ab = load <2 x double>, ptr %3, align 8, !tbaa !31
  %i.ac = fadd <2 x double> %i.aa, %i.ab
  store <2 x double> %i.ac, ptr %3, align 8, !tbaa !31
  %i.ad = load <2 x double>, ptr %i.i, align 16, !tbaa !31
  %i.ae = load <2 x double>, ptr %i.j, align 8, !tbaa !31
  %i.af = fadd <2 x double> %i.ad, %i.ae
  store <2 x double> %i.af, ptr %i.j, align 8, !tbaa !31
  call void @_ZN2cv4epnp28compute_A_and_b_gauss_newtonERKNS_3MatES3_PKdRS1_S6_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5)
  invoke void @_ZN2cv4epnp8qr_solveERNS_3MatES2_S2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %.preheader.preheader.4 unwind label %bb.e

.preheader.preheader.4:                           ; preds = %.preheader.preheader.3
  %i.ag = load <2 x double>, ptr %i.c, align 16, !tbaa !31
  %i.ah = load <2 x double>, ptr %3, align 8, !tbaa !31
  %i.ai = fadd <2 x double> %i.ag, %i.ah
  store <2 x double> %i.ai, ptr %3, align 8, !tbaa !31
  %i.aj = load <2 x double>, ptr %i.i, align 16, !tbaa !31
  %i.ak = load <2 x double>, ptr %i.j, align 8, !tbaa !31
  %i.al = fadd <2 x double> %i.aj, %i.ak
  store <2 x double> %i.al, ptr %i.j, align 8, !tbaa !31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.e, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.f ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN2cv4epnp15compute_R_and_tEPKdS2_PA3_dPd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) initializes((232, 328)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2cv4epnp11compute_ccsEPKdS2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %2, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35   ; 6 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph.i, label %._ZN2cv4epnp11compute_pcsEv.exit_crit_edge

._ZN2cv4epnp11compute_pcsEv.exit_crit_edge:       ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %_ZN2cv4epnp11compute_pcsEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %min.iters.check = icmp eq i32 %i.b, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.t = mul nuw nsw i64 %wide.trip.count.i, 24
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.t ; 2 uses
  %i.u = shl nuw nsw i64 %wide.trip.count.i, 5
  %scevgep20 = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep21 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %bound0 = icmp ult ptr %i.g, %scevgep20
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.g, %scevgep21
  %bound123 = icmp ult ptr %i.h, %scevgep
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %i.v = load double, ptr %i.h, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert25 = insertelement <2 x double> poison, double %i.v, i64 0
  %i.w = load double, ptr %i.i, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.w, i64 0
  %i.x = load double, ptr %i.j, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %i.x, i64 0
  %i.y = load double, ptr %i.k, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert29 = insertelement <2 x double> poison, double %i.y, i64 0
  %i.z = load double, ptr %i.l, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert33 = insertelement <2 x double> poison, double %i.z, i64 0
  %5 = shufflevector <2 x double> %broadcast.splatinsert25, <2 x double> %broadcast.splatinsert33, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.aa = load double, ptr %i.m, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert31 = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ab = load double, ptr %i.n, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert35 = insertelement <2 x double> poison, double %i.ab, i64 0
  %6 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> %broadcast.splatinsert35, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ac = load double, ptr %i.o, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert37 = insertelement <2 x double> poison, double %i.ac, i64 0
  %7 = shufflevector <2 x double> %broadcast.splatinsert29, <2 x double> %broadcast.splatinsert37, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ad = load double, ptr %i.p, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert41 = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat42 = shufflevector <2 x double> %broadcast.splatinsert41, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = load double, ptr %i.q, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert39 = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat40 = shufflevector <2 x double> %broadcast.splatinsert39, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = load double, ptr %i.r, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert43 = insertelement <2 x double> poison, double %i.af, i64 0
  %broadcast.splat44 = shufflevector <2 x double> %broadcast.splatinsert43, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = load double, ptr %i.s, align 8, !tbaa !31, !alias.scope !107
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %i.ag, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> %broadcast.splatinsert31, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = shl nuw nsw i64 %index, 5
  %i.aj = shl i64 %index, 5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aj ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  %i.an = mul nuw nsw i64 %index, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 3 uses
  %i.av = load double, ptr %i.ak, align 8, !tbaa !31, !alias.scope !108
  %i.aw = load double, ptr %i.am, align 8, !tbaa !31, !alias.scope !108
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %i.az = load double, ptr %i.ap, align 8, !tbaa !31, !alias.scope !108
  %i.ba = load double, ptr %i.aq, align 8, !tbaa !31, !alias.scope !108
  %i.bb = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = load double, ptr %i.ar, align 8, !tbaa !31, !alias.scope !108
  %i.be = load double, ptr %i.as, align 8, !tbaa !31, !alias.scope !108
  %i.bf = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.be, i64 1
  %i.bh = load double, ptr %i.at, align 8, !tbaa !31, !alias.scope !108
  %i.bi = load double, ptr %i.au, align 8, !tbaa !31, !alias.scope !108
  %i.bj = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bi, i64 1
  %i.bl = load double, ptr %i.ak, align 8, !tbaa !31, !alias.scope !108
  %i.bm = load double, ptr %i.am, align 8, !tbaa !31, !alias.scope !108
  %i.bn = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1
  %8 = shufflevector <2 x double> %i.ay, <2 x double> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bp = load double, ptr %i.ap, align 8, !tbaa !31, !alias.scope !108
  %i.bq = load double, ptr %i.aq, align 8, !tbaa !31, !alias.scope !108
  %i.br = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bq, i64 1
  %9 = shufflevector <2 x double> %i.bc, <2 x double> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = fmul <4 x double> %9, %i.ah
  %11 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %8, <4 x double> %5, <4 x double> %10)
  %i.bt = load double, ptr %i.ar, align 8, !tbaa !31, !alias.scope !108
  %i.bu = load double, ptr %i.as, align 8, !tbaa !31, !alias.scope !108
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bu, i64 1
  %12 = shufflevector <2 x double> %i.bg, <2 x double> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %12, <4 x double> %6, <4 x double> %11)
  %i.bx = load double, ptr %i.at, align 8, !tbaa !31, !alias.scope !108
  %i.by = load double, ptr %i.au, align 8, !tbaa !31, !alias.scope !108
  %i.bz = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.by, i64 1
  %14 = shufflevector <2 x double> %i.bk, <2 x double> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cb = load double, ptr %i.ak, align 8, !tbaa !31, !alias.scope !108
  %i.cc = load double, ptr %i.am, align 8, !tbaa !31, !alias.scope !108
  %i.cd = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.cc, i64 1
  %i.cf = load double, ptr %i.ap, align 8, !tbaa !31, !alias.scope !108
  %i.cg = load double, ptr %i.aq, align 8, !tbaa !31, !alias.scope !108
  %i.ch = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cg, i64 1
  %i.cj = fmul <2 x double> %i.ci, %broadcast.splat40
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %broadcast.splat42, <2 x double> %i.cj)
  %i.cl = load double, ptr %i.ar, align 8, !tbaa !31, !alias.scope !108
  %i.cm = load double, ptr %i.as, align 8, !tbaa !31, !alias.scope !108
  %i.cn = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cm, i64 1
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %broadcast.splat44, <2 x double> %i.ck)
  %i.cq = load double, ptr %i.at, align 8, !tbaa !31, !alias.scope !108
  %i.cr = load double, ptr %i.au, align 8, !tbaa !31, !alias.scope !108
  %i.cs = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cr, i64 1
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %broadcast.splat46, <2 x double> %i.cp)
  %i.cv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %14, <4 x double> %7, <4 x double> %13)
  %i.cw = shufflevector <2 x double> %i.cu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.cv, <4 x double> %i.cw, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.ao, align 8, !tbaa !31, !alias.scope !109, !noalias !110
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN2cv4epnp11compute_pcsEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 6 uses
  %.idx21.i = mul nuw nsw i64 %indvars.iv.i, 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx21.i ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 3 uses
  %i.dd = load double, ptr %i.cy, align 8, !tbaa !31
  %i.de = load double, ptr %i.h, align 8, !tbaa !31
  %i.df = load double, ptr %i.da, align 8, !tbaa !31
  %i.dg = load double, ptr %i.i, align 8, !tbaa !31
  %i.dh = fmul double %i.df, %i.dg
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.de, double %i.dh)
  %i.dj = load double, ptr %i.db, align 8, !tbaa !31
  %i.dk = load double, ptr %i.j, align 8, !tbaa !31
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dk, double %i.di)
  %i.dm = load double, ptr %i.dc, align 8, !tbaa !31
  %i.dn = load double, ptr %i.k, align 8, !tbaa !31
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %i.dl)
  store double %i.do, ptr %i.cz, align 8, !tbaa !31
  %i.dp = load double, ptr %i.cy, align 8, !tbaa !31
  %i.dq = load double, ptr %i.l, align 8, !tbaa !31
  %i.dr = load double, ptr %i.da, align 8, !tbaa !31
  %i.ds = load double, ptr %i.m, align 8, !tbaa !31
  %i.dt = fmul double %i.dr, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dq, double %i.dt)
  %i.dv = load double, ptr %i.db, align 8, !tbaa !31
  %i.dw = load double, ptr %i.n, align 8, !tbaa !31
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.dw, double %i.du)
  %i.dy = load double, ptr %i.dc, align 8, !tbaa !31
  %i.dz = load double, ptr %i.o, align 8, !tbaa !31
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.dz, double %i.dx)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store double %i.ea, ptr %i.eb, align 8, !tbaa !31
  %i.ec = load double, ptr %i.cy, align 8, !tbaa !31
  %i.ed = load double, ptr %i.p, align 8, !tbaa !31
  %i.ee = load double, ptr %i.da, align 8, !tbaa !31
  %i.ef = load double, ptr %i.q, align 8, !tbaa !31
  %i.eg = fmul double %i.ee, %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ed, double %i.eg)
  %i.ei = load double, ptr %i.db, align 8, !tbaa !31
  %i.ej = load double, ptr %i.r, align 8, !tbaa !31
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double %i.eh)
  %i.el = load double, ptr %i.dc, align 8, !tbaa !31
  %i.em = load double, ptr %i.s, align 8, !tbaa !31
  %i.en = tail call double @llvm.fmuladd.f64(double %i.el, double %i.em, double %i.ek)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store double %i.en, ptr %i.eo, align 8, !tbaa !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv4epnp11compute_pcsEv.exit, label %scalar.ph, !llvm.loop !106

_ZN2cv4epnp11compute_pcsEv.exit:                  ; preds = %scalar.ph, %middle.block, %._ZN2cv4epnp11compute_pcsEv.exit_crit_edge
  %i.ep = phi ptr [ %.pre, %._ZN2cv4epnp11compute_pcsEv.exit_crit_edge ], [ %i.g, %middle.block ], [ %i.g, %scalar.ph ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !31
  %i.es = fcmp olt double %i.er, 0.000000e+00
  br i1 %i.es, label %.preheader19.i, label %_ZN2cv4epnp14solve_for_signEv.exit

.preheader19.i:                                   ; preds = %_ZN2cv4epnp11compute_pcsEv.exit
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.eu = load <2 x double>, ptr %i.et, align 8, !tbaa !31
  %i.ev = fneg <2 x double> %i.eu
  store <2 x double> %i.ev, ptr %i.et, align 8, !tbaa !31
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ex = load <2 x double>, ptr %i.ew, align 8, !tbaa !31
  %i.ey = fneg <2 x double> %i.ex
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.fa = load <2 x double>, ptr %i.ez, align 8, !tbaa !31
  %i.fb = fneg <2 x double> %i.fa
  store <2 x double> %i.fb, ptr %i.ez, align 8, !tbaa !31
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.fd = load <2 x double>, ptr %i.fc, align 8, !tbaa !31
  %i.fe = fneg <2 x double> %i.fd
  store <2 x double> %i.fe, ptr %i.fc, align 8, !tbaa !31
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fg = load <2 x double>, ptr %i.ff, align 8, !tbaa !31
  %i.fh = fneg <2 x double> %i.fg
  store <2 x double> %i.fh, ptr %i.ff, align 8, !tbaa !31
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.fj = load <2 x double>, ptr %i.fi, align 8, !tbaa !31
  %i.fk = fneg <2 x double> %i.fj
  store <2 x double> %i.fk, ptr %i.fi, align 8, !tbaa !31
  br i1 %i.c, label %.lr.ph.preheader.i, label %_ZN2cv4epnp14solve_for_signEv.exit

.lr.ph.preheader.i:                               ; preds = %.preheader19.i
  %wide.trip.count.i7 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i7, 1
  %i.fl = icmp eq i32 %i.b, 1
  br i1 %i.fl, label %.lr.ph.i8.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i7, 2147483646
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8, %.lr.ph.preheader.i.new
  %indvars.iv.i9 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i11.1, %.lr.ph.i8 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i8 ]
  %.idx.i10 = mul nuw nsw i64 %indvars.iv.i9, 24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx.i10 ; 3 uses
  %i.fn = load <2 x double>, ptr %i.fm, align 8, !tbaa !31
  %i.fo = fneg <2 x double> %i.fn
  store <2 x double> %i.fo, ptr %i.fm, align 8, !tbaa !31
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !31
  %i.fr = fneg double %i.fq
  store double %i.fr, ptr %i.fp, align 8, !tbaa !31
  %i.fs = mul nuw i64 %indvars.iv.i9, 24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.fv = load <2 x double>, ptr %i.fu, align 8, !tbaa !31
  %i.fw = fneg <2 x double> %i.fv
  store <2 x double> %i.fw, ptr %i.fu, align 8, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 40 ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !31
  %i.fz = fneg double %i.fy
  store double %i.fz, ptr %i.fx, align 8, !tbaa !31
  %indvars.iv.next.i11.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv4epnp14solve_for_signEv.exit.loopexit.unr-lcssa, label %.lr.ph.i8, !llvm.loop !0

_ZN2cv4epnp14solve_for_signEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv4epnp14solve_for_signEv.exit, label %.lr.ph.i8.epil.preheader

.lr.ph.i8.epil.preheader:                         ; preds = %_ZN2cv4epnp14solve_for_signEv.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i9.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i11.1, %_ZN2cv4epnp14solve_for_signEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %.idx.i10.epil = mul nuw nsw i64 %indvars.iv.i9.epil.init, 24
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx.i10.epil ; 3 uses
  %i.gb = load <2 x double>, ptr %i.ga, align 8, !tbaa !31
  %i.gc = fneg <2 x double> %i.gb
  store <2 x double> %i.gc, ptr %i.ga, align 8, !tbaa !31
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !31
  %i.gf = fneg double %i.ge
  store double %i.gf, ptr %i.gd, align 8, !tbaa !31
  br label %_ZN2cv4epnp14solve_for_signEv.exit

_ZN2cv4epnp14solve_for_signEv.exit:               ; preds = %.lr.ph.i8.epil.preheader, %_ZN2cv4epnp14solve_for_signEv.exit.loopexit.unr-lcssa, %_ZN2cv4epnp11compute_pcsEv.exit, %.preheader19.i
  tail call void @_ZN2cv4epnp16estimate_R_and_tEPA3_dPd(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %3, ptr noundef %4)
  %i.gg = load i32, ptr %i.a, align 8, !tbaa !35  ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph.i13, label %_ZN2cv4epnp18reprojection_errorEPA3_KdPS1_.exit

.lr.ph.i13:                                       ; preds = %_ZN2cv4epnp14solve_for_signEv.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !37
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !31
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gn = load <2 x double>, ptr %3, align 8, !tbaa !31 ; 2 uses
  %i.go = load <2 x double>, ptr %i.gm, align 8, !tbaa !31 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gq = load <2 x double>, ptr %i.gp, align 8, !tbaa !31
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !31
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !31
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !31
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = load <2 x double>, ptr %4, align 8, !tbaa !31
  %i.gz = load <2 x double>, ptr %0, align 8, !tbaa !31
  %i.ha = load <2 x double>, ptr %i.gx, align 8, !tbaa !31
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !37
  %wide.trip.count.i14 = zext nneg i32 %i.gg to i64
  %i.hd = shufflevector <2 x double> %i.gn, <2 x double> %i.go, <2 x i32> <i32 0, i32 2>
  %i.he = shufflevector <2 x double> %i.gn, <2 x double> %i.go, <2 x i32> <i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i13
  %indvars.iv.i15 = phi i64 [ 0, %.lr.ph.i13 ], [ %indvars.iv.next.i17, %bb.b ] ; 3 uses
  %.031.i = phi double [ 0.000000e+00, %.lr.ph.i13 ], [ %i.iq, %bb.b ]
  %.idx.i16 = mul nuw nsw i64 %indvars.iv.i15, 24
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx.i16 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !31 ; 3 uses
  %i.hi = load <2 x double>, ptr %i.hf, align 8, !tbaa !31 ; 3 uses
end_hunk_1
