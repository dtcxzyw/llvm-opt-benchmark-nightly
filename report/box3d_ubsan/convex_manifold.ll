Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/convex_manifold?download=true
inline.NumInlined: 430
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3CollideHulls:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 56
  %15 = alloca %struct.b3AxisQuery, align 4       ; 19 uses
  %16 = alloca %struct.b3SeparatingAxis, align 8  ; 4 uses
  %17 = alloca %struct.b3SeparatingAxis, align 8  ; 6 uses
  %18 = alloca %struct.b3LocalManifold, align 8   ; 7 uses
  %19 = alloca %struct.b3LocalManifoldPoint, align 4 ; 5 uses
  %20 = alloca %struct.b3SATCache, align 8        ; 5 uses
  %i.b = icmp ne ptr %0, null, !nosanitize !9
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @173, i64 %i.c) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = icmp slt i32 %1, 4
  br i1 %i.h, label %.critedge418, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.j = fmul float %i.i, 5.000000e-03
  %i.k = fmul float %i.j, 4.000000e+00            ; 3 uses
  %i.l = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.m = fmul float %i.l, 5.000000e-03            ; 4 uses
  %i.n = icmp ne ptr %2, null, !nosanitize !9
  %i.o = ptrtoint ptr %2 to i64, !nosanitize !9   ; 8 uses
  %i.p = and i64 %i.o, 7, !nosanitize !9
  %i.q = icmp eq i64 %i.p, 0, !nosanitize !9
  %i.r = and i1 %i.n, %i.q, !nosanitize !9
  br i1 %i.r, label %bb.f, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @279, i64 %i.o) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51   ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %b3GetHullEdges.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = sext i32 %i.t to i64                     ; 2 uses
  %i.w = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.o, i64 %i.v), !nosanitize !9 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1, !nosanitize !9
  br i1 %i.x, label %bb.h, label %bb.i, !prof !32, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @280, i64 %i.o, i64 %i.v) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.y = extractvalue { i64, i1 } %i.w, 0, !nosanitize !9
  %i.z = inttoptr i64 %i.y to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %bb.f, %bb.i
  %.0.i = phi ptr [ %i.z, %bb.i ], [ null, %bb.f ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !46 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %b3GetHullPlanes.exit, label %bb.j

bb.j:                                             ; preds = %b3GetHullEdges.exit
  %i.ad = sext i32 %i.ab to i64                   ; 2 uses
  %i.ae = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.o, i64 %i.ad), !nosanitize !9 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1, !nosanitize !9
  br i1 %i.af, label %bb.k, label %bb.l, !prof !32, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @206, i64 %i.o, i64 %i.ad) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.ag = extractvalue { i64, i1 } %i.ae, 0, !nosanitize !9
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %b3GetHullPlanes.exit

b3GetHullPlanes.exit:                             ; preds = %b3GetHullEdges.exit, %bb.l
  %.0.i439 = phi ptr [ %i.ah, %bb.l ], [ null, %b3GetHullEdges.exit ] ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !31 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %b3GetHullPoints.exit, label %bb.m

bb.m:                                             ; preds = %b3GetHullPlanes.exit
  %i.al = sext i32 %i.aj to i64                   ; 2 uses
  %i.am = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.o, i64 %i.al), !nosanitize !9 ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1, !nosanitize !9
  br i1 %i.an, label %bb.n, label %bb.o, !prof !32, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @205, i64 %i.o, i64 %i.al) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.ao = extractvalue { i64, i1 } %i.am, 0, !nosanitize !9
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullPlanes.exit, %bb.o
  %.0.i440 = phi ptr [ %i.ap, %bb.o ], [ null, %b3GetHullPlanes.exit ] ; 7 uses
  %i.aq = icmp ne ptr %3, null, !nosanitize !9
  %i.ar = ptrtoint ptr %3 to i64, !nosanitize !9  ; 8 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !9
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !9
  %i.au = and i1 %i.aq, %i.at, !nosanitize !9
  br i1 %i.au, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %b3GetHullPoints.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @279, i64 %i.ar) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %b3GetHullPoints.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !51 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %b3GetHullEdges.exit442, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = sext i32 %i.aw to i64                   ; 2 uses
  %i.az = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.ay), !nosanitize !9 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1, !nosanitize !9
  br i1 %i.ba, label %bb.s, label %bb.t, !prof !32, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @280, i64 %i.ar, i64 %i.ay) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.bb = extractvalue { i64, i1 } %i.az, 0, !nosanitize !9
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %b3GetHullEdges.exit442

b3GetHullEdges.exit442:                           ; preds = %bb.q, %bb.t
  %.0.i441 = phi ptr [ %i.bc, %bb.t ], [ null, %bb.q ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %b3GetHullPlanes.exit444, label %bb.u

bb.u:                                             ; preds = %b3GetHullEdges.exit442
  %i.bg = sext i32 %i.be to i64                   ; 2 uses
  %i.bh = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.bg), !nosanitize !9 ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1, !nosanitize !9
  br i1 %i.bi, label %bb.v, label %bb.w, !prof !32, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @206, i64 %i.ar, i64 %i.bg) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.bj = extractvalue { i64, i1 } %i.bh, 0, !nosanitize !9
  %i.bk = inttoptr i64 %i.bj to ptr
  br label %b3GetHullPlanes.exit444

b3GetHullPlanes.exit444:                          ; preds = %b3GetHullEdges.exit442, %bb.w
  %.0.i443 = phi ptr [ %i.bk, %bb.w ], [ null, %b3GetHullEdges.exit442 ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %b3GetHullPoints.exit446, label %bb.x

bb.x:                                             ; preds = %b3GetHullPlanes.exit444
  %i.bo = sext i32 %i.bm to i64                   ; 2 uses
  %i.bp = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.bo), !nosanitize !9 ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1, !nosanitize !9
  br i1 %i.bq, label %bb.y, label %bb.z, !prof !32, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @205, i64 %i.ar, i64 %i.bo) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.br = extractvalue { i64, i1 } %i.bp, 0, !nosanitize !9
  %i.bs = inttoptr i64 %i.br to ptr
  br label %b3GetHullPoints.exit446

b3GetHullPoints.exit446:                          ; preds = %b3GetHullPlanes.exit444, %bb.z
  %.0.i445 = phi ptr [ %i.bs, %bb.z ], [ null, %b3GetHullPlanes.exit444 ] ; 7 uses
  %i.bt = icmp ne ptr %5, null, !nosanitize !9
  %i.bu = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.bv = and i64 %i.bu, 3, !nosanitize !9
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !9
  %i.bx = and i1 %i.bt, %i.bw, !nosanitize !9
  br i1 %i.bx, label %bb.ab, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %b3GetHullPoints.exit446
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @175, i64 %i.bu) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %b3GetHullPoints.exit446
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 7 ; 7 uses
  store i8 0, ptr %i.by, align 1, !tbaa !126
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !74
  switch i8 %i.ca, label %.critedge416 [
    i8 8, label %bb.ct
    i8 2, label %bb.ac
    i8 3, label %bb.am
    i8 4, label %bb.aw
    i8 6, label %bb.cr
    i8 7, label %bb.cs
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !75
  %i.cd = zext i8 %i.cc to i64                    ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.0.i439, i64 %i.cd ; 3 uses
  %i.cf = shl nuw nsw i64 %i.cd, 4
  %i.cg = ptrtoint ptr %.0.i439 to i64, !nosanitize !9 ; 3 uses
  %i.ch = add i64 %i.cf, %i.cg, !nosanitize !9    ; 3 uses
  %i.ci = icmp ne ptr %.0.i439, null, !nosanitize !9 ; 2 uses
  %i.cj = icmp eq i64 %i.ch, 0
  %i.ck = xor i1 %i.ci, %i.cj
  %i.cl = icmp uge i64 %i.ch, %i.cg, !nosanitize !9
  %i.cm = and i1 %i.cl, %i.ck, !nosanitize !9
  br i1 %i.cm, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @176, i64 %i.cg, i64 %i.ch) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.cn = ptrtoint ptr %i.ce to i64, !nosanitize !9 ; 2 uses
  %i.co = and i64 %i.cn, 3, !nosanitize !9
  %i.cp = icmp eq i64 %i.co, 0, !nosanitize !9
  %i.cq = and i1 %i.ci, %i.cp
  br i1 %i.cq, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @177, i64 %i.cn) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  %.sroa.0621.0.copyload.a = load <2 x float>, ptr %i.ce, align 4, !tbaa !12 ; 6 uses
  %.sroa.8624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.8624.0.copyload = load <2 x float>, ptr %.sroa.8624.0..sroa_idx, align 4, !tbaa !12 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cs = load <2 x float>, ptr %i.cr, align 4    ; 10 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.cu = load <2 x float>, ptr %i.ct, align 4    ; 5 uses
  %.sroa.8624.8.vec.extract = extractelement <2 x float> %.sroa.8624.0.copyload, i64 0
  %i.cv = shufflevector <2 x float> %.sroa.0621.0.copyload.a, <2 x float> %.sroa.8624.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cw = fmul <2 x float> %i.cv, %i.cs
  %i.cx = shufflevector <2 x float> %i.cu, <2 x float> %i.cs, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cy = fmul <2 x float> %.sroa.0621.0.copyload.a, %i.cx
  %i.cz = shufflevector <2 x float> %i.cs, <2 x float> %i.cu, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.da = fmul <2 x float> %.sroa.0621.0.copyload.a, %i.cz
  %i.db = shufflevector <2 x float> %.sroa.8624.0.copyload, <2 x float> %.sroa.0621.0.copyload.a, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.dc = fmul <2 x float> %i.db, %i.cs
  %i.dd = fsub <2 x float> %i.cw, %i.da
  %i.de = fsub <2 x float> %i.cy, %i.dc
  %i.df = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.dg = fmul <2 x float> %i.db, %i.df
  %i.dh = fmul <2 x float> %i.cv, %i.df
  %i.di = fsub <2 x float> %i.dd, %i.dg           ; 2 uses
  %i.dj = fsub <2 x float> %i.de, %i.dh           ; 2 uses
  %i.dk = fmul <2 x float> %i.cz, %i.di
  %i.dl = fmul <2 x float> %i.cx, %i.dj
  %i.dm = fsub <2 x float> %i.dk, %i.dl
  %foldExtExtBinop = fmul <2 x float> %i.cs, %i.dj
  %foldExtExtBinop670.a = fmul <2 x float> %i.cs, %i.di
  %shift = shufflevector <2 x float> %foldExtExtBinop670.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop672.a = fsub <2 x float> %foldExtExtBinop, %shift
  %i.dn = extractelement <2 x float> %foldExtExtBinop672.a, i64 0
  %i.do = fmul <2 x float> %i.dm, splat (float 2.000000e+00)
  %i.dp = fadd <2 x float> %.sroa.0621.0.copyload.a, %i.do
  %i.dq = fmul float %i.dn, 2.000000e+00
  %i.dr = fadd float %.sroa.8624.8.vec.extract, %i.dq
  %i.ds = fneg <2 x float> %i.dp
  %i.dt = fneg float %i.dr
  %i.du = tail call i32 @b3FindHullSupportVertex(ptr noundef nonnull %3, <2 x float> %i.ds, float %i.dt) #11 ; 3 uses
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = mul nsw i64 %i.dv, 12
  %i.dx = ptrtoint ptr %.0.i445 to i64, !nosanitize !9 ; 3 uses
  %i.dy = add i64 %i.dw, %i.dx, !nosanitize !9    ; 3 uses
  %i.dz = icmp ne ptr %.0.i445, null, !nosanitize !9
  %i.ea = icmp eq i64 %i.dy, 0
  %i.eb = xor i1 %i.dz, %i.ea
  %i.ec = icmp uge i64 %i.dy, %i.dx, !nosanitize !9
  %i.ed = icmp slt i32 %i.du, 0
  %i.ee = xor i1 %i.ed, %i.ec
  %i.ef = and i1 %i.eb, %i.ee, !nosanitize !9
  br i1 %i.ef, label %bb.ai, label %bb.ah, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @178, i64 %i.dx, i64 %i.dy) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %.sroa.0.4.vec.extract8.i.i = extractelement <2 x float> %.sroa.0621.0.copyload.a, i64 1
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %i.cs, i64 1
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %i.cu, i64 0
  %i.eg = getelementptr inbounds [12 x i8], ptr %.0.i445, i64 %i.dv ; 2 uses
  %.sroa.0214.0.copyload = load <2 x float>, ptr %i.eg, align 4 ; 4 uses
  %.sroa.2215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.2215.0.copyload = load float, ptr %.sroa.2215.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0634.0.copyload = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.4635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4635.0.copyload = load float, ptr %.sroa.4635.0..sroa_idx, align 8
  %.sroa.0.4.vec.extract8.i.i451 = extractelement <2 x float> %.sroa.0214.0.copyload, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i460 = extractelement <2 x float> %.sroa.0634.0.copyload, i64 1
  %i.eh = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.2215.0.copyload
  %i.ei = fmul float %.sroa.2.8.vec.extract65.i, %.sroa.0.4.vec.extract8.i.i451
  %i.ej = fmul <2 x float> %i.cx, %.sroa.0214.0.copyload ; 2 uses
  %i.ek = shufflevector <2 x float> %.sroa.0214.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.el = insertelement <2 x float> %i.ek, float %.sroa.2215.0.copyload, i64 0 ; 2 uses
  %i.em = fmul <2 x float> %i.cs, %i.el           ; 2 uses
  %i.en = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eo = insertelement <2 x float> %i.en, float %i.eh, i64 0
  %i.ep = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eq = insertelement <2 x float> %i.ep, float %i.ei, i64 0
  %i.er = fsub <2 x float> %i.eo, %i.eq
  %i.es = fsub <2 x float> %i.ej, %i.em
  %i.et = fmul <2 x float> %i.df, %.sroa.0214.0.copyload
  %i.eu = insertelement <2 x float> %i.ek, float %.sroa.2215.0.copyload, i64 1
  %i.ev = fmul <2 x float> %i.df, %i.eu
  %i.ew = fadd <2 x float> %i.et, %i.er           ; 2 uses
  %i.ex = fadd <2 x float> %i.ev, %i.es           ; 2 uses
  %foldExtExtBinop674.a = fmul <2 x float> %i.cu, %i.ew
  %shift676 = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop677 = fmul <2 x float> %i.cs, %shift676
  %foldExtExtBinop679.a = fsub <2 x float> %foldExtExtBinop674.a, %foldExtExtBinop677
  %i.ey = extractelement <2 x float> %foldExtExtBinop679.a, i64 0
  %i.ez = fmul <2 x float> %i.cs, %i.ex
  %i.fa = fmul <2 x float> %i.cz, %i.ew
  %i.fb = fsub <2 x float> %i.ez, %i.fa
  %i.fc = fmul float %i.ey, 2.000000e+00
  %i.fd = fadd float %.sroa.0.4.vec.extract8.i.i451, %i.fc
  %i.fe = fmul <2 x float> %i.fb, splat (float 2.000000e+00)
  %i.ff = fadd <2 x float> %i.el, %i.fe
  %i.fg = fadd float %.sroa.0.4.vec.extract.i460, %i.fd
  %i.fh = shufflevector <2 x float> %.sroa.0634.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %.sroa.4635.0.copyload, i64 0
  %i.fj = fadd <2 x float> %i.fi, %i.ff
  %i.fk = fmul float %.sroa.0.4.vec.extract8.i.i, %i.fg
  %i.fl = fmul <2 x float> %i.db, %i.fj           ; 2 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 1
  %i.fn = fadd float %i.fm, %i.fk
  %i.fo = extractelement <2 x float> %i.fl, i64 0
  %i.fp = fadd float %i.fo, %i.fn
  %.sroa.1.12.vec.extract.i = extractelement <2 x float> %.sroa.8624.0.copyload, i64 1
  %i.fq = fsub float %i.fp, %.sroa.1.12.vec.extract.i
  %i.fr = fcmp ult float %i.fq, %i.k
  br i1 %i.fr, label %bb.aj, label %.critedge

