inline.NumInlined: 432
inline.NumDeleted: 156
begin_hunk_0_@_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !139 ; 2 uses
  %i.al = fmul float %i.w, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.s, float %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !139 ; 2 uses
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.ac, float %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !139 ; 2 uses
  %i.as = fadd float %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !139 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 3 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !139 ; 2 uses
  %i.ax = fmul float %i.w, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.s, float %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !139 ; 2 uses
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ac, float %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = fadd float %i.bd, %i.bb
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.ag, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.as, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.be, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !139 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !139 ; 3 uses
  %i.bk = fmul float %i.u, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bh, float %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !139 ; 3 uses
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.bn, float %i.bl)
  %i.bp = fadd float %i.af, %i.bo
  %i.bq = fmul float %i.ak, %i.bj
  %i.br = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.bh, float %i.bq)
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.bn, float %i.br)
  %i.bt = fadd float %i.ar, %i.bs
  %i.bu = fmul float %i.aw, %i.bj
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.au, float %i.bh, float %i.bu)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.bn, float %i.bv)
  %i.bx = fadd float %i.bd, %i.bw
  %.sroa.0.0.vec.insert.i55 = insertelement <2 x float> poison, float %i.bp, i64 0
  %.sroa.0.4.vec.insert.i56 = insertelement <2 x float> %.sroa.0.0.vec.insert.i55, float %i.bt, i64 1
  %.sroa.3.12.vec.insert.i57 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i56, ptr %6, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i57, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.cf = load float, ptr %i.n, align 4, !tbaa !139 ; 2 uses
  %i.cg = load float, ptr %i.bg, align 4, !tbaa !139 ; 3 uses
  %i.ch = load float, ptr %i.t, align 4, !tbaa !139 ; 2 uses
  %i.ci = load float, ptr %i.bi, align 4, !tbaa !139 ; 3 uses
  %i.cj = fmul float %i.ch, %i.ci
  %i.ck = call float @llvm.fmuladd.f32(float %i.cf, float %i.cg, float %i.cj)
  %i.cl = load float, ptr %i.z, align 4, !tbaa !139 ; 2 uses
  %i.cm = load float, ptr %i.bm, align 4, !tbaa !139 ; 3 uses
  %i.cn = call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.cm, float %i.ck)
  %i.co = load float, ptr %i.ae, align 4, !tbaa !139 ; 2 uses
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = load float, ptr %i.ah, align 4, !tbaa !139 ; 2 uses
  %i.cr = load float, ptr %i.aj, align 4, !tbaa !139 ; 2 uses
  %i.cs = fmul float %i.ci, %i.cr
  %i.ct = call float @llvm.fmuladd.f32(float %i.cq, float %i.cg, float %i.cs)
  %i.cu = load float, ptr %i.an, align 4, !tbaa !139 ; 2 uses
  %i.cv = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.cm, float %i.ct)
  %i.cw = load float, ptr %i.aq, align 4, !tbaa !139 ; 2 uses
  %i.cx = fadd float %i.cw, %i.cv
  %i.cy = load float, ptr %i.at, align 4, !tbaa !139 ; 2 uses
  %i.cz = load float, ptr %i.av, align 4, !tbaa !139 ; 2 uses
  %i.da = fmul float %i.ci, %i.cz
  %i.db = call float @llvm.fmuladd.f32(float %i.cy, float %i.cg, float %i.da)
  %i.dc = load float, ptr %i.az, align 4, !tbaa !139 ; 2 uses
  %i.dd = call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.cm, float %i.db)
  %i.de = load float, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.df = fadd float %i.de, %i.dd
  %.sroa.0.0.vec.insert.i60 = insertelement <2 x float> poison, float %i.cp, i64 0
  %.sroa.0.4.vec.insert.i61 = insertelement <2 x float> %.sroa.0.0.vec.insert.i60, float %i.cx, i64 1
  %.sroa.3.12.vec.insert.i62 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i61, ptr %7, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i62, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !139 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !139 ; 3 uses
  %i.dl = fmul float %i.ch, %i.dk
  %i.dm = call float @llvm.fmuladd.f32(float %i.cf, float %i.di, float %i.dl)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !139 ; 3 uses
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.do, float %i.dm)
  %i.dq = fadd float %i.co, %i.dp
  %i.dr = fmul float %i.cr, %i.dk
  %i.ds = call float @llvm.fmuladd.f32(float %i.cq, float %i.di, float %i.dr)
  %i.dt = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.do, float %i.ds)
  %i.du = fadd float %i.cw, %i.dt
  %i.dv = fmul float %i.cz, %i.dk
  %i.dw = call float @llvm.fmuladd.f32(float %i.cy, float %i.di, float %i.dv)
  %i.dx = call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.do, float %i.dw)
  %i.dy = fadd float %i.de, %i.dx
  %.sroa.0.0.vec.insert.i65 = insertelement <2 x float> poison, float %i.dq, i64 0
  %.sroa.0.4.vec.insert.i66 = insertelement <2 x float> %.sroa.0.0.vec.insert.i65, float %i.du, i64 1
  %.sroa.3.12.vec.insert.i67 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dy, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i66, ptr %8, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i67, ptr %i.dz, align 8
  %i.ea = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.eg = load float, ptr %i.n, align 4, !tbaa !139 ; 2 uses
  %i.eh = load float, ptr %i.dh, align 4, !tbaa !139 ; 3 uses
  %i.ei = load float, ptr %i.t, align 4, !tbaa !139 ; 2 uses
  %i.ej = load float, ptr %i.dj, align 4, !tbaa !139 ; 3 uses
  %i.ek = fmul float %i.ei, %i.ej
  %i.el = call float @llvm.fmuladd.f32(float %i.eg, float %i.eh, float %i.ek)
  %i.em = load float, ptr %i.z, align 4, !tbaa !139 ; 2 uses
  %i.en = load float, ptr %i.dn, align 4, !tbaa !139 ; 3 uses
  %i.eo = call noundef float @llvm.fmuladd.f32(float %i.em, float %i.en, float %i.el)
  %i.ep = load float, ptr %i.ae, align 4, !tbaa !139 ; 2 uses
  %i.eq = fadd float %i.eo, %i.ep
  %i.er = load float, ptr %i.ah, align 4, !tbaa !139 ; 2 uses
  %i.es = load float, ptr %i.aj, align 4, !tbaa !139 ; 2 uses
  %i.et = fmul float %i.ej, %i.es
  %i.eu = call float @llvm.fmuladd.f32(float %i.er, float %i.eh, float %i.et)
  %i.ev = load float, ptr %i.an, align 4, !tbaa !139 ; 2 uses
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.en, float %i.eu)
  %i.ex = load float, ptr %i.aq, align 4, !tbaa !139 ; 2 uses
  %i.ey = fadd float %i.ex, %i.ew
  %i.ez = load float, ptr %i.at, align 4, !tbaa !139 ; 2 uses
  %i.fa = load float, ptr %i.av, align 4, !tbaa !139 ; 2 uses
  %i.fb = fmul float %i.ej, %i.fa
  %i.fc = call float @llvm.fmuladd.f32(float %i.ez, float %i.eh, float %i.fb)
  %i.fd = load float, ptr %i.az, align 4, !tbaa !139 ; 2 uses
  %i.fe = call noundef float @llvm.fmuladd.f32(float %i.fd, float %i.en, float %i.fc)
  %i.ff = load float, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.fg = fadd float %i.ff, %i.fe
  %.sroa.0.0.vec.insert.i70 = insertelement <2 x float> poison, float %i.eq, i64 0
  %.sroa.0.4.vec.insert.i71 = insertelement <2 x float> %.sroa.0.0.vec.insert.i70, float %i.ey, i64 1
  %.sroa.3.12.vec.insert.i72 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fg, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i71, ptr %9, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i72, ptr %i.fh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.fi = load float, ptr %1, align 4, !tbaa !139 ; 3 uses
  %i.fj = load float, ptr %i.v, align 4, !tbaa !139 ; 3 uses
  %i.fk = fmul float %i.ei, %i.fj
  %i.fl = call float @llvm.fmuladd.f32(float %i.eg, float %i.fi, float %i.fk)
  %i.fm = load float, ptr %i.ab, align 4, !tbaa !139 ; 3 uses
  %i.fn = call noundef float @llvm.fmuladd.f32(float %i.em, float %i.fm, float %i.fl)
  %i.fo = fadd float %i.ep, %i.fn
  %i.fp = fmul float %i.es, %i.fj
  %i.fq = call float @llvm.fmuladd.f32(float %i.er, float %i.fi, float %i.fp)
  %i.fr = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.fm, float %i.fq)
  %i.fs = fadd float %i.ex, %i.fr
  %i.ft = fmul float %i.fa, %i.fj
  %i.fu = call float @llvm.fmuladd.f32(float %i.ez, float %i.fi, float %i.ft)
  %i.fv = call noundef float @llvm.fmuladd.f32(float %i.fd, float %i.fm, float %i.fu)
  %i.fw = fadd float %i.ff, %i.fv
  %.sroa.0.0.vec.insert.i75 = insertelement <2 x float> poison, float %i.fo, i64 0
  %.sroa.0.4.vec.insert.i76 = insertelement <2 x float> %.sroa.0.0.vec.insert.i75, float %i.fs, i64 1
  %.sroa.3.12.vec.insert.i77 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fw, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i76, ptr %10, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i77, ptr %i.fx, align 8
  %i.fy = load ptr, ptr %i.ef, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.gb = shl i32 %2, 21
  %i.gc = or i32 %i.gb, %3                        ; 4 uses
  store i32 %i.gc, ptr %11, align 8, !tbaa !140
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store i32 %i.gc, ptr %12, align 4, !tbaa !141
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gf = shl i32 %3, 15
  %i.gg = xor i32 %i.gf, -1
  %i.gh = add i32 %i.gc, %i.gg                    ; 2 uses
  %i.gi = lshr i32 %i.gh, 10
  %i.gj = xor i32 %i.gi, %i.gh
  %i.gk = mul i32 %i.gj, 9                        ; 2 uses
  %i.gl = lshr i32 %i.gk, 6
  %i.gm = xor i32 %i.gl, %i.gk                    ; 2 uses
  %i.gn = shl i32 %i.gm, 11
  %i.go = xor i32 %i.gn, -1
  %i.gp = add i32 %i.gm, %i.go                    ; 2 uses
  %i.gq = lshr i32 %i.gp, 16
  %i.gr = xor i32 %i.gq, %i.gp
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !46
  %i.gu = add nsw i32 %i.gt, -1
  %i.gv = and i32 %i.gu, %i.gr                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !41
  %.not.i.i.i = icmp ult i32 %i.gv, %i.gx
  br i1 %.not.i.i.i, label %bb.f, label %_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !40
  %i.ha = sext i32 %i.gv to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.ha
  %.012.i.i.i = load i32, ptr %i.hb, align 4, !tbaa !4 ; 2 uses
  %.not1113.i.i.i = icmp eq i32 %.012.i.i.i, -1
  br i1 %.not1113.i.i.i, label %_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !48
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hf = load ptr, ptr %i.he, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.014.i.i.i = phi i32 [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i, %bb.h ]
  %i.hg = sext i32 %.014.i.i.i to i64             ; 3 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !141
  %i.hj = icmp eq i32 %i.gc, %i.hi
  br i1 %i.hj, label %_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hg
  %.0.i.i.i = load i32, ptr %i.hk, align 4, !tbaa !4 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.0.i.i.i, -1
  br i1 %.not11.i.i.i, label %_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit.thread, label %bb.g

