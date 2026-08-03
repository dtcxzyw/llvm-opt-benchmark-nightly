inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 250
begin_hunk_0_@_ZN10btSoftBody21interpolateRenderMeshEv:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !345 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !223 ; 2 uses
  %i.bi = load <2 x float>, ptr %i.bf, align 4, !tbaa !223
  %i.bj = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !223
  %i.bo = fmul float %i.bh, %i.bn
  %i.bp = fadd <2 x float> %i.bl, %i.bb           ; 2 uses
  store <2 x float> %i.bp, ptr %i.ag, align 4, !tbaa !223
  %i.bq = fadd float %i.bo, %i.bc                 ; 2 uses
  store float %i.bq, ptr %i.ah, align 4, !tbaa !223
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !345 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !223 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bt, align 4, !tbaa !223
  %i.bx = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !223
  %i.cc = fmul float %i.bv, %i.cb
  %i.cd = fadd <2 x float> %i.bz, %i.bp           ; 2 uses
  store <2 x float> %i.cd, ptr %i.ag, align 4, !tbaa !223
  %i.ce = fadd float %i.cc, %i.bq                 ; 2 uses
  store float %i.ce, ptr %i.ah, align 4, !tbaa !223
  %i.cf = fsub <2 x float> %i.ai, %i.aj           ; 3 uses
  %i.cg = fsub float %i.y, %i.z                   ; 2 uses
  %i.ch = fsub float %i.ad, %i.z                  ; 2 uses
  %i.ci = fsub <2 x float> %i.ak, %i.aj           ; 3 uses
  %i.cj = fneg <2 x float> %i.ci
  %i.ck = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x float> %i.ck, float %i.cg, i64 1
  %i.cm = fmul <2 x float> %i.cl, %i.cj
  %i.cn = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x float> %i.cn, float %i.ch, i64 1
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.co, <2 x float> %i.cm) ; 4 uses
  %i.cq = fneg float %i.ch
  %i.cr = extractelement <2 x float> %i.cf, i64 0
  %i.cs = fmul float %i.cr, %i.cq
  %i.ct = extractelement <2 x float> %i.ci, i64 0
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ct, float %i.cs) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cp, %i.cp
  %i.cv = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cw = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cv)
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.cx)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cy)
  %i.cz = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.cp, %i.db
  %i.dd = fmul float %i.cu, %i.cz
  %i.de = load ptr, ptr %i.m, align 8, !tbaa !131
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv89
  %i.dg = load float, ptr %i.df, align 4, !tbaa !223 ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.dc, %i.di
  %i.dk = fmul float %i.dd, %i.dg
  %i.dl = fadd <2 x float> %i.dj, %i.cd
  store <2 x float> %i.dl, ptr %i.ag, align 4, !tbaa !223
  %i.dm = fadd float %i.dk, %i.ce
  store float %i.dm, ptr %i.ah, align 4, !tbaa !223
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.dn = load i32, ptr %i.d, align 4, !tbaa !145
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next90, %i.do
  br i1 %i.dp, label %bb.b, label %.loopexit, !llvm.loop !1188

bb.c:                                             ; preds = %.lr.ph, %.split73
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.split73 ] ; 4 uses
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.dq, i64 %indvars.iv ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !212
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %indvars.iv ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !1189
  %.not = icmp eq i32 %i.dv, 0
  br i1 %.not, label %.split73, label %.split

