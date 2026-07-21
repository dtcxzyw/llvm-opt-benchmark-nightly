inline.NumInlined: 560
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb:bb.a
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #6 align 2 {
bb.a:
  %6 = alloca %class.btTransform, align 8         ; 13 uses
  %7 = alloca %class.btVector4, align 8           ; 7 uses
  %8 = alloca %class.btAABB, align 4              ; 10 uses
  %9 = alloca %class.btVector3, align 8           ; 8 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.a, i64 16, i1 false), !tbaa.struct !111
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !111
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !111
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !111
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.9.16.copyload = load float, ptr %.sroa.9.16..sroa_idx, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.1032.32.copyload = load float, ptr %i.j, align 4
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.12.32.copyload = load float, ptr %.sroa.12.32..sroa_idx, align 4
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.13.32.copyload = load float, ptr %.sroa.13.32..sroa_idx, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1433.48.copyload = load float, ptr %i.k, align 4
  %.sroa.16.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.16.48.copyload = load float, ptr %.sroa.16.48..sroa_idx, align 4
  %.sroa.17.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.m = load float, ptr %i.l, align 4, !tbaa !56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = load float, ptr %i.n, align 4, !tbaa !56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.q = load float, ptr %i.p, align 4, !tbaa !56 ; 3 uses
  %i.r = load <2 x float>, ptr %i.h, align 4      ; 2 uses
  %i.s = load <2 x float>, ptr %i.i, align 4      ; 2 uses
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 1, i32 3>
  %i.u = insertelement <2 x float> poison, float %i.o, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.t, %i.v
  %i.x = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.y = insertelement <2 x float> poison, float %i.m, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.z, <2 x float> %i.w)
  %i.ab = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %.sroa.9.16.copyload, i64 1
  %i.ad = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.aa) ; 4 uses
  store <2 x float> %i.af, ptr %7, align 8, !tbaa !56
  %i.ag = fmul float %.sroa.12.32.copyload, %i.o
  %i.ah = tail call float @llvm.fmuladd.f32(float %.sroa.1032.32.copyload, float %i.m, float %i.ag)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.32.copyload, float %i.q, float %i.ah) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %i.ai, ptr %i.aj, align 8, !tbaa !56
  %i.ak = fmul float %.sroa.16.48.copyload, %i.o
  %i.al = tail call float @llvm.fmuladd.f32(float %.sroa.1433.48.copyload, float %i.m, float %i.ak)
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %.sroa.17.48.copyload, float %i.q, float %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.ao = load float, ptr %i.an, align 4, !tbaa !153
  %i.ap = fadd float %i.am, %i.ao                 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store float %i.ap, ptr %i.aq, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.ar)
  %i.av = load ptr, ptr %4, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef float %i.ax(ptr noundef nonnull align 8 dereferenceable(28) %4) ; 6 uses
  %i.az = load float, ptr %8, align 4, !tbaa !56
  %i.ba = fsub float %i.az, %i.ay                 ; 2 uses
  store float %i.ba, ptr %8, align 4, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !56
  %i.bd = fsub float %i.bc, %i.ay                 ; 2 uses
  store float %i.bd, ptr %i.bb, align 4, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !56
  %i.bg = fsub float %i.bf, %i.ay                 ; 2 uses
  store float %i.bg, ptr %i.be, align 4, !tbaa !56
  %i.bh = load float, ptr %i.ar, align 4, !tbaa !56
  %i.bi = fadd float %i.ay, %i.bh                 ; 3 uses
  store float %i.bi, ptr %i.ar, align 4, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !56
  %i.bl = fadd float %i.ay, %i.bk                 ; 3 uses
  store float %i.bl, ptr %i.bj, align 4, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !56
  %i.bo = fadd float %i.ay, %i.bn                 ; 3 uses
  store float %i.bo, ptr %i.bm, align 4, !tbaa !56
  %i.bp = fadd float %i.ba, %i.bi
  %i.bq = fadd float %i.bd, %i.bl
  %i.br = fadd float %i.bg, %i.bo
  %i.bs = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.bt = extractelement <2 x float> %i.af, i64 0
  %i.bu = call noundef float @llvm.fabs.f32(float %i.bt)
  %i.bv = call noundef float @llvm.fabs.f32(float %i.bs)
  %i.bw = call noundef float @llvm.fabs.f32(float %i.ai)
  %i.bx = fmul float %i.bp, 5.000000e-01          ; 2 uses
  %i.by = fmul float %i.bq, 5.000000e-01          ; 2 uses
  %i.bz = fmul float %i.br, 5.000000e-01          ; 2 uses
  %i.ca = fsub float %i.bi, %i.bx
  %i.cb = fsub float %i.bl, %i.by
  %i.cc = fsub float %i.bo, %i.bz
  %i.cd = fmul float %i.cb, %i.bv
  %i.ce = fmul float %i.by, %i.bs
  %i.cf = insertelement <2 x float> %i.af, float %i.bu, i64 1
  %i.cg = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.ca, i64 1
  %i.ci = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.cd, i64 1
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.cj)
  %i.cl = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.bw, i64 1
  %i.cn = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.cc, i64 1
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.co, <2 x float> %i.ck) ; 2 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cr = extractelement <2 x float> %i.cp, i64 1 ; 2 uses
  %i.cs = fsub float %i.cq, %i.cr
  %i.ct = fadd float %i.cq, %i.cr
  %i.cu = fadd float %i.ct, f0x358637BD
  %i.cv = fcmp ule float %i.ap, %i.cu
  %i.cw = fadd float %i.ap, f0x358637BD
  %i.cx = fcmp oge float %i.cw, %i.cs
  %.not = and i1 %i.cx, %i.cv
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.cy = load ptr, ptr %3, align 8, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 192
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(272) %3)
  %i.db = load ptr, ptr %3, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef float %i.dd(ptr noundef nonnull align 8 dereferenceable(272) %3)
  %i.df = load ptr, ptr %4, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef float %i.dh(ptr noundef nonnull align 8 dereferenceable(28) %4)
  %i.dj = fadd float %i.de, %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !156 ; 2 uses
  %.not2335 = icmp eq i32 %i.dl, 0
  br i1 %.not2335, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 236
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 204 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.in = phi i32 [ %i.dl, %.lr.ph ], [ %i.eh, %bb.k ]
  %i.eh = add nsw i32 %.in, -1                    ; 3 uses
  %i.ei = load i32, ptr %i.dm, align 4, !tbaa !162
  %i.ej = icmp eq i32 %i.ei, 1
  %i.ek = load ptr, ptr %i.dn, align 8, !tbaa !163
  %i.el = load i32, ptr %i.do, align 8, !tbaa !164
  %i.em = mul nsw i32 %i.el, %i.eh
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en ; 6 uses
  %i.ep = load float, ptr %i.dp, align 8, !tbaa !56 ; 2 uses
  br i1 %i.ej, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %11 = load double, ptr %i.eo, align 8, !tbaa !165
  %12 = fpext float %i.ep to double
  %13 = fmul double %11, %12
  %14 = fptrunc double %13 to float
  %15 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %16 = load double, ptr %15, align 8, !tbaa !165
  %17 = load float, ptr %i.dq, align 4, !tbaa !56
  %18 = fpext float %17 to double
  %19 = fmul double %16, %18
  %20 = fptrunc double %19 to float
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !165
  %i.es = load float, ptr %i.ds, align 8, !tbaa !56
  %i.et = fpext float %i.es to double
  %i.eu = fmul double %i.er, %i.et
  %i.ev = fptrunc double %i.eu to float
  br label %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit

bb.e:                                             ; preds = %bb.c
  %i.ew = load float, ptr %i.eo, align 4, !tbaa !56
  %21 = fmul float %i.ep, %i.ew                   ; 2 uses
  store float %21, ptr %9, align 8, !tbaa !56
  %22 = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %23 = load float, ptr %22, align 4, !tbaa !56
  %i.ex = load float, ptr %i.dq, align 4, !tbaa !56
  %i.ey = fmul float %23, %i.ex                   ; 2 uses
  store float %i.ey, ptr %i.dr, align 4, !tbaa !56
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !56
  %i.fb = load float, ptr %i.ds, align 8, !tbaa !56
  %i.fc = fmul float %i.fa, %i.fb
  br label %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit

_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit: ; preds = %bb.d, %bb.e
  %i.fd = phi float [ %20, %bb.d ], [ %i.ey, %bb.e ] ; 2 uses
  %24 = phi float [ %14, %bb.d ], [ %21, %bb.e ]  ; 2 uses
  %.sink.i.i = phi float [ %i.ev, %bb.d ], [ %i.fc, %bb.e ] ; 2 uses
  %i.fe = load <4 x float>, ptr %i.du, align 8
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fg = load float, ptr %i.dv, align 8, !tbaa !56
  %i.fh = load <2 x float>, ptr %6, align 8, !tbaa !56 ; 2 uses
  %i.fi = load <2 x float>, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %i.fj = shufflevector <2 x float> %i.fh, <2 x float> %i.fi, <2 x i32> <i32 1, i32 3>
  %25 = insertelement <2 x float> poison, float %i.fd, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.fj, %26
  %i.fl = shufflevector <2 x float> %i.fh, <2 x float> %i.fi, <2 x i32> <i32 0, i32 2>
  %27 = insertelement <2 x float> poison, float %24, i64 0
  %i.fm = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fm, <2 x float> %i.fk)
  %i.fo = insertelement <2 x float> %i.ff, float %i.fg, i64 1
  %i.fp = insertelement <2 x float> poison, float %.sink.i.i, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.fq, <2 x float> %i.fn)
  %i.fs = load <2 x float>, ptr %i.f, align 8, !tbaa !56
  %i.ft = fadd <2 x float> %i.fs, %i.fr           ; 3 uses
  %i.fu = load float, ptr %i.e, align 8, !tbaa !56
  %i.fv = load float, ptr %i.dw, align 4, !tbaa !56
  %i.fw = fmul float %i.fd, %i.fv
  %i.fx = call float @llvm.fmuladd.f32(float %i.fu, float %24, float %i.fw)
  %i.fy = load float, ptr %i.dx, align 8, !tbaa !56
  %i.fz = call noundef float @llvm.fmuladd.f32(float %i.fy, float %.sink.i.i, float %i.fx)
  %i.ga = load float, ptr %i.dy, align 8, !tbaa !56
  %i.gb = fadd float %i.ga, %i.fz                 ; 2 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gb, i64 0
  store <2 x float> %i.ft, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.dt, align 8, !tbaa !81
  %i.gc = load <2 x float>, ptr %7, align 8, !tbaa !56 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ft, %i.gc
  %i.gd = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ge = extractelement <2 x float> %i.gc, i64 0
  %i.gf = extractelement <2 x float> %i.ft, i64 0
  %i.gg = call float @llvm.fmuladd.f32(float %i.gf, float %i.ge, float %i.gd)
  %i.gh = load float, ptr %i.aj, align 8, !tbaa !56 ; 2 uses
  %i.gi = call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.gh, float %i.gg)
  %i.gj = load float, ptr %i.aq, align 4, !tbaa !56
  %i.gk = fsub float %i.gi, %i.gj
  %i.gl = fsub float %i.gk, %i.dj                 ; 3 uses
  %i.gm = fcmp olt float %i.gl, 0.000000e+00
  br i1 %i.gm, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit
  br i1 %5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.gn = fneg <2 x float> %i.gc
  %i.go = fneg float %i.gh
  %.sroa.3.12.vec.insert.i26 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.go, i64 0
  store <2 x float> %i.gn, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i26, ptr %i.eg, align 8
  %i.gp = load ptr, ptr %i.dz, align 8, !tbaa !25 ; 2 uses
  %i.gq = load i32, ptr %i.ea, align 4, !tbaa !26
  %i.gr = load i32, ptr %i.eb, align 8, !tbaa !27
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(176) %i.gp, i32 noundef %i.gq, i32 noundef %i.gr), !inline_history !101
  %i.gv = load ptr, ptr %i.dz, align 8, !tbaa !25 ; 2 uses
  %i.gw = load i32, ptr %i.ec, align 4, !tbaa !28
  %i.gx = load i32, ptr %i.ed, align 8, !tbaa !29
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(176) %i.gv, i32 noundef %i.gw, i32 noundef %i.gx), !inline_history !101
  %i.hb = load ptr, ptr %i.ee, align 8, !tbaa !10 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.h, label %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit

bb.h:                                             ; preds = %bb.g
  %i.hd = load ptr, ptr %i.ef, align 8, !tbaa !20 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = call noundef ptr %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef nonnull %2, ptr noundef nonnull %1), !inline_history !102 ; 2 uses
  store ptr %i.hh, ptr %i.ee, align 8, !tbaa !10
  br label %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit

_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit: ; preds = %bb.g, %bb.h
  %i.hi = phi ptr [ %i.hh, %bb.h ], [ %i.hb, %bb.g ]
  %i.hj = load ptr, ptr %i.dz, align 8, !tbaa !25 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %i.hi, ptr %i.hk, align 8, !tbaa !31
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(176) %i.hj, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.gl), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ho = load ptr, ptr %i.dz, align 8, !tbaa !25 ; 2 uses
  %i.hp = load i32, ptr %i.ea, align 4, !tbaa !26
  %i.hq = load i32, ptr %i.eb, align 8, !tbaa !27
  %i.hr = load ptr, ptr %i.ho, align 8, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(176) %i.ho, i32 noundef %i.hp, i32 noundef %i.hq), !inline_history !101
  %i.hu = load ptr, ptr %i.dz, align 8, !tbaa !25 ; 2 uses
  %i.hv = load i32, ptr %i.ec, align 4, !tbaa !28
  %i.hw = load i32, ptr %i.ed, align 8, !tbaa !29
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(176) %i.hu, i32 noundef %i.hv, i32 noundef %i.hw), !inline_history !101
  %i.ia = load ptr, ptr %i.ee, align 8, !tbaa !10 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.j, label %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit29

