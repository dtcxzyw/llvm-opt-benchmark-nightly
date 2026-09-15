Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/shape?download=true
inline.NumInlined: 319
inline.NumDeleted: 46
begin_hunk_0_@b3GetHullPlanes:bb.a

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @343, i64 %i.b, i64 %i.i) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0, !nosanitize !9
  %i.m = inttoptr i64 %i.l to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.0 = phi ptr [ %i.m, %bb.f ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @b3ShapeTimeOfImpact(ptr dead_on_unwind noalias writable sret(%struct.b3TOIOutput) align 4 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5) local_unnamed_addr #0 !func_sanitize !392 {
bb.a:
  %6 = alloca %struct.b3CompoundImpactContext, align 8 ; 17 uses
  %7 = alloca %struct.b3Transform, align 4        ; 3 uses
  %8 = alloca %struct.b3AABB, align 8             ; 7 uses
  %9 = alloca %struct.b3AABB, align 8             ; 8 uses
  %10 = alloca %struct.b3MeshImpactContext, align 8 ; 21 uses
  %11 = alloca %struct.b3AABB, align 8            ; 7 uses
  %12 = alloca %struct.b3AABB, align 8            ; 8 uses
  %13 = alloca %struct.b3TOIInput, align 8        ; 10 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @215, i64 %i.b) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !119
  %i.h = icmp ne i32 %i.g, -1
  %i.i = zext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !95   ; 3 uses
  switch i32 %i.k, label %bb.am [
    i32 1, label %bb.d
    i32 4, label %bb.s
    i32 2, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %6, i8 0, i64 280, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp ne ptr %2, null, !nosanitize !9
  %i.n = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.o = and i64 %i.n, 7, !nosanitize !9
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !9
  %i.q = and i1 %i.m, %i.p, !nosanitize !9
  br i1 %i.q, label %bb.f, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @72, i64 %i.n) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !95
  switch i32 %i.s, label %b3MakeShapeProxy.exit [
    i32 0, label %bb.g
    i32 5, label %bb.h
    i32 3, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.v = load i32, ptr %i.u, align 8, !tbaa !88
  br label %b3MakeShapeProxy.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.y = load i32, ptr %i.x, align 4, !tbaa !88
  br label %b3MakeShapeProxy.exit

bb.i:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88  ; 4 uses
  %i.ab = icmp ne ptr %i.aa, null, !nosanitize !9
  %i.ac = ptrtoint ptr %i.aa to i64, !nosanitize !9 ; 4 uses
  %i.ad = and i64 %i.ac, 7, !nosanitize !9
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !9
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !9
  br i1 %i.af, label %bb.k, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @322, i64 %i.ac) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 108
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !167 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %b3GetHullPoints.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = sext i32 %i.ah to i64                   ; 2 uses
  %i.ak = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ac, i64 %i.aj), !nosanitize !9 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1, !nosanitize !9
  br i1 %i.al, label %bb.m, label %bb.n, !prof !86, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @324, i64 %i.ac, i64 %i.aj) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.am = extractvalue { i64, i1 } %i.ak, 0, !nosanitize !9
  %i.an = inttoptr i64 %i.am to ptr
  br label %b3GetHullPoints.exit.i

b3GetHullPoints.exit.i:                           ; preds = %bb.k, %bb.n
  %.0.i.i = phi ptr [ %i.an, %bb.n ], [ null, %bb.k ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 100
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !168
  %i.aq = zext i32 %i.ap to i64
  br label %b3MakeShapeProxy.exit

b3MakeShapeProxy.exit:                            ; preds = %bb.f, %bb.g, %bb.h, %b3GetHullPoints.exit.i
  %.sroa.5.0.i = phi i64 [ %i.aq, %b3GetHullPoints.exit.i ], [ 2, %bb.g ], [ 1, %bb.h ], [ 0, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %.0.i.i, %b3GetHullPoints.exit.i ], [ %i.t, %bb.g ], [ %i.w, %bb.h ], [ null, %bb.f ]
  %i.ar = phi i32 [ 0, %b3GetHullPoints.exit.i ], [ %i.v, %bb.g ], [ %i.y, %bb.h ], [ 0, %bb.f ]
  %.sroa.10.8.insert.ext.i = zext i32 %i.ar to i64
  %.sroa.10.8.insert.shift.i = shl nuw i64 %.sroa.10.8.insert.ext.i, 32
  %.sroa.5.8.insert.insert.i = or disjoint i64 %.sroa.10.8.insert.shift.i, %.sroa.5.0.i
  store ptr %.sroa.0.0.i, ptr %i.l, align 8, !tbaa !164
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.5.8.insert.insert.i, ptr %.sroa.4100.0..sroa_idx, align 8
  %i.as = icmp ne ptr %4, null, !nosanitize !9
  %i.at = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.au = and i64 %i.at, 3, !nosanitize !9
  %i.av = icmp eq i64 %i.au, 0, !nosanitize !9
  %i.aw = and i1 %i.as, %i.av, !nosanitize !9
  br i1 %i.aw, label %bb.p, label %bb.o, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %b3MakeShapeProxy.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @217, i64 %i.at) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %b3MakeShapeProxy.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.ax, ptr noundef nonnull align 4 dereferenceable(68) %4, i64 68, i1 false), !tbaa.struct !181
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 168
  store float %5, ptr %i.ay, align 8, !tbaa !186
  %i.az = icmp ne ptr %3, null, !nosanitize !9
  %i.ba = ptrtoint ptr %3 to i64, !nosanitize !9  ; 2 uses
  %i.bb = and i64 %i.ba, 3, !nosanitize !9
  %i.bc = icmp eq i64 %i.bb, 0, !nosanitize !9
  %i.bd = and i1 %i.az, %i.bc, !nosanitize !9
  br i1 %i.bd, label %bb.r, label %bb.q, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @218, i64 %i.ba) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 228 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i64 12, i1 false), !tbaa.struct !162
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.be, ptr noundef nonnull align 4 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !87
  %i.bi = tail call { <2 x float>, float } @b3GetShapeCentroid(ptr noundef nonnull %2) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 280
  %.fca.1.extract94 = extractvalue { <2 x float>, float } %i.bi, 1 ; 2 uses
  %.fca.0.extract93 = extractvalue { <2 x float>, float } %i.bi, 0 ; 2 uses
  store <2 x float> %.fca.0.extract93, ptr %i.bj, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 288
  store float %.fca.1.extract94, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !76
  %i.bk = tail call { <2 x float>, <2 x float> } @b3ComputeShapeExtent(ptr noundef nonnull %2, <2 x float> %.fca.0.extract93, float %.fca.1.extract94)
  %i.bl = extractvalue { <2 x float>, <2 x float> } %i.bk, 0
  %.sroa.0497.0.vec.extract = extractelement <2 x float> %i.bl, i64 0
  %i.bm = fmul float %.sroa.0497.0.vec.extract, 7.500000e-01 ; 2 uses
  %i.bn = tail call float @b3GetLengthUnitsPerMeter() #12
  %i.bo = fmul float %i.bn, 5.000000e-03
  %i.bp = fmul float %i.bo, 4.000000e+00          ; 2 uses
  %i.bq = fcmp ogt float %i.bm, %i.bp
  %i.br = select i1 %i.bq, float %i.bm, float %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 292
  store float %i.br, ptr %i.bs, align 4, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @b3ComputeSweptShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %8, ptr noundef nonnull %2, ptr noundef nonnull %4, float noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %.sroa.0567.0.copyload = load <2 x float>, ptr %i.be, align 4 ; 4 uses
  %.sroa.4568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 236
  %.sroa.4568.0.copyload = load float, ptr %.sroa.4568.0..sroa_idx, align 4, !tbaa !76 ; 4 uses
  %.sroa.5569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 240
  %.sroa.5569.0.copyload = load <2 x float>, ptr %.sroa.5569.0..sroa_idx, align 8 ; 16 uses
  %.sroa.6570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 248
  %.sroa.6570.0.copyload = load <2 x float>, ptr %.sroa.6570.0..sroa_idx, align 8 ; 9 uses
  %.sroa.2.8.vec.extract65.i.i = extractelement <2 x float> %.sroa.6570.0.copyload, i64 0
  %.sroa.2.8.vec.extract65.i.i.a = extractelement <2 x float> %.sroa.5569.0.copyload, i64 0
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.6570.0.copyload, i64 1
  %i.bt = fneg float %.sroa.2.8.vec.extract65.i.i
  %.sroa.0536.0.copyload = load <2 x float>, ptr %8, align 8 ; 2 uses
  %.sroa.5538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.5538.0.copyload = load float, ptr %.sroa.5538.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.7539.0.copyload = load <2 x float>, ptr %.sroa.7539.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.sroa.9541.0.copyload = load float, ptr %.sroa.9541.0..sroa_idx, align 4 ; 2 uses
  %i.bu = fmul float %.sroa.4568.0.copyload, %.sroa.2.8.vec.extract65.i.i.a
  %foldExtExtBinop = fmul <2 x float> %.sroa.0567.0.copyload, %.sroa.6570.0.copyload
  %i.bv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bw = shufflevector <2 x float> %.sroa.5569.0.copyload, <2 x float> %.sroa.6570.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bx = fmul <2 x float> %.sroa.0567.0.copyload, %i.bw
  %i.by = shufflevector <2 x float> %.sroa.0567.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bz = insertelement <2 x float> %i.by, float %.sroa.4568.0.copyload, i64 1 ; 2 uses
  %i.ca = fmul <2 x float> %i.bz, %.sroa.5569.0.copyload
  %i.cb = fsub <2 x float> %i.bx, %i.ca           ; 2 uses
  %i.cc = fsub float %i.bu, %i.bv
  %i.cd = insertelement <2 x float> %i.by, float %.sroa.4568.0.copyload, i64 0
  %i.ce = shufflevector <2 x float> %.sroa.6570.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.cf = fmul <2 x float> %i.cd, %i.ce
  %i.cg = fmul <2 x float> %i.bz, %i.ce
  %i.ch = fadd <2 x float> %i.cb, %i.cf           ; 2 uses
  %i.ci = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %i.cc, i64 0
  %i.ck = fadd <2 x float> %i.cg, %i.cj           ; 2 uses
  %i.cl = fmul <2 x float> %i.bw, %i.ch
  %i.cm = shufflevector <2 x float> %.sroa.6570.0.copyload, <2 x float> %.sroa.5569.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cn = fmul <2 x float> %i.cm, %i.ck
  %i.co = fsub <2 x float> %i.cl, %i.cn
  %foldExtExtBinop609 = fmul <2 x float> %.sroa.5569.0.copyload, %i.ck
  %foldExtExtBinop611 = fmul <2 x float> %.sroa.5569.0.copyload, %i.ch
  %shift = shufflevector <2 x float> %foldExtExtBinop611, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop613 = fsub <2 x float> %foldExtExtBinop609, %shift
  %i.cp = extractelement <2 x float> %foldExtExtBinop613, i64 0
  %i.cq = fmul <2 x float> %i.co, splat (float 2.000000e+00)
  %i.cr = fsub <2 x float> %i.cq, %.sroa.0567.0.copyload
  %i.cs = fmul float %i.cp, 2.000000e+00
  %i.ct = fsub float %i.cs, %.sroa.4568.0.copyload
  %i.cu = fneg <2 x float> %.sroa.5569.0.copyload
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = fadd <2 x float> %.sroa.0536.0.copyload, %.sroa.7539.0.copyload
  %i.cx = fadd float %.sroa.5538.0.copyload, %.sroa.9541.0.copyload
  %i.cy = fmul <2 x float> %i.cw, splat (float 5.000000e-01) ; 5 uses
  %i.cz = fmul float %i.cx, 5.000000e-01          ; 4 uses
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.db = insertelement <2 x float> %i.da, float %i.cz, i64 0
  %i.dc = fmul <2 x float> %.sroa.5569.0.copyload, %i.db
  %i.dd = fmul <2 x float> %i.bw, %i.cy
  %i.de = fmul <2 x float> %i.cm, %i.cy
  %i.df = insertelement <2 x float> %i.da, float %i.cz, i64 1 ; 2 uses
  %i.dg = fmul <2 x float> %.sroa.5569.0.copyload, %i.df
  %i.dh = fsub <2 x float> %i.dc, %i.de
  %i.di = fsub <2 x float> %i.dd, %i.dg
  %i.dj = fmul <2 x float> %i.ce, %i.df
  %i.dk = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.dm = fmul <2 x float> %i.ce, %i.dl
  %i.dn = fadd <2 x float> %i.dj, %i.dh           ; 2 uses
  %i.do = fadd <2 x float> %i.dm, %i.di           ; 2 uses
  %i.dp = fmul <2 x float> %i.cm, %i.dn
  %i.dq = fmul <2 x float> %i.bw, %i.do
  %i.dr = fsub <2 x float> %i.dp, %i.dq
  %foldExtExtBinop615 = fmul <2 x float> %.sroa.5569.0.copyload, %i.do
  %foldExtExtBinop617 = fmul <2 x float> %.sroa.5569.0.copyload, %i.dn
  %shift619 = shufflevector <2 x float> %foldExtExtBinop615, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop620 = fsub <2 x float> %shift619, %foldExtExtBinop617
  %i.ds = extractelement <2 x float> %foldExtExtBinop620, i64 0
  %i.dt = fmul <2 x float> %i.dr, splat (float 2.000000e+00)
  %i.du = fadd <2 x float> %i.cy, %i.dt
  %i.dv = fmul float %i.ds, 2.000000e+00
  %i.dw = fadd float %i.cz, %i.dv
  %i.dx = fadd <2 x float> %i.cr, %i.du           ; 2 uses
  %i.dy = fadd float %i.ct, %i.dw                 ; 2 uses
  %i.dz = fmul <2 x float> %i.ce, %i.cv           ; 4 uses
  %i.ea = shufflevector <2 x float> %.sroa.6570.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %.sroa.5569.0.copyload, %i.ea ; 4 uses
  %i.ec = fmul <2 x float> %.sroa.5569.0.copyload, %.sroa.5569.0.copyload ; 2 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop622 = fsub <2 x float> %i.eb, %i.dz
  %i.ee = extractelement <2 x float> %foldExtExtBinop622, i64 0
  %i.ef = fmul float %i.ee, 2.000000e+00          ; 3 uses
  %i.eg = fsub float %.sroa.9541.0.copyload, %.sroa.5538.0.copyload
  %foldExtExtBinop624 = fmul <2 x float> %.sroa.6570.0.copyload, %.sroa.6570.0.copyload
  %14 = fmul float %.sroa.09.0.vec.extract.i.i.i, %i.bt ; 2 uses
  %shift626 = shufflevector <2 x float> %.sroa.5569.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop627 = fmul <2 x float> %.sroa.5569.0.copyload, %shift626
  %i.eh = extractelement <2 x float> %foldExtExtBinop627, i64 0 ; 2 uses
  %15 = fmul float %i.eg, 5.000000e-01            ; 2 uses
  %i.ei = fadd float %i.eh, %14
  %i.ej = fsub float %i.eh, %14
  %i.ek = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ei, i64 1
  %i.em = fmul <2 x float> %i.el, splat (float 2.000000e+00) ; 3 uses
  %16 = shufflevector <2 x float> %foldExtExtBinop624, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fadd <2 x float> %i.ed, %16
  %i.eo = fmul <2 x float> %i.en, splat (float 2.000000e+00)
  %i.ep = fsub <2 x float> splat (float 1.000000e+00), %i.eo ; 3 uses
  %foldExtExtBinop624.a = fadd <2 x float> %i.eb, %i.dz
  %i.eq = extractelement <2 x float> %foldExtExtBinop624.a, i64 1
  %i.er = fmul float %i.eq, 2.000000e+00          ; 3 uses
  %i.es = fadd <2 x float> %i.eb, %i.dz
  %i.et = fsub <2 x float> %i.eb, %i.dz
  %i.eu = shufflevector <2 x float> %i.es, <2 x float> %i.et, <2 x i32> <i32 0, i32 3>
  %i.ev = fmul <2 x float> %i.eu, splat (float 2.000000e+00) ; 3 uses
  %i.ew = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ec)
  %i.ex = fmul float %i.ew, 2.000000e+00
  %i.ey = fsub float 1.000000e+00, %i.ex          ; 3 uses
  %i.ez = fcmp olt float %i.ef, 0.000000e+00
  %i.fa = fneg float %i.ef
  %i.fb = select i1 %i.ez, float %i.fa, float %i.ef
  %i.fc = fcmp olt <2 x float> %i.em, zeroinitializer
  %i.fd = fneg <2 x float> %i.em
  %i.fe = select <2 x i1> %i.fc, <2 x float> %i.fd, <2 x float> %i.em
  %i.ff = fcmp olt <2 x float> %i.ep, zeroinitializer
  %i.fg = fneg <2 x float> %i.ep
  %i.fh = select <2 x i1> %i.ff, <2 x float> %i.fg, <2 x float> %i.ep
  %i.fi = fcmp olt float %i.er, 0.000000e+00
  %i.fj = fneg float %i.er
  %i.fk = select i1 %i.fi, float %i.fj, float %i.er
  %i.fl = fcmp olt <2 x float> %i.ev, zeroinitializer
  %i.fm = fneg <2 x float> %i.ev
  %i.fn = select <2 x i1> %i.fl, <2 x float> %i.fm, <2 x float> %i.ev
  %i.fo = fcmp olt float %i.ey, 0.000000e+00
  %i.fp = fneg float %i.ey
  %i.fq = select i1 %i.fo, float %i.fp, float %i.ey
  %i.fr = fsub <2 x float> %.sroa.7539.0.copyload, %.sroa.0536.0.copyload
  %i.fs = fmul <2 x float> %i.fr, splat (float 5.000000e-01) ; 4 uses
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fu = extractelement <2 x float> %i.fs, i64 0
  %i.fv = fmul float %i.fu, %i.fb
  %i.fw = extractelement <2 x float> %i.fs, i64 1
  %i.fx = fmul float %i.fw, %i.fk
  %i.fy = fadd float %i.fv, %i.fx
  %i.fz = fmul <2 x float> %i.ft, %i.fe
  %i.ga = fmul <2 x float> %i.fs, %i.fh
  %i.gb = fadd <2 x float> %i.fz, %i.ga
  %17 = insertelement <2 x float> poison, float %15, i64 0
  %i.gc = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x float> %i.gc, %i.fn
  %i.ge = fadd <2 x float> %i.gd, %i.gb           ; 2 uses
  %i.gf = fmul float %15, %i.fq
  %i.gg = fadd float %i.gf, %i.fy                 ; 2 uses
  %i.gh = fsub <2 x float> %i.dx, %i.ge
  %i.gi = fsub float %i.dy, %i.gg
  store <2 x float> %i.gh, ptr %9, align 8, !alias.scope !393
  %.sroa.28.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.gi, ptr %.sroa.28.0..sroa_idx.i174, align 8, !alias.scope !393
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.gk = fadd <2 x float> %i.ge, %i.dx
  %i.gl = fadd float %i.gg, %i.dy
  store <2 x float> %i.gk, ptr %i.gj, align 4, !alias.scope !393
  %.sroa.2.0..sroa_idx.i177 = getelementptr inbounds nuw i8, ptr %9, i64 20
  store float %i.gl, ptr %.sroa.2.0..sroa_idx.i177, align 4, !alias.scope !393
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !113
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !88
  call void @b3QueryCompound(ptr noundef %i.go, ptr noundef nonnull byval(%struct.b3AABB) align 8 %9, ptr noundef nonnull @b3CompoundTimeOfImpactFcn, ptr noundef nonnull %6) #12
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %i.gp, i64 52, i1 false), !tbaa.struct !188
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.bj

