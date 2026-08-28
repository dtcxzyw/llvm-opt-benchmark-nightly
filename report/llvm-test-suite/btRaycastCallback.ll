Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btRaycastCallback?download=true
inline.NumInlined: 110
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK15btTriangleShape8isInsideERK9btVector3f:bb.a
  %i.ac = fmul <2 x float> %i.p, %i.aa
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.w, <2 x float> %i.ab) ; 4 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.x, <2 x float> %i.ac) ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ad, %i.ad
  %i.af = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ag = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.af)
  %i.ai = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ah)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = fmul <2 x float> %i.ad, %i.am           ; 6 uses
  %i.ao = fmul <2 x float> %i.ae, %i.am           ; 3 uses
  %i.ap = load <2 x float>, ptr %1, align 4, !tbaa !18 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> %i.j, <2 x i32> <i32 1, i32 3>
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.au = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.au, <2 x float> %i.as)
  %i.aw = shufflevector <2 x float> %i.i, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.ax = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ax, <2 x float> %i.av) ; 2 uses
  %shift = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fsub <2 x float> %i.ay, %shift
  %i.az = extractelement <2 x float> %foldExtExtBinop54, i64 0 ; 2 uses
  %i.ba = fneg float %2                           ; 4 uses
  %i.bb = fcmp ult float %i.az, %i.ba
  %i.bc = fcmp ugt float %i.az, %2
  %or.cond = or i1 %i.bb, %i.bc
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bf = extractelement <2 x float> %i.an, i64 1
  %i.bg = fneg float %i.bf                        ; 3 uses
  %i.bh = fneg <2 x float> %i.ao                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bi = load ptr, ptr %0, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 160
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.bl = load float, ptr %i.be, align 8, !tbaa !18
  %i.bm = load float, ptr %i.g, align 4, !tbaa !18
  %i.bn = load <2 x float>, ptr %3, align 8, !tbaa !18 ; 4 uses
  %i.bo = extractelement <2 x float> %i.ao, i64 0 ; 3 uses
  %i.bp = load <2 x float>, ptr %4, align 8, !tbaa !18 ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bd, align 4, !tbaa !18 ; 3 uses
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x float> %i.br, float %i.bl, i64 0
  %i.bt = shufflevector <2 x float> %i.bq, <2 x float> %i.bn, <2 x i32> <i32 1, i32 2>
  %i.bu = fsub <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  %i.bw = fmul float %i.bv, %i.bg
  %i.bx = shufflevector <2 x float> %i.bn, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.by = fsub <2 x float> %i.bp, %i.bx           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 1
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float %i.bo, float %i.bw) ; 3 uses
  %i.cb = fmul <2 x float> %i.by, %i.bh
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.an, <2 x float> %i.cb) ; 4 uses
  %foldExtExtBinop56 = fmul <2 x float> %i.cc, %i.cc
  %i.cd = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.ce = call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.cd)
  %i.cf = extractelement <2 x float> %i.cc, i64 1 ; 2 uses
  %i.cg = call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.ce)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.cg)
  %i.ch = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ci = fmul float %i.ca, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %i.cc, %i.ck           ; 2 uses
  %i.cm = load <2 x float>, ptr %1, align 4, !tbaa !18 ; 2 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.co = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = shufflevector <2 x float> %i.cm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.cr = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cs, <2 x float> %i.cp)
  %i.cu = insertelement <2 x float> %i.bq, float %i.bm, i64 0
  %i.cv = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cv, <2 x float> %i.ct) ; 2 uses
  %shift58 = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fsub <2 x float> %i.cw, %shift58
  %i.cx = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.cy = fcmp uge float %i.cx, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.cy, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.cz = load ptr, ptr %0, align 8, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 160
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.dc = load float, ptr %i.be, align 8, !tbaa !18
  %i.dd = load float, ptr %i.g, align 4, !tbaa !18
  %i.de = load <2 x float>, ptr %3, align 8, !tbaa !18 ; 4 uses
  %i.df = load <2 x float>, ptr %4, align 8, !tbaa !18 ; 2 uses
  %i.dg = load <2 x float>, ptr %i.bd, align 4, !tbaa !18 ; 3 uses
  %i.dh = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.di = insertelement <2 x float> %i.dh, float %i.dc, i64 0
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> %i.de, <2 x i32> <i32 1, i32 2>
  %i.dk = fsub <2 x float> %i.di, %i.dj           ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = fmul float %i.dl, %i.bg
  %i.dn = shufflevector <2 x float> %i.de, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2>
  %i.do = fsub <2 x float> %i.df, %i.dn           ; 2 uses
  %i.dp = extractelement <2 x float> %i.do, i64 1
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float %i.bo, float %i.dm) ; 3 uses
  %i.dr = fmul <2 x float> %i.do, %i.bh
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.an, <2 x float> %i.dr) ; 4 uses
  %foldExtExtBinop61 = fmul <2 x float> %i.ds, %i.ds
  %i.dt = extractelement <2 x float> %foldExtExtBinop61, i64 0
  %i.du = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dt)
  %i.dv = extractelement <2 x float> %i.ds, i64 1 ; 2 uses
  %i.dw = call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.du)
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.dw)
  %i.dx = fdiv float 1.000000e+00, %sqrt.i.i.1    ; 2 uses
  %i.dy = fmul float %i.dq, %i.dx
  %i.dz = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.ds, %i.ea           ; 2 uses
  %i.ec = load <2 x float>, ptr %1, align 4, !tbaa !18 ; 2 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> %i.de, <2 x i32> <i32 1, i32 3>
  %i.ee = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.ed, %i.ee
  %i.eg = shufflevector <2 x float> %i.ec, <2 x float> %i.de, <2 x i32> <i32 0, i32 2>
  %i.eh = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.ei, <2 x float> %i.ef)
  %i.ek = insertelement <2 x float> %i.dg, float %i.dd, i64 0
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.ej) ; 2 uses
  %shift63 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop64 = fsub <2 x float> %i.em, %shift63
  %i.en = extractelement <2 x float> %foldExtExtBinop64, i64 0
  %i.eo = fcmp uge float %i.en, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.eo, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ep = load ptr, ptr %0, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 160
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.es = load float, ptr %i.be, align 8, !tbaa !18
  %i.et = load float, ptr %i.g, align 4, !tbaa !18
  %i.eu = load <2 x float>, ptr %3, align 8, !tbaa !18 ; 4 uses
  %i.ev = load <2 x float>, ptr %4, align 8, !tbaa !18 ; 2 uses
  %i.ew = load <2 x float>, ptr %i.bd, align 4, !tbaa !18 ; 3 uses
  %i.ex = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ey = insertelement <2 x float> %i.ex, float %i.es, i64 0
  %i.ez = shufflevector <2 x float> %i.ew, <2 x float> %i.eu, <2 x i32> <i32 1, i32 2>
  %i.fa = fsub <2 x float> %i.ey, %i.ez           ; 2 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0
  %i.fc = fmul float %i.fb, %i.bg
  %i.fd = shufflevector <2 x float> %i.eu, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.fe = fsub <2 x float> %i.ev, %i.fd           ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 1
  %i.fg = call float @llvm.fmuladd.f32(float %i.ff, float %i.bo, float %i.fc) ; 3 uses
  %i.fh = fmul <2 x float> %i.fe, %i.bh
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.an, <2 x float> %i.fh) ; 4 uses
  %foldExtExtBinop66 = fmul <2 x float> %i.fi, %i.fi
  %i.fj = extractelement <2 x float> %foldExtExtBinop66, i64 0
  %i.fk = call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fj)
  %i.fl = extractelement <2 x float> %i.fi, i64 1 ; 2 uses
  %i.fm = call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fk)
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %i.fm)
  %i.fn = fdiv float 1.000000e+00, %sqrt.i.i.2    ; 2 uses
  %i.fo = fmul float %i.fg, %i.fn
  %i.fp = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fi, %i.fq           ; 2 uses
  %i.fs = load <2 x float>, ptr %1, align 4, !tbaa !18 ; 2 uses
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> %i.eu, <2 x i32> <i32 1, i32 3>
  %i.fu = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.ft, %i.fu
  %i.fw = shufflevector <2 x float> %i.fs, <2 x float> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.fx = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fy, <2 x float> %i.fv)
  %i.ga = insertelement <2 x float> %i.ew, float %i.et, i64 0
  %i.gb = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.fz) ; 2 uses
  %shift68 = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fsub <2 x float> %i.gc, %shift68
  %i.gd = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.ge = fcmp uge float %i.gd, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.ge, label %5, label %.loopexit