.critedge:                                        ; preds = %bb.ai
  store i8 1, ptr %i.by, align 1, !tbaa !126
  br label %.critedge418

bb.aj:                                            ; preds = %bb.ai
  %i.fs = load i8, ptr %i.cb, align 1, !tbaa !75
  %i.ft = zext i8 %i.fs to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i64 0, ptr %6, align 8
  %i.fu = call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i32 %i.ft, i32 %i.du, ptr noundef %6)
  br i1 %i.fu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fv = load float, ptr %5, align 4, !tbaa !76
  %i.fw = load float, ptr %6, align 8, !tbaa !76
  %i.fx = fsub float %i.fv, %i.fw
  %i.fy = call float @llvm.fabs.f32(float %i.fx)
  %i.fz = fcmp olt float %i.fy, %i.m
  br i1 %i.fz, label %.critedge418.critedge, label %bb.al

.critedge418.critedge:                            ; preds = %bb.ak
  store i8 1, ptr %i.by, align 1, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.critedge418

bb.al:                                            ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.critedge416

bb.am:                                            ; preds = %bb.ab
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 2, !tbaa !77
  %i.gc = zext i8 %i.gb to i64                    ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %.0.i443, i64 %i.gc ; 3 uses
  %i.ge = shl nuw nsw i64 %i.gc, 4
  %i.gf = ptrtoint ptr %.0.i443 to i64, !nosanitize !9 ; 3 uses
  %i.gg = add i64 %i.ge, %i.gf, !nosanitize !9    ; 3 uses
  %i.gh = icmp ne ptr %.0.i443, null, !nosanitize !9 ; 2 uses
  %i.gi = icmp eq i64 %i.gg, 0
  %i.gj = xor i1 %i.gh, %i.gi
  %i.gk = icmp uge i64 %i.gg, %i.gf, !nosanitize !9
  %i.gl = and i1 %i.gk, %i.gj, !nosanitize !9
  br i1 %i.gl, label %bb.ao, label %bb.an, !prof !10, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @179, i64 %i.gf, i64 %i.gg) #10, !nosanitize !9
  unreachable, !nosanitize !9
end_hunk_0
begin_hunk_1_@b3CollideHulls:bb.a
  %i.tf = fsub <2 x float> %i.td, %i.te
  %foldExtExtBinop722 = fmul <2 x float> %.sroa.5632.0.copyload, %i.tc
  %foldExtExtBinop724.a = fmul <2 x float> %.sroa.5632.0.copyload, %i.sz
  %shift726.a = shufflevector <2 x float> %foldExtExtBinop724.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop727.a = fsub <2 x float> %foldExtExtBinop722, %shift726.a
  %i.tg = extractelement <2 x float> %foldExtExtBinop727.a, i64 0
  %i.th = fmul <2 x float> %i.tf, splat (float 2.000000e+00)
  %i.ti = fadd <2 x float> %.sroa.081.0.copyload, %i.th ; 3 uses
  %i.tj = fmul float %i.tg, 2.000000e+00
  %i.tk = fadd float %.sroa.282.0.copyload, %i.tj ; 2 uses
  %i.tl = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tm = shufflevector <2 x float> %i.ti, <2 x float> %i.sc, <2 x i32> <i32 3, i32 0>
  %i.tn = fmul <2 x float> %i.tl, %i.tm
  %i.to = shufflevector <2 x float> %i.sc, <2 x float> %i.ti, <2 x i32> <i32 0, i32 3>
  %i.tp = fmul <2 x float> %i.lu, %i.to
  %i.tq = fadd <2 x float> %i.tn, %i.tp
  %i.tr = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tt = insertelement <2 x float> poison, float %i.se, i64 0
  %i.tu = insertelement <2 x float> %i.tt, float %i.tk, i64 1
  %i.tv = fmul <2 x float> %i.ts, %i.tu
  %i.tw = fadd <2 x float> %i.tv, %i.tq           ; 4 uses
  %.sroa.03.4.vec.extract.i574 = extractelement <2 x float> %.sroa.0130.0.copyload, i64 1
  %shift729 = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop730 = fmul <2 x float> %.sroa.0130.0.copyload, %shift729
  %i.tx = extractelement <2 x float> %foldExtExtBinop730, i64 0
  %i.ty = fmul float %.sroa.03.4.vec.extract.i574, %i.qq
  %i.tz = fadd float %i.tx, %i.ty
  %i.ua = extractelement <2 x float> %i.qr, i64 0
  %i.ub = fmul float %.sroa.4131.0.copyload, %i.ua
  %i.uc = fadd float %i.ub, %i.tz
  %.sroa.03.4.vec.extract.i578 = extractelement <2 x float> %.sroa.0128.0.copyload, i64 1
  %i.ud = fmul float %.sroa.03.4.vec.extract.i578, %i.qq
  %i.ue = shufflevector <2 x float> %.sroa.0128.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uf = insertelement <2 x float> %i.ue, float %.sroa.4129.0.copyload, i64 0
  %i.ug = fmul <2 x float> %i.uf, %i.qr           ; 2 uses
  %i.uh = extractelement <2 x float> %i.ug, i64 1
  %i.ui = fadd float %i.uh, %i.ud
  %i.uj = extractelement <2 x float> %i.ug, i64 0
  %i.uk = fadd float %i.uj, %i.ui                 ; 2 uses
  %i.ul = fneg float %i.uk
  %i.um = extractelement <2 x float> %i.tw, i64 0 ; 4 uses
  %i.un = extractelement <2 x float> %i.tw, i64 1 ; 2 uses
  %i.uo = fmul float %i.um, %i.un
  %i.up = fcmp olt float %i.uo, 0.000000e+00
  %i.uq = fmul float %i.uc, %i.uk
  %i.ur = fcmp olt float %i.uq, 0.000000e+00
  %or.cond = select i1 %i.up, i1 %i.ur, i1 false
  %i.us = fmul float %i.um, %i.ul
  %i.ut = fcmp ogt float %i.us, 0.000000e+00
  %or.cond412 = select i1 %or.cond, i1 %i.ut, i1 false
  br i1 %or.cond412, label %bb.cl, label %.critedge416

bb.cl:                                            ; preds = %bb.ck
  %i.uu = fmul <2 x float> %i.tw, %i.tw           ; 2 uses
  %i.uv = extractelement <2 x float> %i.uu, i64 0 ; 2 uses
  %i.uw = extractelement <2 x float> %i.uu, i64 1 ; 2 uses
  %i.ux = fcmp ogt float %i.uv, %i.uw
  %i.uy = select i1 %i.ux, float %i.uv, float %i.uw
  %i.uz = fmul <2 x float> %i.lu, %i.lu           ; 2 uses
  %shift732 = shufflevector <2 x float> %i.uz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop733 = fadd <2 x float> %i.uz, %shift732
  %i.va = extractelement <2 x float> %foldExtExtBinop733, i64 0
  %i.vb = fmul float %i.lv, %i.lv
  %i.vc = fadd float %i.vb, %i.va
  %i.vd = fmul float %i.vc, 2.500000e-05
  %i.ve = fcmp ult float %i.uy, %i.vd
  br i1 %i.ve, label %.critedge416, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.vf = fsub float %i.um, %i.un
  %i.vg = fdiv float %i.um, %i.vf                 ; 3 uses
  %i.vh = fsub float 1.000000e+00, %i.vg          ; 2 uses
  %i.vi = fmul float %i.se, %i.vh
  %i.vj = insertelement <2 x float> poison, float %i.vh, i64 0
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vl = fmul <2 x float> %i.sc, %i.vk
  %i.vm = insertelement <2 x float> poison, float %i.vg, i64 0
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vo = fmul <2 x float> %i.ti, %i.vn
  %i.vp = fadd <2 x float> %i.vo, %i.vl           ; 3 uses
  %i.vq = fmul float %i.tk, %i.vg
  %i.vr = fadd float %i.vq, %i.vi                 ; 3 uses
  %i.vs = fmul <2 x float> %i.vp, %i.vp           ; 2 uses
  %shift735 = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop736 = fadd <2 x float> %i.vs, %shift735
  %i.vt = extractelement <2 x float> %foldExtExtBinop736, i64 0
  %i.vu = fmul float %i.vr, %i.vr
  %i.vv = fadd float %i.vu, %i.vt                 ; 2 uses
  %i.vw = fcmp ogt float %i.vv, f0x057A0000
  br i1 %i.vw, label %bb.cn, label %b3Normalize.exit

bb.cn:                                            ; preds = %bb.cm
  %sqrt = tail call float @llvm.sqrt.f32(float %i.vv)
  %i.vx = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.vy = insertelement <2 x float> poison, float %i.vx, i64 0
  %i.vz = shufflevector <2 x float> %i.vy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wa = fmul <2 x float> %i.vp, %i.vz
  %i.wb = fmul float %i.vr, %i.vx
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.cm, %bb.cn
  %.sroa.07.0.i = phi <2 x float> [ %i.wa, %bb.cn ], [ zeroinitializer, %bb.cm ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.wb, %bb.cn ], [ 0.000000e+00, %bb.cm ] ; 2 uses
  %i.wc = shufflevector <2 x float> %.sroa.0143.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wd = insertelement <2 x float> %i.wc, float %.sroa.5145.0.copyload, i64 0
  %i.we = fsub <2 x float> %i.wd, %i.qp
  %i.wf = fsub float %.sroa.07.4.vec.extract.i496, %i.qo
  %.sroa.03.4.vec.extract.i596 = extractelement <2 x float> %.sroa.07.0.i, i64 1
  %i.wg = fmul float %i.wf, %.sroa.03.4.vec.extract.i596
  %i.wh = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wi = insertelement <2 x float> %i.wh, float %.sroa.5.0.i, i64 0
  %i.wj = fmul <2 x float> %i.we, %i.wi           ; 2 uses
  %i.wk = extractelement <2 x float> %i.wj, i64 1
  %i.wl = fadd float %i.wk, %i.wg
  %i.wm = extractelement <2 x float> %i.wj, i64 0
  %i.wn = fadd float %i.wm, %i.wl
  %i.wo = fcmp ogt float %i.wn, %i.k
  br i1 %i.wo, label %.critedge414, label %bb.co

.critedge414:                                     ; preds = %b3Normalize.exit
  store i8 1, ptr %i.by, align 1, !tbaa !126
  br label %.critedge418

bb.co:                                            ; preds = %b3Normalize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.wp = fneg <2 x float> %.sroa.07.0.i
  %i.wq = fneg float %.sroa.5.0.i
  store <2 x float> %i.wp, ptr %9, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.wq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %i.wr = getelementptr inbounds nuw i8, ptr %9, i64 12
  store float 0.000000e+00, ptr %i.wr, align 4, !tbaa !57
  %i.ws = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.wt = zext i8 %i.ke to i32
  store i32 %i.wt, ptr %i.ws, align 8, !tbaa !58
  %i.wu = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.wv = zext i8 %i.mw to i32
  store i32 %i.wv, ptr %i.wu, align 4, !tbaa !59
  %i.ww = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 4, ptr %i.ww, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store i64 0, ptr %10, align 8
  %i.wx = call fastcc zeroext i1 @b3BuildEdgeContact(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %9, ptr noundef %10)
  br i1 %i.wx, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.wy = load float, ptr %5, align 4, !tbaa !76
  %i.wz = load float, ptr %10, align 8, !tbaa !76
  %i.xa = fsub float %i.wy, %i.wz
  %i.xb = call float @llvm.fabs.f32(float %i.xa)
  %i.xc = fcmp olt float %i.xb, %i.m
  br i1 %i.xc, label %.critedge418.critedge423, label %bb.cq

.critedge418.critedge423:                         ; preds = %bb.cp
  store i8 1, ptr %i.by, align 1, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %.critedge418

bb.cq:                                            ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %.critedge416

bb.cr:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %11, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext false)
  %.sroa.3615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.3615.0.copyload = load i32, ptr %.sroa.3615.0..sroa_idx, align 4, !tbaa !36
  %.sroa.4616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 20
  %.sroa.4616.0.copyload = load i32, ptr %.sroa.4616.0..sroa_idx, align 4, !tbaa !36
  %i.xd = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i32 %.sroa.3615.0.copyload, i32 %.sroa.4616.0.copyload, ptr noundef %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.critedge418