bb.s:                                             ; preds = %bb.c, %bb.c
  %i.gq = tail call i64 @b3GetTicks() #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %10, i8 0, i64 280, i1 false)
  %i.gr = icmp ne ptr %3, null, !nosanitize !9
  %i.gs = ptrtoint ptr %3 to i64, !nosanitize !9  ; 2 uses
  %i.gt = and i64 %i.gs, 3, !nosanitize !9
  %i.gu = icmp eq i64 %i.gt, 0, !nosanitize !9
  %i.gv = and i1 %i.gr, %i.gu, !nosanitize !9
  br i1 %i.gv, label %bb.u, label %bb.t, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @219, i64 %i.gs) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.gw, ptr noundef nonnull align 4 dereferenceable(68) %3, i64 68, i1 false), !tbaa.struct !181
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.gx, align 8, !tbaa !190
  %i.gy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gz = icmp ne ptr %2, null, !nosanitize !9
  %i.ha = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.hb = and i64 %i.ha, 7, !nosanitize !9
  %i.hc = icmp eq i64 %i.hb, 0, !nosanitize !9
  %i.hd = and i1 %i.gz, %i.hc, !nosanitize !9
  br i1 %i.hd, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @72, i64 %i.ha) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !95
  switch i32 %i.hf, label %b3MakeShapeProxy.exit232 [
    i32 0, label %bb.x
    i32 5, label %bb.y
    i32 3, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !88
  br label %b3MakeShapeProxy.exit232

bb.y:                                             ; preds = %bb.w
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !88
  br label %b3MakeShapeProxy.exit232

bb.z:                                             ; preds = %bb.w
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !88 ; 4 uses
  %i.ho = icmp ne ptr %i.hn, null, !nosanitize !9
  %i.hp = ptrtoint ptr %i.hn to i64, !nosanitize !9 ; 4 uses
  %i.hq = and i64 %i.hp, 7, !nosanitize !9
  %i.hr = icmp eq i64 %i.hq, 0, !nosanitize !9
  %i.hs = and i1 %i.ho, %i.hr, !nosanitize !9
  br i1 %i.hs, label %bb.ab, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @322, i64 %i.hp) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 108
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !167 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %b3GetHullPoints.exit.i223, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hw = sext i32 %i.hu to i64                   ; 2 uses
  %i.hx = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hp, i64 %i.hw), !nosanitize !9 ; 2 uses
  %i.hy = extractvalue { i64, i1 } %i.hx, 1, !nosanitize !9
  br i1 %i.hy, label %bb.ad, label %bb.ae, !prof !86, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @324, i64 %i.hp, i64 %i.hw) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.hz = extractvalue { i64, i1 } %i.hx, 0, !nosanitize !9
  %i.ia = inttoptr i64 %i.hz to ptr
  br label %b3GetHullPoints.exit.i223

