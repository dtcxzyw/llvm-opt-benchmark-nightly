Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/SphereTriangleDetector?download=true
inline.NumInlined: 209
inline.NumDeleted: 41
begin_hunk_0_@_ZN22SphereTriangleDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb:bb.a
  %i.cg = shufflevector <2 x float> %i.bb, <2 x float> %i.bq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ch = insertelement <4 x float> %i.cg, float 1.000000e+00, i64 3 ; 2 uses
  %i.ci = fmul <4 x float> %i.cf, %i.ch
  %i.cj = shufflevector <4 x float> %i.bh, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ck = shufflevector <2 x float> %i.ba, <2 x float> %i.bs, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float -0.000000e+00, i64 3 ; 2 uses
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.cl, <4 x float> %i.ci)
  %i.cn = shufflevector <4 x float> %i.bl, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.co = shufflevector <2 x float> %i.bc, <2 x float> %i.bu, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float -0.000000e+00, i64 3 ; 2 uses
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.cp, <4 x float> %i.cm)
  store <4 x float> %i.ce, ptr %7, align 16, !alias.scope !20
  store <4 x float> %i.cq, ptr %i.bp, align 16, !alias.scope !20
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cs = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ai, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.br, i64 2
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cv = insertelement <4 x float> %i.ch, float %i.ai, i64 2
  %i.cw = fmul <4 x float> %i.cu, %i.cv
  %i.cx = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ag, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cz = insertelement <4 x float> %i.cl, float %i.bt, i64 2
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.cz, <4 x float> %i.cw)
  %i.db = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ak, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = insertelement <4 x float> %i.cp, float %i.bv, i64 2
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.dd, <4 x float> %i.da)
  store <4 x float> %i.de, ptr %i.cr, align 16, !alias.scope !20
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store <2 x float> %i.aw, ptr %i.df, align 16, !alias.scope !20
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26, !alias.scope !20
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !18
  %i.di = call noundef zeroext i1 @_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.df, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, float noundef %i.dh)
  br i1 %i.di, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !19 ; 2 uses
  %i.dl = load float, ptr %i.u, align 8, !tbaa !19
  %i.dm = load float, ptr %i.ae, align 4, !tbaa !19
  %i.dn = load float, ptr %i.aj, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.do = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.s, align 8, !tbaa !19 ; 2 uses
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> %i.dp, <2 x i32> <i32 1, i32 3>
  %i.dr = shufflevector <2 x float> %i.do, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.dv = load <4 x float>, ptr %5, align 16      ; 2 uses
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dx = load float, ptr %i.p, align 8, !tbaa !19
  %i.dy = load float, ptr %i.b, align 4, !tbaa !19 ; 3 uses
  %i.dz = load <2 x float>, ptr %6, align 8, !tbaa !19 ; 4 uses
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = fmul <2 x float> %i.ea, %i.dq
  %i.ec = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.ec, <2 x float> %i.eb)
  %i.ee = load <2 x float>, ptr %5, align 16, !tbaa !19 ; 4 uses
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> %i.dz, <2 x i32> <i32 1, i32 3>
  %i.eg = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x float> %i.ef, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x float> %i.ee, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.ei)
  %i.en = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = insertelement <2 x float> %i.dw, float %i.dk, i64 1
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.ep, <2 x float> %i.em) ; 3 uses
  %i.er = fneg <2 x float> %i.eq
  %.sroa.3.12.vec.insert.i13 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.er, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.3.12.vec.insert.i13, ptr %i.du, align 8
  %i.es = load <2 x float>, ptr %i.ac, align 4, !tbaa !19 ; 2 uses
  %i.et = load <2 x float>, ptr %i.ad, align 4, !tbaa !19 ; 2 uses
  %i.eu = shufflevector <2 x float> %i.es, <2 x float> %i.et, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.dt, <2 x float> %i.ed) ; 2 uses
  %i.ew = fneg <2 x float> %i.ev
  store <2 x float> %i.ew, ptr %8, align 8
  %i.ex = shufflevector <2 x float> %i.es, <2 x float> %i.et, <2 x i32> <i32 0, i32 2>
  %i.ey = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ez = fmul <2 x float> %i.ex, %i.ey
  %i.fa = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.fa, <2 x float> %i.ez)
  %i.fc = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.fc, <2 x float> %i.fb)
  %i.fe = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.ff = fadd <2 x float> %i.fe, %i.fd
  %i.fg = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x float> %i.ev, %i.fh
  %i.fj = fadd <2 x float> %i.ff, %i.fi
  %i.fk = extractelement <2 x float> %i.eq, i64 0
  %i.fl = fadd float %i.fk, %i.dx
  %i.fm = extractelement <2 x float> %i.eq, i64 1
  %i.fn = fmul float %i.fm, %i.dy
  %i.fo = fadd float %i.fl, %i.fn
  %.sroa.3.12.vec.insert.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fo, i64 0
  store <2 x float> %i.fj, ptr %9, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23, ptr %i.fp, align 8
  %i.fq = load ptr, ptr %2, align 8, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.ft = load float, ptr %6, align 8, !tbaa !19  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !19 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fx = load float, ptr %i.fw, align 8, !tbaa !19 ; 2 uses
  %i.fy = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.fz = load <2 x float>, ptr %i.s, align 8, !tbaa !19 ; 2 uses
  %i.ga = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = shufflevector <2 x float> %i.fy, <2 x float> %i.fz, <2 x i32> <i32 1, i32 3>
  %i.gd = fmul <2 x float> %i.gb, %i.gc
  %i.ge = shufflevector <2 x float> %i.fy, <2 x float> %i.fz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gf = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gg, <2 x float> %i.gd)
  %i.gi = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = load float, ptr %i.u, align 8, !tbaa !19 ; 2 uses
  %i.gl = load float, ptr %i.ae, align 4, !tbaa !19 ; 2 uses
  %i.gm = fmul float %i.fv, %i.gl
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.ft, float %i.gm)
  %i.go = load float, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.gp = tail call noundef float @llvm.fmuladd.f32(float %i.go, float %i.fx, float %i.gn)
  %.sroa.3.12.vec.insert.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gp, i64 0
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i28, ptr %i.gq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.gr = load float, ptr %5, align 16, !tbaa !19 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !19 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !19 ; 2 uses
  %i.gw = load <2 x float>, ptr %i.ac, align 4, !tbaa !19 ; 2 uses
  %i.gx = load <2 x float>, ptr %i.ad, align 4, !tbaa !19 ; 2 uses
  %i.gy = shufflevector <2 x float> %i.gw, <2 x float> %i.gx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.gj, <2 x float> %i.gh)
  store <2 x float> %i.gz, ptr %10, align 8
  %i.ha = shufflevector <2 x float> %i.gw, <2 x float> %i.gx, <2 x i32> <i32 0, i32 2>
  %i.hb = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = fmul <2 x float> %i.ha, %i.hc
  %i.he = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.hf, <2 x float> %i.hd)
  %i.hh = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.hi, <2 x float> %i.hg)
  %i.hk = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.hl = fadd <2 x float> %i.hk, %i.hj
  %i.hm = fmul float %i.gl, %i.gt
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gr, float %i.hm)
  %i.ho = tail call noundef float @llvm.fmuladd.f32(float %i.go, float %i.gv, float %i.hn)
  %i.hp = load float, ptr %i.p, align 8, !tbaa !19
  %i.hq = fadd float %i.ho, %i.hp
  %.sroa.3.12.vec.insert.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hq, i64 0
  store <2 x float> %i.hl, ptr %11, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i33, ptr %i.hr, align 8
  %i.hs = load float, ptr %i.b, align 4, !tbaa !19
  %i.ht = load ptr, ptr %2, align 8, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.hs)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, float noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %class.btVector3, align 8           ; 7 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load float, ptr %i.h, align 4, !tbaa !19
  %i.j = fmul float %i.g, %i.i                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = load float, ptr %i.k, align 4, !tbaa !19
  %i.m = load float, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.q = load float, ptr %i.p, align 4, !tbaa !19
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.t = load <2 x float>, ptr %i.n, align 4, !tbaa !19 ; 2 uses
  %i.u = load <2 x float>, ptr %i.o, align 4, !tbaa !19 ; 5 uses
  %i.v = fsub <2 x float> %i.t, %i.u              ; 2 uses
  %i.w = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %i.l, i64 1
  %i.y = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %i.m, i64 1 ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 2 uses
  %i.ab = load <2 x float>, ptr %10, align 4, !tbaa !19 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %i.q, i64 1
  %i.ae = fsub <2 x float> %i.ad, %i.z            ; 2 uses
  %i.af = fsub <2 x float> %i.ab, %i.u            ; 2 uses
  %i.ag = fneg <2 x float> %i.af
  %i.ah = fmul <2 x float> %i.aa, %i.ag
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.ae, <2 x float> %i.ah) ; 4 uses
  %i.aj = extractelement <2 x float> %i.ae, i64 1
  %i.ak = fneg float %i.aj
  %i.al = extractelement <2 x float> %i.v, i64 0
  %i.am = fmul float %i.al, %i.ak
  %i.an = extractelement <2 x float> %i.aa, i64 1
  %i.ao = extractelement <2 x float> %i.af, i64 0
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.am) ; 4 uses
  %.sroa.3.12.vec.insert.i59 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i59, ptr %i.r, align 8
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ai
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ar = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.aq)
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.as)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.at)
  %i.au = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.ai, %i.aw           ; 4 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 1 ; 3 uses
  %i.az = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  store float %i.az, ptr %7, align 8, !tbaa !19
  store float %i.ay, ptr %i.s, align 4, !tbaa !19
  %i.ba = fmul float %i.ap, %i.au                 ; 4 uses
  store float %i.ba, ptr %i.r, align 8, !tbaa !19
  %i.bb = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 4 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = fsub float %i.bc, %i.m
  %shift = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop136 = fsub <2 x float> %shift, %i.u
  %i.be = extractelement <2 x float> %foldExtExtBinop136, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !19 ; 3 uses
  %i.bh = extractelement <2 x float> %i.u, i64 1
  %i.bi = fsub float %i.bg, %i.bh
  %i.bj = fmul float %i.ay, %i.be
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.az, float %i.bj)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.ba, float %i.bk) ; 3 uses
  %i.bm = fcmp olt float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bn = fneg float %i.bl
  %i.bo = fneg <2 x float> %i.ax                  ; 4 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 1
  %i.bq = extractelement <2 x float> %i.bo, i64 0
  store <2 x float> %i.bo, ptr %7, align 8, !tbaa !19
  %i.br = fneg float %i.ba                        ; 2 uses
  store float %i.br, ptr %i.r, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bs = phi float [ %i.br, %bb.b ], [ %i.ba, %bb.a ] ; 2 uses
  %i.bt = phi float [ %i.bp, %bb.b ], [ %i.ay, %bb.a ]
  %i.bu = phi float [ %i.bq, %bb.b ], [ %i.az, %bb.a ]
  %.0116 = phi float [ %i.bn, %bb.b ], [ %i.bl, %bb.a ] ; 4 uses
  %i.bv = phi <2 x float> [ %i.bo, %bb.b ], [ %i.ax, %bb.a ]
  %i.bw = fadd float %6, %i.j                     ; 3 uses
  %i.bx = fcmp olt float %.0116, %i.j
  %i.by = fmul float %i.bt, 0.000000e+00
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bu, float 0.000000e+00, float %i.by)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %i.bz)
  %i.cb = fcmp ult float %i.ca, 0.000000e+00
  %or.cond.not119 = or i1 %i.bx, %i.cb
  %i.cc = fcmp olt float %.0116, %i.bw
  %or.cond117 = and i1 %i.cc, %or.cond.not119
  br i1 %or.cond117, label %bb.d, label %.critedge51