bb.cs:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %12, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.xe = getelementptr inbounds nuw i8, ptr %12, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, ptr noundef nonnull align 4 dereferenceable(28) %i.xe, i64 28, i1 false), !tbaa.struct !127
  %i.xf = tail call fastcc zeroext i1 @b3BuildFaceBContact(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %13, ptr noundef %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %.critedge418

bb.ct:                                            ; preds = %bb.ab
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %14, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext false)
  %i.xg = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.xh = load i32, ptr %i.xg, align 8
  %.not400 = icmp eq i32 %i.xh, -1
  br i1 %.not400, label %.critedge418, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.xi = tail call fastcc zeroext i1 @b3BuildEdgeContact(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %i.a, ptr noundef %5) ; 0 uses
  br label %.critedge418

.critedge416:                                     ; preds = %bb.cl, %bb.cq, %bb.av, %bb.al, %bb.ck, %bb.ab
  store i32 0, ptr %i.g, align 8, !tbaa !19
  store i32 0, ptr %5, align 4
  store i32 0, ptr %i.bz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %15, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext true)
  %i.xj = getelementptr inbounds nuw i8, ptr %15, i64 84
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !71 ; 3 uses
  %.not401 = icmp eq i32 %i.xk, 0
  br i1 %.not401, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %.critedge416
  %i.xl = trunc i32 %i.xk to i8
  store i8 %i.xl, ptr %i.bz, align 4, !tbaa !74
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 3 uses
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 3 uses
  switch i32 %i.xk, label %bb.cy [
    i32 2, label %bb.cw
    i32 3, label %bb.cx
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.xm = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !128
  store float %i.xn, ptr %5, align 4, !tbaa !76
  %i.xo = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !129
  %i.xq = trunc i32 %i.xp to i8
  store i8 %i.xq, ptr %21, align 1, !tbaa !75
  %i.xr = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !130
  %i.xt = trunc i32 %i.xs to i8
  store i8 %i.xt, ptr %22, align 2, !tbaa !77
  br label %bb.dl

bb.cx:                                            ; preds = %bb.cv
  %i.xu = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !131
  store float %i.xv, ptr %5, align 4, !tbaa !76
  %i.xw = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !132
  %i.xy = trunc i32 %i.xx to i8
  store i8 %i.xy, ptr %21, align 1, !tbaa !75
  %i.xz = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !133
  %i.yb = trunc i32 %i.ya to i8
  store i8 %i.yb, ptr %22, align 2, !tbaa !77
  br label %bb.dl

bb.cy:                                            ; preds = %bb.cv
  %i.yc = getelementptr inbounds nuw i8, ptr %15, i64 68
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !134
  store float %i.yd, ptr %5, align 4, !tbaa !76
  %i.ye = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !135
  %i.yg = trunc i32 %i.yf to i8
  store i8 %i.yg, ptr %21, align 1, !tbaa !75
  %i.yh = getelementptr inbounds nuw i8, ptr %15, i64 76
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !136
  %i.yj = trunc i32 %i.yi to i8
  store i8 %i.yj, ptr %22, align 2, !tbaa !77
  br label %bb.dl

bb.cz:                                            ; preds = %.critedge416
  %i.yk = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !128
  %i.ym = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !131
  %i.yo = fcmp ogt float %i.yl, %i.yn
  br i1 %i.yo, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !36
  %.sroa.4.0..sroa_idx604 = getelementptr inbounds nuw i8, ptr %15, i64 20
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx604, align 4, !tbaa !36
  %i.yp = call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i32 %.sroa.3.0.copyload, i32 %.sroa.4.0.copyload, ptr noundef %5) ; 0 uses
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.yq = getelementptr inbounds nuw i8, ptr %15, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, ptr noundef nonnull align 4 dereferenceable(28) %i.yq, i64 28, i1 false), !tbaa.struct !127
  %i.yr = call fastcc zeroext i1 @b3BuildFaceBContact(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %16, ptr noundef %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.ys = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, ptr noundef nonnull align 4 dereferenceable(28) %i.ys, i64 28, i1 false), !tbaa.struct !127
  %i.yt = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !58
  %i.yv = icmp eq i32 %i.yu, -1
  br i1 %i.yv, label %bb.dk, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yw = load i32, ptr %i.g, align 8, !tbaa !19
  %i.yx = icmp eq i32 %i.yw, 0
  br i1 %i.yx, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.yy = load float, ptr %5, align 4, !tbaa !76
  %i.yz = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.za = load float, ptr %i.yz, align 4, !tbaa !57
  %i.zb = fadd float %i.m, %i.yy
  %i.zc = fcmp ogt float %i.za, %i.zb
  br i1 %i.zc, label %bb.df, label %bb.dk

bb.df:                                            ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %18, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.zd = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %19, ptr %i.zd, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  store i64 0, ptr %20, align 8
  %i.ze = call fastcc zeroext i1 @b3BuildEdgeContact(ptr noundef %18, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %17, ptr noundef %20) ; 0 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !19
  %i.zh = icmp eq i32 %i.zg, 1
  br i1 %i.zh, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !20 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %18, i64 64, i1 false), !tbaa.struct !138
  store ptr %i.zj, ptr %i.zi, align 8, !tbaa !20
  %i.zk = icmp ne ptr %i.zj, null, !nosanitize !9
  %i.zl = ptrtoint ptr %i.zj to i64, !nosanitize !9 ; 2 uses
  %i.zm = and i64 %i.zl, 3, !nosanitize !9
  %i.zn = icmp eq i64 %i.zm, 0, !nosanitize !9
  %i.zo = and i1 %i.zk, %i.zn, !nosanitize !9
  br i1 %i.zo, label %bb.di, label %bb.dh, !prof !10, !nosanitize !9

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @202, i64 %i.zl) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.di:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.zj, ptr noundef nonnull align 4 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !78
  %i.zp = load i64, ptr %20, align 8
  store i64 %i.zp, ptr %5, align 4
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %bb.dk

bb.dk:                                            ; preds = %bb.de, %bb.dj, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.dl

bb.dl:                                            ; preds = %bb.cw, %bb.cy, %bb.cx, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.critedge418

.critedge418:                                     ; preds = %bb.ct, %bb.cu, %.critedge418.critedge423, %.critedge418.critedge421, %.critedge418.critedge, %bb.cr, %bb.cs, %bb.dl, %.critedge, %.critedge409, %.critedge414, %bb.c
  ret void
}

declare i32 @b3FindHullSupportVertex(ptr noundef, <2 x float>, float) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceAContact(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, i32 %.16.val, i32 %.20.val, ptr noundef nonnull %4) unnamed_addr #0 !func_sanitize !79 {
bb.a:
  %5 = alloca [64 x %struct.b3ClipVertex], align 16 ; 5 uses
  %6 = alloca [64 x %struct.b3ClipVertex], align 16 ; 3 uses
  %7 = alloca [64 x %struct.b3LocalManifoldPoint], align 16 ; 22 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 10 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @223, i64 %i.b) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = load i32, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %b3GetHullFaces.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.i), !nosanitize !9 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1, !nosanitize !9
  br i1 %i.k, label %bb.e, label %bb.f, !prof !32, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @224, i64 %i.b, i64 %i.i) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0, !nosanitize !9
  %i.m = inttoptr i64 %i.l to ptr
  br label %b3GetHullFaces.exit

b3GetHullFaces.exit:                              ; preds = %bb.c, %bb.f
  %.0.i = phi ptr [ %i.m, %bb.f ], [ null, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51
  %.fr383 = freeze i32 %i.o                       ; 2 uses
  %i.p = icmp eq i32 %.fr383, 0
  br i1 %i.p, label %b3GetHullEdges.exit, label %bb.g

bb.g:                                             ; preds = %b3GetHullFaces.exit
  %i.q = sext i32 %.fr383 to i64                  ; 2 uses
  %i.r = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.q), !nosanitize !9 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1, !nosanitize !9
  br i1 %i.s, label %bb.h, label %bb.i, !prof !32, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @280, i64 %i.b, i64 %i.q) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.t = extractvalue { i64, i1 } %i.r, 0, !nosanitize !9
  %i.u = inttoptr i64 %i.t to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %b3GetHullFaces.exit, %bb.i
  %.0.i140 = phi ptr [ %i.u, %bb.i ], [ null, %b3GetHullFaces.exit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.w = load i32, ptr %i.v, align 4, !tbaa !46   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %b3GetHullPlanes.exit, label %bb.j

bb.j:                                             ; preds = %b3GetHullEdges.exit
  %i.y = sext i32 %i.w to i64                     ; 2 uses
  %i.z = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.y), !nosanitize !9 ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1, !nosanitize !9
  br i1 %i.aa, label %bb.k, label %bb.l, !prof !32, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @206, i64 %i.b, i64 %i.y) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { i64, i1 } %i.z, 0, !nosanitize !9
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %b3GetHullPlanes.exit

b3GetHullPlanes.exit:                             ; preds = %b3GetHullEdges.exit, %bb.l
  %.0.i141 = phi ptr [ %i.ac, %bb.l ], [ null, %b3GetHullEdges.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31
  %.fr386 = freeze i32 %i.ae                      ; 2 uses
  %i.af = icmp eq i32 %.fr386, 0
  br i1 %i.af, label %b3GetHullPoints.exit, label %bb.m

bb.m:                                             ; preds = %b3GetHullPlanes.exit
  %i.ag = sext i32 %.fr386 to i64                 ; 2 uses
  %i.ah = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.ag), !nosanitize !9 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1, !nosanitize !9
end_hunk_1
begin_hunk_2_@b3BuildFaceAContact:bb.a
  %i.eq = shufflevector <4 x float> %foldExtExtBinop92, <4 x float> %i.en, <2 x i32> <i32 1, i32 5>
  %i.er = fmul <2 x float> %i.eq, splat (float 2.000000e+00)
  %foldExtExtBinop94 = fsub <4 x float> %i.ek, %i.eg
  %i.es = shufflevector <4 x float> %i.en, <4 x float> %foldExtExtBinop94, <2 x i32> <i32 2, i32 4>
  %i.et = fmul <2 x float> %i.es, splat (float 2.000000e+00)
  %i.eu = extractelement <4 x float> %i.en, i64 3
  %i.ev = fmul float %i.eu, 2.000000e+00
  %i.ew = fsub float 1.000000e+00, %i.ev
  %i.ex = ptrtoint ptr %.0.i49.i to i64, !nosanitize !9 ; 6 uses
  %.not133.i = icmp eq ptr %.0.i49.i, null, !nosanitize !9
  %i.ey = ptrtoint ptr %.0.i50.i to i64           ; 3 uses
  %i.ez = icmp ne ptr %.0.i50.i, null
  %.sroa.1.12.vec.extract.i.i = extractelement <2 x float> %.sroa.9.0.copyload, i64 1
  %i.fa = ptrtoint ptr %5 to i64                  ; 3 uses
  br i1 %.not133.i, label %.split.us.i, label %.split.preheader.i, !prof !32

.split.preheader.i:                               ; preds = %bb.ah
  %i.fb = zext i8 %i.du to i32
  br label %.split.i

.split.us.i:                                      ; preds = %bb.ah
  %i.fc = zext i8 %i.du to i64
  %i.fd = shl nuw nsw i64 %i.fc, 2
  %i.fe = icmp eq i8 %i.du, 0
  br i1 %i.fe, label %.split129.us.i, label %.split126.us.i, !prof !10, !nosanitize !9

.split.i:                                         ; preds = %bb.ao, %.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.split.preheader.i ], [ %indvars.iv.next.i, %bb.ao ] ; 4 uses
  %.0.i143 = phi i32 [ %i.fb, %.split.preheader.i ], [ %i.fk, %bb.ao ] ; 2 uses
  %i.ff = zext nneg i32 %.0.i143 to i64           ; 2 uses
  %i.fg = shl nuw nsw i64 %i.ff, 2
  %i.fh = add i64 %i.fg, %i.ex, !nosanitize !9    ; 2 uses
  %.not134.i = icmp ult i64 %i.fh, %i.ex, !nosanitize !9
  br i1 %.not134.i, label %.split126.us.i, label %bb.ai, !prof !32, !nosanitize !9

.split126.us.i:                                   ; preds = %.split.i, %.split.us.i
  %.us-phi127.i = phi i64 [ %i.fd, %.split.us.i ], [ %i.fh, %.split.i ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @302, i64 %i.ex, i64 %.us-phi127.i) #10, !nosanitize !9
  unreachable, !nosanitize !9