_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit: ; preds = %bb.g
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !44 ; 2 uses
  %.not54 = icmp eq ptr %i.hm, null
  br i1 %.not54, label %_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit
  %i.hn = getelementptr inbounds [16 x i8], ptr %i.hm, i64 %i.hg
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !121 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !143
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !144
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !144
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 3 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !146
  store ptr %i.hp, ptr %i.hv, align 8, !tbaa !146
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !51
  %i.hz = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ia = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = call noundef ptr %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.hy, ptr noundef %i.hz, ptr noundef null) ; 5 uses
  %i.ie = load ptr, ptr %i.hx, align 8, !tbaa !51
  %i.if = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ig = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !147
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef %i.ie, ptr noundef %i.if, ptr noundef nonnull align 8 dereferenceable(56) %i.ig, ptr noundef %i.ii)
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.id)
  %i.io = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 104
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.id)
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !146
  br label %bb.k

_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit.thread: ; preds = %bb.h, %bb.f, %bb.e, %_ZN9btHashMapI9btHashKeyI10btTriIndexES1_EixERKS2_.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.is = load float, ptr %i.ir, align 4, !tbaa !139 ; 3 uses
  %i.it = load float, ptr %1, align 4, !tbaa !139 ; 4 uses
  %i.iu = fsub float %i.is, %i.it                 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !139 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !139 ; 4 uses
  %i.iz = fsub float %i.iw, %i.iy                 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !139 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !139 ; 4 uses
  %i.je = fsub float %i.jb, %i.jd                 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !139 ; 3 uses
  %i.jh = fsub float %i.jg, %i.it                 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !139 ; 3 uses
  %i.jk = fsub float %i.jj, %i.iy                 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !139 ; 3 uses
  %i.jn = fsub float %i.jm, %i.jd                 ; 2 uses
  %i.jo = fneg float %i.jk
  %i.jp = fmul float %i.je, %i.jo
  %i.jq = call float @llvm.fmuladd.f32(float %i.iz, float %i.jn, float %i.jp) ; 3 uses
  %i.jr = fneg float %i.jn
  %i.js = fmul float %i.iu, %i.jr
  %i.jt = call float @llvm.fmuladd.f32(float %i.je, float %i.jh, float %i.js) ; 3 uses
  %i.ju = fneg float %i.jh
  %i.jv = fmul float %i.iz, %i.ju
  %i.jw = call float @llvm.fmuladd.f32(float %i.iu, float %i.jk, float %i.jv) ; 3 uses
  %i.jx = fmul float %i.jt, %i.jt
  %i.jy = call float @llvm.fmuladd.f32(float %i.jq, float %i.jq, float %i.jx)
  %i.jz = call noundef float @llvm.fmuladd.f32(float %i.jw, float %i.jw, float %i.jy)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.jz)
  %i.ka = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.kb = fmul float %i.jq, %i.ka
  %i.kc = fmul float %i.jt, %i.ka
  %i.kd = fmul float %i.jw, %i.ka
  %i.ke = fmul float %i.kb, 6.000000e-02          ; 6 uses
  %i.kf = fmul float %i.kc, 6.000000e-02          ; 6 uses
  %i.kg = fmul float %i.kd, 6.000000e-02          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.kh = fadd float %i.it, %i.ke
  %i.ki = fadd float %i.iy, %i.kf
  %i.kj = fadd float %i.jd, %i.kg
  %.sroa.0.0.vec.insert.i95 = insertelement <2 x float> poison, float %i.kh, i64 0
  %.sroa.0.4.vec.insert.i96 = insertelement <2 x float> %.sroa.0.0.vec.insert.i95, float %i.ki, i64 1
  %.sroa.3.12.vec.insert.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kj, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i96, ptr %13, align 16
  %i.kk = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i97, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.km = fadd float %i.is, %i.ke
  %i.kn = fadd float %i.iw, %i.kf
  %i.ko = fadd float %i.jb, %i.kg
  %.sroa.0.0.vec.insert.i100 = insertelement <2 x float> poison, float %i.km, i64 0
  %.sroa.0.4.vec.insert.i101 = insertelement <2 x float> %.sroa.0.0.vec.insert.i100, float %i.kn, i64 1
  %.sroa.3.12.vec.insert.i102 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ko, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i101, ptr %i.kl, align 16
  %i.kp = getelementptr inbounds nuw i8, ptr %13, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i102, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.kr = fadd float %i.jg, %i.ke
  %i.ks = fadd float %i.jj, %i.kf
  %i.kt = fadd float %i.jm, %i.kg
  %.sroa.0.0.vec.insert.i105 = insertelement <2 x float> poison, float %i.kr, i64 0
  %.sroa.0.4.vec.insert.i106 = insertelement <2 x float> %.sroa.0.0.vec.insert.i105, float %i.ks, i64 1
  %.sroa.3.12.vec.insert.i107 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kt, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i106, ptr %i.kq, align 16
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i107, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.kw = fsub float %i.it, %i.ke
  %i.kx = fsub float %i.iy, %i.kf
  %i.ky = fsub float %i.jd, %i.kg
  %.sroa.0.0.vec.insert.i110 = insertelement <2 x float> poison, float %i.kw, i64 0
  %.sroa.0.4.vec.insert.i111 = insertelement <2 x float> %.sroa.0.0.vec.insert.i110, float %i.kx, i64 1
  %.sroa.3.12.vec.insert.i112 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ky, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i111, ptr %i.kv, align 16
  %i.kz = getelementptr inbounds nuw i8, ptr %13, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i112, ptr %i.kz, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.lb = fsub float %i.is, %i.ke
  %i.lc = fsub float %i.iw, %i.kf
  %i.ld = fsub float %i.jb, %i.kg
  %.sroa.0.0.vec.insert.i115 = insertelement <2 x float> poison, float %i.lb, i64 0
  %.sroa.0.4.vec.insert.i116 = insertelement <2 x float> %.sroa.0.0.vec.insert.i115, float %i.lc, i64 1
  %.sroa.3.12.vec.insert.i117 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ld, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i116, ptr %i.la, align 16
  %i.le = getelementptr inbounds nuw i8, ptr %13, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i117, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.lg = fsub float %i.jg, %i.ke
  %i.lh = fsub float %i.jj, %i.kf
  %i.li = fsub float %i.jm, %i.kg
  %.sroa.0.0.vec.insert.i120 = insertelement <2 x float> poison, float %i.lg, i64 0
  %.sroa.0.4.vec.insert.i121 = insertelement <2 x float> %.sroa.0.0.vec.insert.i120, float %i.lh, i64 1