b3GetHullPoints.exit.i223:                        ; preds = %bb.ab, %bb.ae
  %.0.i.i224 = phi ptr [ %i.ia, %bb.ae ], [ null, %bb.ab ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 100
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !168
  %i.id = zext i32 %i.ic to i64
  br label %b3MakeShapeProxy.exit232

b3MakeShapeProxy.exit232:                         ; preds = %bb.w, %bb.x, %bb.y, %b3GetHullPoints.exit.i223
  %.sroa.5.0.i225 = phi i64 [ %i.id, %b3GetHullPoints.exit.i223 ], [ 2, %bb.x ], [ 1, %bb.y ], [ 0, %bb.w ]
  %.sroa.0.0.i226 = phi ptr [ %.0.i.i224, %b3GetHullPoints.exit.i223 ], [ %i.hg, %bb.x ], [ %i.hj, %bb.y ], [ null, %bb.w ]
  %i.ie = phi i32 [ 0, %b3GetHullPoints.exit.i223 ], [ %i.hi, %bb.x ], [ %i.hl, %bb.y ], [ 0, %bb.w ]
  %.sroa.10.8.insert.ext.i228 = zext i32 %i.ie to i64
  %.sroa.10.8.insert.shift.i229 = shl nuw i64 %.sroa.10.8.insert.ext.i228, 32
  %.sroa.5.8.insert.insert.i230 = or disjoint i64 %.sroa.10.8.insert.shift.i229, %.sroa.5.0.i225
  store ptr %.sroa.0.0.i226, ptr %i.gy, align 8, !tbaa !164
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.sroa.5.8.insert.insert.i230, ptr %.sroa.490.0..sroa_idx, align 8
  %i.if = icmp ne ptr %4, null, !nosanitize !9
  %i.ig = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.ih = and i64 %i.ig, 3, !nosanitize !9
  %i.ii = icmp eq i64 %i.ih, 0, !nosanitize !9
  %i.ij = and i1 %i.if, %i.ii, !nosanitize !9
  br i1 %i.ij, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %b3MakeShapeProxy.exit232
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @220, i64 %i.ig) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %b3MakeShapeProxy.exit232
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.ik, ptr noundef nonnull align 4 dereferenceable(68) %4, i64 68, i1 false), !tbaa.struct !181
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 168
  store float %5, ptr %i.il, align 8, !tbaa !191
  %i.im = getelementptr inbounds nuw i8, ptr %10, i64 268
  store i8 %i.i, ptr %i.im, align 4, !tbaa !192
  %i.in = tail call { <2 x float>, float } @b3GetShapeCentroid(ptr noundef nonnull %2) ; 2 uses
  %.fca.0.extract83 = extractvalue { <2 x float>, float } %i.in, 0 ; 9 uses
  %.fca.1.extract84 = extractvalue { <2 x float>, float } %i.in, 1 ; 8 uses
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 228
  store <2 x float> %.fca.0.extract83, ptr %i.io, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 236
  store float %.fca.1.extract84, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !76
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ir = load <2 x float>, ptr %i.iq, align 4    ; 22 uses
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.it = load <2 x float>, ptr %i.is, align 4    ; 12 uses
  %.sroa.079.0.copyload = load <2 x float>, ptr %3, align 4 ; 4 uses
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.280.0.copyload = load float, ptr %.sroa.280.0..sroa_idx, align 4 ; 4 uses
  %.sroa.2.8.vec.extract65.i233 = extractelement <2 x float> %i.it, i64 0
  %.sroa.2.8.vec.extract65.i233.a = extractelement <2 x float> %i.ir, i64 1 ; 5 uses
  %.sroa.09.4.vec.extract13.i.i234 = extractelement <2 x float> %i.ir, i64 0 ; 3 uses
  %.sroa.09.0.vec.extract.i.i237 = extractelement <2 x float> %i.it, i64 1
  %.sroa.073.0.copyload = load <2 x float>, ptr %i.ip, align 4
  %.sroa.274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.274.0.copyload = load float, ptr %.sroa.274.0..sroa_idx, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.iw = load <2 x float>, ptr %i.iv, align 4    ; 8 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.iy = load <2 x float>, ptr %i.ix, align 4    ; 5 uses
  %.sroa.063.0.copyload = load <2 x float>, ptr %4, align 4 ; 7 uses
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.264.0.copyload = load float, ptr %.sroa.264.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.0.vec.extract.i.i255 = extractelement <2 x float> %i.iw, i64 0 ; 2 uses
  %.sroa.057.0.copyload = load <2 x float>, ptr %i.iu, align 4
  %.sroa.258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.258.0.copyload = load float, ptr %.sroa.258.0..sroa_idx, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 52
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.242.0.copyload = load float, ptr %.sroa.242.0..sroa_idx, align 4
  %i.ja = load <2 x float>, ptr %i.iz, align 4    ; 7 uses
  %.sroa.09.0.vec.extract.i.i273 = extractelement <2 x float> %i.ja, i64 0 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.jc = load <2 x float>, ptr %i.jb, align 4    ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.041.0.copyload = load <2 x float>, ptr %i.jd, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 240
  %foldExtExtBinop626 = fmul <2 x float> %i.it, %.sroa.079.0.copyload
  %i.jf = extractelement <2 x float> %foldExtExtBinop626, i64 0
  %i.jg = fmul float %.sroa.09.4.vec.extract13.i.i234, %.sroa.280.0.copyload
  %i.jh = shufflevector <2 x float> %.sroa.079.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ji = insertelement <2 x float> %i.jh, float %.sroa.280.0.copyload, i64 1 ; 2 uses
  %i.jj = fmul <2 x float> %i.ir, %i.ji
  %i.jk = shufflevector <2 x float> %i.ir, <2 x float> %i.it, <2 x i32> <i32 1, i32 2> ; 8 uses
  %i.jl = fmul <2 x float> %i.jk, %.sroa.079.0.copyload
  %i.jm = fsub <2 x float> %i.jj, %i.jl           ; 2 uses
  %i.jn = fsub float %i.jf, %i.jg
  %i.jo = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 9 uses
  %i.jp = insertelement <2 x float> %i.jh, float %.sroa.280.0.copyload, i64 0
  %i.jq = fmul <2 x float> %i.jo, %i.jp
  %i.jr = fmul <2 x float> %i.jo, %i.ji
  %i.js = fadd <2 x float> %i.jq, %i.jm           ; 2 uses
  %i.jt = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ju = insertelement <2 x float> %i.jt, float %i.jn, i64 0
  %i.jv = fadd <2 x float> %i.jr, %i.ju           ; 2 uses
  %i.jw = fmul <2 x float> %i.jk, %i.js
  %i.jx = shufflevector <2 x float> %i.it, <2 x float> %i.ir, <2 x i32> <i32 0, i32 2> ; 8 uses
  %i.jy = fmul <2 x float> %i.jx, %i.jv
  %i.jz = fsub <2 x float> %i.jw, %i.jy
  %i.ka = fmul <2 x float> %i.jz, splat (float 2.000000e+00)
  %i.kb = fadd <2 x float> %.sroa.079.0.copyload, %i.ka
  %i.kc = fsub <2 x float> %.sroa.073.0.copyload, %i.kb ; 7 uses
  %foldExtExtBinop628 = fmul <2 x float> %i.iy, %.sroa.063.0.copyload
  %i.kd = extractelement <2 x float> %foldExtExtBinop628, i64 0
  %i.ke = fmul float %.sroa.09.0.vec.extract.i.i255, %.sroa.264.0.copyload
  %i.kf = shufflevector <2 x float> %.sroa.063.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kg = insertelement <2 x float> %i.kf, float %.sroa.264.0.copyload, i64 1 ; 4 uses
  %i.kh = fmul <2 x float> %i.iw, %i.kg
  %i.ki = shufflevector <2 x float> %i.iw, <2 x float> %i.iy, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.kj = fmul <2 x float> %i.ki, %.sroa.063.0.copyload
  %i.kk = fsub <2 x float> %i.kh, %i.kj           ; 2 uses
  %i.kl = fsub float %i.kd, %i.ke
  %i.km = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.kn = insertelement <2 x float> %i.kf, float %.sroa.264.0.copyload, i64 0 ; 2 uses
  %i.ko = fmul <2 x float> %i.km, %i.kn
  %i.kp = fmul <2 x float> %i.km, %i.kg
  %i.kq = fadd <2 x float> %i.ko, %i.kk           ; 2 uses
  %i.kr = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ks = insertelement <2 x float> %i.kr, float %i.kl, i64 0
  %i.kt = fadd <2 x float> %i.kp, %i.ks           ; 2 uses
  %i.ku = fmul <2 x float> %i.ki, %i.kq
  %i.kv = shufflevector <2 x float> %i.iy, <2 x float> %i.iw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kw = fmul <2 x float> %i.kv, %i.kt
  %i.kx = fsub <2 x float> %i.ku, %i.kw
  %i.ky = fmul <2 x float> %i.kx, splat (float 2.000000e+00)
  %i.kz = fadd <2 x float> %.sroa.063.0.copyload, %i.ky
  %i.la = fsub <2 x float> %.sroa.057.0.copyload, %i.kz
  %i.lb = shufflevector <2 x float> %i.iw, <2 x float> %i.ir, <2 x i32> <i32 0, i32 2>
  %i.lc = shufflevector <2 x float> %i.kt, <2 x float> %i.jv, <2 x i32> <i32 0, i32 2>
  %i.ld = fmul <2 x float> %i.lb, %i.lc
  %i.le = shufflevector <2 x float> %i.iw, <2 x float> %i.ir, <2 x i32> <i32 1, i32 3>
  %i.lf = shufflevector <2 x float> %i.kq, <2 x float> %i.js, <2 x i32> <i32 1, i32 3>
  %i.lg = fmul <2 x float> %i.le, %i.lf
  %i.lh = fsub <2 x float> %i.ld, %i.lg
  %i.li = fmul <2 x float> %i.lh, splat (float 2.000000e+00)
  %i.lj = insertelement <2 x float> poison, float %.sroa.264.0.copyload, i64 0 ; 2 uses
  %i.lk = insertelement <2 x float> %i.lj, float %.sroa.280.0.copyload, i64 1
  %i.ll = fadd <2 x float> %i.lk, %i.li
  %i.lm = insertelement <2 x float> poison, float %.sroa.258.0.copyload, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %.sroa.274.0.copyload, i64 1
  %i.lo = fsub <2 x float> %i.ln, %i.ll           ; 4 uses
  %foldExtExtBinop630 = fmul <2 x float> %.fca.0.extract83, %i.iy
  %i.lp = extractelement <2 x float> %foldExtExtBinop630, i64 0
  %i.lq = fmul float %.fca.1.extract84, %.sroa.09.0.vec.extract.i.i255
  %i.lr = shufflevector <2 x float> %.fca.0.extract83, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ls = insertelement <2 x float> %i.lr, float %.fca.1.extract84, i64 1 ; 4 uses
  %i.lt = fmul <2 x float> %i.ls, %i.iw
  %i.lu = fmul <2 x float> %.fca.0.extract83, %i.ki
  %i.lv = fsub <2 x float> %i.lt, %i.lu           ; 2 uses
  %i.lw = fsub float %i.lp, %i.lq
  %i.lx = insertelement <2 x float> %i.lr, float %.fca.1.extract84, i64 0 ; 2 uses
  %i.ly = fmul <2 x float> %i.lx, %i.km
  %i.lz = fmul <2 x float> %i.ls, %i.km
  %i.ma = fadd <2 x float> %i.lv, %i.ly           ; 2 uses
  %i.mb = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mc = insertelement <2 x float> %i.mb, float %i.lw, i64 0
  %i.md = fadd <2 x float> %i.lz, %i.mc           ; 2 uses
  %i.me = fmul <2 x float> %i.ki, %i.ma
  %i.mf = fmul <2 x float> %i.kv, %i.md
  %i.mg = fsub <2 x float> %i.me, %i.mf
  %i.mh = shufflevector <2 x float> %i.md, <2 x float> %i.ma, <2 x i32> <i32 0, i32 3>
  %i.mi = fmul <2 x float> %i.iw, %i.mh           ; 2 uses
  %shift632 = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop633 = fsub <2 x float> %i.mi, %shift632
  %i.mj = extractelement <2 x float> %foldExtExtBinop633, i64 0
  %i.mk = fmul <2 x float> %i.mg, splat (float 2.000000e+00)
  %i.ml = fmul float %i.mj, 2.000000e+00
  %i.mm = fadd <2 x float> %.fca.0.extract83, %i.mk
  %i.mn = fadd float %.fca.1.extract84, %i.ml
  %i.mo = fadd <2 x float> %i.la, %i.mm
  %i.mp = extractelement <2 x float> %i.lo, i64 0
  %i.mq = fadd float %i.mp, %i.mn
  %i.mr = fsub <2 x float> %i.mo, %i.kc           ; 3 uses
  %i.ms = extractelement <2 x float> %i.lo, i64 1 ; 4 uses
  %i.mt = fsub float %i.mq, %i.ms                 ; 4 uses
  %i.mu = fmul float %.sroa.2.8.vec.extract65.i233.a, %i.mt
  %i.mv = fmul <2 x float> %i.jx, %i.mr
  %i.mw = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.mx = insertelement <2 x float> %i.mw, float %i.mt, i64 0
  %i.my = fmul <2 x float> %i.ir, %i.mx
  %i.mz = fsub <2 x float> %i.mv, %i.my
  %i.na = fmul <2 x float> %i.it, %i.mw           ; 2 uses
  %i.nb = extractelement <2 x float> %i.na, i64 0
  %i.nc = fsub float %i.mu, %i.nb
  %i.nd = insertelement <2 x float> %i.mw, float %i.mt, i64 1
  %i.ne = fmul <2 x float> %i.jo, %i.nd
  %i.nf = extractelement <2 x float> %i.na, i64 1
  %i.ng = fsub float %i.nc, %i.nf                 ; 2 uses
  %i.nh = fsub <2 x float> %i.mz, %i.ne           ; 3 uses
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nj = insertelement <2 x float> %i.ni, float %i.ng, i64 1
  %i.nk = fmul <2 x float> %i.jk, %i.nj
  %i.nl = fmul <2 x float> %i.jx, %i.nh
  %i.nm = fsub <2 x float> %i.nk, %i.nl
  %foldExtExtBinop635 = fmul <2 x float> %i.ir, %i.nh
  %i.nn = extractelement <2 x float> %foldExtExtBinop635, i64 0
  %i.no = fmul float %.sroa.2.8.vec.extract65.i233.a, %i.ng
  %i.np = fsub float %i.nn, %i.no
  %i.nq = fmul <2 x float> %i.nm, splat (float 2.000000e+00)
  %i.nr = fadd <2 x float> %i.mr, %i.nq
  %i.ns = fmul float %i.np, 2.000000e+00
  %i.nt = fadd float %i.mt, %i.ns
  store <2 x float> %i.nr, ptr %i.je, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 248
  store float %i.nt, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !76
  %i.nu = getelementptr inbounds nuw i8, ptr %10, i64 252
  %foldExtExtBinop637 = fmul <2 x float> %.sroa.063.0.copyload, %i.jc
  %i.nv = extractelement <2 x float> %foldExtExtBinop637, i64 0
  %i.nw = fmul float %.sroa.264.0.copyload, %.sroa.09.0.vec.extract.i.i273
  %i.nx = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ny = fmul <2 x float> %i.kn, %i.nx
  %i.nz = fmul <2 x float> %i.kg, %i.nx
  %i.oa = fmul <2 x float> %i.kg, %i.ja
  %i.ob = shufflevector <2 x float> %i.ja, <2 x float> %i.jc, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.oc = fmul <2 x float> %.sroa.063.0.copyload, %i.ob
  %i.od = fsub <2 x float> %i.oa, %i.oc           ; 2 uses
  %i.oe = fsub float %i.nv, %i.nw
  %i.of = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.og = insertelement <2 x float> %i.of, float %i.oe, i64 0
  %i.oh = fadd <2 x float> %i.nz, %i.og           ; 2 uses
  %i.oi = fadd <2 x float> %i.ny, %i.od           ; 2 uses
  %i.oj = fmul <2 x float> %i.ob, %i.oi
  %i.ok = shufflevector <2 x float> %i.jc, <2 x float> %i.ja, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ol = fmul <2 x float> %i.ok, %i.oh
  %i.om = fsub <2 x float> %i.oj, %i.ol
  %i.on = fmul <2 x float> %i.om, splat (float 2.000000e+00)
  %i.oo = fadd <2 x float> %.sroa.063.0.copyload, %i.on
  %i.op = fsub <2 x float> %.sroa.041.0.copyload, %i.oo
  %foldExtExtBinop639 = fmul <2 x float> %.fca.0.extract83, %i.jc
  %i.oq = extractelement <2 x float> %foldExtExtBinop639, i64 0
  %i.or = fmul float %.fca.1.extract84, %.sroa.09.0.vec.extract.i.i273
  %i.os = fmul <2 x float> %i.ls, %i.ja
  %i.ot = fmul <2 x float> %.fca.0.extract83, %i.ob
  %i.ou = fsub <2 x float> %i.os, %i.ot           ; 2 uses
  %i.ov = fsub float %i.oq, %i.or
  %i.ow = fmul <2 x float> %i.lx, %i.nx
  %i.ox = fmul <2 x float> %i.ls, %i.nx
  %i.oy = fadd <2 x float> %i.ou, %i.ow           ; 2 uses
  %i.oz = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pa = insertelement <2 x float> %i.oz, float %i.ov, i64 0
  %i.pb = fadd <2 x float> %i.ox, %i.pa           ; 2 uses
  %i.pc = fmul <2 x float> %i.ob, %i.oy
  %i.pd = fmul <2 x float> %i.ok, %i.pb
  %i.pe = fsub <2 x float> %i.pc, %i.pd
  %i.pf = fmul <2 x float> %i.pe, splat (float 2.000000e+00)
  %i.pg = fadd <2 x float> %.fca.0.extract83, %i.pf
  %i.ph = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = shufflevector <2 x float> %i.oh, <2 x float> %i.pb, <2 x i32> <i32 0, i32 2>
  %i.pj = fmul <2 x float> %i.ph, %i.pi
  %i.pk = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pl = shufflevector <2 x float> %i.oi, <2 x float> %i.oy, <2 x i32> <i32 1, i32 3>
  %i.pm = fmul <2 x float> %i.pk, %i.pl
  %i.pn = fsub <2 x float> %i.pj, %i.pm
  %i.po = fmul <2 x float> %i.pn, splat (float 2.000000e+00)
  %i.pp = insertelement <2 x float> %i.lj, float %.fca.1.extract84, i64 1
  %i.pq = fadd <2 x float> %i.pp, %i.po           ; 2 uses
  %i.pr = extractelement <2 x float> %i.pq, i64 0
  %i.ps = fsub float %.sroa.242.0.copyload, %i.pr
  %i.pt = fadd <2 x float> %i.op, %i.pg
  %i.pu = extractelement <2 x float> %i.pq, i64 1
  %i.pv = fadd float %i.ps, %i.pu
  %i.pw = fsub <2 x float> %i.pt, %i.kc           ; 3 uses
  %i.px = fsub float %i.pv, %i.ms                 ; 4 uses
  %i.py = fmul float %.sroa.2.8.vec.extract65.i233.a, %i.px
  %i.pz = fmul <2 x float> %i.jx, %i.pw
  %i.qa = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.qb = insertelement <2 x float> %i.qa, float %i.px, i64 0
  %i.qc = fmul <2 x float> %i.ir, %i.qb
  %i.qd = fsub <2 x float> %i.pz, %i.qc
  %i.qe = fmul <2 x float> %i.it, %i.qa           ; 2 uses
  %i.qf = extractelement <2 x float> %i.qe, i64 0
  %i.qg = fsub float %i.py, %i.qf
  %i.qh = insertelement <2 x float> %i.qa, float %i.px, i64 1
  %i.qi = fmul <2 x float> %i.jo, %i.qh
  %i.qj = extractelement <2 x float> %i.qe, i64 1
  %i.qk = fsub float %i.qg, %i.qj                 ; 2 uses
  %i.ql = fsub <2 x float> %i.qd, %i.qi           ; 3 uses
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qn = insertelement <2 x float> %i.qm, float %i.qk, i64 1
  %i.qo = fmul <2 x float> %i.jk, %i.qn
  %i.qp = fmul <2 x float> %i.jx, %i.ql
  %i.qq = fsub <2 x float> %i.qo, %i.qp
  %foldExtExtBinop641 = fmul <2 x float> %i.ir, %i.ql
  %i.qr = extractelement <2 x float> %foldExtExtBinop641, i64 0
  %i.qs = fmul float %.sroa.2.8.vec.extract65.i233.a, %i.qk
  %i.qt = fsub float %i.qr, %i.qs
  %i.qu = fmul <2 x float> %i.qq, splat (float 2.000000e+00)
  %i.qv = fadd <2 x float> %i.pw, %i.qu
  %i.qw = fmul float %i.qt, 2.000000e+00
  %i.qx = fadd float %i.px, %i.qw
  store <2 x float> %i.qv, ptr %i.nu, align 4
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 260
  store float %i.qx, ptr %.sroa.418.0..sroa_idx, align 4, !tbaa !76
  %i.qy = tail call { <2 x float>, <2 x float> } @b3ComputeShapeExtent(ptr noundef nonnull %2, <2 x float> %.fca.0.extract83, float %.fca.1.extract84)
  %i.qz = extractvalue { <2 x float>, <2 x float> } %i.qy, 0
  %.sroa.0481.0.vec.extract = extractelement <2 x float> %i.qz, i64 0
  %i.ra = fmul float %.sroa.0481.0.vec.extract, 5.000000e-01 ; 2 uses
  %i.rb = tail call float @b3GetLengthUnitsPerMeter() #12
  %i.rc = fmul float %i.rb, 5.000000e-03          ; 2 uses
  %i.rd = fcmp ogt float %i.ra, %i.rc
  %i.re = select i1 %i.rd, float %i.ra, float %i.rc
  %i.rf = getelementptr inbounds nuw i8, ptr %10, i64 264
  store float %i.re, ptr %i.rf, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @b3ComputeSweptShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %11, ptr noundef nonnull %2, ptr noundef nonnull %4, float noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.rg = fneg float %.sroa.2.8.vec.extract65.i233
  %.sroa.0508.0.copyload = load <2 x float>, ptr %11, align 8 ; 2 uses
  %.sroa.5510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.5510.0.copyload = load float, ptr %.sroa.5510.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.7511.0.copyload = load <2 x float>, ptr %.sroa.7511.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 20
  %.sroa.9513.0.copyload = load float, ptr %.sroa.9513.0..sroa_idx, align 4 ; 2 uses
  %i.rh = fmul float %.sroa.09.4.vec.extract13.i.i234, %i.ms
  %foldExtExtBinop643 = fmul <2 x float> %i.kc, %i.it
  %i.ri = extractelement <2 x float> %foldExtExtBinop643, i64 0
  %i.rj = fmul <2 x float> %i.kc, %i.jk
  %i.rk = shufflevector <2 x float> %i.kc, <2 x float> %i.lo, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.rl = fmul <2 x float> %i.ir, %i.rk
  %i.rm = fsub <2 x float> %i.rj, %i.rl           ; 2 uses
  %i.rn = fsub float %i.rh, %i.ri
  %i.ro = shufflevector <2 x float> %i.lo, <2 x float> %i.kc, <2 x i32> <i32 1, i32 2>
  %i.rp = fmul <2 x float> %i.ro, %i.jo
  %i.rq = fmul <2 x float> %i.rk, %i.jo
  %i.rr = fadd <2 x float> %i.rm, %i.rp           ; 2 uses
  %i.rs = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.rt = insertelement <2 x float> %i.rs, float %i.rn, i64 0
  %i.ru = fadd <2 x float> %i.rq, %i.rt           ; 2 uses
  %i.rv = fmul <2 x float> %i.jk, %i.rr
  %i.rw = fmul <2 x float> %i.jx, %i.ru
  %i.rx = fsub <2 x float> %i.rv, %i.rw
  %foldExtExtBinop645 = fmul <2 x float> %i.ir, %i.ru
  %foldExtExtBinop647 = fmul <2 x float> %i.ir, %i.rr
  %shift649 = shufflevector <2 x float> %foldExtExtBinop647, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop650 = fsub <2 x float> %foldExtExtBinop645, %shift649
  %i.ry = extractelement <2 x float> %foldExtExtBinop650, i64 0
  %i.rz = fmul <2 x float> %i.rx, splat (float 2.000000e+00)
  %i.sa = fsub <2 x float> %i.rz, %i.kc
  %i.sb = fmul float %i.ry, 2.000000e+00
  %i.sc = fsub float %i.sb, %i.ms
  %i.sd = fneg <2 x float> %i.ir
  %i.se = shufflevector <2 x float> %i.sd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sf = fadd <2 x float> %.sroa.0508.0.copyload, %.sroa.7511.0.copyload
  %i.sg = fadd float %.sroa.5510.0.copyload, %.sroa.9513.0.copyload
  %i.sh = fmul <2 x float> %i.sf, splat (float 5.000000e-01) ; 5 uses
  %i.si = fmul float %i.sg, 5.000000e-01          ; 4 uses
  %i.sj = shufflevector <2 x float> %i.sh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.sk = insertelement <2 x float> %i.sj, float %i.si, i64 0
  %i.sl = fmul <2 x float> %i.ir, %i.sk
  %i.sm = fmul <2 x float> %i.jk, %i.sh
  %i.sn = fmul <2 x float> %i.jx, %i.sh
  %i.so = insertelement <2 x float> %i.sj, float %i.si, i64 1 ; 2 uses
  %i.sp = fmul <2 x float> %i.ir, %i.so
  %i.sq = fsub <2 x float> %i.sl, %i.sn
  %i.sr = fsub <2 x float> %i.sm, %i.sp
  %i.ss = fmul <2 x float> %i.jo, %i.so
  %i.st = insertelement <2 x float> poison, float %i.si, i64 0
  %i.su = shufflevector <2 x float> %i.st, <2 x float> %i.sh, <2 x i32> <i32 0, i32 2>
  %i.sv = fmul <2 x float> %i.jo, %i.su
  %i.sw = fadd <2 x float> %i.ss, %i.sq           ; 2 uses
  %i.sx = fadd <2 x float> %i.sv, %i.sr           ; 2 uses
  %i.sy = fmul <2 x float> %i.jx, %i.sw
  %i.sz = fmul <2 x float> %i.jk, %i.sx
  %i.ta = fsub <2 x float> %i.sy, %i.sz
  %foldExtExtBinop652 = fmul <2 x float> %i.ir, %i.sx
  %foldExtExtBinop654 = fmul <2 x float> %i.ir, %i.sw
  %shift656 = shufflevector <2 x float> %foldExtExtBinop652, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop657 = fsub <2 x float> %shift656, %foldExtExtBinop654
  %i.tb = extractelement <2 x float> %foldExtExtBinop657, i64 0
  %i.tc = fmul <2 x float> %i.ta, splat (float 2.000000e+00)
  %i.td = fadd <2 x float> %i.sh, %i.tc
  %i.te = fmul float %i.tb, 2.000000e+00
  %i.tf = fadd float %i.si, %i.te
  %i.tg = fadd <2 x float> %i.sa, %i.td           ; 2 uses
  %i.th = fadd float %i.sc, %i.tf                 ; 2 uses
  %i.ti = fmul <2 x float> %i.jo, %i.se           ; 4 uses
  %i.tj = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tk = fmul <2 x float> %i.ir, %i.tj           ; 4 uses
  %i.tl = fmul <2 x float> %i.ir, %i.ir           ; 2 uses
  %i.tm = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop659 = fsub <2 x float> %i.tk, %i.ti
  %i.tn = extractelement <2 x float> %foldExtExtBinop659, i64 0
  %i.to = fmul float %i.tn, 2.000000e+00          ; 3 uses
  %i.tp = fsub float %.sroa.9513.0.copyload, %.sroa.5510.0.copyload
  %foldExtExtBinop666 = fmul <2 x float> %i.it, %i.it
  %18 = fmul float %.sroa.09.0.vec.extract.i.i237, %i.rg ; 2 uses
  %19 = fmul float %.sroa.09.4.vec.extract13.i.i234, %.sroa.2.8.vec.extract65.i233.a ; 2 uses
  %20 = fmul float %i.tp, 5.000000e-01            ; 2 uses
  %i.tq = fadd float %19, %18
  %i.tr = fsub float %19, %18
  %i.ts = insertelement <2 x float> poison, float %i.tr, i64 0
  %i.tt = insertelement <2 x float> %i.ts, float %i.tq, i64 1
  %i.tu = fmul <2 x float> %i.tt, splat (float 2.000000e+00) ; 3 uses
  %21 = shufflevector <2 x float> %foldExtExtBinop666, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tv = fadd <2 x float> %i.tm, %21
  %i.tw = fmul <2 x float> %i.tv, splat (float 2.000000e+00)
  %i.tx = fsub <2 x float> splat (float 1.000000e+00), %i.tw ; 3 uses
  %foldExtExtBinop661 = fadd <2 x float> %i.tk, %i.ti
  %i.ty = extractelement <2 x float> %foldExtExtBinop661, i64 1
  %i.tz = fmul float %i.ty, 2.000000e+00          ; 3 uses
  %i.ua = fadd <2 x float> %i.tk, %i.ti
  %i.ub = fsub <2 x float> %i.tk, %i.ti
  %i.uc = shufflevector <2 x float> %i.ua, <2 x float> %i.ub, <2 x i32> <i32 0, i32 3>
  %i.ud = fmul <2 x float> %i.uc, splat (float 2.000000e+00) ; 3 uses
  %i.ue = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.tl)
  %i.uf = fmul float %i.ue, 2.000000e+00
  %i.ug = fsub float 1.000000e+00, %i.uf          ; 3 uses
  %i.uh = fcmp olt float %i.to, 0.000000e+00
  %i.ui = fneg float %i.to
  %i.uj = select i1 %i.uh, float %i.ui, float %i.to
  %i.uk = fcmp olt <2 x float> %i.tu, zeroinitializer
  %i.ul = fneg <2 x float> %i.tu
  %i.um = select <2 x i1> %i.uk, <2 x float> %i.ul, <2 x float> %i.tu
  %i.un = fcmp olt <2 x float> %i.tx, zeroinitializer
  %i.uo = fneg <2 x float> %i.tx
  %i.up = select <2 x i1> %i.un, <2 x float> %i.uo, <2 x float> %i.tx
  %i.uq = fcmp olt float %i.tz, 0.000000e+00
  %i.ur = fneg float %i.tz
  %i.us = select i1 %i.uq, float %i.ur, float %i.tz
  %i.ut = fcmp olt <2 x float> %i.ud, zeroinitializer
  %i.uu = fneg <2 x float> %i.ud
  %i.uv = select <2 x i1> %i.ut, <2 x float> %i.uu, <2 x float> %i.ud
  %i.uw = fcmp olt float %i.ug, 0.000000e+00
  %i.ux = fneg float %i.ug
  %i.uy = select i1 %i.uw, float %i.ux, float %i.ug
  %i.uz = fsub <2 x float> %.sroa.7511.0.copyload, %.sroa.0508.0.copyload
  %i.va = fmul <2 x float> %i.uz, splat (float 5.000000e-01) ; 4 uses
  %i.vb = shufflevector <2 x float> %i.va, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vc = extractelement <2 x float> %i.va, i64 0
  %i.vd = fmul float %i.uj, %i.vc
  %i.ve = extractelement <2 x float> %i.va, i64 1
  %i.vf = fmul float %i.us, %i.ve
  %i.vg = fadd float %i.vd, %i.vf
  %i.vh = fmul <2 x float> %i.um, %i.vb
  %i.vi = fmul <2 x float> %i.up, %i.va
  %i.vj = fadd <2 x float> %i.vh, %i.vi
  %22 = insertelement <2 x float> poison, float %20, i64 0
  %i.vk = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vl = fmul <2 x float> %i.uv, %i.vk
  %i.vm = fadd <2 x float> %i.vl, %i.vj           ; 2 uses
  %i.vn = fmul float %i.uy, %20
  %i.vo = fadd float %i.vn, %i.vg                 ; 2 uses
  %i.vp = fsub <2 x float> %i.tg, %i.vm
  %i.vq = fsub float %i.th, %i.vo
  store <2 x float> %i.vp, ptr %12, align 8, !alias.scope !394
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %i.vq, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !394
  %i.vr = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.vs = fadd <2 x float> %i.vm, %i.tg
  %i.vt = fadd float %i.vo, %i.th
  store <2 x float> %i.vs, ptr %i.vr, align 4, !alias.scope !394
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 20
  store float %i.vt, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !394
  switch i32 %i.k, label %bb.aj [
    i32 4, label %bb.ah
    i32 2, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @b3QueryMesh(ptr noundef nonnull %i.vu, ptr noundef nonnull byval(%struct.b3AABB) align 8 %12, ptr noundef nonnull @b3MeshTimeOfImpactFcn, ptr noundef nonnull %10) #12
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !88
  call void @b3QueryHeightField(ptr noundef %i.vw, ptr noundef nonnull byval(%struct.b3AABB) align 8 %12, ptr noundef nonnull @b3MeshTimeOfImpactFcn, ptr noundef nonnull %10) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.ah
  %i.vx = call float @b3GetMilliseconds(i64 noundef %i.gq) #12
  %i.vy = call float @b3GetStallThreshold() #12
  %i.vz = fmul float %i.vy, 1.000000e+03
  %i.wa = fcmp ogt float %i.vx, %i.vz
  br i1 %i.wa, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.wb = getelementptr inbounds nuw i8, ptr %10, i64 272
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !194
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.1, i32 noundef %i.wc) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.wd = getelementptr inbounds nuw i8, ptr %10, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %i.wd, i64 52, i1 false), !tbaa.struct !188
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.bj