.split129.us.i:                                   ; preds = %.split.us.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @303, i64 0) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %.split.i
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.0.i49.i, i64 %i.ff
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !64  ; 3 uses
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = zext i8 %i.fj to i64                    ; 2 uses
  %i.fm = shl nuw nsw i64 %i.fl, 2
  %i.fn = add i64 %i.fm, %i.ex, !nosanitize !9    ; 2 uses
  %.not61.i = icmp ult i64 %i.fn, %i.ex, !nosanitize !9
  br i1 %.not61.i, label %bb.aj, label %bb.ak, !prof !32, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @304, i64 %i.ex, i64 %i.fn) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.0.i49.i, i64 %i.fl
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !54
  %i.fr = zext i8 %i.fq to i64                    ; 2 uses
  %i.fs = mul nuw nsw i64 %i.fr, 12
  %i.ft = add i64 %i.fs, %i.ey, !nosanitize !9    ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = xor i1 %i.ez, %i.fu
  %i.fw = icmp uge i64 %i.ft, %i.ey, !nosanitize !9
  %i.fx = and i1 %i.fw, %i.fv, !nosanitize !9
  br i1 %i.fx, label %bb.am, label %bb.al, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @305, i64 %i.ey, i64 %i.ft) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw [12 x i8], ptr %.0.i50.i, i64 %i.fr ; 2 uses
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.fy, align 4 ; 4 uses
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.213.0.copyload.i = load float, ptr %.sroa.213.0..sroa_idx.i, align 4 ; 2 uses
  %i.fz = call i32 @b3MakeFeaturePair(i32 noundef 1, i32 noundef %.0.i143, i32 noundef 1, i32 noundef %i.fk) #11
  %i.ga = mul nuw nsw i64 %indvars.iv.i, 20
  %i.gb = add i64 %i.ga, %i.fa, !nosanitize !9    ; 2 uses
  %.not62.i = icmp ult i64 %i.gb, %i.fa, !nosanitize !9
  br i1 %.not62.i, label %bb.an, label %bb.ao, !prof !32, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @306, i64 %i.fa, i64 %i.gb) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %bb.am
  %i.gc = getelementptr inbounds nuw [20 x i8], ptr %5, i64 %indvars.iv.i ; 4 uses
  %i.gd = fmul float %i.ew, %.sroa.213.0.copyload.i
  %.sroa.0.0.vec.extract.i.i144 = extractelement <2 x float> %.sroa.012.0.copyload.i, i64 0
  %i.ge = fmul float %i.em, %.sroa.0.0.vec.extract.i.i144
  %i.gf = extractelement <2 x float> %.sroa.012.0.copyload.i, i64 1
  %i.gg = fmul float %i.ep, %i.gf
  %i.gh = fadd float %i.ge, %i.gg
  %i.gi = fadd float %i.gd, %i.gh
  %i.gj = fadd float %.sroa.443.0.copyload, %i.gi ; 2 uses
  %i.gk = fmul float %.sroa.9.8.vec.extract, %i.gj
  %i.gl = insertelement <2 x float> poison, float %.sroa.213.0.copyload.i, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x float> %i.et, %i.gm
  %i.go = shufflevector <2 x float> %.sroa.012.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gp = fmul <2 x float> %i.er, %i.go
  %i.gq = fmul <2 x float> %i.eb, %.sroa.012.0.copyload.i
  %i.gr = fadd <2 x float> %i.gp, %i.gq
  %i.gs = fadd <2 x float> %i.gn, %i.gr
  %i.gt = fadd <2 x float> %.sroa.042.0.copyload, %i.gs ; 3 uses
  %foldExtExtBinop96 = fmul <2 x float> %.sroa.024.0.copyload, %i.gt
  %foldExtExtBinop98 = fmul <2 x float> %.sroa.024.0.copyload, %i.gt
  %shift100 = shufflevector <2 x float> %foldExtExtBinop98, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop101 = fadd <2 x float> %foldExtExtBinop96, %shift100
  %i.gu = extractelement <2 x float> %foldExtExtBinop101, i64 0
  %i.gv = fadd float %i.gk, %i.gu
  %i.gw = fsub float %i.gv, %.sroa.1.12.vec.extract.i.i
  store <2 x float> %i.gt, ptr %i.gc, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store float %i.gj, ptr %.sroa.4.0..sroa_idx55.i, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store float %i.gw, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !12
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 %i.fz, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gx = load i8, ptr %i.dj, align 1, !tbaa !63
  %i.gy = icmp ne i8 %i.fj, %i.gx
  %i.gz = icmp samesign ult i64 %indvars.iv.i, 63
  %i.ha = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %i.ha, label %.split.i, label %b3BuildPolygon.exit, !llvm.loop !139

b3BuildPolygon.exit:                              ; preds = %bb.ao
  %i.hb = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.hc = getelementptr inbounds i8, ptr %.0.i, i64 %i.al ; 3 uses
  %i.hd = ptrtoint ptr %.0.i to i64, !nosanitize !9 ; 3 uses
  %i.he = add i64 %i.hd, %i.al, !nosanitize !9    ; 3 uses
  %i.hf = icmp ne ptr %.0.i, null, !nosanitize !9 ; 2 uses
  %i.hg = icmp eq i64 %i.he, 0
  %i.hh = xor i1 %i.hf, %i.hg
  %i.hi = icmp uge i64 %i.he, %i.hd, !nosanitize !9
  %i.hj = xor i1 %i.au, %i.hi
  %i.hk = and i1 %i.hh, %i.hj, !nosanitize !9
  br i1 %i.hk, label %bb.aq, label %bb.ap, !prof !10, !nosanitize !9

bb.ap:                                            ; preds = %b3BuildPolygon.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @285, i64 %i.hd, i64 %i.he) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.aq:                                            ; preds = %b3BuildPolygon.exit
  br i1 %i.hf, label %bb.as, label %bb.ar, !prof !10, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  %i.hl = ptrtoint ptr %i.hc to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @286, i64 %i.hl) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %bb.aq
  %i.hm = load i8, ptr %i.hc, align 1, !tbaa !63  ; 4 uses
  %i.hn = ptrtoint ptr %.0.i140 to i64, !nosanitize !9 ; 10 uses
  %.not384 = icmp eq ptr %.0.i140, null, !nosanitize !9
  %i.ho = ptrtoint ptr %.0.i142 to i64            ; 7 uses
  br i1 %.not384, label %.split.us, label %.split, !prof !32

.split.us:                                        ; preds = %bb.as
  %i.hp = zext i8 %i.hm to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = icmp eq i8 %i.hm, 0
  br i1 %i.hr, label %.split337.us.a, label %.split334.us, !prof !10, !nosanitize !9

.split:                                           ; preds = %bb.as
  %.not387 = icmp eq ptr %.0.i142, null
  br i1 %.not387, label %.split.split.us, label %.split.split, !prof !32

.split.split.us:                                  ; preds = %.split
  %i.hs = zext i8 %i.hm to i64                    ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.0.i140, i64 %i.hs ; 2 uses
  %i.hu = shl nuw nsw i64 %i.hs, 2
  %i.hv = add i64 %i.hu, %i.hn, !nosanitize !9    ; 2 uses
  %.not388 = icmp ult i64 %i.hv, %i.hn, !nosanitize !9
  br i1 %.not388, label %.split334.us, label %bb.at, !prof !32, !nosanitize !9

bb.at:                                            ; preds = %.split.split.us
  %i.hw = load i8, ptr %i.ht, align 1, !tbaa !64
  %i.hx = zext i8 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hx, 2
  %i.hz = add i64 %i.hy, %i.hn, !nosanitize !9    ; 2 uses
  %.not50.us = icmp ult i64 %i.hz, %i.hn, !nosanitize !9
  br i1 %.not50.us, label %.split351.us, label %bb.au, !prof !32, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !54  ; 2 uses
  %i.ic = zext i8 %i.ib to i64
  %i.id = mul nuw nsw i64 %i.ic, 12               ; 2 uses
  %i.ie = icmp eq i8 %i.ib, 0
  %i.if = icmp uge i64 %i.id, %i.ho, !nosanitize !9
  %i.ig = and i1 %i.if, %i.ie, !nosanitize !9
  br i1 %i.ig, label %.split362, label %.split358.us.a, !prof !10, !nosanitize !9

.split.split:                                     ; preds = %.split, %bb.bh
  %.047 = phi ptr [ %.0, %bb.bh ], [ %5, %.split ] ; 2 uses
  %.0 = phi ptr [ %.047, %bb.bh ], [ %6, %.split ] ; 4 uses
  %.0113.in = phi i8 [ %i.il, %bb.bh ], [ %i.hm, %.split ] ; 2 uses
  %.0112 = phi i32 [ %i.kh, %bb.bh ], [ %i.hb, %.split ]
  %.0113 = zext i8 %.0113.in to i32
  %i.ih = zext i8 %.0113.in to i64                ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.0.i140, i64 %i.ih ; 2 uses
  %i.ij = shl nuw nsw i64 %i.ih, 2
  %i.ik = add i64 %i.ij, %i.hn, !nosanitize !9    ; 2 uses
  %.not389 = icmp ult i64 %i.ik, %i.hn, !nosanitize !9
  br i1 %.not389, label %.split334.us, label %bb.av, !prof !32, !nosanitize !9

.split334.us:                                     ; preds = %.split.split, %.split.split.us, %.split.us
  %.us-phi335 = phi i64 [ %i.hq, %.split.us ], [ %i.hv, %.split.split.us ], [ %i.ik, %.split.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @287, i64 %i.hn, i64 %.us-phi335) #10, !nosanitize !9
  unreachable, !nosanitize !9

.split337.us.a:                                   ; preds = %.split.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @288, i64 0) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %.split.split
  %i.il = load i8, ptr %i.ii, align 1, !tbaa !64  ; 3 uses
  %i.im = zext i8 %i.il to i64                    ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0.i140, i64 %i.im
  %i.io = shl nuw nsw i64 %i.im, 2
  %i.ip = add i64 %i.io, %i.hn, !nosanitize !9    ; 2 uses
  %.not50 = icmp ult i64 %i.ip, %i.hn, !nosanitize !9
  br i1 %.not50, label %.split351.us, label %bb.aw, !prof !32, !nosanitize !9

.split351.us:                                     ; preds = %bb.av, %bb.at
  %.us-phi352 = phi i64 [ %i.hz, %bb.at ], [ %i.ip, %bb.av ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @289, i64 %i.hn, i64 %.us-phi352) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !54
  %i.is = zext i8 %i.ir to i64                    ; 2 uses
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %.0.i142, i64 %i.is ; 3 uses
  %i.iu = mul nuw nsw i64 %i.is, 12
  %i.iv = add i64 %i.iu, %i.ho, !nosanitize !9    ; 2 uses
  %.not390 = icmp ult i64 %i.iv, %i.ho, !nosanitize !9
  br i1 %.not390, label %.split358.us.a, label %bb.ax, !prof !32, !nosanitize !9

.split358.us.a:                                   ; preds = %bb.aw, %bb.au
  %.us-phi360 = phi i64 [ %i.id, %bb.au ], [ %i.iv, %bb.aw ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @290, i64 %i.ho, i64 %.us-phi360) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  %i.iw = ptrtoint ptr %i.it to i64, !nosanitize !9 ; 2 uses
  %i.ix = and i64 %i.iw, 3, !nosanitize !9
  %i.iy = icmp eq i64 %i.ix, 0, !nosanitize !9
  br i1 %i.iy, label %bb.ay, label %.split362, !prof !10, !nosanitize !9

.split362:                                        ; preds = %bb.ax, %bb.au
  %.us-phi363 = phi i64 [ 0, %bb.au ], [ %i.iw, %bb.ax ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @291, i64 %.us-phi363) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %.sroa.057.0.copyload = load <2 x float>, ptr %i.it, align 4, !tbaa !12 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !54
  %i.jb = zext i8 %i.ja to i64                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [12 x i8], ptr %.0.i142, i64 %i.jb ; 3 uses
  %i.jd = mul nuw nsw i64 %i.jb, 12
  %i.je = add i64 %i.jd, %i.ho, !nosanitize !9    ; 2 uses
  %.not51 = icmp ult i64 %i.je, %i.ho, !nosanitize !9
  br i1 %.not51, label %bb.az, label %bb.ba, !prof !32, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @292, i64 %i.ho, i64 %i.je) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ba:                                            ; preds = %bb.ay
  %i.jf = ptrtoint ptr %i.jc to i64, !nosanitize !9 ; 2 uses
  %i.jg = and i64 %i.jf, 3, !nosanitize !9
  %i.jh = icmp eq i64 %i.jg, 0, !nosanitize !9
  br i1 %i.jh, label %bb.bc, label %bb.bb, !prof !10, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @293, i64 %i.jf) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bc:                                            ; preds = %bb.ba
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.jc, align 4, !tbaa !12
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %.sroa.456.0.copyload = load float, ptr %.sroa.456.0..sroa_idx, align 4, !tbaa !12
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.057.0.copyload, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.057.0.copyload, i64 1
  %i.ji = fsub <2 x float> %.sroa.055.0.copyload, %.sroa.057.0.copyload ; 3 uses
  %i.jj = fsub float %.sroa.456.0.copyload, %.sroa.5.0.copyload ; 3 uses
  %i.jk = fmul <2 x float> %i.ji, %i.ji           ; 2 uses
  %shift103 = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = fadd <2 x float> %i.jk, %shift103
  %i.jl = extractelement <2 x float> %foldExtExtBinop104, i64 0
  %i.jm = fmul float %i.jj, %i.jj
  %i.jn = fadd float %i.jm, %i.jl                 ; 2 uses
  %i.jo = fcmp ogt float %i.jn, f0x057A0000
  br i1 %i.jo, label %bb.bd, label %b3Normalize.exit

bb.bd:                                            ; preds = %bb.bc
  %sqrt = call float @llvm.sqrt.f32(float %i.jn)
  %i.jp = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.jq = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = fmul <2 x float> %i.ji, %i.jr
  %i.jt = fmul float %i.jj, %i.jp
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.bc, %bb.bd
  %.sroa.07.0.i = phi <2 x float> [ %i.js, %bb.bd ], [ zeroinitializer, %bb.bc ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.jt, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 2 uses
  %shift106 = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop107 = fmul <2 x float> %.sroa.9.0.copyload, %shift106
  %i.ju = extractelement <2 x float> %foldExtExtBinop107, i64 0
  %i.jv = fmul float %i.bg, %.sroa.5.0.i
  %i.jw = fsub float %i.ju, %i.jv                 ; 2 uses
  %.sroa.016.0.vec.insert.i = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.jx = fmul float %.sroa.0.0.vec.extract.i.i, %.sroa.5.0.i
  %foldExtExtBinop109 = fmul <2 x float> %.sroa.9.0.copyload, %.sroa.07.0.i
  %i.jy = extractelement <2 x float> %foldExtExtBinop109, i64 0
  %i.jz = fsub float %i.jx, %i.jy                 ; 2 uses
  %.sroa.016.4.vec.insert.i = insertelement <2 x float> %.sroa.016.0.vec.insert.i, float %i.jz, i64 1
  %i.ka = fmul <2 x float> %i.bf, %.sroa.07.0.i   ; 2 uses
  %shift111 = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop112 = fsub <2 x float> %i.ka, %shift111 ; 2 uses
  %i.kb = extractelement <2 x float> %foldExtExtBinop112, i64 0
  %i.kc = fmul float %.sroa.0.0.vec.extract.i, %i.jw
  %i.kd = fmul float %.sroa.0.4.vec.extract.i, %i.jz
  %i.ke = fadd float %i.kc, %i.kd
  %i.kf = fmul float %.sroa.5.0.copyload, %i.kb
  %i.kg = fadd float %i.kf, %i.ke
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %foldExtExtBinop112, float %i.kg, i64 1
  %i.kh = call i32 @b3ClipPolygon(ptr noundef %.0, ptr noundef %.047, i32 noundef %.0112, <2 x float> %.sroa.016.4.vec.insert.i, <2 x float> %.sroa.211.12.vec.insert.i, i32 noundef %.0113, <2 x float> %.sroa.024.0.copyload, <2 x float> %.sroa.9.0.copyload) #11 ; 5 uses
  %i.ki = icmp sgt i32 %i.kh, 2
  br i1 %i.ki, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %b3Normalize.exit
  %i.kj = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.kk = and i64 %i.kj, 3, !nosanitize !9
  %i.kl = icmp eq i64 %i.kk, 0, !nosanitize !9
  br i1 %i.kl, label %bb.bg, label %bb.bf, !prof !10, !nosanitize !9

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @294, i64 %i.kj) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bg:                                            ; preds = %bb.be
  store i32 0, ptr %4, align 4
  %.sroa_idx2 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa_idx2, align 4
  br label %bb.ej

