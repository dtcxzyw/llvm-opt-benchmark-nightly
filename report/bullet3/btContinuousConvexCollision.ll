inline.NumInlined: 407
inline.NumDeleted: 85
begin_hunk_0_@_ZN27btContinuousConvexCollision20computeClosestPointsERK11btTransformS2_R16btPointCollector:bb.a
  %i.ck = fmul float %.sroa.14154.16.copyload, %i.bf
  %i.cl = tail call float @llvm.fmuladd.f32(float %.sroa.7147.0.copyload, float %i.be, float %i.ck)
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.bg, float %i.cl) ; 2 uses
  %i.cn = load <2 x float>, ptr %i.at, align 4    ; 2 uses
  %.sroa.26165.48.copyload = load float, ptr %.sroa.26165.48..sroa_idx, align 4 ; 3 uses
  %i.co = extractelement <2 x float> %i.bs, i64 0
  %i.cp = fmul float %.sroa.26165.48.copyload, %i.co
  %i.cq = extractelement <2 x float> %i.cn, i64 0 ; 2 uses
  %i.cr = extractelement <2 x float> %i.bq, i64 0
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cr, float %i.cp)
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %.sroa.28.48.copyload, float %i.bc, float %i.cs)
  %i.cu = extractelement <2 x float> %i.bs, i64 1
  %i.cv = fmul float %.sroa.26165.48.copyload, %i.cu
  %i.cw = extractelement <2 x float> %i.bq, i64 1
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cw, float %i.cv)
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %.sroa.28.48.copyload, float %i.bd, float %i.cx)
  %i.cz = fmul float %i.bf, %i.bm
  %i.da = fmul float %.sroa.26165.48.copyload, %i.bf
  %i.db = insertelement <2 x float> poison, float %i.be, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = insertelement <2 x float> %i.cn, float %i.bj, i64 1
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.cz, i64 1
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.dd, <2 x float> %i.df)
  %i.dh = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %.sroa.28.48.copyload, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.bp, i64 1
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dk, <2 x float> %i.dg) ; 2 uses
  %i.dm = fadd float %i.ct, %i.cd
  %i.dn = fadd float %i.cy, %i.cf
  %shift = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dl, %shift
  %i.do = extractelement <2 x float> %foldExtExtBinop, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.dp = load float, ptr %i.ap, align 4, !tbaa !33
  %i.dq = fneg float %i.dp                        ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ao, i64 72 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !33
  %i.dt = fneg float %i.ds                        ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ao, i64 76 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !33
  %i.dw = fneg float %i.dv                        ; 2 uses
  %i.dx = load <2 x float>, ptr %1, align 4       ; 3 uses
  %i.dy = load <2 x float>, ptr %i.ar, align 4    ; 3 uses
  %i.dz = load <2 x float>, ptr %i.as, align 4    ; 3 uses
  %i.ea = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.dy, %i.ea
  %i.ec = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.ec, <2 x float> %i.eb)
  %i.ee = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ef, <2 x float> %i.ed) ; 3 uses
  %i.eh = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ei = fmul <2 x float> %i.dy, %i.eh
  %i.ej = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.ej, <2 x float> %i.ei)
  %i.el = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.em, <2 x float> %i.ek) ; 3 uses
  %i.eo = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.dy, %i.ep
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dc, <2 x float> %i.eq)
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.di, <2 x float> %i.er) ; 3 uses
  %i.et = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.en, %i.eu
  %i.ew = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.ex, <2 x float> %i.ev)
  %i.ez = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.fa, <2 x float> %i.ey)
  %i.fc = fmul float %i.cj, %i.dt
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.dq, float %i.fc)
  %i.fe = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.dw, float %i.fd)
  %.sroa.3.12.vec.insert.i48 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fe, i64 0
  store <2 x float> %i.fb, ptr %6, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i48, ptr %i.ff, align 8
  %i.fg = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call { <2 x float>, <2 x float> } %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.fk = extractvalue { <2 x float>, <2 x float> } %i.fj, 0 ; 4 uses
  %i.fl = extractvalue { <2 x float>, <2 x float> } %i.fj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.sroa.076.0.vec.extract = extractelement <2 x float> %i.fk, i64 0 ; 3 uses
  %foldExtExtBinop169 = fmul <2 x float> %i.eg, %i.fk
  %i.fm = extractelement <2 x float> %foldExtExtBinop169, i64 1
  %i.fn = extractelement <2 x float> %i.eg, i64 0
  %i.fo = call float @llvm.fmuladd.f32(float %.sroa.076.0.vec.extract, float %i.fn, float %i.fm)
  %.sroa.577.8.vec.extract = extractelement <2 x float> %i.fl, i64 0 ; 3 uses
  %i.fp = call noundef float @llvm.fmuladd.f32(float %.sroa.577.8.vec.extract, float %i.ch, float %i.fo)
  %foldExtExtBinop171 = fmul <2 x float> %i.en, %i.fk
  %i.fq = extractelement <2 x float> %foldExtExtBinop171, i64 1
  %i.fr = extractelement <2 x float> %i.en, i64 0
  %i.fs = call float @llvm.fmuladd.f32(float %.sroa.076.0.vec.extract, float %i.fr, float %i.fq)
  %i.ft = call noundef float @llvm.fmuladd.f32(float %.sroa.577.8.vec.extract, float %i.cj, float %i.fs)
  %foldExtExtBinop173 = fmul <2 x float> %i.es, %i.fk
  %i.fu = extractelement <2 x float> %foldExtExtBinop173, i64 1
  %i.fv = extractelement <2 x float> %i.es, i64 0
  %i.fw = call float @llvm.fmuladd.f32(float %.sroa.076.0.vec.extract, float %i.fv, float %i.fu)
  %i.fx = call noundef float @llvm.fmuladd.f32(float %.sroa.577.8.vec.extract, float %i.cm, float %i.fw)
  %i.fy = fadd float %i.dm, %i.fp                 ; 2 uses
  %i.fz = fadd float %i.dn, %i.ft                 ; 2 uses
  %i.ga = fadd float %i.do, %i.fx                 ; 2 uses
  %i.gb = load float, ptr %i.ap, align 4, !tbaa !33 ; 4 uses
  %i.gc = load float, ptr %i.dr, align 4, !tbaa !33 ; 4 uses
  %i.gd = fmul float %i.gc, %i.fz
  %i.ge = call float @llvm.fmuladd.f32(float %i.gb, float %i.fy, float %i.gd)
  %i.gf = load float, ptr %i.du, align 4, !tbaa !33 ; 4 uses
  %i.gg = call noundef float @llvm.fmuladd.f32(float %i.gf, float %i.ga, float %i.ge)
  %i.gh = load float, ptr %i.aq, align 4, !tbaa !33
  %i.gi = fsub float %i.gg, %i.gh                 ; 4 uses
  %i.gj = fmul float %i.gb, %i.gi
  %i.gk = fmul float %i.gc, %i.gi
  %i.gl = fmul float %i.gf, %i.gi
  %i.gm = fsub float %i.fy, %i.gj                 ; 2 uses
  %i.gn = fsub float %i.fz, %i.gk                 ; 2 uses
  %i.go = fsub float %i.ga, %i.gl                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.gp = load float, ptr %i.av, align 4, !tbaa !33 ; 2 uses
  %i.gq = load float, ptr %i.ay, align 4, !tbaa !33 ; 2 uses
  %i.gr = fmul float %i.gn, %i.gq
  %i.gs = call float @llvm.fmuladd.f32(float %i.gm, float %i.gp, float %i.gr)
  %i.gt = load float, ptr %i.bb, align 4, !tbaa !33 ; 2 uses
  %i.gu = call noundef float @llvm.fmuladd.f32(float %i.go, float %i.gt, float %i.gs)
  %i.gv = load <2 x float>, ptr %2, align 4, !tbaa !33 ; 2 uses
  %i.gw = load <2 x float>, ptr %i.au, align 4, !tbaa !33 ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gv, <2 x float> %i.gw, <2 x i32> <i32 1, i32 3>
  %i.gy = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x float> %i.gx, %i.gz
  %i.hb = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = shufflevector <2 x float> %i.gv, <2 x float> %i.gw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.he = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.hd, <2 x float> %i.ha)
  %i.hf = insertelement <2 x float> poison, float %i.go, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = load <2 x float>, ptr %i.bh, align 4, !tbaa !33
  %i.hi = load float, ptr %i.bn, align 4, !tbaa !33
  %i.hj = fadd float %i.gu, %i.hi
  %.sroa.3.12.vec.insert.i4.i.i58 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hj, i64 0
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i58, ptr %i.hk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.hl = load <2 x float>, ptr %i.aw, align 4, !tbaa !33 ; 2 uses
  %i.hm = load <2 x float>, ptr %i.ax, align 4, !tbaa !33 ; 2 uses
  %i.hn = shufflevector <2 x float> %i.hl, <2 x float> %i.hm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.hn, <2 x float> %i.he)
  %i.hp = fadd <2 x float> %i.ho, %i.hh
  store <2 x float> %i.hp, ptr %7, align 8
  %i.hq = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = shufflevector <2 x float> %i.hl, <2 x float> %i.hm, <2 x i32> <i32 0, i32 2>
  %i.ht = fmul <2 x float> %i.hr, %i.hs
  %i.hu = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.hv, <2 x float> %i.ht)
  %i.hx = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.hy, <2 x float> %i.hw)
  %i.ia = fmul float %i.gc, %i.gq
  %i.ib = call float @llvm.fmuladd.f32(float %i.gp, float %i.gb, float %i.ia)
  %i.ic = call noundef float @llvm.fmuladd.f32(float %i.gt, float %i.gf, float %i.ib)
  %.sroa.3.12.vec.insert.i61 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ic, i64 0
  store <2 x float> %i.hz, ptr %8, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i61, ptr %i.id, align 8
  %i.ie = load ptr, ptr %3, align 8, !tbaa !9
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(45) %3, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.gi)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(357)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(196) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %8 = alloca %class.btVector3, align 8           ; 6 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 4          ; 6 uses
  %13 = alloca %struct.btPointCollector, align 8  ; 10 uses
  %14 = alloca %class.btVector3, align 16         ; 4 uses
  %15 = alloca %class.btTransform, align 4        ; 6 uses
  %16 = alloca %class.btTransform, align 4        ; 5 uses
  %17 = alloca %class.btVector3, align 16         ; 4 uses
  %18 = alloca %struct.btPointCollector, align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !33
  %i.f = load <2 x float>, ptr %i.d, align 4, !tbaa !33
  %i.g = fsub <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load float, ptr %i.h, align 4, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load float, ptr %i.j, align 4, !tbaa !33
  %i.l = fsub float %i.i, %i.k
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.l, i64 0
  store <2 x float> %i.g, ptr %8, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.m = load float, ptr %i.b, align 4, !tbaa !33 ; 2 uses
  %19 = load <2 x float>, ptr %7, align 8, !tbaa !33
  %20 = insertelement <2 x float> poison, float %i.m, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x float> %21, %19                 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load float, ptr %i.n, align 8, !tbaa !33
  %i.p = fmul float %i.m, %i.o                    ; 3 uses
  %.sroa.3.12.vec.insert.i.i15.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0
  store <2 x float> %22, ptr %9, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !33
  %i.t = load <2 x float>, ptr %i.r, align 4, !tbaa !33
  %i.u = fsub <2 x float> %i.s, %i.t              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.w = load float, ptr %i.v, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = load float, ptr %i.x, align 4, !tbaa !33
  %i.z = fsub float %i.w, %i.y                    ; 2 uses
  %.sroa.3.12.vec.insert.i.i.i98 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %i.u, ptr %10, align 8
  %.sroa.42.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i98, ptr %.sroa.42.0..sroa_idx.i99, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.aa = load float, ptr %i.a, align 4, !tbaa !33 ; 2 uses
  %23 = load <2 x float>, ptr %6, align 8, !tbaa !33
  %24 = insertelement <2 x float> poison, float %i.aa, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x float> %25, %23                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !33
  %i.ad = fmul float %i.aa, %i.ac                 ; 2 uses
  %.sroa.3.12.vec.insert.i.i15.i102 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  store <2 x float> %26, ptr %11, align 8
  %.sroa.4.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i102, ptr %.sroa.4.0..sroa_idx.i103, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef float %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.af)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 3 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef float %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aq = phi float [ %i.ap, %bb.b ], [ 0.000000e+00, %bb.a ]
  %foldExtExtBinop = fmul <2 x float> %22, %22
  %27 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %28 = extractelement <2 x float> %22, i64 0     ; 2 uses
  %i.ar = call float @llvm.fmuladd.f32(float %28, float %28, float %27)
  %i.as = call noundef float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.ar)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.as)
  %foldExtExtBinop.a = fsub <2 x float> %i.u, %i.g ; 2 uses
  %i.at = extractelement <2 x float> %foldExtExtBinop.a, i64 0 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !33
  %i.aw = extractelement <2 x float> %i.u, i64 1
  %i.ax = fsub float %i.aw, %i.av                 ; 3 uses
  %i.ay = load float, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !33
  %i.az = fsub float %i.z, %i.ay                  ; 3 uses
  %29 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ba = insertelement <2 x float> %29, float %i.ax, i64 1 ; 2 uses
  %i.bb = fmul <2 x float> %i.ba, %i.ba
  %i.bc = shufflevector <2 x float> %26, <2 x float> %foldExtExtBinop.a, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bc, <2 x float> %i.bb)
  %i.be = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.az, i64 1 ; 2 uses
  %i.bg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bg) ; 2 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = fmul float %i.aq, %i.bi
  %i.bk = call float @llvm.fmuladd.f32(float %sqrt.i, float %i.aj, float %i.bj) ; 3 uses
  %i.bl = extractelement <2 x float> %i.bh, i64 1
  %i.bm = fadd float %i.bk, %i.bl
  %i.bn = fcmp oeq float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btPointCollector, i64 16), ptr %13, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  store float f0x5D5E0B6B, ptr %i.bo, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 44 ; 2 uses
  store i8 0, ptr %i.bp, align 4, !tbaa !44
  call void @_ZN27btContinuousConvexCollision20computeClosestPointsERK11btTransformS2_R16btPointCollector(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(45) %13)
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !44, !range !45, !noundef !46
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !31
  br i1 %i.br, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bt = load float, ptr %i.bo, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !47
  %i.bw = fadd float %i.bt, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.by = load <2 x float>, ptr %i.bx, align 8    ; 3 uses
  %.sroa.12142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.12142.0.copyload = load float, ptr %.sroa.12142.0..sroa_idx, align 8 ; 3 uses
  %i.bz = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.ca = fmul float %i.ax, %i.bz
  %i.cb = extractelement <2 x float> %i.by, i64 0 ; 2 uses
  %i.cc = call float @llvm.fmuladd.f32(float %i.at, float %i.cb, float %i.ca)
  %i.cd = call noundef float @llvm.fmuladd.f32(float %i.az, float %.sroa.12142.0.copyload, float %i.cc)
  %i.ce = fadd float %i.bk, %i.cd
  %i.cf = fcmp ugt float %i.ce, f0x34000000
  br i1 %i.cf, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.e
  %.sroa.15148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 20
  %.sroa.15148.0.copyload = load float, ptr %.sroa.15148.0..sroa_idx, align 4, !tbaa !32
  %i.cg = fcmp ogt float %i.bw, 1.000000e-03
  %i.ch = insertelement <2 x float> poison, float %.sroa.12142.0.copyload, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %.sroa.15148.0.copyload, i64 1
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 44 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.12142.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.9136.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %18, i64 12
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.p
  %.0189 = phi float [ %i.bw, %.lr.ph ], [ %i.dw, %bb.p ]
  %.070188 = phi i32 [ 0, %.lr.ph ], [ %i.dt, %bb.p ] ; 3 uses
  %.075187 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cz, %bb.p ] ; 2 uses
  %.sroa.12142.0186 = phi float [ %.sroa.12142.0.copyload, %.lr.ph ], [ %i.dz, %bb.p ]
  %.sroa.9136.0185 = phi float [ %i.bz, %.lr.ph ], [ %.sroa.9136.0.copyload138, %bb.p ]
  %.sroa.0132.0184 = phi float [ %i.cb, %.lr.ph ], [ %i.dy, %bb.p ]
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !50 ; 3 uses
  %.not86 = icmp eq ptr %i.cp, null
  br i1 %.not86, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %14, align 16, !tbaa !33
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %12, float noundef 2.000000e-01, ptr noundef nonnull align 4 dereferenceable(16) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ct = fmul float %i.ax, %.sroa.9136.0185
  %i.cu = call float @llvm.fmuladd.f32(float %i.at, float %.sroa.0132.0184, float %i.ct)
  %i.cv = call noundef float @llvm.fmuladd.f32(float %i.az, float %.sroa.12142.0186, float %i.cu)
  %i.cw = fadd float %i.bk, %i.cv                 ; 2 uses
  %i.cx = fcmp ugt float %i.cw, f0x34000000
  br i1 %i.cx, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.cy = fdiv float %.0189, %i.cw
  %i.cz = fadd float %.075187, %i.cy              ; 8 uses
  %i.da = fcmp ule float %i.cz, 1.000000e+00
  %i.db = fcmp uge float %i.cz, 0.000000e+00
  %or.cond.not165 = and i1 %i.da, %i.db
  %i.dc = fcmp ugt float %i.cz, %.075187
  %or.cond94 = and i1 %i.dc, %or.cond.not165
  br i1 %or.cond94, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.cz, ptr noundef nonnull align 4 dereferenceable(64) %15)
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.cz, ptr noundef nonnull align 4 dereferenceable(64) %16)
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !50 ; 3 uses
  %.not87 = icmp eq ptr %i.dd, null
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %17, align 16, !tbaa !33
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull align 4 dereferenceable(16) %i.ck, float noundef 2.000000e-01, ptr noundef nonnull align 4 dereferenceable(16) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dh = load ptr, ptr %5, align 8, !tbaa !9
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(196) %5, float noundef %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btPointCollector, i64 16), ptr %18, align 8, !tbaa !9
  store float f0x5D5E0B6B, ptr %i.cl, align 8, !tbaa !40
  store i8 0, ptr %i.cm, align 4, !tbaa !44
  call void @_ZN27btContinuousConvexCollision20computeClosestPointsERK11btTransformS2_R16btPointCollector(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(45) %18)
  %i.dj = load i8, ptr %i.cm, align 4, !tbaa !44, !range !45, !noundef !46
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = load float, ptr %i.cl, align 8, !tbaa !40
  %i.dm = load float, ptr %i.bu, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !31
  %exitcond = icmp eq i32 %.070188, 64
  br i1 %exitcond, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.dn = load ptr, ptr %5, align 8, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(196) %5, i32 noundef -1, i32 noundef %.070188)
  br label %.critedge.critedge