bb.am:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  switch i32 %i.k, label %b3MakeShapeProxy.exit468 [
    i32 0, label %bb.an
    i32 5, label %bb.ao
    i32 3, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !88
  br label %b3MakeShapeProxy.exit468

bb.ao:                                            ; preds = %bb.am
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !88
  br label %b3MakeShapeProxy.exit468

bb.ap:                                            ; preds = %bb.am
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !88 ; 4 uses
  %i.wm = icmp ne ptr %i.wl, null, !nosanitize !9
  %i.wn = ptrtoint ptr %i.wl to i64, !nosanitize !9 ; 4 uses
  %i.wo = and i64 %i.wn, 7, !nosanitize !9
  %i.wp = icmp eq i64 %i.wo, 0, !nosanitize !9
  %i.wq = and i1 %i.wm, %i.wp, !nosanitize !9
  br i1 %i.wq, label %bb.ar, label %bb.aq, !prof !10, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @322, i64 %i.wn) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wl, i64 108
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !167 ; 2 uses
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %b3GetHullPoints.exit.i459, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.wu = sext i32 %i.ws to i64                   ; 2 uses
  %i.wv = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.wn, i64 %i.wu), !nosanitize !9 ; 2 uses
  %i.ww = extractvalue { i64, i1 } %i.wv, 1, !nosanitize !9
  br i1 %i.ww, label %bb.at, label %bb.au, !prof !86, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @324, i64 %i.wn, i64 %i.wu) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.au:                                            ; preds = %bb.as
  %i.wx = extractvalue { i64, i1 } %i.wv, 0, !nosanitize !9
  %i.wy = inttoptr i64 %i.wx to ptr
  br label %b3GetHullPoints.exit.i459