bb.bh:                                            ; preds = %b3Normalize.exit
  %i.km = load i8, ptr %i.hc, align 1, !tbaa !63
  %.not135 = icmp eq i8 %i.il, %i.km
  br i1 %.not135, label %bb.bi, label %.split.split, !llvm.loop !140

bb.bi:                                            ; preds = %bb.bh
  %i.kn = ptrtoint ptr %.0 to i64                 ; 3 uses
  %i.ko = call i32 @llvm.umin.i32(i32 %i.kh, i32 64) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.kp = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.kq = and i64 %i.kp, 7, !nosanitize !9
  %i.kr = icmp eq i64 %i.kq, 0, !nosanitize !9
  br i1 %i.kr, label %.split365.split.preheader, label %bb.bj, !prof !10, !nosanitize !9

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @295, i64 %i.kp) #10, !nosanitize !9
  unreachable, !nosanitize !9

.split365.split.preheader:                        ; preds = %bb.bi
  store <2 x float> %.sroa.024.0.copyload, ptr %0, align 8, !tbaa !12
  %.sroa.9.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store float %.sroa.9.8.vec.extract, ptr %.sroa.9.0..sroa_idx30, align 8, !tbaa !12
  %i.ks = ptrtoint ptr %7 to i64                  ; 40 uses
  %wide.trip.count = zext nneg i32 %i.ko to i64   ; 2 uses
  br label %.split365.split

bb.bk:                                            ; preds = %bb.bm
  %i.kt = call float @b3GetLengthUnitsPerMeter() #11
  %i.ku = fmul float %i.kt, 5.000000e-03
  %i.kv = fmul float %i.ku, 4.000000e+00
  %i.kw = fcmp ult float %i.lt, %i.kv             ; 2 uses
  br i1 %i.kw, label %bb.bq, label %bb.bn

.split365.split:                                  ; preds = %.split365.split.preheader, %bb.bm
  %indvars.iv = phi i64 [ 0, %.split365.split.preheader ], [ %indvars.iv.next, %bb.bm ] ; 5 uses
  %.0110366 = phi float [ f0x7F7FFFFF, %.split365.split.preheader ], [ %i.lt, %bb.bm ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [20 x i8], ptr %.0, i64 %indvars.iv ; 4 uses
  %i.ky = mul nuw nsw i64 %indvars.iv, 20
  %i.kz = add i64 %i.ky, %i.kn, !nosanitize !9    ; 2 uses
  %.not392 = icmp ult i64 %i.kz, %i.kn, !nosanitize !9
  br i1 %.not392, label %.split369.us, label %bb.bl, !prof !32, !nosanitize !9

.split369.us:                                     ; preds = %.split365.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @296, i64 %i.kn, i64 %i.kz) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bl:                                            ; preds = %.split365.split
  %i.la = mul nuw nsw i64 %indvars.iv, 24
  %i.lb = add i64 %i.la, %i.ks, !nosanitize !9    ; 2 uses
  %.not139 = icmp ult i64 %i.lb, %i.ks, !nosanitize !9
  br i1 %.not139, label %.split372.us, label %bb.bm, !prof !32, !nosanitize !9

.split372.us:                                     ; preds = %bb.bl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @297, i64 %i.ks, i64 %i.lb) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, i8 0, i64 24, i1 false)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 12 ; 3 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !50
  %i.lf = fmul float %i.le, 5.000000e-01          ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.kx, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.lg = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x float> %.sroa.024.0.copyload, %i.lh
  %i.lj = fsub <2 x float> %.sroa.03.0.copyload, %i.li
  %i.lk = fmul float %.sroa.9.8.vec.extract, %i.lf
  %i.ll = fsub float %.sroa.24.0.copyload, %i.lk
  store <2 x float> %i.lj, ptr %i.lc, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store float %i.ll, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %i.ln = load float, ptr %i.ld, align 4, !tbaa !50
  store float %i.ln, ptr %i.lm, align 4, !tbaa !23
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !24
  store i32 %i.lq, ptr %i.lo, align 8, !tbaa !24
  %i.lr = load float, ptr %i.ld, align 4, !tbaa !50 ; 2 uses
  %i.ls = fcmp olt float %.0110366, %i.lr
  %i.lt = select i1 %i.ls, float %.0110366, float %i.lr ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bk, label %.split365.split, !llvm.loop !141

bb.bn:                                            ; preds = %bb.bk
  %i.lu = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.lv = and i64 %i.lu, 3, !nosanitize !9
  %i.lw = icmp eq i64 %i.lv, 0, !nosanitize !9
  br i1 %i.lw, label %bb.bp, label %bb.bo, !prof !10, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @298, i64 %i.lu) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bp:                                            ; preds = %bb.bn
  store i32 0, ptr %4, align 4
  %.sroa_idx1 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa_idx1, align 4
  br label %bb.ei

bb.bq:                                            ; preds = %bb.bk
  %i.lx = icmp ult i32 %i.kh, 5
  br i1 %i.lx, label %.lr.ph552.split.i, label %bb.cc

.lr.ph552.split.i:                                ; preds = %bb.bq
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !20 ; 3 uses
  %i.ma = icmp ne ptr %i.lz, null, !nosanitize !9
  %i.mb = ptrtoint ptr %i.lz to i64, !nosanitize !9 ; 2 uses
  %i.mc = and i64 %i.mb, 3, !nosanitize !9
  %i.md = icmp eq i64 %i.mc, 0, !nosanitize !9
  %i.me = and i1 %i.ma, %i.md
  br i1 %i.me, label %.lr.ph552.split.split.i.1, label %bb.bs, !prof !10, !nosanitize !9

bb.br:                                            ; preds = %.lr.ph552.split.split.i.3, %.lr.ph552.split.split.i.2, %.lr.ph552.split.split.i.1
  %.lcssa153 = phi i64 [ %i.nl, %.lr.ph552.split.split.i.3 ], [ %i.mh, %.lr.ph552.split.split.i.1 ], [ %i.mw, %.lr.ph552.split.split.i.2 ]
  %.lcssa = phi i64 [ %i.nm, %.lr.ph552.split.split.i.3 ], [ %i.mi, %.lr.ph552.split.split.i.1 ], [ %i.mx, %.lr.ph552.split.split.i.2 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @307, i64 %.lcssa153, i64 %.lcssa) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bs:                                            ; preds = %bb.bz, %bb.bw, %bb.bu, %.lr.ph552.split.i
  %.lcssa157 = phi i64 [ %i.mb, %.lr.ph552.split.i ], [ %i.mo, %bb.bu ], [ %i.nd, %bb.bw ], [ %i.ns, %bb.bz ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @308, i64 %.lcssa157) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bt:                                            ; preds = %bb.ca, %bb.bx, %bb.bv
  %.lcssa160 = phi i64 [ %i.nw, %bb.ca ], [ %i.ms, %bb.bv ], [ %i.nh, %bb.bx ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @309, i64 %i.ks, i64 %.lcssa160) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph552.split.split.i.1:                        ; preds = %.lr.ph552.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lz, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !78
  %i.mf = load ptr, ptr %i.ly, align 8, !tbaa !20 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24 ; 2 uses
  %i.mh = ptrtoint ptr %i.mf to i64, !nosanitize !9 ; 2 uses
  %i.mi = add i64 %i.mh, 24, !nosanitize !9       ; 2 uses
  %i.mj = icmp ne ptr %i.mf, null, !nosanitize !9 ; 2 uses
  %i.mk = icmp ne i64 %i.mi, 0
  %i.ml = icmp ult ptr %i.mf, inttoptr (i64 -24 to ptr)
  %i.mm = and i1 %i.mk, %i.ml
  %i.mn = and i1 %i.mm, %i.mj
  br i1 %i.mn, label %bb.bu, label %bb.br, !prof !10, !nosanitize !9

bb.bu:                                            ; preds = %.lr.ph552.split.split.i.1
  %i.mo = ptrtoint ptr %i.mg to i64, !nosanitize !9 ; 2 uses
  %i.mp = and i64 %i.mo, 3, !nosanitize !9
  %i.mq = icmp eq i64 %i.mp, 0, !nosanitize !9
  %i.mr = and i1 %i.mj, %i.mq
  br i1 %i.mr, label %bb.bv, label %bb.bs, !prof !10, !nosanitize !9

bb.bv:                                            ; preds = %bb.bu
  %i.ms = add i64 %i.ks, 24, !nosanitize !9
  %.not461.i.1 = icmp ugt ptr %7, inttoptr (i64 -25 to ptr)
  br i1 %.not461.i.1, label %bb.bt, label %.lr.ph552.split.split.i.2, !prof !32, !nosanitize !9

.lr.ph552.split.split.i.2:                        ; preds = %bb.bv
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.mg, ptr noundef nonnull align 8 dereferenceable(24) %i.mt, i64 24, i1 false), !tbaa.struct !78
  %i.mu = load ptr, ptr %i.ly, align 8, !tbaa !20 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 48 ; 2 uses
  %i.mw = ptrtoint ptr %i.mu to i64, !nosanitize !9 ; 2 uses
  %i.mx = add i64 %i.mw, 48, !nosanitize !9       ; 2 uses
  %i.my = icmp ne ptr %i.mu, null, !nosanitize !9 ; 2 uses
  %i.mz = icmp ne i64 %i.mx, 0
  %i.na = icmp ult ptr %i.mu, inttoptr (i64 -48 to ptr)
  %i.nb = and i1 %i.mz, %i.na
  %i.nc = and i1 %i.nb, %i.my
  br i1 %i.nc, label %bb.bw, label %bb.br, !prof !10, !nosanitize !9

bb.bw:                                            ; preds = %.lr.ph552.split.split.i.2
  %i.nd = ptrtoint ptr %i.mv to i64, !nosanitize !9 ; 2 uses
  %i.ne = and i64 %i.nd, 3, !nosanitize !9
  %i.nf = icmp eq i64 %i.ne, 0, !nosanitize !9
  %i.ng = and i1 %i.my, %i.nf
  br i1 %i.ng, label %bb.bx, label %bb.bs, !prof !10, !nosanitize !9

bb.bx:                                            ; preds = %bb.bw
  %i.nh = add i64 %i.ks, 48, !nosanitize !9
  %.not461.i.2 = icmp ugt ptr %7, inttoptr (i64 -49 to ptr)
  br i1 %.not461.i.2, label %bb.bt, label %bb.by, !prof !32, !nosanitize !9

bb.by:                                            ; preds = %bb.bx
  %i.ni = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.mv, ptr noundef nonnull align 16 dereferenceable(24) %i.ni, i64 24, i1 false), !tbaa.struct !78
  %exitcond624.not.i.2 = icmp eq i32 %i.kh, 3
  br i1 %exitcond624.not.i.2, label %._crit_edge553.i, label %.lr.ph552.split.split.i.3

.lr.ph552.split.split.i.3:                        ; preds = %bb.by
  %i.nj = load ptr, ptr %i.ly, align 8, !tbaa !20 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 72 ; 2 uses
  %i.nl = ptrtoint ptr %i.nj to i64, !nosanitize !9 ; 2 uses
  %i.nm = add i64 %i.nl, 72, !nosanitize !9       ; 2 uses
  %i.nn = icmp ne ptr %i.nj, null, !nosanitize !9 ; 2 uses
  %i.no = icmp ne i64 %i.nm, 0
  %i.np = icmp ult ptr %i.nj, inttoptr (i64 -72 to ptr)
  %i.nq = and i1 %i.no, %i.np
  %i.nr = and i1 %i.nq, %i.nn
  br i1 %i.nr, label %bb.bz, label %bb.br, !prof !10, !nosanitize !9

bb.bz:                                            ; preds = %.lr.ph552.split.split.i.3
  %i.ns = ptrtoint ptr %i.nk to i64, !nosanitize !9 ; 2 uses
  %i.nt = and i64 %i.ns, 3, !nosanitize !9
  %i.nu = icmp eq i64 %i.nt, 0, !nosanitize !9
  %i.nv = and i1 %i.nn, %i.nu
  br i1 %i.nv, label %bb.ca, label %bb.bs, !prof !10, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  %i.nw = add i64 %i.ks, 72, !nosanitize !9
  %.not461.i.3 = icmp ugt ptr %7, inttoptr (i64 -73 to ptr)
  br i1 %.not461.i.3, label %bb.bt, label %bb.cb, !prof !32, !nosanitize !9

bb.cb:                                            ; preds = %bb.ca
  %i.nx = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.nk, ptr noundef nonnull align 8 dereferenceable(24) %i.nx, i64 24, i1 false), !tbaa.struct !78
  br label %._crit_edge553.i