end_hunk_0
begin_hunk_1_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !164
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float %i.cv, ptr %i.hj, align 8
  %.sroa.1067.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float %i.cy, ptr %.sroa.1067.16..sroa_idx, align 4
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.db, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !164
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float %i.dh, ptr %i.hk, align 8
  %.sroa.1571.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float %i.dk, ptr %.sroa.1571.32..sroa_idx, align 4
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %i.dn, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !164
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %i.er, ptr %i.hl, align 8
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %i.ev, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !164
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 72
  store float %i.ey, ptr %i.hm, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 76
  store float %i.fb, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store float %i.fe, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !164
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 88
  store float %i.fh, ptr %i.hn, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 92
  store float %i.fk, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.fn, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !164
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 104
  store float %i.fq, ptr %i.ho, align 8
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 108
  store float %i.ft, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  store float %i.fw, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !164
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <2 x float> %i.fx, ptr %i.hp, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <2 x float> %i.fy, ptr %.sroa.24.48..sroa_idx, align 8, !tbaa !164
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 200
  store float %i.hb, ptr %i.hq, align 8, !tbaa !185
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.d, i64 260 ; 3 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !187
  store float %i.ht, ptr %i.hr, align 4, !tbaa !188
  %i.hu = load ptr, ptr %i.ga, align 8, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 96
  %i.hw = load ptr, ptr %i.hv, align 8
  invoke void %i.hw(ptr noundef nonnull align 8 dereferenceable(28) %i.ga, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.i unwind label %bb.k

bb.g:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %.pre = load float, ptr %i.hr, align 4, !tbaa !188 ; 3 uses
  %.pre105 = load float, ptr %i.hs, align 4, !tbaa !187
  %i.hy = fcmp uge float %.pre, %.pre105
  br i1 %i.hy, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %.pre, ptr %i.hs, align 4, !tbaa !187
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %i.hx

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.2.ph = phi float [ %.pre, %bb.h ], [ 1.000000e+00, %bb.g ]
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.2 = phi float [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %.2.ph, %.sink.split ]
  ret float %.2

bb.k:                                             ; preds = %bb.f
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #12
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: inlinehint uwtable
define internal void @_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define internal void @_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btTransform, align 4         ; 11 uses
  %5 = alloca %"struct.btConvexCast::CastResult", align 8 ; 8 uses
  %6 = alloca %class.btSphereShape, align 8       ; 11 uses
  %7 = alloca %class.btTriangleShape, align 8     ; 12 uses
  %8 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %9 = alloca %class.btSubsimplexConvexCast, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store float 1.000000e+00, ptr %4, align 4, !tbaa !139
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %5, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr null, ptr %i.g, align 8, !tbaa !189
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 184
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !191
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !188
  store float %i.j, ptr %i.f, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load float, ptr %i.k, align 8, !tbaa !185 ; 2 uses
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %6, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 8, ptr %i.m, align 8, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %i.l, ptr %i.n, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 56
  store float %i.l, ptr %i.o, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV15btTriangleShape, i64 16), ptr %7, align 8, !tbaa !8
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr5.i, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !196
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !196
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !196
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 328
  store i8 0, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = invoke noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(64) %i.v, ptr noundef nonnull align 4 dereferenceable(64) %i.w, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(188) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.y = load float, ptr %i.i, align 4, !tbaa !188
  %i.z = load float, ptr %i.f, align 8, !tbaa !192 ; 2 uses
  %i.aa = fcmp ogt float %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store float %i.z, ptr %i.i, align 4, !tbaa !188
  br label %bb.j

bb.g:                                             ; preds = %bb.a, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %bb.j, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.p

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.d
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.m:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %.pn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn12

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #12
  unreachable
}

declare void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #1

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult9DebugDrawEf(ptr noundef nonnull align 8 dereferenceable(188) %0, float noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD0Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN15btTriangleShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15btTriangleShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !193
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %i.a, align 8, !tbaa !193
  ret float %i.b
end_hunk_1