b3GetHullPoints.exit.i459:                        ; preds = %bb.ar, %bb.au
  %.0.i.i460 = phi ptr [ %i.wy, %bb.au ], [ null, %bb.ar ]
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wl, i64 100
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !168
  %i.xb = zext i32 %i.xa to i64
  br label %b3MakeShapeProxy.exit468

b3MakeShapeProxy.exit468:                         ; preds = %bb.am, %bb.an, %bb.ao, %b3GetHullPoints.exit.i459
  %.sroa.5.0.i461 = phi i64 [ %i.xb, %b3GetHullPoints.exit.i459 ], [ 2, %bb.an ], [ 1, %bb.ao ], [ 0, %bb.am ]
  %.sroa.0.0.i462 = phi ptr [ %.0.i.i460, %b3GetHullPoints.exit.i459 ], [ %i.we, %bb.an ], [ %i.wh, %bb.ao ], [ null, %bb.am ]
  %i.xc = phi i32 [ 0, %b3GetHullPoints.exit.i459 ], [ %i.wg, %bb.an ], [ %i.wj, %bb.ao ], [ 0, %bb.am ]
  %.sroa.10.8.insert.ext.i464 = zext i32 %i.xc to i64
  %.sroa.10.8.insert.shift.i465 = shl nuw i64 %.sroa.10.8.insert.ext.i464, 32
  %.sroa.5.8.insert.insert.i466 = or disjoint i64 %.sroa.10.8.insert.shift.i465, %.sroa.5.0.i461
  store ptr %.sroa.0.0.i462, ptr %13, align 8, !tbaa !164
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.5.8.insert.insert.i466, ptr %.sroa.43.0..sroa_idx, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.xe = icmp ne ptr %2, null, !nosanitize !9
  %i.xf = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.xg = and i64 %i.xf, 7, !nosanitize !9
  %i.xh = icmp eq i64 %i.xg, 0, !nosanitize !9
  %i.xi = and i1 %i.xe, %i.xh, !nosanitize !9
  br i1 %i.xi, label %bb.aw, label %bb.av, !prof !10, !nosanitize !9

bb.av:                                            ; preds = %b3MakeShapeProxy.exit468
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @72, i64 %i.xf) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.aw:                                            ; preds = %b3MakeShapeProxy.exit468
  %i.xj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !95
  switch i32 %i.xk, label %b3MakeShapeProxy.exit478 [
    i32 0, label %bb.ax
    i32 5, label %bb.ay
    i32 3, label %bb.az
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.xl = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.xm = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !88
  br label %b3MakeShapeProxy.exit478

bb.ay:                                            ; preds = %bb.aw
  %i.xo = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.xp = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !88
  br label %b3MakeShapeProxy.exit478

bb.az:                                            ; preds = %bb.aw
  %i.xr = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !88 ; 4 uses
  %i.xt = icmp ne ptr %i.xs, null, !nosanitize !9
  %i.xu = ptrtoint ptr %i.xs to i64, !nosanitize !9 ; 4 uses
  %i.xv = and i64 %i.xu, 7, !nosanitize !9
  %i.xw = icmp eq i64 %i.xv, 0, !nosanitize !9
  %i.xx = and i1 %i.xt, %i.xw, !nosanitize !9
  br i1 %i.xx, label %bb.bb, label %bb.ba, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @322, i64 %i.xu) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xs, i64 108
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !167 ; 2 uses
  %i.ya = icmp eq i32 %i.xz, 0
  br i1 %i.ya, label %b3GetHullPoints.exit.i469, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.yb = sext i32 %i.xz to i64                   ; 2 uses
  %i.yc = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.xu, i64 %i.yb), !nosanitize !9 ; 2 uses
  %i.yd = extractvalue { i64, i1 } %i.yc, 1, !nosanitize !9
  br i1 %i.yd, label %bb.bd, label %bb.be, !prof !86, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @324, i64 %i.xu, i64 %i.yb) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.be:                                            ; preds = %bb.bc
  %i.ye = extractvalue { i64, i1 } %i.yc, 0, !nosanitize !9
  %i.yf = inttoptr i64 %i.ye to ptr
  br label %b3GetHullPoints.exit.i469

b3GetHullPoints.exit.i469:                        ; preds = %bb.bb, %bb.be
  %.0.i.i470 = phi ptr [ %i.yf, %bb.be ], [ null, %bb.bb ]
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xs, i64 100
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !168
  %i.yi = zext i32 %i.yh to i64
  br label %b3MakeShapeProxy.exit478

b3MakeShapeProxy.exit478:                         ; preds = %bb.aw, %bb.ax, %bb.ay, %b3GetHullPoints.exit.i469
  %.sroa.5.0.i471 = phi i64 [ %i.yi, %b3GetHullPoints.exit.i469 ], [ 2, %bb.ax ], [ 1, %bb.ay ], [ 0, %bb.aw ]
  %.sroa.0.0.i472 = phi ptr [ %.0.i.i470, %b3GetHullPoints.exit.i469 ], [ %i.xl, %bb.ax ], [ %i.xo, %bb.ay ], [ null, %bb.aw ]
  %i.yj = phi i32 [ 0, %b3GetHullPoints.exit.i469 ], [ %i.xn, %bb.ax ], [ %i.xq, %bb.ay ], [ 0, %bb.aw ]
  %.sroa.10.8.insert.ext.i474 = zext i32 %i.yj to i64
  %.sroa.10.8.insert.shift.i475 = shl nuw i64 %.sroa.10.8.insert.ext.i474, 32
  %.sroa.5.8.insert.insert.i476 = or disjoint i64 %.sroa.10.8.insert.shift.i475, %.sroa.5.0.i471
  store ptr %.sroa.0.0.i472, ptr %i.xd, align 8, !tbaa !164
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 %.sroa.5.8.insert.insert.i476, ptr %.sroa.4.0..sroa_idx, align 8
  %i.yk = icmp ne ptr %3, null, !nosanitize !9
  %i.yl = ptrtoint ptr %3 to i64, !nosanitize !9  ; 2 uses
  %i.ym = and i64 %i.yl, 3, !nosanitize !9
  %i.yn = icmp eq i64 %i.ym, 0, !nosanitize !9
  %i.yo = and i1 %i.yk, %i.yn, !nosanitize !9
  br i1 %i.yo, label %bb.bg, label %bb.bf, !prof !10, !nosanitize !9

bb.bf:                                            ; preds = %b3MakeShapeProxy.exit478
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @221, i64 %i.yl) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.bg:                                            ; preds = %b3MakeShapeProxy.exit478
  %i.yp = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.yp, ptr noundef nonnull align 4 dereferenceable(68) %3, i64 68, i1 false), !tbaa.struct !181
  %i.yq = icmp ne ptr %4, null, !nosanitize !9
  %i.yr = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.ys = and i64 %i.yr, 3, !nosanitize !9
  %i.yt = icmp eq i64 %i.ys, 0, !nosanitize !9
  %i.yu = and i1 %i.yq, %i.yt, !nosanitize !9
  br i1 %i.yu, label %bb.bi, label %bb.bh, !prof !10, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @222, i64 %i.yr) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.bi:                                            ; preds = %bb.bg
  %i.yv = getelementptr inbounds nuw i8, ptr %13, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.yv, ptr noundef nonnull align 4 dereferenceable(68) %4, i64 68, i1 false), !tbaa.struct !181
  %i.yw = getelementptr inbounds nuw i8, ptr %13, i64 168
  store float %5, ptr %i.yw, align 8, !tbaa !395
  call void @b3TimeOfImpact(ptr dead_on_unwind writable sret(%struct.b3TOIOutput) align 4 %0, ptr noundef nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.al, %bb.r
  ret void
}