._crit_edge553.i:                                 ; preds = %bb.cb, %bb.by
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ko, ptr %i.ny, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

bb.cc:                                            ; preds = %bb.bq
  %.sroa.0244.0.copyload.i = load <2 x float>, ptr %0, align 8, !tbaa !12 ; 10 uses
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx30, align 8, !tbaa !12 ; 8 uses
  %i.nz = call float @b3GetLengthUnitsPerMeter() #11
  %i.oa = fmul float %i.nz, 5.000000e-03
  %i.ob = fmul float %i.oa, 4.000000e+00          ; 3 uses
  %i.oc = fmul float %i.ob, %i.ob                 ; 3 uses
  %i.od = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.036.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 0 ; 4 uses
  %i.oe = call float @llvm.fabs.f32(float %.sroa.036.0.vec.extract.i.i)
  %or.cond.i.i = fcmp ogt float %i.oe, 5.000000e-01
  br i1 %or.cond.i.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.of = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1
  %i.og = fmul float %i.of, 6.700000e-01
  %i.oh = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.oi = fsub float %i.og, %i.oh
  %.sroa.033.i.i.0.vec.insert = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.oj = fmul nnan float %.sroa.036.0.vec.extract.i.i, -6.700000e-01
  %.sroa.033.i.i.4.vec.insert = insertelement <2 x float> %.sroa.033.i.i.0.vec.insert, float %i.oj, i64 1
  %i.ok = fmul nnan float %.sroa.036.0.vec.extract.i.i, 4.200000e-01
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.ol = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 3 uses
  %i.om = call float @llvm.fabs.f32(float %i.ol)
  %or.cond28.i.i = fcmp ogt float %i.om, 5.000000e-01
  br i1 %or.cond28.i.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.on = fmul nnan float %i.ol, 6.700000e-01
  %.sroa.030.i.i.0.vec.insert = insertelement <2 x float> poison, float %i.on, i64 0
  %i.oo = fmul float %.sroa.036.0.vec.extract.i.i, -6.700000e-01
  %i.op = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.oq = fsub float %i.oo, %i.op
  %.sroa.030.i.i.4.vec.insert = insertelement <2 x float> %.sroa.030.i.i.0.vec.insert, float %i.oq, i64 1
  %i.or = fmul nnan float %i.ol, 4.200000e-01
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.os = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = fmul <2 x float> %i.ot, <float 6.700000e-01, float -4.200000e-01>
  %i.ov = fmul <2 x float> %.sroa.0244.0.copyload.i, <float 6.700000e-01, float 4.200000e-01> ; 2 uses
  %shift114 = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop115 = fsub <2 x float> %shift114, %i.ov
  %i.ow = extractelement <2 x float> %foldExtExtBinop115, i64 0
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd
  %.sroa.016.0.in.i.i.sroa.speculated = phi <2 x float> [ %.sroa.033.i.i.4.vec.insert, %bb.cd ], [ %.sroa.030.i.i.4.vec.insert, %bb.cf ], [ %i.ou, %bb.cg ] ; 3 uses
  %.sroa.6.0.i.i = phi float [ %i.ok, %bb.cd ], [ %i.or, %bb.cf ], [ %i.ow, %bb.cg ] ; 3 uses
  %i.ox = fmul <2 x float> %.sroa.016.0.in.i.i.sroa.speculated, %.sroa.016.0.in.i.i.sroa.speculated ; 2 uses
  %shift117 = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop118 = fadd <2 x float> %i.ox, %shift117
  %i.oy = extractelement <2 x float> %foldExtExtBinop118, i64 0
  %i.oz = fmul float %.sroa.6.0.i.i, %.sroa.6.0.i.i
  %i.pa = fadd float %i.oz, %i.oy                 ; 2 uses
  %i.pb = fcmp ogt float %i.pa, f0x057A0000
  br i1 %i.pb, label %bb.ci, label %.lr.ph.i

bb.ci:                                            ; preds = %bb.ch
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.pa)
  %i.pc = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.pd = insertelement <2 x float> poison, float %i.pc, i64 0
  %i.pe = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pf = fmul <2 x float> %.sroa.016.0.in.i.i.sroa.speculated, %i.pe
  %i.pg = fmul float %.sroa.6.0.i.i, %i.pc
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ci, %bb.ch
  %.sroa.07.0.i.i.i = phi <2 x float> [ %i.pf, %bb.ci ], [ zeroinitializer, %bb.ch ]
  %.sroa.5.0.i.i.i = phi float [ %i.pg, %bb.ci ], [ 0.000000e+00, %bb.ch ]
  br label %bb.cj

._crit_edge.i:                                    ; preds = %bb.cn
end_hunk_2
begin_hunk_3_@b3BuildFaceAContact:bb.a
  %i.xh = extractelement <2 x float> %foldExtExtBinop145, i64 0
  %i.xi = extractelement <2 x float> %i.xb, i64 0
  %i.xj = fmul float %i.tw, %i.xi
  %i.xk = fsub float %i.xh, %i.xj
  %i.xl = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.xg ; 2 uses
  %shift147 = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop148 = fadd <2 x float> %i.xl, %shift147
  %i.xm = extractelement <2 x float> %foldExtExtBinop148, i64 0
  %i.xn = fmul float %.sroa.10.0.copyload.i, %i.xk
  %i.xo = fadd float %i.xn, %i.xm
  %i.xp = fmul float %i.we, %i.xo                 ; 2 uses
  %i.xq = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xr = fsub <2 x float> %i.xq, %i.wj           ; 2 uses
  %i.xs = insertelement <2 x float> %.sroa.093.0.copyload.i, float %.sroa.6.0.copyload.i, i64 0
  %i.xt = fsub <2 x float> %i.xs, %i.wl           ; 2 uses
  %i.xu = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xv = fsub <2 x float> %i.xu, %i.wg           ; 3 uses
  %i.xw = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %i.xx = fmul <2 x float> %i.wt, %i.xt
  %i.xy = insertelement <2 x float> %i.xv, float %i.xw, i64 1
  %i.xz = fmul <2 x float> %i.wn, %i.xy
  %i.ya = fsub <2 x float> %i.xx, %i.xz
  %i.yb = insertelement <2 x float> %i.xr, float %i.xw, i64 1
  %i.yc = fmul <2 x float> %i.wu, %i.yb
  %i.yd = shufflevector <2 x float> %i.xt, <2 x float> %i.xv, <2 x i32> <i32 0, i32 3>
  %i.ye = fmul <2 x float> %i.wv, %i.yd
  %i.yf = fsub <2 x float> %i.yc, %i.ye
  %i.yg = fmul <2 x float> %i.wm, %i.xv
  %i.yh = fmul <2 x float> %i.wh, %i.xr
  %i.yi = fsub <2 x float> %i.yg, %i.yh
  %i.yj = fmul <2 x float> %i.od, %i.ya
  %i.yk = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.yf
  %i.yl = fadd <2 x float> %i.yj, %i.yk
  %i.ym = fmul <2 x float> %i.ws, %i.yi
  %i.yn = fadd <2 x float> %i.ym, %i.yl
  %i.yo = fmul <2 x float> %i.wq, %i.yn           ; 2 uses
  %i.yp = extractelement <2 x float> %i.yo, i64 0 ; 2 uses
  %i.yq = extractelement <2 x float> %i.yo, i64 1 ; 2 uses
  %i.yr = fcmp ogt float %i.yp, %i.yq
  %i.ys = select i1 %i.yr, float %i.yp, float %i.yq ; 2 uses
  %i.yt = fcmp ogt float %i.xp, %i.ys
  %i.yu = select i1 %i.yt, float %i.xp, float %i.ys ; 2 uses
  %i.yv = fmul float %i.yu, f0x3F733333
  %i.yw = fcmp ogt float %i.yv, %.7309545.i       ; 2 uses
  %.8310.i = select i1 %i.yw, float %i.yu, float %.7309545.i
  %i.yx = trunc nuw nsw i64 %indvars.iv614.i to i32
  %.8.i = select i1 %i.yw, i32 %i.yx, i32 %.7546.i ; 4 uses
  %indvars.iv.next615.i = add nuw nsw i64 %indvars.iv614.i, 1 ; 2 uses
  %exitcond619.not.i = icmp eq i64 %indvars.iv.next615.i, %wide.trip.count618.i
  br i1 %exitcond619.not.i, label %._crit_edge549.i, label %bb.dw, !llvm.loop !145

bb.dz:                                            ; preds = %._crit_edge549.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.vr, i64 72
  %.not52 = icmp ugt ptr %i.vr, inttoptr (i64 -73 to ptr)
  br i1 %.not52, label %bb.ea, label %bb.eb, !prof !32, !nosanitize !9

bb.ea:                                            ; preds = %bb.dz
  %i.yz = add i64 %i.vt, 72, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @328, i64 %i.vt, i64 %i.yz) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.eb:                                            ; preds = %bb.dz
  %i.za = sext i32 %.8.i to i64                   ; 2 uses
  %i.zb = mul nsw i64 %i.za, 24
  %i.zc = add i64 %i.zb, %i.ks, !nosanitize !9    ; 3 uses
  %i.zd = icmp ne i64 %i.zc, 0, !nosanitize !9
  %i.ze = icmp uge i64 %i.zc, %i.ks, !nosanitize !9
  %i.zf = icmp slt i32 %.8.i, 0
  %i.zg = xor i1 %i.zf, %i.ze
  %i.zh = and i1 %i.zd, %i.zg, !nosanitize !9
  br i1 %i.zh, label %bb.ed, label %bb.ec, !prof !10, !nosanitize !9

bb.ec:                                            ; preds = %bb.eb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @329, i64 %i.ks, i64 %i.zc) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ed:                                            ; preds = %bb.eb
  %i.zi = getelementptr inbounds [24 x i8], ptr %7, i64 %i.za
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.yy, ptr noundef nonnull align 8 dereferenceable(24) %i.zi, i64 24, i1 false), !tbaa.struct !78
  %i.zj = load i32, ptr %i.qn, align 8, !tbaa !19 ; 2 uses
  %i.zk = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.zj, i32 1), !nosanitize !9 ; 2 uses
  %i.zl = extractvalue { i32, i1 } %i.zk, 1, !nosanitize !9
  br i1 %i.zl, label %bb.ee, label %bb.ef, !prof !32, !nosanitize !9

bb.ee:                                            ; preds = %bb.ed
  %i.zm = zext nneg i32 %i.zj to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @330, i64 %i.zm, i64 1) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ef:                                            ; preds = %bb.ed
  %i.zn = extractvalue { i32, i1 } %i.zk, 0, !nosanitize !9
  store i32 %i.zn, ptr %i.qn, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

b3ReduceManifoldPoints.exit:                      ; preds = %._crit_edge553.i, %bb.co, %._crit_edge532.i, %._crit_edge541.i, %._crit_edge549.i, %bb.ef
  %i.zo = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.zp = and i64 %i.zo, 3, !nosanitize !9
  %i.zq = icmp eq i64 %i.zp, 0, !nosanitize !9
  br i1 %i.zq, label %bb.eh, label %bb.eg, !prof !10, !nosanitize !9

bb.eg:                                            ; preds = %b3ReduceManifoldPoints.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @299, i64 %i.zo) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.eh:                                            ; preds = %b3ReduceManifoldPoints.exit
  store float %i.lt, ptr %4, align 4, !tbaa !76
  %i.zr = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.zr, align 4, !tbaa !74
  %i.zs = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.zt = trunc i32 %.16.val to i8
  store i8 %i.zt, ptr %i.zs, align 1, !tbaa !75
  %i.zu = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.zv = trunc i32 %.20.val to i8
  store i8 %i.zv, ptr %i.zu, align 2, !tbaa !77
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.ej