.split:                                           ; preds = %bb.c
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !298 ; 4 uses
  %i.dz = load ptr, ptr %i.i, align 8, !tbaa !208
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %indvars.iv ; 4 uses
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !345 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load float, ptr %i.ea, align 4, !tbaa !223 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !223
  %i.eg = fmul float %i.ed, %i.ef
  %i.eh = fadd float %i.eg, 0.000000e+00          ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !345 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !345 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.eu = load <2 x float>, ptr %i.ec, align 4, !tbaa !223
  %i.ev = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.ew, %i.eu
  %i.ey = fadd <2 x float> %i.ex, zeroinitializer ; 2 uses
  store <2 x float> %i.ey, ptr %i.dr, align 4, !tbaa !223
  store float %i.eh, ptr %i.dw, align 4, !tbaa !223
  %i.ez = load float, ptr %i.el, align 4, !tbaa !223 ; 2 uses
  %i.fa = load <2 x float>, ptr %i.ek, align 4, !tbaa !223
  %i.fb = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.fc, %i.fa
  %i.fe = load float, ptr %i.em, align 4, !tbaa !223
  %i.ff = fmul float %i.ez, %i.fe
  %i.fg = fadd <2 x float> %i.fd, %i.ey           ; 2 uses
  store <2 x float> %i.fg, ptr %i.dr, align 4, !tbaa !223
  %i.fh = fadd float %i.ff, %i.eh                 ; 2 uses
  store float %i.fh, ptr %i.dw, align 4, !tbaa !223
  %i.fi = load float, ptr %i.eq, align 4, !tbaa !223 ; 2 uses
  %i.fj = load <2 x float>, ptr %i.ep, align 4, !tbaa !223
  %i.fk = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.fj
  %i.fn = load float, ptr %i.er, align 4, !tbaa !223
  %i.fo = fmul float %i.fi, %i.fn
  %i.fp = fadd <2 x float> %i.fm, %i.fg           ; 2 uses
  store <2 x float> %i.fp, ptr %i.dr, align 4, !tbaa !223
  %i.fq = fadd float %i.fo, %i.fh                 ; 2 uses
  store float %i.fq, ptr %i.dw, align 4, !tbaa !223
  %i.fr = load ptr, ptr %i.es, align 8, !tbaa !345 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load float, ptr %i.et, align 4, !tbaa !223 ; 2 uses
  %i.fu = load <2 x float>, ptr %i.fs, align 4, !tbaa !223
  %i.fv = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fw, %i.fu
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !223
  %i.ga = fmul float %i.ft, %i.fz
  %i.gb = fadd <2 x float> %i.fx, %i.fp
  store <2 x float> %i.gb, ptr %i.dr, align 4, !tbaa !223
  %i.gc = fadd float %i.ga, %i.fq
  store float %i.gc, ptr %i.dw, align 4, !tbaa !223
  br label %.split73

.split73:                                         ; preds = %.split, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gd = load i32, ptr %i.d, align 4, !tbaa !145
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next, %i.ge
  br i1 %i.gf, label %bb.c, label %.loopexit, !llvm.loop !1190

