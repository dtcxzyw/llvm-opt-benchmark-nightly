Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btManifoldResult?download=true
inline.NumInlined: 134
inline.NumDeleted: 37
begin_hunk_0_@_ZN16btManifoldResult33calculateCombinedContactStiffnessEPK17btCollisionObjectS2_:bb.a
  %i.b = load float, ptr %i.a, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.d = load float, ptr %i.c, align 4, !tbaa !34
  %i.e = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = insertelement <2 x float> %i.e, float %i.d, i64 1
  %i.g = fdiv <2 x float> splat (float 1.000000e+00), %i.f
  %i.h = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.g)
  %i.i = fdiv float 1.000000e+00, %i.h
  ret float %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16btManifoldResultC2EPK24btCollisionObjectWrapperS2_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(52) initializes((0, 52)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btManifoldResult, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 -1, i64 16, i1 false)
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btManifoldResult15addContactPointERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %class.btManifoldPoint, align 8     ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880) %i.b)
  %i.d = fcmp ogt float %3, %i.c
  br i1 %i.d, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 840
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 11 uses
  %.not = icmp eq ptr %i.g, %i.k                  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 856
  %i.m = load i32, ptr %i.l, align 8, !tbaa !49
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load float, ptr %i.o, align 4, !tbaa !50
  %i.r = fmul float %3, %i.q
  %i.s = load <2 x float>, ptr %1, align 4, !tbaa !50
  %i.t = insertelement <2 x float> poison, float %3, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = load <2 x float>, ptr %2, align 4, !tbaa !50 ; 3 uses
  %i.x = fadd <2 x float> %i.v, %i.w              ; 5 uses
  %i.y = load float, ptr %i.p, align 4, !tbaa !50 ; 2 uses
  %i.z = fadd float %i.r, %i.y                    ; 3 uses
  %.sroa.3.12.vec.insert.i35 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.an = load float, ptr %i.ak, align 4, !tbaa !50, !noalias !51
  %i.ao = load float, ptr %i.al, align 4, !tbaa !50, !noalias !51
  %i.ap = load float, ptr %i.am, align 4, !tbaa !50, !noalias !51
  %i.aq = load float, ptr %i.af, align 4, !tbaa !50
  %i.ar = extractelement <2 x float> %i.x, i64 0
  %i.as = fsub float %i.ar, %i.aq                 ; 2 uses
  %i.at = load float, ptr %i.ag, align 4, !tbaa !50
  %i.au = extractelement <2 x float> %i.x, i64 1
  %i.av = fsub float %i.au, %i.at                 ; 2 uses
  %i.aw = load float, ptr %i.ah, align 4, !tbaa !50
  %i.ax = fsub float %i.z, %i.aw                  ; 2 uses
  %i.ay = load <2 x float>, ptr %i.ae, align 4, !tbaa !50, !noalias !51
  %i.az = load <2 x float>, ptr %i.ai, align 4, !tbaa !50, !noalias !51
  %i.ba = load <2 x float>, ptr %i.aj, align 4, !tbaa !50, !noalias !51
  %i.bb = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.bc, %i.az
  %i.be = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = fmul float %i.av, %i.ao
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.an, float %i.as, float %i.bk)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ax, float %i.bl)
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bm, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bw = load float, ptr %i.bt, align 4, !tbaa !50, !noalias !52
  %i.bx = load float, ptr %i.bu, align 4, !tbaa !50, !noalias !52
  %i.by = load float, ptr %i.bv, align 4, !tbaa !50, !noalias !52
  %i.bz = load float, ptr %i.bo, align 4, !tbaa !50
  %i.ca = extractelement <2 x float> %i.x, i64 0
  %i.cb = fsub float %i.ca, %i.bz                 ; 2 uses
  %i.cc = load float, ptr %i.bp, align 4, !tbaa !50
  %i.cd = extractelement <2 x float> %i.x, i64 1
  %i.ce = fsub float %i.cd, %i.cc                 ; 2 uses
  %i.cf = load float, ptr %i.bq, align 4, !tbaa !50
  %i.cg = fsub float %i.z, %i.cf                  ; 2 uses
  %i.ch = load <2 x float>, ptr %i.bn, align 4, !tbaa !50, !noalias !52
  %i.ci = load <2 x float>, ptr %i.br, align 4, !tbaa !50, !noalias !52
  %i.cj = load <2 x float>, ptr %i.bs, align 4, !tbaa !50, !noalias !52
  %i.ck = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %i.cl, %i.ci
  %i.cn = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.co, <2 x float> %i.cm)
  %i.cq = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cr, <2 x float> %i.cp)
  %i.ct = fmul float %i.ce, %i.bx
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cb, float %i.ct)
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.cg, float %i.cu)
  %.sroa.3.12.vec.insert.i4.i45 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink137 = phi ptr [ %i.cz, %bb.d ], [ %i.k, %bb.c ] ; 9 uses
  %.sroa.554.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i4.i45, %bb.d ], [ %.sroa.3.12.vec.insert.i4.i, %bb.c ]
  %.sroa.053.0 = phi <2 x float> [ %i.cs, %bb.d ], [ %i.bj, %bb.c ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sink137, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.sink137, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink137, i64 60
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink137, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %.sink137, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %.sink137, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink137, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink137, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %.sink137, i64 48
  %i.dj = load float, ptr %i.dg, align 4, !tbaa !50, !noalias !53
  %i.dk = load float, ptr %i.dh, align 4, !tbaa !50, !noalias !53
  %i.dl = load float, ptr %i.di, align 4, !tbaa !50, !noalias !53
  %i.dm = load float, ptr %i.db, align 4, !tbaa !50
  %i.dn = extractelement <2 x float> %i.w, i64 0
  %i.do = fsub float %i.dn, %i.dm                 ; 2 uses
  %i.dp = load float, ptr %i.dc, align 4, !tbaa !50
  %i.dq = extractelement <2 x float> %i.w, i64 1
  %i.dr = fsub float %i.dq, %i.dp                 ; 2 uses
  %i.ds = load float, ptr %i.dd, align 4, !tbaa !50
  %i.dt = fsub float %i.y, %i.ds                  ; 2 uses
  %i.du = load <2 x float>, ptr %i.da, align 4, !tbaa !50, !noalias !53
  %i.dv = load <2 x float>, ptr %i.de, align 4, !tbaa !50, !noalias !53
  %i.dw = load <2 x float>, ptr %i.df, align 4, !tbaa !50, !noalias !53
  %i.dx = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %i.dv
  %i.ea = insertelement <2 x float> poison, float %i.do, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.eb, <2 x float> %i.dz)
  %i.ed = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.ee, <2 x float> %i.ec)
  %i.eg = fmul float %i.dr, %i.dk
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.do, float %i.eg)
  %i.ei = tail call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.dt, float %i.eh)
  %.sroa.3.12.vec.insert.i4.i50 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ei, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store <2 x float> %.sroa.053.0, ptr %4, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.554.0, ptr %.sroa.554.0..sroa_idx, align 8, !tbaa !54
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %i.ef, ptr %i.ej, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i4.i50, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !54
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !55
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %3, ptr %i.em, align 8, !tbaa !57
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 100 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eo, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.ep, i8 0, i64 84, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.x, ptr %i.eq, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i35, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !55
  %i.er = call noundef i32 @_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(880) %i.e, ptr noundef nonnull align 8 dereferenceable(204) %4) ; 3 uses
  %i.es = load ptr, ptr @gCalculateCombinedFrictionCallback, align 8, !tbaa !58
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !48
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !48
  %i.fa = call noundef float %i.es(ptr noundef %i.ev, ptr noundef %i.ez)
  store float %i.fa, ptr %i.en, align 4, !tbaa !59
  %i.fb = load ptr, ptr @gCalculateCombinedRestitutionCallback, align 8, !tbaa !58
  %i.fc = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !48
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !29
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !48
  %i.fi = call noundef float %i.fb(ptr noundef %i.fe, ptr noundef %i.fh)
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %i.fi, ptr %i.fj, align 8, !tbaa !60
  %i.fk = load ptr, ptr @gCalculateCombinedRollingFrictionCallback, align 8, !tbaa !58
  %i.fl = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !48
  %i.fo = load ptr, ptr %i.ew, align 8, !tbaa !29
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !48
  %i.fr = call noundef float %i.fk(ptr noundef %i.fn, ptr noundef %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 88
  store float %i.fr, ptr %i.fs, align 8, !tbaa !61
  %i.ft = load ptr, ptr @gCalculateCombinedSpinningFrictionCallback, align 8, !tbaa !58
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !48
  %i.fx = load ptr, ptr %i.ew, align 8, !tbaa !29
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !48
  %i.ga = call noundef float %i.ft(ptr noundef %i.fw, ptr noundef %i.fz)
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 92
  store float %i.ga, ptr %i.gb, align 4, !tbaa !62
  %i.gc = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !48 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 224
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !63 ; 2 uses
  %i.gh = and i32 %i.gg, 128
  %.not25 = icmp eq i32 %i.gh, 0
  %.pre = load ptr, ptr %i.ew, align 8, !tbaa !29
  %i.gi = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !48 ; 2 uses
  br i1 %.not25, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 224
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !63
  %i.gm = and i32 %i.gl, 128
  %.not26 = icmp eq i32 %i.gm, 0
  br i1 %.not26, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.gn = load ptr, ptr @gCalculateCombinedContactDampingCallback, align 8, !tbaa !58
  %i.go = call noundef float %i.gn(ptr noundef nonnull %i.ge, ptr noundef %i.gj)
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 160
  store float %i.go, ptr %i.gp, align 8, !tbaa !54
  %i.gq = load ptr, ptr @gCalculateCombinedContactStiffnessCallback, align 8, !tbaa !58
  %i.gr = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !48
  %i.gu = load ptr, ptr %i.ew, align 8, !tbaa !29
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !48
  %i.gx = call noundef float %i.gq(ptr noundef %i.gt, ptr noundef %i.gw)
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 156
  store float %i.gx, ptr %i.gy, align 4, !tbaa !54
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !64
  %i.hb = or i32 %i.ha, 8
  store i32 %i.hb, ptr %i.gz, align 8, !tbaa !64
  %.pre74 = load ptr, ptr %i.h, align 8, !tbaa !28
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %.pre74, i64 16
  %.pre76 = load ptr, ptr %.phi.trans.insert75, align 8, !tbaa !48
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %.pre76, i64 224
  %.pre78 = load i32, ptr %.phi.trans.insert77, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.hc = phi i32 [ %.pre78, %._crit_edge ], [ %i.gg, %bb.f ]
  %i.hd = and i32 %i.hc, 512
  %.not27 = icmp eq i32 %i.hd, 0
  br i1 %.not27, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.he = load ptr, ptr %i.ew, align 8, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !48
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 224
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !63
  %i.hj = and i32 %i.hi, 512
  %.not28 = icmp eq i32 %i.hj, 0
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !64
  %i.hm = or i32 %i.hl, 16
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 172
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 188
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.hq = load float, ptr %i.hp, align 8, !tbaa !50 ; 6 uses
  %i.hr = call noundef float @llvm.fabs.f32(float %i.hq)
  %i.hs = fcmp ogt float %i.hr, f0x3F3504F3
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 180
  br i1 %i.hs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !50 ; 3 uses
  %i.hw = fmul nnan float %i.hq, %i.hq
  %i.hx = call float @llvm.fmuladd.f32(float %i.hv, float %i.hv, float %i.hw) ; 2 uses
  %sqrt.i = call noundef float @sqrtf(float noundef %i.hx) #10
  %i.hy = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.hz = fneg float %i.hq
  %i.ia = fmul float %i.hy, %i.hz                 ; 2 uses
  %i.ib = fmul float %i.hv, %i.hy                 ; 2 uses
  %i.ic = fmul float %i.hx, %i.hy
  %i.id = load float, ptr %i.el, align 8, !tbaa !50 ; 2 uses
  %i.ie = fneg float %i.id
  %i.if = fmul float %i.ib, %i.ie
  %i.ig = fmul float %i.ia, %i.id
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.l:                                             ; preds = %bb.j
  %i.ih = load float, ptr %i.el, align 8, !tbaa !50 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !50 ; 3 uses
  %i.ik = fmul float %i.ij, %i.ij
  %i.il = call float @llvm.fmuladd.f32(float %i.ih, float %i.ih, float %i.ik) ; 2 uses
  %sqrt43.i = call noundef float @sqrtf(float noundef %i.il) #10
  %i.im = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.in = fneg float %i.ij
  %i.io = fmul float %i.im, %i.in                 ; 2 uses
  %i.ip = fmul float %i.ih, %i.im                 ; 2 uses
  %i.iq = fneg float %i.hq
  %i.ir = fmul float %i.ip, %i.iq
  %i.is = fmul float %i.hq, %i.io
  %i.it = fmul float %i.il, %i.im
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.k, %bb.l
  %.sink68 = phi float [ 0.000000e+00, %bb.k ], [ %i.io, %bb.l ]
  %.sink67 = phi float [ %i.ia, %bb.k ], [ %i.ip, %bb.l ]
  %.sink66 = phi float [ %i.ib, %bb.k ], [ 0.000000e+00, %bb.l ]
  %.sink65 = phi float [ %i.ic, %bb.k ], [ %i.ir, %bb.l ]
  %.sink = phi float [ %i.if, %bb.k ], [ %i.is, %bb.l ]
  %.sink.i = phi float [ %i.ig, %bb.k ], [ %i.it, %bb.l ]
  store float %.sink68, ptr %i.hn, align 4, !tbaa !50
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 176
  store float %.sink67, ptr %i.iu, align 8, !tbaa !50
  store float %.sink66, ptr %i.ht, align 4, !tbaa !50
  store float %.sink65, ptr %i.ho, align 4, !tbaa !50
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 192
  store float %.sink, ptr %i.iv, align 8, !tbaa !50
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 196
  store float %.sink.i, ptr %i.iw, align 4, !tbaa !50
  %.142 = select i1 %.not, i64 32, i64 36
  %.143 = select i1 %.not, i64 36, i64 32
  %.144 = select i1 %.not, i64 40, i64 44
  %.145 = select i1 %.not, i64 44, i64 40
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 %.142
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 %.143
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 %.144
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 %.145
  %.sink69 = load i32, ptr %i.ja, align 4, !tbaa !65
  %.sink70 = load i32, ptr %i.iz, align 4, !tbaa !65
  %.sink71 = load i32, ptr %i.iy, align 4, !tbaa !65
  %.sink72 = load i32, ptr %i.ix, align 4, !tbaa !65
  store i32 %.sink72, ptr %i.eo, align 4, !tbaa !66
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  store i32 %.sink71, ptr %i.jb, align 8, !tbaa !67
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 108 ; 2 uses
  store i32 %.sink70, ptr %i.jc, align 4, !tbaa !68
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  store i32 %.sink69, ptr %i.jd, align 8, !tbaa !69
  %i.je = icmp sgt i32 %i.er, -1
  %i.jf = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  br i1 %i.je, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = zext nneg i32 %i.er to i64
  %i.ji = getelementptr inbounds nuw [208 x i8], ptr %i.jg, i64 %i.jh ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 168 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !70
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 132 ; 2 uses
  %i.jm = load <4 x float>, ptr %i.jl, align 4, !tbaa !50 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !64
  %i.jp = and i32 %i.jo, 16
  %.not.i = icmp eq i32 %i.jp, 0
  br i1 %.not.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 140
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !71 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 84
  %i.jt = load float, ptr %i.js, align 4, !tbaa !59
  %foldExtExtBinop = fmul <4 x float> %i.jm, %i.jm
  %i.ju = extractelement <4 x float> %foldExtExtBinop, i64 3
  %i.jv = call float @llvm.fmuladd.f32(float %i.jr, float %i.jr, float %i.ju)
  %i.jw = extractelement <4 x float> %i.jm, i64 0
  %i.jx = call float @llvm.fmuladd.f32(float %i.jt, float %i.jw, float 0.000000e+00) ; 2 uses
  %i.jy = fmul float %i.jx, %i.jx
  %i.jz = fcmp ogt float %i.jv, %i.jy
  br i1 %i.jz, label %.critedge.i, label %_ZN20btPersistentManifold19replaceContactPointERK15btManifoldPointi.exit

.critedge.i:                                      ; preds = %bb.n, %bb.m
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ji, i64 120 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ji, ptr noundef nonnull align 8 dereferenceable(204) %4, i64 204, i1 false), !tbaa.struct !73
  store ptr %i.kb, ptr %i.ka, align 8, !tbaa !72
  store <4 x float> %i.jm, ptr %i.jl, align 4, !tbaa !50
  br label %_ZN20btPersistentManifold19replaceContactPointERK15btManifoldPointi.exit