bb.ej:                                            ; preds = %bb.bg, %bb.ei
  %.3 = phi i1 [ %i.kw, %bb.ei ], [ false, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceBContact(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr noundef nonnull %5) unnamed_addr #0 !func_sanitize !79 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.0109.0.copyload = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4110.0.copyload = load float, ptr %.sroa.4110.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5111.0.copyload = load <2 x float>, ptr %.sroa.5111.0..sroa_idx, align 4 ; 11 uses
  %.sroa.6112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6112.0.copyload = load <2 x float>, ptr %.sroa.6112.0..sroa_idx, align 4 ; 10 uses
  %.sroa.2.8.vec.extract65.i.i = extractelement <2 x float> %.sroa.6112.0.copyload, i64 0 ; 3 uses
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.5111.0.copyload, i64 0 ; 3 uses
  %i.a = fmul float %.sroa.4110.0.copyload, %.sroa.09.0.vec.extract.i.i.i
  %foldExtExtBinop = fmul <2 x float> %.sroa.0109.0.copyload, %.sroa.6112.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fsub float %i.a, %i.b
  %i.d = shufflevector <2 x float> %.sroa.5111.0.copyload, <2 x float> %.sroa.6112.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.e = fmul <2 x float> %.sroa.0109.0.copyload, %i.d
  %i.f = shufflevector <2 x float> %.sroa.0109.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.g = insertelement <2 x float> %i.f, float %.sroa.4110.0.copyload, i64 1 ; 2 uses
  %i.h = fmul <2 x float> %i.g, %.sroa.5111.0.copyload
  %i.i = fsub <2 x float> %i.e, %i.h              ; 2 uses
  %i.j = insertelement <2 x float> %i.f, float %.sroa.4110.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.6112.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.g, %i.k
  %i.n = fadd <2 x float> %i.i, %i.l              ; 2 uses
  %i.o = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.c, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.d, %i.n
  %i.s = shufflevector <2 x float> %.sroa.6112.0.copyload, <2 x float> %.sroa.5111.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fsub <2 x float> %i.r, %i.t
  %foldExtExtBinop8 = fmul <2 x float> %.sroa.5111.0.copyload, %i.q
  %foldExtExtBinop10 = fmul <2 x float> %.sroa.5111.0.copyload, %i.n
  %shift = shufflevector <2 x float> %foldExtExtBinop10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fsub <2 x float> %foldExtExtBinop8, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.w = fmul <2 x float> %i.u, splat (float 2.000000e+00)
  %i.x = fsub <2 x float> %i.w, %.sroa.0109.0.copyload
  %i.y = fmul float %i.v, 2.000000e+00
  %i.z = fsub float %i.y, %.sroa.4110.0.copyload
  store <2 x float> %i.x, ptr %6, align 8, !tbaa !12, !alias.scope !148
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.z, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !148
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = fneg float %.sroa.2.8.vec.extract65.i.i
  %i.ac = fneg <2 x float> %.sroa.5111.0.copyload
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %.sroa.6112.0.copyload, float %i.ab, i64 0
  store <2 x float> %i.ac, ptr %i.aa, align 4, !tbaa !12, !alias.scope !148
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !12, !alias.scope !148
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !59 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !58 ; 2 uses
  %i.ah = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i32 %i.ae, i32 %i.ag, ptr noundef %5) ; 2 uses
  br i1 %i.ah, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.aj = and i64 %i.ai, 3, !nosanitize !9
  %i.ak = icmp eq i64 %i.aj, 0, !nosanitize !9
  br i1 %i.ak, label %bb.d, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @331, i64 %i.ai) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %5, align 4
  %.sroa_idx95 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa_idx95, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %.sroa.2.12.vec.extract.i.i = extractelement <2 x float> %.sroa.6112.0.copyload, i64 1 ; 3 uses
  %.sroa.09.4.vec.extract13.i.i.i = extractelement <2 x float> %.sroa.5111.0.copyload, i64 1 ; 3 uses
  %i.al = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.2.12.vec.extract.i.i ; 2 uses
  %i.am = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.2.8.vec.extract65.i.i ; 2 uses
  %i.an = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.2.12.vec.extract.i.i ; 2 uses
  %foldExtExtBinop14 = fmul <2 x float> %.sroa.5111.0.copyload, %.sroa.6112.0.copyload
  %i.ao = extractelement <2 x float> %foldExtExtBinop14, i64 0 ; 2 uses
  %i.ap = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.09.4.vec.extract13.i.i.i ; 2 uses
  %foldExtExtBinop16 = fmul <2 x float> %.sroa.6112.0.copyload, %.sroa.6112.0.copyload
  %i.aq = fmul <2 x float> %.sroa.5111.0.copyload, %.sroa.5111.0.copyload ; 2 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.as = fmul float %.sroa.2.8.vec.extract65.i.i, %.sroa.2.12.vec.extract.i.i ; 2 uses
  %i.at = fsub float %i.ao, %i.al
  %i.au = fmul float %i.at, 2.000000e+00          ; 2 uses
  %i.av = fadd float %i.am, %i.an
  %i.aw = fmul float %i.av, 2.000000e+00          ; 2 uses
  %i.ax = shufflevector <2 x float> %foldExtExtBinop16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fadd <2 x float> %i.ar, %i.ax
  %i.az = fmul <2 x float> %i.ay, splat (float 2.000000e+00)
  %i.ba = fadd float %i.ap, %i.as
  %i.bb = fsub float %i.ap, %i.as
  %i.bc = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.ba, i64 1
  %i.be = fmul <2 x float> %i.bd, splat (float 2.000000e+00) ; 2 uses
  %i.bf = fsub <2 x float> splat (float 1.000000e+00), %i.az ; 2 uses
  %i.bg = fadd float %i.ao, %i.al
  %i.bh = fsub float %i.am, %i.an
  %i.bi = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %i.bk = fmul <2 x float> %i.bj, splat (float 2.000000e+00) ; 2 uses
  %foldExtExtBinop19 = fadd <2 x float> %i.aq, %i.ar
  %i.bl = extractelement <2 x float> %foldExtExtBinop19, i64 0
  %i.bm = fmul float %i.bl, 2.000000e+00
  %i.bn = fsub float 1.000000e+00, %i.bm          ; 2 uses
  %i.bo = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.bp = and i64 %i.bo, 7, !nosanitize !9
  %i.bq = icmp eq i64 %i.bp, 0, !nosanitize !9
  br i1 %i.bq, label %.lr.ph, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @332, i64 %i.bo) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph:                                           ; preds = %bb.e
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 8 ; 4 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 8 ; 2 uses
  %i.br = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i64 = extractelement <2 x float> %.sroa.030.0.copyload, i64 0
  %i.bs = fmul float %i.au, %.sroa.0.0.vec.extract.i64
  %i.bt = extractelement <2 x float> %.sroa.030.0.copyload, i64 1
  %i.bu = fmul float %i.aw, %i.bt
  %i.bv = fadd float %i.bs, %i.bu
  %i.bw = fmul float %i.bn, %.sroa.231.0.copyload
  %i.bx = fadd float %i.bw, %i.bv
  %i.by = fmul <2 x float> %i.be, %i.br
  %i.bz = fmul <2 x float> %i.bf, %.sroa.030.0.copyload
  %i.ca = fadd <2 x float> %i.by, %i.bz
  %i.cb = insertelement <2 x float> poison, float %.sroa.231.0.copyload, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.bk, %i.cc
  %i.ce = fadd <2 x float> %i.cd, %i.ca
  %i.cf = fneg <2 x float> %i.ce
  %i.cg = fneg float %i.bx
  store <2 x float> %i.cf, ptr %0, align 8, !tbaa !12
  store float %i.cg, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i32, ptr %i.ch, align 8, !tbaa !19
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph6, label %.split.us

.lr.ph6:                                          ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv5 = phi i64 [ %indvars.iv.next, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !20 ; 3 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv5 ; 5 uses
  %i.cn = mul nuw nsw i64 %indvars.iv5, 24
  %i.co = ptrtoint ptr %i.cl to i64, !nosanitize !9 ; 3 uses
  %i.cp = add i64 %i.cn, %i.co, !nosanitize !9    ; 3 uses
  %i.cq = icmp ne ptr %i.cl, null, !nosanitize !9 ; 2 uses
  %i.cr = icmp eq i64 %i.cp, 0
  %i.cs = xor i1 %i.cq, %i.cr
  %i.ct = icmp uge i64 %i.cp, %i.co, !nosanitize !9
  %i.cu = and i1 %i.ct, %i.cs, !nosanitize !9
  br i1 %i.cu, label %bb.g, label %.split133.us, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %.lr.ph6
  %i.cv = ptrtoint ptr %i.cm to i64, !nosanitize !9 ; 2 uses
  %i.cw = and i64 %i.cv, 3, !nosanitize !9
  %i.cx = icmp eq i64 %i.cw, 0, !nosanitize !9
  %i.cy = and i1 %i.cq, %i.cx
  br i1 %i.cy, label %.lr.ph.split.us, label %.split136.us, !prof !10, !nosanitize !9

.lr.ph.split.us:                                  ; preds = %bb.g
  %.sroa.010.0.copyload.us = load <2 x float>, ptr %i.cm, align 4 ; 4 uses
  %.sroa.211.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %.sroa.211.0.copyload.us = load float, ptr %.sroa.211.0..sroa_idx.us, align 4 ; 2 uses
  %i.cz = shufflevector <2 x float> %.sroa.010.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i76.us = extractelement <2 x float> %.sroa.010.0.copyload.us, i64 0
  %i.da = fmul float %i.au, %.sroa.0.0.vec.extract.i76.us
  %i.db = extractelement <2 x float> %.sroa.010.0.copyload.us, i64 1
  %i.dc = fmul float %i.aw, %i.db
  %i.dd = fadd float %i.da, %i.dc
  %i.de = fmul float %i.bn, %.sroa.211.0.copyload.us
  %i.df = fadd float %i.de, %i.dd
  %i.dg = fmul <2 x float> %i.be, %i.cz
  %i.dh = fmul <2 x float> %i.bf, %.sroa.010.0.copyload.us
  %i.di = fadd <2 x float> %i.dg, %i.dh
  %i.dj = insertelement <2 x float> poison, float %.sroa.211.0.copyload.us, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.bk, %i.dk
  %i.dm = fadd <2 x float> %i.dl, %i.di
  %i.dn = fadd <2 x float> %.sroa.0109.0.copyload, %i.dm
  %i.do = fadd float %.sroa.4110.0.copyload, %i.df
  store <2 x float> %i.dn, ptr %i.cm, align 4, !tbaa !12
  store float %i.do, ptr %.sroa.211.0..sroa_idx.us, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = tail call i32 @b3FlipPair(i32 %i.dq) #11
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1 ; 2 uses
  %i.ds = load i32, ptr %i.ch, align 8, !tbaa !19
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next, %i.dt
  br i1 %i.du, label %.lr.ph6, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph
  %i.dv = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.dw = and i64 %i.dv, 3, !nosanitize !9
  %i.dx = icmp eq i64 %i.dw, 0, !nosanitize !9
  br i1 %i.dx, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

.split133.us:                                     ; preds = %.lr.ph6
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @333, i64 %i.co, i64 %i.cp) #10, !nosanitize !9
  unreachable, !nosanitize !9

.split136.us:                                     ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @334, i64 %i.cv) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %.split.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @335, i64 %i.dv) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %.split.us
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 3, ptr %i.dy, align 4, !tbaa !74
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ea = trunc i32 %i.ag to i8
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !75
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ec = trunc i32 %i.ae to i8
  store i8 %i.ec, ptr %i.eb, align 2, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i1 %i.ah
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildEdgeContact(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr noundef nonnull %5) unnamed_addr #0 !func_sanitize !149 {
bb.a:
  %6 = alloca %struct.b3SegmentDistanceResult, align 8 ; 9 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 6 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @279, i64 %i.b) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %b3GetHullEdges.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.i), !nosanitize !9 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1, !nosanitize !9
  br i1 %i.k, label %bb.e, label %bb.f, !prof !32, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @280, i64 %i.b, i64 %i.i) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0, !nosanitize !9
  %i.m = inttoptr i64 %i.l to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %bb.c, %bb.f
end_hunk_3
begin_hunk_4_@b3BuildEdgeContact:bb.a