.loopexit:                                        ; preds = %.split73, %bb.b, %.preheader70, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody14PSolve_AnchorsEPS_ff(ptr nofree noundef readonly captures(none) %0, float noundef %1, float %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.5)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load float, ptr %i.a, align 8, !tbaa !1191
  %i.c = fmul float %1, %i.b                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load float, ptr %i.d, align 8, !tbaa !586 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.g = load i32, ptr %i.f, align 4, !tbaa !169  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !168
  %i.l = getelementptr inbounds nuw [104 x i8], ptr %i.k, i64 %indvars.iv ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !950  ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !361  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.t = load float, ptr %i.q, align 8, !tbaa !223 ; 3 uses
  %i.u = load float, ptr %i.o, align 4, !tbaa !223
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !223 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !223
  %5 = fmul float %i.w, %i.y
  %6 = call float @llvm.fmuladd.f32(float %i.t, float %i.u, float %5)
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aa = load float, ptr %i.z, align 8, !tbaa !223 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !223
  %7 = call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.ac, float %6)
  %i.ad = load float, ptr %i.r, align 4, !tbaa !223
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.af = load float, ptr %i.ae, align 4, !tbaa !223
  %8 = fmul float %i.w, %i.af
  %9 = call float @llvm.fmuladd.f32(float %i.t, float %i.ad, float %8)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %10 = load float, ptr %i.ag, align 4, !tbaa !223
  %11 = call noundef float @llvm.fmuladd.f32(float %i.aa, float %10, float %9)
  %i.ah = load float, ptr %i.s, align 4, !tbaa !223
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !223
  %i.ak = fmul float %i.w, %i.aj
  %i.al = call float @llvm.fmuladd.f32(float %i.t, float %i.ah, float %i.ak)
  %12 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %13 = load float, ptr %12, align 4, !tbaa !223
  %i.am = call noundef float @llvm.fmuladd.f32(float %i.aa, float %13, float %i.al)
  %14 = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.an = load float, ptr %14, align 4, !tbaa !223
  %15 = fadd float %7, %i.an
  %16 = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %17 = load float, ptr %16, align 4, !tbaa !223
  %i.ao = fadd float %11, %17
  %18 = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ap = load float, ptr %18, align 4, !tbaa !223
  %19 = fadd float %i.am, %i.ap
  %20 = getelementptr inbounds nuw i8, ptr %i.l, i64 84 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.n, i64 420
  %22 = getelementptr inbounds nuw i8, ptr %i.n, i64 436
  %23 = getelementptr inbounds nuw i8, ptr %i.n, i64 440
  %24 = load float, ptr %23, align 4, !tbaa !223  ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %26 = load float, ptr %25, align 4, !tbaa !223  ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.n, i64 444
  %28 = load float, ptr %27, align 4, !tbaa !223  ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %30 = load float, ptr %29, align 8, !tbaa !223  ; 2 uses
  %31 = fneg float %30
  %32 = fmul float %28, %31
  %33 = call float @llvm.fmuladd.f32(float %24, float %26, float %32)
  %34 = load float, ptr %20, align 4, !tbaa !223  ; 2 uses
  %35 = load float, ptr %22, align 4, !tbaa !223  ; 2 uses
  %36 = fneg float %26
  %37 = fmul float %35, %36
  %38 = call float @llvm.fmuladd.f32(float %28, float %34, float %37)
  %39 = fneg float %34
  %40 = fmul float %24, %39
  %41 = call float @llvm.fmuladd.f32(float %35, float %30, float %40)
  %42 = load float, ptr %21, align 4, !tbaa !223
  %i.aq = fadd float %33, %42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.as = load float, ptr %i.ar, align 4, !tbaa !223
  %i.at = fadd float %i.as, %38
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 428
  %i.av = load float, ptr %i.au, align 4, !tbaa !223
  %i.aw = fadd float %41, %i.av
  %i.ax = fmul float %i.e, %i.aq
  %i.ay = fmul float %i.e, %i.at
  %i.az = fmul float %i.e, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !223
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.be = load float, ptr %i.bd, align 4, !tbaa !223
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !223 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !223
  %i.bj = fsub float %i.bg, %i.bi
  %i.bk = fsub float %i.az, %i.bj
  %i.bl = fsub float %19, %i.bg
  %i.bm = fmul float %i.c, %i.bl
  %i.bn = fadd float %i.bm, %i.bk                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !223
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !223
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !223
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !223
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.bz = load float, ptr %i.by, align 4, !tbaa !223
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !223 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !223 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.ba, align 4, !tbaa !223 ; 3 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.cg = fsub float %i.cf, %i.bc
  %i.ch = extractelement <2 x float> %i.ce, i64 1 ; 2 uses
  %i.ci = fsub float %i.ch, %i.be
  %i.cj = fsub float %i.ax, %i.cg
  %i.ck = fsub float %i.ay, %i.ci
  %i.cl = fsub float %15, %i.cf
  %i.cm = fsub float %i.ao, %i.ch
  %i.cn = fmul float %i.c, %i.cl
  %i.co = fmul float %i.c, %i.cm
  %i.cp = fadd float %i.cn, %i.cj                 ; 2 uses
  %i.cq = fadd float %i.co, %i.ck                 ; 2 uses
  %i.cr = load <2 x float>, ptr %i.bo, align 4, !tbaa !223 ; 2 uses
  %i.cs = load <2 x float>, ptr %i.br, align 4, !tbaa !223 ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 1, i32 3>
  %i.cw = fmul <2 x float> %i.cu, %i.cv
  %i.cx = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.cy = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.cw)
  %i.db = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.bt, i64 1
  %i.dd = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.de, <2 x float> %i.da)
  %i.dg = fmul float %i.cq, %i.bx
  %i.dh = call float @llvm.fmuladd.f32(float %i.bv, float %i.cp, float %i.dg)
  %i.di = call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.bn, float %i.dh)
  %i.dj = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.df, %i.dk           ; 2 uses
  %i.dm = fmul float %i.cb, %i.di                 ; 2 uses
  %i.dn = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.dl, %i.do
  %i.dq = fmul float %i.cd, %i.dm
  %i.dr = fadd <2 x float> %i.ce, %i.dp
  store <2 x float> %i.dr, ptr %i.ba, align 4, !tbaa !223
  %i.ds = fadd float %i.bg, %i.dq
  store float %i.ds, ptr %i.bf, align 4, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.dt = fneg <2 x float> %i.dl
  %i.du = fneg float %i.dm
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.du, i64 0
  store <2 x float> %i.dt, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.j, align 8
  invoke void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1192