declare void @b3QueryCompound(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b3CompoundTimeOfImpactFcn(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !func_sanitize !398 {
bb.a:
  %3 = alloca %struct.b3ChildShape, align 8       ; 14 uses
  %.sroa.0268 = alloca { i32, %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 7 uses
  %.sroa.10 = alloca { float, i32, i32, i32, i8 }, align 8 ; 7 uses
  %4 = alloca %struct.b3Sweep, align 4            ; 4 uses
  %5 = alloca %struct.b3Transform, align 8        ; 4 uses
  %6 = alloca %struct.b3TOIOutput, align 4        ; 6 uses
  %7 = alloca %struct.b3TOIOutput, align 4        ; 6 uses
  %8 = alloca %struct.b3MeshImpactContext, align 8 ; 15 uses
  %9 = alloca %struct.b3AABB, align 8             ; 7 uses
  %10 = alloca %struct.b3TOIOutput, align 4       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %3, ptr noundef %0, i32 noundef %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0268)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.a = icmp ne ptr %2, null, !nosanitize !9
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @345, i64 %i.b) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 228 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %i.g, i64 28, i1 false), !tbaa.struct !87
  call void @b3MakeCompoundChildSweep(ptr dead_on_unwind nonnull writable sret(%struct.b3Sweep) align 4 %4, ptr noundef nonnull byval(%struct.b3Transform) align 8 %5, ptr noundef nonnull byval(%struct.b3Transform) align 8 %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.f, ptr noundef nonnull align 4 dereferenceable(68) %4, i64 68, i1 false), !tbaa.struct !181
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.j = load i32, ptr %i.i, align 4, !tbaa !196
  switch i32 %i.j, label %.thread [
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.l
    i32 5, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  store ptr %3, ptr %2, align 8, !tbaa !399
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.k, align 8, !tbaa !400
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load float, ptr %i.m, align 8, !tbaa !88
  store float %i.n, ptr %i.l, align 4, !tbaa !401
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @b3TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b3TOIOutput) align 4 %6, ptr noundef nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0268, ptr noundef nonnull align 4 dereferenceable(28) %6, i64 28, i1 false), !tbaa.struct !188
  %.sroa.8269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.sroa.8269.0.copyload = load float, ptr %.sroa.8269.0..sroa_idx, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, i64 20, i1 false), !tbaa.struct !402
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %3, align 8, !tbaa !88     ; 4 uses
  %i.p = icmp ne ptr %i.o, null, !nosanitize !9
  %i.q = ptrtoint ptr %i.o to i64, !nosanitize !9 ; 4 uses
  %i.r = and i64 %i.q, 7, !nosanitize !9
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !9
  %i.t = and i1 %i.p, %i.s, !nosanitize !9
  br i1 %i.t, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @322, i64 %i.q) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 108
  %i.v = load i32, ptr %i.u, align 4, !tbaa !167  ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = sext i32 %i.v to i64                     ; 2 uses
  %i.y = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.q, i64 %i.x), !nosanitize !9 ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1, !nosanitize !9
  br i1 %i.z, label %bb.i, label %bb.j, !prof !86, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @324, i64 %i.q, i64 %i.x) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.aa = extractvalue { i64, i1 } %i.y, 0, !nosanitize !9
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.0.i = phi ptr [ %i.ab, %bb.j ], [ null, %bb.g ]
  store ptr %.0.i, ptr %2, align 8, !tbaa !399
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !168
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !400
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !401
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @b3TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b3TOIOutput) align 4 %7, ptr noundef nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0268, ptr noundef nonnull align 4 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !188
  %.sroa.8269.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.8269.0.copyload271 = load float, ptr %.sroa.8269.0..sroa_idx270, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx279, i64 20, i1 false), !tbaa.struct !402
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i8 0, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %8, ptr noundef nonnull align 8 dereferenceable(176) %2, i64 176, i1 false), !tbaa.struct !197
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 228 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %i.ai, i64 12, i1 false), !tbaa.struct !162
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 292
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.al = load float, ptr %i.aj, align 4, !tbaa !187
  store float %i.al, ptr %i.ak, align 8, !tbaa !193
  %.sroa.0320.0.copyload = load <2 x float>, ptr %i.g, align 4
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 236
  %.sroa.4321.0.copyload = load float, ptr %.sroa.4321.0..sroa_idx, align 4, !tbaa !76
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 240
  %.sroa.5322.0.copyload = load <2 x float>, ptr %.sroa.5322.0..sroa_idx, align 8 ; 9 uses
  %.sroa.6323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 248
  %.sroa.6323.0.copyload = load <2 x float>, ptr %.sroa.6323.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0324.0.copyload = load <2 x float>, ptr %i.h, align 8 ; 7 uses
  %.sroa.4325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.4325.0.copyload = load float, ptr %.sroa.4325.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.5326.0.copyload = load <2 x float>, ptr %.sroa.5326.0..sroa_idx, align 4 ; 17 uses
  %.sroa.6327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.6327.0.copyload = load <2 x float>, ptr %.sroa.6327.0..sroa_idx, align 4 ; 10 uses
  %.sroa.2.8.vec.extract65.i.i = extractelement <2 x float> %.sroa.6323.0.copyload, i64 0
  %.sroa.09.4.vec.extract13.i.i.i = extractelement <2 x float> %.sroa.5322.0.copyload, i64 1 ; 2 uses
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.5322.0.copyload, i64 0 ; 2 uses
  %.sroa.2.12.vec.extract.i.i = extractelement <2 x float> %.sroa.6323.0.copyload, i64 1 ; 2 uses
  %.sroa.3.8.vec.extract51.i.i = extractelement <2 x float> %.sroa.6327.0.copyload, i64 0 ; 2 uses
  %i.am = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.3.8.vec.extract51.i.i
  %.sroa.0.4.vec.extract8.i.i17.i = extractelement <2 x float> %.sroa.5326.0.copyload, i64 1 ; 3 uses
  %i.an = fmul float %.sroa.2.8.vec.extract65.i.i, %.sroa.0.4.vec.extract8.i.i17.i
  %.sroa.0.0.vec.extract.i.i18.i = extractelement <2 x float> %.sroa.5326.0.copyload, i64 0 ; 3 uses
  %.sroa.3.12.vec.extract53.i.i = extractelement <2 x float> %.sroa.6327.0.copyload, i64 1 ; 3 uses
  %i.ao = fmul float %.sroa.2.12.vec.extract.i.i, %.sroa.3.12.vec.extract53.i.i
  %foldExtExtBinop = fmul <2 x float> %.sroa.5322.0.copyload, %.sroa.5326.0.copyload
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aq = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.0.4.vec.extract8.i.i17.i
  %i.ar = fadd float %i.ap, %i.aq
  %foldExtExtBinop345 = fmul <2 x float> %.sroa.6323.0.copyload, %.sroa.6327.0.copyload
  %i.as = extractelement <2 x float> %foldExtExtBinop345, i64 0
  %i.at = fadd float %i.as, %i.ar
  %i.au = fsub float %i.ao, %i.at                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ay = load <2 x float>, ptr %i.ax, align 8    ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ba = load <2 x float>, ptr %i.az, align 8    ; 5 uses
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.av, align 4 ; 7 uses
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 108
  %.sroa.257.0.copyload = load float, ptr %.sroa.257.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.aw, align 8
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.sroa.251.0.copyload = load float, ptr %.sroa.251.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 132
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4
  %i.bc = load <2 x float>, ptr %i.bb, align 8    ; 7 uses
  %.sroa.09.0.vec.extract.i.i109 = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.be = load <2 x float>, ptr %i.bd, align 8    ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 124
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 240
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.ah, align 4 ; 7 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 236
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 4 ; 5 uses
  %foldExtExtBinop347 = fmul <2 x float> %.sroa.6323.0.copyload, %.sroa.0324.0.copyload
  %i.bh = extractelement <2 x float> %foldExtExtBinop347, i64 0
  %i.bi = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.4325.0.copyload
  %i.bj = shufflevector <2 x float> %.sroa.0324.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bk = insertelement <2 x float> %i.bj, float %.sroa.4325.0.copyload, i64 1 ; 4 uses
  %i.bl = fmul <2 x float> %.sroa.5322.0.copyload, %i.bk
  %i.bm = shufflevector <2 x float> %.sroa.5322.0.copyload, <2 x float> %.sroa.6323.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bn = fmul <2 x float> %i.bm, %.sroa.0324.0.copyload
  %i.bo = fsub <2 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = fsub float %i.bh, %i.bi
  %i.bq = shufflevector <2 x float> %.sroa.6323.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.br = insertelement <2 x float> %i.bj, float %.sroa.4325.0.copyload, i64 0 ; 2 uses
  %i.bs = fmul <2 x float> %i.bq, %i.br
  %i.bt = fmul <2 x float> %i.bq, %i.bk
  %i.bu = fadd <2 x float> %i.bs, %i.bo           ; 2 uses
  %i.bv = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = insertelement <2 x float> %i.bv, float %i.bp, i64 0
  %i.bx = fadd <2 x float> %i.bt, %i.bw           ; 2 uses
  %i.by = fmul <2 x float> %i.bm, %i.bu
  %i.bz = shufflevector <2 x float> %.sroa.6323.0.copyload, <2 x float> %.sroa.5322.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bx
  %i.cb = fsub <2 x float> %i.by, %i.ca
  %foldExtExtBinop349 = fmul <2 x float> %.sroa.5322.0.copyload, %i.bx
  %foldExtExtBinop351 = fmul <2 x float> %.sroa.5322.0.copyload, %i.bu
  %shift = shufflevector <2 x float> %foldExtExtBinop351, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop353 = fsub <2 x float> %foldExtExtBinop349, %shift
  %i.cc = extractelement <2 x float> %foldExtExtBinop353, i64 0
  %i.cd = fmul <2 x float> %i.cb, splat (float 2.000000e+00)
  %i.ce = fmul float %i.cc, 2.000000e+00
  %i.cf = fadd <2 x float> %.sroa.0324.0.copyload, %i.cd
  %i.cg = fadd float %.sroa.4325.0.copyload, %i.ce
  %i.ch = fadd <2 x float> %.sroa.0320.0.copyload, %i.cf ; 2 uses
  %i.ci = fsub float %i.am, %i.an
  %i.cj = fmul <2 x float> %i.bz, %.sroa.5326.0.copyload
  %i.ck = shufflevector <2 x float> %.sroa.6327.0.copyload, <2 x float> %.sroa.5326.0.copyload, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.cl = fmul <2 x float> %.sroa.5322.0.copyload, %i.ck
  %i.cm = fsub <2 x float> %i.cj, %i.cl
  %i.cn = fmul float %.sroa.2.12.vec.extract.i.i, %.sroa.0.0.vec.extract.i.i18.i
  %i.co = shufflevector <2 x float> %.sroa.5326.0.copyload, <2 x float> %.sroa.6327.0.copyload, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.cp = fmul <2 x float> %i.bq, %i.co
  %i.cq = fadd <2 x float> %i.cp, %i.cm
  %i.cr = fadd float %i.cn, %i.ci
  %i.cs = shufflevector <2 x float> %.sroa.6327.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.ct = fmul <2 x float> %i.bm, %i.cs
  %i.cu = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.3.12.vec.extract53.i.i
  %i.cv = fadd <2 x float> %i.ct, %i.cq           ; 7 uses
  %foldExtExtBinop355 = fmul <2 x float> %i.ba, %.sroa.056.0.copyload
  %i.cw = extractelement <2 x float> %foldExtExtBinop355, i64 0
  %i.cx = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.257.0.copyload
  %i.cy = shufflevector <2 x float> %.sroa.056.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cz = insertelement <2 x float> %i.cy, float %.sroa.257.0.copyload, i64 1 ; 4 uses
  %i.da = fmul <2 x float> %i.ay, %i.cz
  %i.db = shufflevector <2 x float> %i.ay, <2 x float> %i.ba, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.dc = fmul <2 x float> %i.db, %.sroa.056.0.copyload
  %i.dd = fsub <2 x float> %i.da, %i.dc           ; 2 uses
  %i.de = fsub float %i.cw, %i.cx
  %i.df = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.dg = insertelement <2 x float> %i.cy, float %.sroa.257.0.copyload, i64 0 ; 2 uses
  %i.dh = fmul <2 x float> %i.df, %i.dg
  %i.di = fmul <2 x float> %i.df, %i.cz
  %i.dj = fadd <2 x float> %i.dh, %i.dd           ; 2 uses
  %i.dk = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = insertelement <2 x float> %i.dk, float %i.de, i64 0
  %i.dm = fadd <2 x float> %i.di, %i.dl           ; 2 uses
  %i.dn = fmul <2 x float> %i.db, %i.dj
  %i.do = shufflevector <2 x float> %i.ba, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dp = fmul <2 x float> %i.do, %i.dm
  %i.dq = fsub <2 x float> %i.dn, %i.dp
  %i.dr = fmul <2 x float> %i.dq, splat (float 2.000000e+00)
  %i.ds = fadd <2 x float> %.sroa.056.0.copyload, %i.dr
  %i.dt = fsub <2 x float> %.sroa.050.0.copyload, %i.ds
  %foldExtExtBinop357 = fmul <2 x float> %i.ba, %.sroa.022.0.copyload
  %i.du = extractelement <2 x float> %foldExtExtBinop357, i64 0
  %i.dv = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.223.0.copyload
  %i.dw = shufflevector <2 x float> %.sroa.022.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dx = insertelement <2 x float> %i.dw, float %.sroa.223.0.copyload, i64 1 ; 4 uses
  %i.dy = fmul <2 x float> %i.ay, %i.dx
  %i.dz = fmul <2 x float> %i.db, %.sroa.022.0.copyload
  %i.ea = fsub <2 x float> %i.dy, %i.dz           ; 2 uses
  %i.eb = fsub float %i.du, %i.dv
  %i.ec = insertelement <2 x float> %i.dw, float %.sroa.223.0.copyload, i64 0 ; 2 uses
  %i.ed = fmul <2 x float> %i.df, %i.ec
  %i.ee = fmul <2 x float> %i.df, %i.dx
  %i.ef = fadd <2 x float> %i.ed, %i.ea           ; 2 uses
  %i.eg = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eh = insertelement <2 x float> %i.eg, float %i.eb, i64 0
  %i.ei = fadd <2 x float> %i.ee, %i.eh           ; 2 uses
  %i.ej = fmul <2 x float> %i.db, %i.ef
  %i.ek = fmul <2 x float> %i.do, %i.ei
  %i.el = fsub <2 x float> %i.ej, %i.ek
  %i.em = fmul <2 x float> %i.el, splat (float 2.000000e+00)
  %i.en = fadd <2 x float> %.sroa.022.0.copyload, %i.em
  %i.eo = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = shufflevector <2 x float> %i.dm, <2 x float> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.eq = fmul <2 x float> %i.eo, %i.ep
  %i.er = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = shufflevector <2 x float> %i.dj, <2 x float> %i.ef, <2 x i32> <i32 1, i32 3>
  %i.et = fmul <2 x float> %i.er, %i.es
  %i.eu = fsub <2 x float> %i.eq, %i.et
  %i.ev = fmul <2 x float> %i.eu, splat (float 2.000000e+00)
  %i.ew = insertelement <2 x float> poison, float %.sroa.257.0.copyload, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %.sroa.223.0.copyload, i64 1 ; 2 uses
  %i.ey = fadd <2 x float> %i.ex, %i.ev           ; 2 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 0
  %i.fa = fsub float %.sroa.251.0.copyload, %i.ez
  %i.fb = fadd <2 x float> %i.dt, %i.en
  %i.fc = extractelement <2 x float> %i.ey, i64 1
  %i.fd = fadd float %i.fa, %i.fc
  %i.fe = fsub <2 x float> %i.fb, %i.ch           ; 5 uses
  %i.ff = extractelement <2 x float> %i.cv, i64 0 ; 4 uses
  %i.fg = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fh = extractelement <2 x float> %i.cv, i64 1 ; 2 uses
  %foldExtExtBinop359 = fmul <2 x float> %i.cv, %i.fe
  %i.fi = extractelement <2 x float> %foldExtExtBinop359, i64 1
  %i.fj = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fk = extractelement <2 x float> %i.fe, i64 0
  %i.fl = fmul float %i.au, %i.fk
  %i.fm = insertelement <2 x float> poison, float %i.au, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 248
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 252
  %foldExtExtBinop361 = fmul <2 x float> %.sroa.056.0.copyload, %i.be
  %i.fp = extractelement <2 x float> %foldExtExtBinop361, i64 0
  %i.fq = fmul float %.sroa.257.0.copyload, %.sroa.09.0.vec.extract.i.i109
  %i.fr = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.fs = fmul <2 x float> %i.dg, %i.fr
  %i.ft = fmul <2 x float> %i.cz, %i.fr
  %i.fu = fmul <2 x float> %i.cz, %i.bc
  %i.fv = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.fw = fmul <2 x float> %.sroa.056.0.copyload, %i.fv
  %i.fx = fsub <2 x float> %i.fu, %i.fw           ; 2 uses
  %i.fy = fsub float %i.fp, %i.fq
  %i.fz = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ga = insertelement <2 x float> %i.fz, float %i.fy, i64 0
  %i.gb = fadd <2 x float> %i.ft, %i.ga           ; 2 uses
  %i.gc = fadd <2 x float> %i.fs, %i.fx           ; 2 uses
  %i.gd = fmul <2 x float> %i.fv, %i.gc
  %i.ge = shufflevector <2 x float> %i.be, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gf = fmul <2 x float> %i.ge, %i.gb
  %i.gg = fsub <2 x float> %i.gd, %i.gf
  %i.gh = fmul <2 x float> %i.gg, splat (float 2.000000e+00)
  %i.gi = fadd <2 x float> %.sroa.056.0.copyload, %i.gh
  %i.gj = fsub <2 x float> %.sroa.034.0.copyload, %i.gi
  %i.gk = fadd float %.sroa.4321.0.copyload, %i.cg ; 2 uses
  %i.gl = fadd float %i.cu, %i.cr                 ; 6 uses
  %i.gm = fsub float %i.fd, %i.gk                 ; 4 uses
  %i.gn = fmul float %i.ff, %i.gm
  %i.go = insertelement <2 x float> %i.fg, float %i.gl, i64 1 ; 3 uses
  %i.gp = fmul <2 x float> %i.go, %i.fe
  %i.gq = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.gs = insertelement <2 x float> %i.fj, float %i.gm, i64 0
  %i.gt = fmul <2 x float> %i.gr, %i.gs
  %i.gu = fsub float %i.gn, %i.fi
  %i.gv = fsub <2 x float> %i.gp, %i.gt
  %i.gw = insertelement <2 x float> %i.fj, float %i.gm, i64 1
  %i.gx = fmul <2 x float> %i.fn, %i.gw
  %i.gy = fsub float %i.gu, %i.fl                 ; 2 uses
  %i.gz = fsub <2 x float> %i.gv, %i.gx           ; 3 uses
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hb = insertelement <2 x float> %i.ha, float %i.gy, i64 1
  %i.hc = fmul <2 x float> %i.cv, %i.hb
  %i.hd = fmul <2 x float> %i.go, %i.gz
  %i.he = fsub <2 x float> %i.hc, %i.hd
  %i.hf = extractelement <2 x float> %i.gz, i64 0
  %i.hg = fmul float %i.gl, %i.hf
  %i.hh = fmul float %i.ff, %i.gy
  %i.hi = fsub float %i.hg, %i.hh
  %i.hj = fmul <2 x float> %i.he, splat (float 2.000000e+00)
  %i.hk = fadd <2 x float> %i.fe, %i.hj
  %i.hl = fmul float %i.hi, 2.000000e+00
  %i.hm = fadd float %i.gm, %i.hl
  store <2 x float> %i.hk, ptr %i.bg, align 8
  store float %i.hm, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !76
  %foldExtExtBinop363 = fmul <2 x float> %i.be, %.sroa.022.0.copyload
  %i.hn = extractelement <2 x float> %foldExtExtBinop363, i64 0
  %i.ho = fmul float %.sroa.09.0.vec.extract.i.i109, %.sroa.223.0.copyload
  %i.hp = fmul <2 x float> %i.bc, %i.dx
  %i.hq = fmul <2 x float> %i.fv, %.sroa.022.0.copyload
  %i.hr = fsub <2 x float> %i.hp, %i.hq           ; 2 uses
  %i.hs = fsub float %i.hn, %i.ho
  %i.ht = fmul <2 x float> %i.fr, %i.ec
  %i.hu = fmul <2 x float> %i.fr, %i.dx
  %i.hv = fadd <2 x float> %i.ht, %i.hr           ; 2 uses
  %i.hw = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hx = insertelement <2 x float> %i.hw, float %i.hs, i64 0
  %i.hy = fadd <2 x float> %i.hu, %i.hx           ; 2 uses
  %i.hz = fmul <2 x float> %i.fv, %i.hv
  %i.ia = fmul <2 x float> %i.ge, %i.hy
  %i.ib = fsub <2 x float> %i.hz, %i.ia
  %i.ic = fmul <2 x float> %i.ib, splat (float 2.000000e+00)
  %i.id = fadd <2 x float> %.sroa.022.0.copyload, %i.ic
  %i.ie = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = shufflevector <2 x float> %i.gb, <2 x float> %i.hy, <2 x i32> <i32 0, i32 2>
  %i.ig = fmul <2 x float> %i.ie, %i.if
  %i.ih = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ii = shufflevector <2 x float> %i.gc, <2 x float> %i.hv, <2 x i32> <i32 1, i32 3>
  %i.ij = fmul <2 x float> %i.ih, %i.ii
  %i.ik = fsub <2 x float> %i.ig, %i.ij
  %i.il = fmul <2 x float> %i.ik, splat (float 2.000000e+00)
  %i.im = fadd <2 x float> %i.ex, %i.il           ; 2 uses
  %i.in = extractelement <2 x float> %i.im, i64 0
  %i.io = fsub float %.sroa.235.0.copyload, %i.in
  %i.ip = fadd <2 x float> %i.gj, %i.id
  %i.iq = extractelement <2 x float> %i.im, i64 1
  %i.ir = fadd float %i.io, %i.iq
  %i.is = fsub <2 x float> %i.ip, %i.ch           ; 4 uses
  %i.it = fsub float %i.ir, %i.gk                 ; 4 uses
  %i.iu = fmul float %i.ff, %i.it
  %i.iv = extractelement <2 x float> %i.is, i64 1 ; 2 uses
  %i.iw = fmul float %i.gl, %i.iv
  %i.ix = extractelement <2 x float> %i.is, i64 0 ; 2 uses
  %i.iy = fmul float %i.fh, %i.ix
  %i.iz = fmul float %i.fh, %i.iv
  %i.ja = insertelement <2 x float> %i.fg, float %i.gl, i64 0
  %i.jb = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jc = insertelement <2 x float> %i.jb, float %i.it, i64 0
  %i.jd = fmul <2 x float> %i.ja, %i.jc
  %i.je = fsub float %i.iu, %i.iz
  %i.jf = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jg = insertelement <2 x float> %i.jf, float %i.iw, i64 1
  %i.jh = fsub <2 x float> %i.jg, %i.jd
  %i.ji = fmul float %i.au, %i.ix
  %i.jj = insertelement <2 x float> %i.jb, float %i.it, i64 1
  %i.jk = fmul <2 x float> %i.fn, %i.jj
  %i.jl = fsub float %i.je, %i.ji                 ; 2 uses
  %i.jm = fsub <2 x float> %i.jh, %i.jk           ; 3 uses
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jo = insertelement <2 x float> %i.jn, float %i.jl, i64 1
  %i.jp = fmul <2 x float> %i.cv, %i.jo
  %i.jq = fmul <2 x float> %i.go, %i.jm
  %i.jr = fsub <2 x float> %i.jp, %i.jq
  %i.js = extractelement <2 x float> %i.jm, i64 0
  %i.jt = fmul float %i.gl, %i.js
  %i.ju = fmul float %i.ff, %i.jl
  %i.jv = fsub float %i.jt, %i.ju
  %i.jw = fmul <2 x float> %i.jr, splat (float 2.000000e+00)
  %i.jx = fadd <2 x float> %i.is, %i.jw
  %i.jy = fmul float %i.jv, 2.000000e+00
  %i.jz = fadd float %i.it, %i.jy
  store <2 x float> %i.jx, ptr %i.fo, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 260
  store float %i.jz, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.ka = fneg float %.sroa.3.8.vec.extract51.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 256
  %.sroa.0292.0.copyload = load <2 x float>, ptr %i.kb, align 8 ; 2 uses
  %.sroa.5294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 264
  %.sroa.5294.0.copyload = load float, ptr %.sroa.5294.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 268
  %.sroa.7295.0.copyload = load <2 x float>, ptr %.sroa.7295.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 276
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.kc = fmul float %.sroa.4325.0.copyload, %.sroa.0.0.vec.extract.i.i18.i
  %foldExtExtBinop365 = fmul <2 x float> %.sroa.0324.0.copyload, %.sroa.6327.0.copyload
  %i.kd = extractelement <2 x float> %foldExtExtBinop365, i64 0
  %i.ke = fmul <2 x float> %.sroa.0324.0.copyload, %i.co
  %i.kf = fmul <2 x float> %i.bk, %.sroa.5326.0.copyload
  %i.kg = fsub <2 x float> %i.ke, %i.kf           ; 2 uses
  %i.kh = fsub float %i.kc, %i.kd
  %i.ki = fmul <2 x float> %i.br, %i.cs
  %i.kj = fmul <2 x float> %i.bk, %i.cs
  %i.kk = fadd <2 x float> %i.kg, %i.ki           ; 2 uses
  %i.kl = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.km = insertelement <2 x float> %i.kl, float %i.kh, i64 0
  %i.kn = fadd <2 x float> %i.kj, %i.km           ; 2 uses
  %i.ko = fmul <2 x float> %i.co, %i.kk
  %i.kp = fmul <2 x float> %i.ck, %i.kn
  %i.kq = fsub <2 x float> %i.ko, %i.kp
  %foldExtExtBinop367 = fmul <2 x float> %.sroa.5326.0.copyload, %i.kn
  %foldExtExtBinop369 = fmul <2 x float> %.sroa.5326.0.copyload, %i.kk
  %shift371 = shufflevector <2 x float> %foldExtExtBinop369, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop372 = fsub <2 x float> %foldExtExtBinop367, %shift371
  %i.kr = extractelement <2 x float> %foldExtExtBinop372, i64 0
  %i.ks = fmul <2 x float> %i.kq, splat (float 2.000000e+00)
  %i.kt = fsub <2 x float> %i.ks, %.sroa.0324.0.copyload
  %i.ku = fmul float %i.kr, 2.000000e+00
  %i.kv = fsub float %i.ku, %.sroa.4325.0.copyload
  %i.kw = fneg <2 x float> %.sroa.5326.0.copyload
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ky = fadd <2 x float> %.sroa.0292.0.copyload, %.sroa.7295.0.copyload
  %i.kz = fadd float %.sroa.5294.0.copyload, %.sroa.9.0.copyload
  %i.la = fmul <2 x float> %i.ky, splat (float 5.000000e-01) ; 5 uses
  %i.lb = fmul float %i.kz, 5.000000e-01          ; 4 uses
  %i.lc = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ld = insertelement <2 x float> %i.lc, float %i.lb, i64 0
  %i.le = fmul <2 x float> %.sroa.5326.0.copyload, %i.ld
  %i.lf = fmul <2 x float> %i.co, %i.la
  %i.lg = fmul <2 x float> %i.ck, %i.la
  %i.lh = insertelement <2 x float> %i.lc, float %i.lb, i64 1 ; 2 uses
  %i.li = fmul <2 x float> %.sroa.5326.0.copyload, %i.lh
  %i.lj = fsub <2 x float> %i.le, %i.lg
  %i.lk = fsub <2 x float> %i.lf, %i.li
  %i.ll = fmul <2 x float> %i.cs, %i.lh
  %i.lm = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> %i.la, <2 x i32> <i32 0, i32 2>
  %i.lo = fmul <2 x float> %i.cs, %i.ln
  %i.lp = fadd <2 x float> %i.ll, %i.lj           ; 2 uses
  %i.lq = fadd <2 x float> %i.lo, %i.lk           ; 2 uses
  %i.lr = fmul <2 x float> %i.ck, %i.lp
  %i.ls = fmul <2 x float> %i.co, %i.lq
  %i.lt = fsub <2 x float> %i.lr, %i.ls
  %foldExtExtBinop374 = fmul <2 x float> %.sroa.5326.0.copyload, %i.lq
  %foldExtExtBinop376 = fmul <2 x float> %.sroa.5326.0.copyload, %i.lp
  %shift378 = shufflevector <2 x float> %foldExtExtBinop374, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop379 = fsub <2 x float> %shift378, %foldExtExtBinop376
  %i.lu = extractelement <2 x float> %foldExtExtBinop379, i64 0
  %i.lv = fmul <2 x float> %i.lt, splat (float 2.000000e+00)
  %i.lw = fadd <2 x float> %i.la, %i.lv
  %i.lx = fmul float %i.lu, 2.000000e+00
  %i.ly = fadd float %i.lb, %i.lx
  %i.lz = fadd <2 x float> %i.kt, %i.lw           ; 2 uses
  %i.ma = fadd float %i.kv, %i.ly                 ; 2 uses
  %i.mb = fmul <2 x float> %i.cs, %i.kx           ; 2 uses
  %i.mc = shufflevector <2 x float> %.sroa.6327.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = fmul <2 x float> %.sroa.5326.0.copyload, %i.mc ; 2 uses
  %i.me = fmul <2 x float> %.sroa.5326.0.copyload, %.sroa.5326.0.copyload ; 2 uses
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %11 = fsub float %.sroa.9.0.copyload, %.sroa.5294.0.copyload
  %i.mg = fmul float %.sroa.3.12.vec.extract53.i.i, %i.ka ; 2 uses
  %12 = fmul float %.sroa.0.0.vec.extract.i.i18.i, %.sroa.0.4.vec.extract8.i.i17.i ; 2 uses
  %13 = fmul float %11, 5.000000e-01              ; 2 uses
  %14 = fadd float %12, %i.mg
  %15 = fsub float %12, %i.mg
  %16 = insertelement <2 x float> poison, float %15, i64 0
  %17 = insertelement <2 x float> %16, float %14, i64 1
  %18 = fmul <2 x float> %17, splat (float 2.000000e+00) ; 3 uses
  %19 = fadd <2 x float> %i.md, %i.mb             ; 2 uses
  %20 = fsub <2 x float> %i.md, %i.mb             ; 2 uses
  %21 = shufflevector <2 x float> %19, <2 x float> %20, <2 x i32> <i32 0, i32 3>
  %22 = fmul <2 x float> %21, splat (float 2.000000e+00) ; 3 uses
  %23 = fcmp olt <2 x float> %18, zeroinitializer
  %24 = fneg <2 x float> %18
  %25 = select <2 x i1> %23, <2 x float> %24, <2 x float> %18
  %26 = fcmp olt <2 x float> %22, zeroinitializer
  %27 = fneg <2 x float> %22
  %28 = select <2 x i1> %26, <2 x float> %27, <2 x float> %22
  %i.mh = fsub <2 x float> %.sroa.7295.0.copyload, %.sroa.0292.0.copyload
  %29 = fmul <2 x float> %i.mh, splat (float 5.000000e-01) ; 3 uses
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %31 = shufflevector <2 x float> %20, <2 x float> %19, <2 x i32> <i32 0, i32 3>
  %32 = fmul <2 x float> %31, splat (float 2.000000e+00) ; 3 uses
  %33 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.me)
  %34 = fcmp olt <2 x float> %32, zeroinitializer
  %35 = fneg <2 x float> %32
  %36 = select <2 x i1> %34, <2 x float> %35, <2 x float> %32
  %37 = shufflevector <2 x float> %.sroa.6327.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %38 = insertelement <4 x float> %37, float %33, i64 1
  %39 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %40 = shufflevector <4 x float> %38, <4 x float> %39, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %41 = shufflevector <2 x float> %.sroa.6327.0.copyload, <2 x float> %29, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %42 = insertelement <4 x float> %41, float 2.000000e+00, i64 1
  %43 = fmul <4 x float> %40, %42                 ; 4 uses
  %44 = shufflevector <4 x float> %43, <4 x float> poison, <2 x i32> zeroinitializer
  %45 = fadd <2 x float> %i.mf, %44
  %46 = fmul <2 x float> %45, splat (float 2.000000e+00)
  %47 = fsub <2 x float> splat (float 1.000000e+00), %46 ; 3 uses
  %48 = extractelement <4 x float> %43, i64 1
  %49 = fsub float 1.000000e+00, %48              ; 3 uses
  %i.mi = fcmp olt <2 x float> %47, zeroinitializer
  %i.mj = fneg <2 x float> %47
  %i.mk = select <2 x i1> %i.mi, <2 x float> %i.mj, <2 x float> %47
  %i.ml = fcmp olt float %49, 0.000000e+00
  %i.mm = fneg float %49
  %i.mn = select i1 %i.ml, float %i.mm, float %49
  %shift381 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop382 = fadd <4 x float> %43, %shift381
  %i.mo = extractelement <4 x float> %foldExtExtBinop382, i64 2
  %50 = fmul <2 x float> %25, %30
  %i.mp = fmul <2 x float> %i.mk, %29
  %51 = fadd <2 x float> %50, %i.mp
  %52 = insertelement <2 x float> poison, float %13, i64 0
  %i.mq = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mr = fmul <2 x float> %28, %i.mq
  %i.ms = fadd <2 x float> %i.mr, %51             ; 2 uses
  %i.mt = fmul float %i.mn, %13
  %i.mu = fadd float %i.mt, %i.mo                 ; 2 uses
  %i.mv = fsub <2 x float> %i.lz, %i.ms
  %i.mw = fsub float %i.ma, %i.mu
  store <2 x float> %i.mv, ptr %9, align 8, !alias.scope !403
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.mw, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !403
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.my = fadd <2 x float> %i.ms, %i.lz
  %i.mz = fadd float %i.mu, %i.ma
  store <2 x float> %i.my, ptr %i.mx, align 4, !alias.scope !403
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 20
  store float %i.mz, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !403
  call void @b3QueryMesh(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3AABB) align 8 %9, ptr noundef nonnull @b3MeshTimeOfImpactFcn, ptr noundef nonnull %8) #12
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0268, ptr noundef nonnull align 8 dereferenceable(28) %i.na, i64 28, i1 false), !tbaa.struct !188
  %.sroa.8269.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %8, i64 204
  %.sroa.8269.0.copyload273 = load float, ptr %.sroa.8269.0..sroa_idx272, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10.0..sroa_idx280, i64 20, i1 false), !tbaa.struct !402
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  store ptr %3, ptr %2, align 8, !tbaa !399
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.nb, align 8, !tbaa !400
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !88
  store float %i.ne, ptr %i.nc, align 4, !tbaa !401
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @b3TimeOfImpact(ptr dead_on_unwind nonnull writable sret(%struct.b3TOIOutput) align 4 %10, ptr noundef nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0268, ptr noundef nonnull align 4 dereferenceable(28) %10, i64 28, i1 false), !tbaa.struct !188
  %.sroa.8269.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.sroa.8269.0.copyload275 = load float, ptr %.sroa.8269.0..sroa_idx274, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx281, i64 20, i1 false), !tbaa.struct !402
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.d
  %.sroa.8269.0 = phi float [ %.sroa.8269.0.copyload275, %bb.m ], [ %.sroa.8269.0.copyload, %bb.d ], [ %.sroa.8269.0.copyload271, %bb.k ], [ %.sroa.8269.0.copyload273, %bb.l ] ; 4 uses
  %i.nf = fcmp ogt float %.sroa.8269.0, 0.000000e+00
  br i1 %i.nf, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.nh = load float, ptr %i.ng, align 8, !tbaa !186
  %i.ni = fcmp olt float %.sroa.8269.0, %i.nh
  br i1 %i.ni, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.nj, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0268, i64 28, i1 false), !tbaa.struct !188
  %.sroa.8269.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %2, i64 204
  store float %.sroa.8269.0, ptr %.sroa.8269.0..sroa_idx276, align 4, !tbaa !76
  %.sroa.10.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %2, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10.0..sroa_idx282, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !402
  store float %.sroa.8269.0, ptr %i.ng, align 8, !tbaa !186
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.n, %bb.o, %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0268)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 true
}