_ZN20btPersistentManifold19replaceContactPointERK15btManifoldPointi.exit: ; preds = %bb.n, %.critedge.i
  store i32 %i.jk, ptr %i.jj, align 8, !tbaa !70
  br label %bb.p

bb.o:                                             ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  %i.kc = call noundef i32 @_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPointb(ptr noundef nonnull align 8 dereferenceable(880) %i.jf, ptr noundef nonnull align 8 dereferenceable(204) %4, i1 noundef zeroext false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN20btPersistentManifold19replaceContactPointERK15btManifoldPointi.exit
  %.0 = phi i32 [ %i.er, %_ZN20btPersistentManifold19replaceContactPointERK15btManifoldPointi.exit ], [ %i.kc, %bb.o ]
  %i.kd = load ptr, ptr @gContactAddedCallback, align 8, !tbaa !58 ; 2 uses
  %.not29 = icmp eq ptr %i.kd, null
  br i1 %.not29, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ke = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !48
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 224
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !63
  %i.kj = and i32 %i.ki, 8
  %.not30 = icmp eq i32 %i.kj, 0
  br i1 %.not30, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kk = load ptr, ptr %i.ew, align 8, !tbaa !29
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !48
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 224
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !63
  %i.kp = and i32 %i.ko, 8
  %.not31 = icmp eq i32 %i.kp, 0
  br i1 %.not31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %. = select i1 %.not, ptr %i.h, ptr %i.ew
  %i.kq = load ptr, ptr %., align 8, !tbaa !74
  %.in32 = select i1 %.not, ptr %i.ew, ptr %i.h
  %i.kr = load ptr, ptr %.in32, align 8, !tbaa !74
  %i.ks = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = sext i32 %.0 to i64
  %i.kv = getelementptr inbounds [208 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = load i32, ptr %i.eo, align 4, !tbaa !66
  %i.kx = load i32, ptr %i.jc, align 4, !tbaa !68
  %i.ky = load i32, ptr %i.jb, align 8, !tbaa !67
  %i.kz = load i32, ptr %i.jd, align 8, !tbaa !69
  %i.la = call noundef zeroext i1 %i.kd(ptr noundef nonnull align 8 dereferenceable(204) %i.kv, ptr noundef %i.kq, i32 noundef %i.kw, i32 noundef %i.kx, ptr noundef %i.kr, i32 noundef %i.ky, i32 noundef %i.kz) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %i.lb = load ptr, ptr @gContactStartedCallback, align 8, !tbaa !58 ; 2 uses
  %i.lc = icmp ne ptr %i.lb, null
  %or.cond = and i1 %i.n, %i.lc
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  ret void
}

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(880), ptr noundef nonnull align 8 dereferenceable(204)) local_unnamed_addr #5