bb.j:                                             ; preds = %bb.i
  %i.ic = load ptr, ptr %i.ef, align 8, !tbaa !20 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call noundef ptr %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !102 ; 2 uses
  store ptr %i.ig, ptr %i.ee, align 8, !tbaa !10
  br label %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit29

_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit29: ; preds = %bb.i, %bb.j
  %i.ih = phi ptr [ %i.ig, %bb.j ], [ %i.ia, %bb.i ]
  %i.ii = load ptr, ptr %i.dz, align 8, !tbaa !25 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %i.ih, ptr %i.ij, align 8, !tbaa !31
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(176) %i.ii, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.gl), !inline_history !101
  br label %bb.k

bb.k:                                             ; preds = %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit, %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit29, %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit
  %.not23 = icmp eq i32 %i.eh, 0
  br i1 %.not23, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %i.in = load ptr, ptr %3, align 8, !tbaa !8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 200
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(272) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load <4 x float>, ptr %i.a, align 4      ; 7 uses
  %.sroa.516.0.copyload = load float, ptr %.sroa.516.0..sroa_idx, align 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.1027.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.1130.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.1233.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.d = load <4 x float>, ptr %i.c, align 4      ; 7 uses
  %.sroa.1027.16.copyload = load float, ptr %.sroa.1027.16..sroa_idx, align 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.sroa.1538.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.1641.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.1744.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.f = load <4 x float>, ptr %i.e, align 4      ; 5 uses
  %.sroa.1538.32.copyload = load float, ptr %.sroa.1538.32..sroa_idx, align 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.sroa.21.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load <4 x float>, ptr %i.g, align 4      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !167  ; 2 uses
  %.not55 = icmp eq i32 %i.j, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.20.48.copyload = load float, ptr %.sroa.20.48..sroa_idx, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = sext i32 %i.j to i64
  %i.m = extractelement <4 x float> %i.b, i64 0
  %i.n = extractelement <4 x float> %i.b, i64 2
  %i.o = extractelement <4 x float> %i.d, i64 0
  %i.p = extractelement <4 x float> %i.d, i64 2
  %i.q = extractelement <4 x float> %i.f, i64 0   ; 2 uses
  %i.r = extractelement <4 x float> %i.f, i64 2   ; 2 uses
  %i.s = extractelement <4 x float> %i.h, i64 2
  %i.t = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.u = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> zeroinitializer
  %i.v = insertelement <2 x float> poison, float %.sroa.516.0.copyload, i64 0 ; 2 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.y = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x float> poison, float %.sroa.1027.16.copyload, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ac = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %.sroa.1538.32.copyload, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.20.48.copyload, i64 1
  %i.ah = shufflevector <4 x float> %i.b, <4 x float> %i.d, <2 x i32> <i32 2, i32 6>
  %i.ai = shufflevector <4 x float> %i.b, <4 x float> %i.d, <2 x i32> <i32 0, i32 4>
  %i.aj = insertelement <2 x float> %i.v, float %.sroa.1027.16.copyload, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !171
  %i.al = getelementptr inbounds [88 x i8], ptr %i.ak, i64 %indvars.iv.next ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !172
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !56, !noalias !175 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.at = load float, ptr %i.as, align 8, !tbaa !56, !noalias !175 ; 3 uses
  %i.au = fmul float %.sroa.516.0.copyload, %i.at
end_hunk_0