bb.d:                                             ; preds = %bb.c
  %i.cd = call noundef zeroext i1 @_ZN22SphereTriangleDetector15pointInTriangleEPK9btVector3RS1_PS0_(ptr nonnull readnone align 8 poison, ptr noundef nonnull readonly %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %7, ptr noundef nonnull readonly align 4 dereferenceable(16) %1)
  br i1 %i.cd, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d
  %i.ce = insertelement <2 x float> poison, float %.0116, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cf, %i.bv
  %i.ch = fmul float %.0116, %i.bs
  %i.ci = fsub <2 x float> %i.bb, %i.cg
  %i.cj = fsub float %i.bg, %i.ch
  %.sroa.3.12.vec.insert.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cj, i64 0
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ck = fmul float %i.bw, %i.bw
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 152
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph, label %.critedge51

.lr.ph:                                           ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit
  br i1 %.145, label %._crit_edge._crit_edge, label %.critedge51

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %i.cs = load <2 x float>, ptr %1, align 4, !tbaa !19
  %.pre127 = load float, ptr %i.bf, align 4, !tbaa !19
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit
  %.043123 = phi i32 [ 0, %.lr.ph ], [ %i.ek, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ] ; 2 uses
  %.044122 = phi i1 [ false, %.lr.ph ], [ %.145, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ]
  %.sroa.092.0121 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.092.1, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ]
  %.sroa.894.0120 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.894.1, %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 160
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(112) %i.ct, i32 noundef %.043123, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.cx = load float, ptr %i.bf, align 4, !tbaa !19
  %i.cy = load float, ptr %i.cq, align 8, !tbaa !19 ; 3 uses
  %i.cz = fsub float %i.cx, %i.cy                 ; 4 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cz, i64 0 ; 3 uses
  %i.da = load <2 x float>, ptr %8, align 8, !tbaa !19 ; 3 uses
  %i.db = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.dc = fsub <2 x float> %i.db, %i.da           ; 5 uses
  %i.dd = load <2 x float>, ptr %9, align 8, !tbaa !19
  %i.de = fsub <2 x float> %i.dd, %i.da           ; 7 uses
  %i.df = load float, ptr %i.cr, align 8, !tbaa !19
  %i.dg = fsub float %i.df, %i.cy                 ; 6 uses
  %foldExtExtBinop138 = fmul <2 x float> %i.dc, %i.de
  %i.dh = extractelement <2 x float> %foldExtExtBinop138, i64 1
  %i.di = extractelement <2 x float> %i.de, i64 0 ; 3 uses
  %i.dj = extractelement <2 x float> %i.dc, i64 0
  %i.dk = call float @llvm.fmuladd.f32(float %i.di, float %i.dj, float %i.dh)
  %i.dl = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.cz, float %i.dk) ; 3 uses
  %i.dm = fcmp ogt float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.g, label %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop140 = fmul <2 x float> %i.de, %i.de
  %i.dn = extractelement <2 x float> %foldExtExtBinop140, i64 1
  %i.do = call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dn)
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.do) ; 2 uses
  %i.dq = fcmp olt float %i.dl, %i.dp
  br i1 %i.dq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dr = fdiv float %i.dl, %i.dp                 ; 3 uses
  %i.ds = fmul float %i.dg, %i.dr
  %i.dt = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.de, %i.du
  %i.dw = fsub <2 x float> %i.dc, %i.dv
  %i.dx = fsub float %i.cz, %i.ds
  %.sroa.17.8.vec.insert.i = insertelement <2 x float> %.sroa.3.12.vec.insert.i.i, float %i.dx, i64 0
  br label %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit

bb.i:                                             ; preds = %bb.g
  %i.dy = fsub <2 x float> %i.dc, %i.de
  %i.dz = fsub float %i.cz, %i.dg
  %.sroa.17.8.vec.insert88.i = insertelement <2 x float> %.sroa.3.12.vec.insert.i.i, float %i.dz, i64 0
  br label %_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit

_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi float [ %i.dr, %bb.h ], [ 1.000000e+00, %bb.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.sroa.059.0.i = phi <2 x float> [ %i.dw, %bb.h ], [ %i.dy, %bb.i ], [ %i.dc, %bb.f ] ; 3 uses
  %.sroa.17.0.i = phi <2 x float> [ %.sroa.17.8.vec.insert.i, %bb.h ], [ %.sroa.17.8.vec.insert88.i, %bb.i ], [ %.sroa.3.12.vec.insert.i.i, %bb.f ]
  %i.ea = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x float> %i.de, %i.eb
  %i.ed = fmul float %i.dg, %.0.i
  %i.ee = fadd <2 x float> %i.da, %i.ec
  %i.ef = fadd float %i.cy, %i.ed
  %.sroa.3.12.vec.insert.i21.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ef, i64 0
  %.sroa.059.0.vec.extract68.i = extractelement <2 x float> %.sroa.059.0.i, i64 0 ; 2 uses
  %foldExtExtBinop142 = fmul <2 x float> %.sroa.059.0.i, %.sroa.059.0.i
  %i.eg = extractelement <2 x float> %foldExtExtBinop142, i64 1
  %i.eh = call float @llvm.fmuladd.f32(float %.sroa.059.0.vec.extract68.i, float %.sroa.059.0.vec.extract68.i, float %i.eg)
  %.sroa.17.8.vec.extract90.i = extractelement <2 x float> %.sroa.17.0.i, i64 0 ; 2 uses
  %i.ei = call noundef float @llvm.fmuladd.f32(float %.sroa.17.8.vec.extract90.i, float %.sroa.17.8.vec.extract90.i, float %i.eh)
  %i.ej = fcmp olt float %i.ei, %i.ck             ; 3 uses
  %.sroa.894.1 = select i1 %i.ej, <2 x float> %.sroa.3.12.vec.insert.i21.i, <2 x float> %.sroa.894.0120 ; 2 uses
  %.sroa.092.1 = select i1 %i.ej, <2 x float> %i.ee, <2 x float> %.sroa.092.0121 ; 2 uses
  %.145 = select i1 %i.ej, i1 true, i1 %.044122   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.ek = add nuw nsw i32 %.043123, 1             ; 2 uses
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 152
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(112) %i.el)
  %i.eq = icmp slt i32 %i.ek, %i.ep
  br i1 %i.eq, label %bb.f, label %._crit_edge