5:                                                ; preds = %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.c, %5, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ true, %5 ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load float, ptr %i.b, align 8, !tbaa !18
  %i.d = load float, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load float, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !18 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !18 ; 3 uses
  %i.l = fsub <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.c, i64 1
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.d, i64 1 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = load <2 x float>, ptr %i.i, align 4, !tbaa !18 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.h, i64 1
  %i.u = fsub <2 x float> %i.t, %i.p              ; 2 uses
  %i.v = fsub <2 x float> %i.r, %i.k              ; 2 uses
  %i.w = fneg <2 x float> %i.v
  %i.x = fmul <2 x float> %i.q, %i.w
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.u, <2 x float> %i.x) ; 4 uses
  %i.z = extractelement <2 x float> %i.u, i64 1
  %i.aa = fneg float %i.z
  %i.ab = extractelement <2 x float> %i.l, i64 0
  %i.ac = fmul float %i.ab, %i.aa
  %i.ad = extractelement <2 x float> %i.q, i64 1
  %i.ae = extractelement <2 x float> %i.v, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float %i.ac) ; 4 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !11
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.y
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ah = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.y, %i.am
  store <2 x float> %i.an, ptr %2, align 4, !tbaa !18
  %i.ao = fmul float %i.af, %i.ak
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !10
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult9DebugDrawEf(ptr noundef nonnull align 8 dereferenceable(188) %0, float noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD0Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{i64 0, i64 16, !11}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !5, i64 40}
!13 = !{!"_ZTS25btTriangleRaycastCallback", !14, i64 0, !15, i64 8, !15, i64 24, !5, i64 40, !16, i64 44}
!14 = !{!"_ZTS18btTriangleCallback"}
!15 = !{!"_ZTS9btVector3", !6, i64 0}
!16 = !{!"float", !6, i64 0}
!17 = !{!13, !16, i64 44}
!18 = !{!16, !16, i64 0}
!19 = !{!20, !21, i64 8}
!20 = !{!"_ZTS28btTriangleConvexcastCallback", !14, i64 0, !21, i64 8, !23, i64 16, !23, i64 80, !23, i64 144, !16, i64 208, !16, i64 212}
!21 = !{!"p1 _ZTS13btConvexShape", !22, i64 0}
!22 = !{!"any pointer", !6, i64 0}
!23 = !{!"_ZTS11btTransform", !24, i64 0, !15, i64 48}
!24 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!25 = !{!20, !16, i64 208}
!26 = !{!20, !16, i64 212}
!27 = !{!28, !5, i64 8}
!28 = !{!"_ZTS16btCollisionShape", !5, i64 8, !22, i64 16}
!29 = !{!30, !16, i64 56}
!30 = !{!"_ZTS21btConvexInternalShape", !31, i64 0, !15, i64 24, !15, i64 40, !16, i64 56, !16, i64 60}
!31 = !{!"_ZTS13btConvexShape", !28, i64 0}
!32 = !{!33, !34, i64 176}
!33 = !{!"_ZTSN12btConvexCast10CastResultE", !23, i64 8, !23, i64 72, !15, i64 136, !15, i64 152, !16, i64 168, !34, i64 176, !16, i64 184}
!34 = !{!"p1 _ZTS12btIDebugDraw", !22, i64 0}
!35 = !{!33, !16, i64 184}
!36 = !{!33, !16, i64 168}
end_hunk_0