declare noundef i32 @_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPointb(ptr noundef nonnull align 8 dereferenceable(880), ptr noundef nonnull align 8 dereferenceable(204), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btManifoldResultD0Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btManifoldResult20setShapeIdentifiersAEii(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.b, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btManifoldResult20setShapeIdentifiersBEii(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.a, align 4, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %2, ptr %i.b, align 4, !tbaa !78
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!10 = !{!"_ZTS9btVector3", !5, i64 0}
!11 = !{!"_ZTS11btTransform", !9, i64 0, !10, i64 48}
!12 = !{!"float", !5, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTS17btBroadphaseProxy", !13, i64 0}
!15 = !{!"p1 _ZTS16btCollisionShape", !13, i64 0}
!16 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!17 = !{!"any p2 pointer", !13, i64 0}
!18 = !{!"p2 _ZTS17btCollisionObject", !17, i64 0}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !16, i64 0, !6, i64 4, !6, i64 8, !18, i64 16, !19, i64 24}
!21 = !{!"_ZTS17btCollisionObject", !11, i64 8, !11, i64 72, !10, i64 136, !10, i64 152, !10, i64 168, !6, i64 184, !12, i64 188, !14, i64 192, !15, i64 200, !13, i64 208, !15, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !6, i64 272, !13, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !6, i64 312, !20, i64 320, !6, i64 352, !10, i64 356}
!22 = !{!21, !12, i64 248}
!23 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!24 = !{!"p1 _ZTS20btPersistentManifold", !13, i64 0}
!25 = !{!"p1 _ZTS24btCollisionObjectWrapper", !13, i64 0}
!26 = !{!"_ZTS16btManifoldResult", !23, i64 0, !24, i64 8, !25, i64 16, !25, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48}
!27 = !{!26, !24, i64 8}
!28 = !{!26, !25, i64 16}
!29 = !{!26, !25, i64 24}
!30 = !{!21, !12, i64 252}
!31 = !{!21, !12, i64 256}
!32 = !{!21, !12, i64 260}
!33 = !{!21, !12, i64 264}
!34 = !{!21, !12, i64 268}
!35 = !{!"vtable pointer", !4, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!26, !12, i64 48}
!38 = distinct !{!38, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!39 = distinct !{!39, !38, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!40 = distinct !{!40, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!41 = distinct !{!41, !40, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!42 = !{!"_ZTS13btTypedObject", !6, i64 0}
!43 = !{!"p1 _ZTS17btCollisionObject", !13, i64 0}
!44 = !{!"_ZTS20btPersistentManifold", !42, i64 0, !5, i64 8, !43, i64 840, !43, i64 848, !6, i64 856, !12, i64 860, !12, i64 864, !6, i64 868, !6, i64 872, !6, i64 876}
!45 = !{!44, !43, i64 840}
!46 = !{!"p1 _ZTS11btTransform", !13, i64 0}
!47 = !{!"_ZTS24btCollisionObjectWrapper", !25, i64 0, !15, i64 8, !43, i64 16, !46, i64 24, !46, i64 32, !6, i64 40, !6, i64 44}
!48 = !{!47, !43, i64 16}
!49 = !{!44, !6, i64 856}
!50 = !{!12, !12, i64 0}
!51 = !{!39}
!52 = !{!41}
!53 = !{}
!54 = !{!5, !5, i64 0}
!55 = !{i64 0, i64 16, !54}
!56 = !{!"_ZTS15btManifoldPoint", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48, !10, i64 64, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !13, i64 120, !6, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !5, i64 156, !5, i64 160, !12, i64 164, !6, i64 168, !10, i64 172, !10, i64 188}
!57 = !{!56, !12, i64 80}
!58 = !{!13, !13, i64 0}
!59 = !{!56, !12, i64 84}
!60 = !{!56, !12, i64 96}
!61 = !{!56, !12, i64 88}
!62 = !{!56, !12, i64 92}
!63 = !{!21, !6, i64 224}
!64 = !{!56, !6, i64 128}
!65 = !{!6, !6, i64 0}
!66 = !{!56, !6, i64 100}
!67 = !{!56, !6, i64 104}
!68 = !{!56, !6, i64 108}
!69 = !{!56, !6, i64 112}
!70 = !{!56, !6, i64 168}
!71 = !{!56, !12, i64 140}
!72 = !{!56, !13, i64 120}
!73 = !{i64 0, i64 16, !54, i64 16, i64 16, !54, i64 32, i64 16, !54, i64 48, i64 16, !54, i64 64, i64 16, !54, i64 80, i64 4, !50, i64 84, i64 4, !50, i64 88, i64 4, !50, i64 92, i64 4, !50, i64 96, i64 4, !50, i64 100, i64 4, !65, i64 104, i64 4, !65, i64 108, i64 4, !65, i64 112, i64 4, !65, i64 120, i64 8, !58, i64 128, i64 4, !65, i64 132, i64 4, !50, i64 136, i64 4, !50, i64 140, i64 4, !50, i64 144, i64 4, !50, i64 148, i64 4, !50, i64 152, i64 4, !50, i64 156, i64 4, !54, i64 160, i64 4, !54, i64 164, i64 4, !50, i64 168, i64 4, !65, i64 172, i64 16, !54, i64 188, i64 16, !54}
!74 = !{!25, !25, i64 0}
!75 = !{!26, !6, i64 32}
!76 = !{!26, !6, i64 40}
!77 = !{!26, !6, i64 36}
!78 = !{!26, !6, i64 44}
end_hunk_0