bb.j:                                             ; preds = %._crit_edge._crit_edge, %.critedge
  %i.er = phi float [ %i.bg, %.critedge ], [ %.pre127, %._crit_edge._crit_edge ]
  %.sroa.894.2 = phi <2 x float> [ %.sroa.3.12.vec.insert.i74, %.critedge ], [ %.sroa.894.1, %._crit_edge._crit_edge ] ; 3 uses
  %.sroa.092.2 = phi <2 x float> [ %i.ci, %.critedge ], [ %.sroa.092.1, %._crit_edge._crit_edge ] ; 3 uses
  %i.es = phi <2 x float> [ %i.bb, %.critedge ], [ %i.cs, %._crit_edge._crit_edge ]
  %i.et = fsub <2 x float> %i.es, %.sroa.092.2    ; 3 uses
  %.sroa.894.8.vec.extract = extractelement <2 x float> %.sroa.894.2, i64 0
  %i.eu = fsub float %i.er, %.sroa.894.8.vec.extract ; 7 uses
  %i.ev = extractelement <2 x float> %i.et, i64 1 ; 5 uses
  %i.ew = fmul float %i.ev, %i.ev
  %i.ex = extractelement <2 x float> %i.et, i64 0 ; 5 uses
  %i.ey = call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.ew)
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.ey) ; 2 uses
  %i.fa = fmul float %i.j, %i.j
  %i.fb = fcmp olt float %i.ez, %i.fa
  br i1 %i.fb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  %sqrt = call float @llvm.sqrt.f32(float %i.ez)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !26
  %i.fc = fmul float %i.ev, %i.ev
  %i.fd = call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.fc)
  %i.fe = call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.fd)
  %sqrt.i.i82 = call noundef float @llvm.sqrt.f32(float %i.fe)
  %i.ff = fdiv float 1.000000e+00, %sqrt.i.i82    ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x float> %i.et, %i.fh
  store <2 x float> %i.fi, ptr %3, align 4, !tbaa !19
  %i.fj = fmul float %i.eu, %i.ff
  store float %i.fj, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !19
  store <2 x float> %.sroa.092.2, ptr %2, align 4
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.894.2, ptr %.sroa.894.0..sroa_idx, align 4, !tbaa !26
  %i.fk = fsub float %i.j, %sqrt
  %i.fl = fneg float %i.fk
  store float %i.fl, ptr %4, align 4, !tbaa !19
  br label %.critedge51

bb.l:                                             ; preds = %bb.j
  %i.fm = fmul float %i.ev, 0.000000e+00
  %i.fn = call float @llvm.fmuladd.f32(float %i.ex, float 0.000000e+00, float %i.fm)
  %i.fo = call noundef float @llvm.fmuladd.f32(float %i.eu, float 0.000000e+00, float %i.fn)
  %i.fp = fcmp ult float %i.fo, 0.000000e+00
  br i1 %i.fp, label %bb.m, label %.critedge51

bb.m:                                             ; preds = %bb.l
  store <2 x float> %.sroa.092.2, ptr %2, align 4
  %.sroa.894.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.894.2, ptr %.sroa.894.0..sroa_idx95, align 4, !tbaa !26
  store float 0.000000e+00, ptr %5, align 4, !tbaa !19
  br label %.critedge51

.critedge51:                                      ; preds = %bb.e, %._crit_edge, %bb.l, %bb.m, %bb.k, %bb.c
end_hunk_0