bb.o:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %5, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(196) %5, i32 noundef -2, i32 noundef 65)
  br label %.critedge.critedge

bb.p:                                             ; preds = %bb.m
  %i.dt = add nuw nsw i32 %.070188, 1
  %i.du = load <2 x float>, ptr %.sroa.12142.0..sroa_idx143, align 8 ; 2 uses
  %.sroa.9136.0.copyload138 = load float, ptr %.sroa.9136.0..sroa_idx137, align 4
  %i.dv = load <2 x float>, ptr %i.co, align 8    ; 2 uses
  %i.dw = fadd float %i.dl, %i.dm                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.dx = fcmp ogt float %i.dw, 1.000000e-03
  %i.dy = extractelement <2 x float> %i.dv, i64 0
  %i.dz = extractelement <2 x float> %i.du, i64 0
  br i1 %i.dx, label %bb.f, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.075.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.cz, %bb.p ]
  %i.ea = phi <2 x float> [ %i.by, %.preheader ], [ %i.dv, %bb.p ]
  %i.eb = phi <2 x float> [ %i.ci, %.preheader ], [ %i.du, %bb.p ]
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.075.lcssa, ptr %i.ec, align 8, !tbaa !53
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <2 x float> %i.ea, ptr %i.ed, align 8
  %.sroa.12142.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %i.eb, ptr %.sroa.12142.0..sroa_idx145, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !31
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %.critedge.critedge, %bb.d, %._crit_edge, %bb.e
  %.468 = phi i1 [ false, %bb.d ], [ true, %._crit_edge ], [ false, %.critedge.critedge ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %.critedge
  %.569 = phi i1 [ %.468, %.critedge ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
end_hunk_0