declare i64 @b3GetTicks() local_unnamed_addr #3

declare void @b3QueryMesh(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b3MeshTimeOfImpactFcn(<2 x float> %0, float %1, <2 x float> %2, float %3, <2 x float> %4, float %5, i32 %6, ptr noundef %7) #0 !func_sanitize !404 {
bb.a:
  %8 = alloca [3 x %struct.b3Vec3], align 16      ; 9 uses
  %9 = alloca %struct.b3TOIOutput, align 4        ; 7 uses
  %10 = alloca %struct.b3TOIInput, align 8        ; 7 uses
  %11 = alloca %struct.b3TOIOutput, align 4       ; 4 uses
  %i.a = icmp ne ptr %7, null, !nosanitize !9
  %i.b = ptrtoint ptr %7 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @347, i64 %i.b) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 272 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !194  ; 2 uses
  %i.h = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.g, i32 1), !nosanitize !9 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1, !nosanitize !9
  br i1 %i.i, label %bb.d, label %bb.e, !prof !86, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.g to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @348, i64 %i.j, i64 1) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i1 } %i.h, 0, !nosanitize !9
  store i32 %i.k, ptr %i.f, align 8, !tbaa !194
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 240
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.l, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 248
  %.sroa.468.0.copyload = load float, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 252
  %.sroa.066.0.copyload = load <2 x float>, ptr %i.m, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 260
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !76
  %i.n = insertelement <2 x float> poison, float %3, i64 0
  %i.o = insertelement <2 x float> %i.n, float %5, i64 1
  %i.p = insertelement <2 x float> poison, float %1, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fsub <2 x float> %i.o, %i.q              ; 2 uses
  %i.s = shufflevector <2 x float> %4, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.t = fsub <2 x float> %i.s, %0                ; 3 uses
  %i.u = shufflevector <2 x float> %2, <2 x float> %4, <2 x i32> <i32 0, i32 3>
  %i.v = fsub <2 x float> %i.u, %0                ; 3 uses
  %i.w = fmul <2 x float> %i.r, %i.t
  %i.x = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.y = fmul <2 x float> %i.v, %i.x
  %i.z = fsub <2 x float> %i.w, %i.y              ; 3 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.v, %shift
  %shift157 = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop158 = fmul <2 x float> %shift157, %i.t
  %foldExtExtBinop160 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop158 ; 3 uses
  %i.aa = fmul <2 x float> %i.z, %i.z             ; 2 uses
  %shift162 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop163 = fadd <2 x float> %shift162, %i.aa
  %foldExtExtBinop165 = fmul <2 x float> %foldExtExtBinop160, %foldExtExtBinop160
  %foldExtExtBinop167 = fadd <2 x float> %foldExtExtBinop165, %foldExtExtBinop163
  %i.ab = extractelement <2 x float> %foldExtExtBinop167, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, f0x057A0000
  br i1 %i.ac, label %bb.f, label %b3Normalize.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = extractelement <2 x float> %foldExtExtBinop160, i64 0
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ab)
  %i.ae = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ag, %i.ah
  %i.aj = fmul float %i.ad, %i.ae
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi <2 x float> [ %i.ai, %bb.f ], [ zeroinitializer, %bb.e ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.aj, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.ak = fsub float %.sroa.468.0.copyload, %1
  %i.al = fsub <2 x float> %.sroa.067.0.copyload, %0
  %i.am = fmul <2 x float> %i.al, %.sroa.07.0.i   ; 2 uses
  %shift169 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop170 = fadd <2 x float> %i.am, %shift169
  %i.an = extractelement <2 x float> %foldExtExtBinop170, i64 0
  %i.ao = fmul float %i.ak, %.sroa.5.0.i
  %i.ap = fadd float %i.ao, %i.an                 ; 2 uses
  %foldExtExtBinop172 = fsub <2 x float> %.sroa.066.0.copyload, %0
  %foldExtExtBinop174 = fsub <2 x float> %.sroa.066.0.copyload, %0
  %i.aq = fsub float %.sroa.4.0.copyload, %1
  %foldExtExtBinop176 = fmul <2 x float> %foldExtExtBinop172, %.sroa.07.0.i
  %foldExtExtBinop178 = fmul <2 x float> %foldExtExtBinop174, %.sroa.07.0.i
  %shift180 = shufflevector <2 x float> %foldExtExtBinop178, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop181 = fadd <2 x float> %foldExtExtBinop176, %shift180
  %i.ar = extractelement <2 x float> %foldExtExtBinop181, i64 0
  %i.as = fmul float %i.aq, %.sroa.5.0.i
  %i.at = fadd float %i.as, %i.ar                 ; 2 uses
  %i.au = fcmp olt float %i.ap, 0.000000e+00
  br i1 %i.au, label %bb.t, label %bb.g

bb.g:                                             ; preds = %b3Normalize.exit
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 268
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !192 ; 3 uses
  %i.ax = icmp ult i8 %i.aw, 2
  br i1 %i.ax, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.ay = zext i8 %i.aw to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @349, i64 %i.ay) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.az = icmp eq i8 %i.aw, 0
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.bb = fsub float %i.ap, %i.at
  %i.bc = load float, ptr %i.ba, align 8, !tbaa !193 ; 2 uses
  %i.bd = fcmp olt float %i.bb, %i.bc
  %i.be = fcmp ogt float %i.at, %i.bc
  %or.cond = and i1 %i.bd, %i.be
  br i1 %or.cond, label %bb.t, label %bb.k

end_hunk_0