bb.d:                                             ; preds = %bb.b
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %i.dv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.b = load float, ptr %i.a, align 4, !tbaa !409 ; 3 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !223
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = load float, ptr %i.h, align 8, !tbaa !223 ; 2 uses
  %i.j = fmul float %i.g, %i.i
  %i.k = fmul float %i.b, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !223
  %i.n = load <2 x float>, ptr %i.d, align 8, !tbaa !223 ; 3 uses
  %i.o = fmul <2 x float> %i.m, %i.n
  %i.p = insertelement <2 x float> poison, float %i.b, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.q, %i.o
  %i.s = load <2 x float>, ptr %i.l, align 4, !tbaa !223
  %i.t = fadd <2 x float> %i.r, %i.s
  store <2 x float> %i.t, ptr %i.l, align 4, !tbaa !223
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !223
  %i.w = fadd float %i.k, %i.v
  store float %i.w, ptr %i.u, align 4, !tbaa !223
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.y = load float, ptr %1, align 4, !tbaa !223
  %i.z = extractelement <2 x float> %i.n, i64 0
  %i.aa = fmul float %i.z, %i.y                   ; 2 uses
  %i.ab = load float, ptr %i.e, align 4, !tbaa !223
  %i.ac = extractelement <2 x float> %i.n, i64 1
  %i.ad = fmul float %i.ab, %i.ac                 ; 2 uses
  %i.ae = load float, ptr %i.f, align 4, !tbaa !223
  %i.af = fmul float %i.ae, %i.i                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !223 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !223 ; 2 uses
  %i.ak = fneg float %i.ad
  %i.al = fmul float %i.aj, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.af, float %i.al) ; 2 uses
  %i.an = load float, ptr %2, align 4, !tbaa !223 ; 2 uses
  %i.ao = fneg float %i.af
  %i.ap = fmul float %i.an, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aa, float %i.ap) ; 2 uses
  %i.ar = fneg float %i.aa
  %i.as = fmul float %i.ah, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ad, float %i.as) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.aw = load float, ptr %i.av, align 4, !tbaa !223
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.az = load float, ptr %i.ay, align 4, !tbaa !223
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !223
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !223
  %i.be = fmul float %i.aq, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.am, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !223
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.at, float %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !223
  %i.bl = fmul float %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.au, align 4, !tbaa !223 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.ax, align 4, !tbaa !223 ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.bq = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bp, %i.br
  %i.bt = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bu = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.bs)
  %i.bx = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.az, i64 1
  %i.bz = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bw)
  %i.cc = load <2 x float>, ptr %i.x, align 8, !tbaa !223
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  %i.ce = load <2 x float>, ptr %i.bm, align 4, !tbaa !223
  %i.cf = fadd <2 x float> %i.cd, %i.ce
  store <2 x float> %i.cf, ptr %i.bm, align 4, !tbaa !223
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !223
  %i.ci = fadd float %i.bl, %i.ch
  store float %i.ci, ptr %i.cg, align 4, !tbaa !223
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody16PSolve_RContactsEPS_ff(ptr nofree noundef readonly captures(none) %0, float noundef %1, float %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btVector3, align 4           ; 4 uses
  %4 = alloca %class.CProfileSample, align 1      ; 6 uses
  %5 = alloca %struct.btMultiBodyJacobianData, align 8 ; 32 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load float, ptr %i.a, align 8, !tbaa !586 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !228  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store i8 1, ptr %i.i, align 8, !tbaa !130
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr null, ptr %i.j, align 8, !tbaa !131
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  store i32 0, ptr %i.k, align 4, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !133
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  store i8 1, ptr %i.m, align 8, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  store ptr null, ptr %i.n, align 8, !tbaa !131
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 4 uses
  store i32 0, ptr %i.o, align 4, !tbaa !132
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !133
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i8 1, ptr %i.q, align 8, !tbaa !130
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr null, ptr %i.r, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 0, ptr %i.s, align 4, !tbaa !132
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 0, ptr %i.t, align 8, !tbaa !133
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i8 1, ptr %i.u, align 8, !tbaa !130
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 112
  store ptr null, ptr %i.v, align 8, !tbaa !131
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 100
  store i32 0, ptr %i.w, align 4, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i32 0, ptr %i.x, align 8, !tbaa !133
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i8 1, ptr %i.y, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 144
  store ptr null, ptr %i.z, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 132
  store i32 0, ptr %i.aa, align 4, !tbaa !128
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i32 0, ptr %i.ab, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i8 1, ptr %i.ac, align 8, !tbaa !402
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr null, ptr %i.ad, align 8, !tbaa !406
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 164
  store i32 0, ptr %i.ae, align 4, !tbaa !407
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i32 0, ptr %i.af, align 8, !tbaa !408
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1252
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !177 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_0