bb.ad:                                            ; preds = %bb.ac
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @342, i64 %i.ch) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %.sroa.085.0.copyload = load <2 x float>, ptr %i.ce, align 4, !tbaa !12
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.486.0.copyload = load float, ptr %.sroa.486.0..sroa_idx, align 4, !tbaa !12
  %i.ck = fsub <2 x float> %.sroa.085.0.copyload, %.sroa.087.0.copyload
  %i.cl = fsub float %.sroa.486.0.copyload, %.sroa.589.0.copyload
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !59 ; 4 uses
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %.0.i143, i64 %i.co ; 3 uses
  %i.cq = shl nsw i64 %i.co, 2
  %i.cr = ptrtoint ptr %.0.i143 to i64, !nosanitize !9 ; 6 uses
  %i.cs = add i64 %i.cq, %i.cr, !nosanitize !9    ; 3 uses
  %i.ct = icmp ne ptr %.0.i143, null, !nosanitize !9 ; 2 uses
  %i.cu = icmp eq i64 %i.cs, 0
  %i.cv = xor i1 %i.ct, %i.cu
  %i.cw = icmp uge i64 %i.cs, %i.cr, !nosanitize !9
  %i.cx = icmp slt i32 %i.cn, 0
  %i.cy = xor i1 %i.cx, %i.cw
  %i.cz = and i1 %i.cv, %i.cy, !nosanitize !9
  br i1 %i.cz, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @343, i64 %i.cr, i64 %i.cs) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.ct, label %bb.ai, label %bb.ah, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  %i.da = ptrtoint ptr %i.cp to i64, !nosanitize !9
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @344, i64 %i.da) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !66
  %i.dd = zext i8 %i.dc to i64                    ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.0.i143, i64 %i.dd
  %i.df = shl nuw nsw i64 %i.dd, 2
  %i.dg = add i64 %i.df, %i.cr, !nosanitize !9    ; 2 uses
  %.not223 = icmp ult i64 %i.dg, %i.cr, !nosanitize !9
  br i1 %.not223, label %bb.aj, label %bb.ak, !prof !32, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @345, i64 %i.cr, i64 %i.dg) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !54
  %i.dj = zext i8 %i.di to i64                    ; 2 uses
  %i.dk = mul nuw nsw i64 %i.dj, 12
  %i.dl = ptrtoint ptr %.0.i145 to i64, !nosanitize !9 ; 6 uses
  %i.dm = add i64 %i.dk, %i.dl, !nosanitize !9    ; 3 uses
  %i.dn = icmp ne ptr %.0.i145, null, !nosanitize !9 ; 2 uses
  %i.do = icmp eq i64 %i.dm, 0
  %i.dp = xor i1 %i.dn, %i.do
  %i.dq = icmp uge i64 %i.dm, %i.dl, !nosanitize !9
  %i.dr = and i1 %i.dq, %i.dp, !nosanitize !9
  br i1 %i.dr, label %bb.am, label %bb.al, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @346, i64 %i.dl, i64 %i.dm) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !54
  %i.du = zext i8 %i.dt to i64                    ; 2 uses
  %i.dv = mul nuw nsw i64 %i.du, 12
  %i.dw = add i64 %i.dv, %i.dl, !nosanitize !9    ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 0
  %i.dy = xor i1 %i.dn, %i.dx
  %i.dz = icmp uge i64 %i.dw, %i.dl, !nosanitize !9
  %i.ea = and i1 %i.dz, %i.dy, !nosanitize !9
  br i1 %i.ea, label %bb.ao, label %bb.an, !prof !10, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @347, i64 %i.dl, i64 %i.dw) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %bb.am
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4218.0.copyload = load float, ptr %.sroa.4218.0..sroa_idx, align 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %.0.i145, i64 %i.dj ; 2 uses
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.268.0.copyload = load float, ptr %.sroa.268.0..sroa_idx, align 4 ; 4 uses
  %.sroa.5219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5219.0.copyload = load <2 x float>, ptr %.sroa.5219.0..sroa_idx, align 4 ; 9 uses
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.eb, align 4 ; 4 uses
  %i.ec = shufflevector <2 x float> %.sroa.067.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ed = insertelement <2 x float> %i.ec, float %.sroa.268.0.copyload, i64 1 ; 2 uses
  %.sroa.6220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6220.0.copyload = load <2 x float>, ptr %.sroa.6220.0..sroa_idx, align 4 ; 5 uses
  %i.ee = shufflevector <2 x float> %.sroa.6220.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ef = fmul <2 x float> %i.ed, %i.ee
  %i.eg = fmul <2 x float> %i.ed, %.sroa.5219.0.copyload
  %i.eh = shufflevector <2 x float> %.sroa.5219.0.copyload, <2 x float> %.sroa.6220.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.ei = fmul <2 x float> %.sroa.067.0.copyload, %i.eh
  %i.ej = fsub <2 x float> %i.eg, %i.ei           ; 2 uses
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %foldExtExtBinop = fmul <2 x float> %.sroa.067.0.copyload, %.sroa.6220.0.copyload
  %i.el = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5219.0.copyload, i64 0 ; 2 uses
  %i.em = fmul float %.sroa.268.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.en = fsub float %i.el, %i.em
  %i.eo = insertelement <2 x float> %i.ek, float %i.en, i64 0
  %i.ep = fadd <2 x float> %i.ef, %i.eo           ; 2 uses
  %foldExtExtBinop238 = fmul <2 x float> %.sroa.5219.0.copyload, %i.ep
  %i.eq = insertelement <2 x float> %i.ec, float %.sroa.268.0.copyload, i64 0
  %i.er = fmul <2 x float> %i.eq, %i.ee
  %i.es = fadd <2 x float> %i.er, %i.ej           ; 2 uses
  %foldExtExtBinop240 = fmul <2 x float> %.sroa.5219.0.copyload, %i.es
  %shift = shufflevector <2 x float> %foldExtExtBinop240, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop242 = fsub <2 x float> %foldExtExtBinop238, %shift
  %i.et = extractelement <2 x float> %foldExtExtBinop242, i64 0
  %i.eu = fmul float %i.et, 2.000000e+00
  %i.ev = fadd float %.sroa.268.0.copyload, %i.eu
  %i.ew = fadd float %.sroa.4218.0.copyload, %i.ev ; 2 uses
  %.sroa.0217.0.copyload = load <2 x float>, ptr %3, align 8 ; 2 uses
  %i.ex = fmul <2 x float> %i.eh, %i.es
  %i.ey = shufflevector <2 x float> %.sroa.6220.0.copyload, <2 x float> %.sroa.5219.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ez = fmul <2 x float> %i.ey, %i.ep
  %i.fa = fsub <2 x float> %i.ex, %i.ez
  %i.fb = fmul <2 x float> %i.fa, splat (float 2.000000e+00)
  %i.fc = fadd <2 x float> %.sroa.067.0.copyload, %i.fb
  %i.fd = fadd <2 x float> %.sroa.0217.0.copyload, %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %.0.i145, i64 %i.du ; 2 uses
  %.sroa.059.0.copyload = load <2 x float>, ptr %i.fe, align 4 ; 4 uses
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.260.0.copyload = load float, ptr %.sroa.260.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop244.a = fmul <2 x float> %.sroa.6220.0.copyload, %.sroa.059.0.copyload
  %i.ff = extractelement <2 x float> %foldExtExtBinop244.a, i64 0
  %i.fg = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.260.0.copyload
  %i.fh = fsub float %i.ff, %i.fg
  %i.fi = shufflevector <2 x float> %.sroa.059.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fj = insertelement <2 x float> %i.fi, float %.sroa.260.0.copyload, i64 1 ; 2 uses
  %i.fk = fmul <2 x float> %.sroa.5219.0.copyload, %i.fj
  %i.fl = fmul <2 x float> %i.eh, %.sroa.059.0.copyload
  %i.fm = fsub <2 x float> %i.fk, %i.fl           ; 2 uses
  %i.fn = insertelement <2 x float> %i.fi, float %.sroa.260.0.copyload, i64 0
  %i.fo = fmul <2 x float> %i.ee, %i.fn
  %i.fp = fmul <2 x float> %i.ee, %i.fj
  %i.fq = fadd <2 x float> %i.fo, %i.fm           ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fs = insertelement <2 x float> %i.fr, float %i.fh, i64 0
  %i.ft = fadd <2 x float> %i.fp, %i.fs           ; 2 uses
  %i.fu = fmul <2 x float> %i.eh, %i.fq
  %i.fv = fmul <2 x float> %i.ey, %i.ft
  %i.fw = fsub <2 x float> %i.fu, %i.fv
  %foldExtExtBinop246 = fmul <2 x float> %.sroa.5219.0.copyload, %i.ft
  %foldExtExtBinop248 = fmul <2 x float> %.sroa.5219.0.copyload, %i.fq
  %shift250 = shufflevector <2 x float> %foldExtExtBinop248, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop251 = fsub <2 x float> %foldExtExtBinop246, %shift250
  %i.fx = extractelement <2 x float> %foldExtExtBinop251, i64 0
  %i.fy = fmul <2 x float> %i.fw, splat (float 2.000000e+00)
  %i.fz = fadd <2 x float> %.sroa.059.0.copyload, %i.fy
  %i.ga = fmul float %i.fx, 2.000000e+00
  %i.gb = fadd float %.sroa.260.0.copyload, %i.ga
  %i.gc = fadd <2 x float> %.sroa.0217.0.copyload, %i.fz
  %i.gd = fadd float %.sroa.4218.0.copyload, %i.gb
  %i.ge = fsub <2 x float> %i.gc, %i.fd
  %i.gf = fsub float %i.gd, %i.ew
  %.sroa.041.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !12 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @b3LineDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %6, <2 x float> %.sroa.087.0.copyload, float %.sroa.589.0.copyload, <2 x float> %i.ck, float %i.cl, <2 x float> %i.fd, float %i.ew, <2 x float> %i.ge, float %i.gf) #11
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !68 ; 2 uses
  %i.gi = fcmp ult float %i.gh, 0.000000e+00
  %i.gj = fcmp ugt float %i.gh, 1.000000e+00
  %or.cond.i = or i1 %i.gi, %i.gj
  br i1 %or.cond.i, label %b3IsWithinSegments.exit.thread, label %b3IsWithinSegments.exit

b3IsWithinSegments.exit:                          ; preds = %bb.ao
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !69 ; 2 uses
  %i.gm = fcmp oge float %i.gl, 0.000000e+00
  %i.gn = fcmp ole float %i.gl, 1.000000e+00
  %spec.select.i = and i1 %i.gm, %i.gn
  br i1 %spec.select.i, label %bb.ar, label %b3IsWithinSegments.exit.thread

b3IsWithinSegments.exit.thread:                   ; preds = %bb.ao, %b3IsWithinSegments.exit
  %i.go = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.gp = and i64 %i.go, 3, !nosanitize !9
  %i.gq = icmp eq i64 %i.gp, 0, !nosanitize !9
  br i1 %i.gq, label %bb.aq, label %bb.ap, !prof !10, !nosanitize !9

bb.ap:                                            ; preds = %b3IsWithinSegments.exit.thread
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @348, i64 %i.go) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.aq:                                            ; preds = %b3IsWithinSegments.exit.thread
  store i32 0, ptr %5, align 4
  %.sroa_idx205 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa_idx205, align 4
  br label %bb.ay

bb.ar:                                            ; preds = %b3IsWithinSegments.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.gr, align 8 ; 2 uses
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.228.0.copyload = load float, ptr %.sroa.228.0..sroa_idx, align 8
  %.sroa.025.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 8
  %i.gs = fadd <2 x float> %.sroa.027.0.copyload, %.sroa.025.0.copyload
  %i.gt = fmul <2 x float> %i.gs, splat (float 5.000000e-01)
  %i.gu = shufflevector <2 x float> %.sroa.027.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gv = insertelement <4 x float> %i.gu, float %.sroa.228.0.copyload, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %.sroa.226.0.copyload, i64 3 ; 3 uses
  %i.gx = shufflevector <2 x float> %.sroa.025.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> %i.gw, <4 x i32> <i32 0, i32 1, i32 7, i32 6> ; 2 uses
  %i.gz = fsub <4 x float> %i.gw, %i.gy
  %i.ha = fadd <4 x float> %i.gw, %i.gy
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hc = shufflevector <2 x float> %.sroa.041.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hd = insertelement <4 x float> %i.hc, float 5.000000e-01, i64 3
  %i.he = insertelement <4 x float> %i.hd, float %.sroa.5.0.copyload, i64 2
  %i.hf = fmul <4 x float> %i.he, %i.hb           ; 4 uses
  %shift253 = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop254 = fadd <4 x float> %i.hf, %shift253
  %shift256 = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop257 = fadd <4 x float> %shift256, %foldExtExtBinop254
  %i.hg = extractelement <4 x float> %foldExtExtBinop257, i64 0 ; 2 uses
  %i.hh = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.hi = and i64 %i.hh, 7, !nosanitize !9
  %i.hj = icmp eq i64 %i.hi, 0, !nosanitize !9
  br i1 %i.hj, label %bb.at, label %bb.as, !prof !10, !nosanitize !9

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @349, i64 %i.hh) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.at:                                            ; preds = %bb.ar
  store <2 x float> %.sroa.041.0.copyload, ptr %0, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx43, align 8, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.hk, align 8, !tbaa !19
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !20 ; 6 uses
  %i.hn = icmp ne ptr %i.hm, null, !nosanitize !9
  %i.ho = ptrtoint ptr %i.hm to i64, !nosanitize !9 ; 2 uses
  %i.hp = and i64 %i.ho, 3, !nosanitize !9
  %i.hq = icmp eq i64 %i.hp, 0, !nosanitize !9
  %i.hr = and i1 %i.hn, %i.hq, !nosanitize !9
  br i1 %i.hr, label %bb.av, label %bb.au, !prof !10, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @350, i64 %i.ho) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %bb.at
  store <2 x float> %i.gt, ptr %i.hm, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hs = extractelement <4 x float> %i.hf, i64 3
  store float %i.hs, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store float %i.hg, ptr %i.ht, align 4, !tbaa !23
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hv = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef %i.ar, i32 noundef 1, i32 noundef %i.cn) #11
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !24
  %i.hw = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.hx = and i64 %i.hw, 3, !nosanitize !9
  %i.hy = icmp eq i64 %i.hx, 0, !nosanitize !9
  br i1 %i.hy, label %bb.ax, label %bb.aw, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @351, i64 %i.hw) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %bb.av
  store float %i.hg, ptr %5, align 4, !tbaa !76
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 4, ptr %i.hz, align 4, !tbaa !74
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ib = trunc i32 %i.ar to i8
  store i8 %i.ib, ptr %i.ia, align 1, !tbaa !75
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.id = trunc i32 %i.cn to i8
  store i8 %i.id, ptr %i.ic, align 2, !tbaa !77
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aq
  %i.ie = phi i1 [ true, %bb.ax ], [ false, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i1 %i.ie
}

declare i32 @b3GetPointSupport(ptr noundef, i32 noundef, <2 x float>, float) local_unnamed_addr #4

declare void @b3LineDistance(ptr dead_on_unwind writable sret(%struct.b3SegmentDistanceResult) align 4, <2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #3

declare i32 @b3FindIncidentFace(ptr noundef, <2 x float>, float, i32 noundef) local_unnamed_addr #4

declare i32 @b3ClipPolygon(ptr noundef, ptr noundef, i32 noundef, <2 x float>, <2 x float>, i32 noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare i32 @b3FlipPair(i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1048575, i32 1}
!11 = !{!"float", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"b3Vec3", !11, i64 0, !11, i64 4, !11, i64 8}
!14 = !{!"b3Sphere", !13, i64 0, !11, i64 12}
!15 = !{!14, !11, i64 12}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTS20b3LocalManifoldPoint", !16, i64 0}
!18 = !{!"b3LocalManifold", !13, i64 0, !13, i64 12, !17, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !11, i64 52, !6, i64 56, !6, i64 60}
!19 = !{!18, !6, i64 32}
!20 = !{!18, !17, i64 24}
!21 = !{!"b3FeaturePair", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!22 = !{!"b3LocalManifoldPoint", !13, i64 0, !11, i64 12, !21, i64 16, !6, i64 20}
!23 = !{!22, !11, i64 12}
!24 = !{!5, !5, i64 0}
!25 = !{!"b3Capsule", !13, i64 0, !13, i64 12, !11, i64 24}
!26 = !{!25, !11, i64 24}
!27 = !{!"long", !5, i64 0}
!28 = !{!"b3AABB", !13, i64 0, !13, i64 12}
!29 = !{!"b3Matrix3", !13, i64 0, !13, i64 12, !13, i64 24}
!30 = !{!"b3HullData", !27, i64 0, !27, i64 8, !28, i64 16, !11, i64 40, !11, i64 44, !11, i64 48, !13, i64 52, !29, i64 64, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140}
!31 = !{!30, !6, i64 108}
!32 = !{!"branch_weights", i32 1, i32 1048575}
!33 = !{!30, !6, i64 100}
!34 = !{!"p1 _ZTS6b3Vec3", !16, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!6, !6, i64 0}
!37 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !12}
!38 = !{!"b3ShapeProxy", !34, i64 0, !6, i64 8, !11, i64 12}
!39 = !{!"b3Quat", !13, i64 0, !11, i64 12}
!40 = !{!"b3Transform", !13, i64 0, !39, i64 12}
!41 = !{!"_Bool", !5, i64 0}
!42 = !{!"b3DistanceInput", !38, i64 0, !38, i64 16, !40, i64 32, !41, i64 60}
!43 = !{!42, !41, i64 60}
!44 = !{!"b3DistanceOutput", !13, i64 0, !13, i64 12, !13, i64 24, !11, i64 36, !6, i64 40, !6, i64 44}
!45 = !{!44, !11, i64 36}
!46 = !{!30, !6, i64 124}
!47 = !{!30, !6, i64 120}
!48 = !{!"branch_weights", i32 0, i32 -2147483648}
end_hunk_4
