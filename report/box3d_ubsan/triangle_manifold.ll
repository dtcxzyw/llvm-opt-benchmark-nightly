Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/triangle_manifold?download=true
inline.NumInlined: 151
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@b3BuildTriangleAndCapsuleEdgeContact:bb.a
  br i1 %i.di, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @92, i64 %i.dg) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  store <2 x float> %.sroa.042.0.copyload, ptr %0, align 8, !tbaa !17
  %.sroa.6.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx45, align 8, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.dj, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @__const.b3CollideTriangleAndHullEdges.edgesFeatures, i64 12, i1 false)
  %i.dk = icmp ult i32 %i.i, 3
  br i1 %i.dk, label %bb.u, label %bb.t, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @94, i64 %i.j) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.dl = shl nuw nsw i64 %i.j, 2
  %i.dm = ptrtoint ptr %i.a to i64, !nosanitize !9 ; 3 uses
  %i.dn = add i64 %i.dl, %i.dm, !nosanitize !9    ; 2 uses
  %.not = icmp ult i64 %i.dn, %i.dm, !nosanitize !9
  br i1 %.not, label %bb.v, label %bb.w, !prof !18, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @95, i64 %i.dm, i64 %i.dn) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !27
  store i32 %i.dq, ptr %i.dp, align 8, !tbaa !19
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !20 ; 6 uses
  %i.dt = icmp ne ptr %i.ds, null, !nosanitize !9
  %i.du = ptrtoint ptr %i.ds to i64, !nosanitize !9 ; 2 uses
  %i.dv = and i64 %i.du, 3, !nosanitize !9
  %i.dw = icmp eq i64 %i.dv, 0, !nosanitize !9
  %i.dx = and i1 %i.dt, %i.dw, !nosanitize !9
  br i1 %i.dx, label %bb.y, label %bb.x, !prof !10, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @96, i64 %i.du) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.w
  store <2 x float> %i.cz, ptr %i.ds, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store float %i.db, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.dz = load float, ptr %i.cn, align 4, !tbaa !30
  %i.ea = fsub float %i.df, %i.dz
  store float %i.ea, ptr %i.dy, align 4, !tbaa !23
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !39
  %i.ee = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef %i.i, i32 noundef 1, i32 noundef %i.ed) #9
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %bb.p, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.aa

bb.aa:                                            ; preds = %b3Normalize.exit, %bb.z
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3CollideTriangleAndHull(ptr noundef %0, i32 noundef %1, <2 x float> %2, float %3, <2 x float> %4, float %5, <2 x float> %6, float %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext %11) local_unnamed_addr #0 !func_sanitize !96 {
bb.a:
  %12 = alloca [3 x %struct.b3Vec3], align 16     ; 19 uses
  %13 = alloca [3 x %struct.b3Vec3], align 16     ; 14 uses
  %14 = alloca %struct.b3TriangleData, align 8    ; 24 uses
  %15 = alloca %struct.b3SATCache, align 8        ; 5 uses
  %16 = alloca %struct.b3SeparatingAxis, align 8  ; 10 uses
  %17 = alloca %struct.b3SATCache, align 8        ; 5 uses
  %18 = alloca %struct.b3SeparatingAxis, align 8  ; 9 uses
  %19 = alloca %struct.b3SATCache, align 8        ; 4 uses
  %20 = alloca %struct.b3SeparatingAxis, align 8  ; 4 uses
  %21 = alloca %struct.b3SeparatingAxis, align 8  ; 5 uses
  %22 = alloca %struct.b3SeparatingAxis, align 8  ; 9 uses
  %23 = alloca %struct.b3SeparatingAxis, align 8  ; 8 uses
  %24 = alloca [3 x %struct.b3Vec3], align 16     ; 9 uses
  %25 = alloca %struct.b3DistanceInput, align 8   ; 11 uses
  %26 = alloca %struct.b3SimplexCache, align 4    ; 5 uses
  %27 = alloca %struct.b3DistanceOutput, align 4  ; 6 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @25, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = icmp slt i32 %1, 4
  br i1 %i.h, label %bb.ed, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = fsub <2 x float> %4, %2                  ; 4 uses
  %i.j = fsub float %5, %3                        ; 3 uses
  %i.k = extractelement <2 x float> %i.i, i64 0
  %i.l = fsub <2 x float> %6, %2                  ; 3 uses
  %i.m = fsub float %7, %3                        ; 2 uses
  %i.n = extractelement <2 x float> %i.l, i64 0
  %i.o = fmul float %i.j, %i.n
  %i.p = fmul float %i.k, %i.m
  %i.q = fsub float %i.o, %i.p                    ; 3 uses
  %i.r = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %i.m, i64 1
  %i.t = fmul <2 x float> %i.i, %i.s
  %i.u = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %i.j, i64 1
  %i.w = fmul <2 x float> %i.v, %i.l
  %i.x = fsub <2 x float> %i.t, %i.w              ; 4 uses
  %i.y = fmul float %i.q, %i.q
  %i.z = fmul <2 x float> %i.x, %i.x              ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1
  %i.ab = fadd float %i.aa, %i.y
  %i.ac = extractelement <2 x float> %i.z, i64 0
  %i.ad = fadd float %i.ac, %i.ab                 ; 2 uses
  %i.ae = fcmp ogt float %i.ad, f0x057A0000
  br i1 %i.ae, label %bb.e, label %b3MakePlaneFromPoints.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ad)
  %i.af = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.ag = extractelement <2 x float> %i.x, i64 1
  %i.ah = fmul float %i.ag, %i.af
  %.sroa.07.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ai = fmul float %i.q, %i.af
  %.sroa.07.4.vec.insert.i.i = insertelement <2 x float> %.sroa.07.0.vec.insert.i.i, float %i.ai, i64 1
  %i.aj = extractelement <2 x float> %i.x, i64 0
  %i.ak = fmul float %i.aj, %i.af
  br label %b3MakePlaneFromPoints.exit

b3MakePlaneFromPoints.exit:                       ; preds = %bb.d, %bb.e
  %.sroa.07.0.i.i = phi <2 x float> [ %.sroa.07.4.vec.insert.i.i, %bb.e ], [ zeroinitializer, %bb.d ] ; 9 uses
  %.sroa.5.0.i.i = phi float [ %i.ak, %bb.e ], [ 0.000000e+00, %bb.d ] ; 7 uses
  %.sroa.4.8.vec.insert70.i = insertelement <2 x float> poison, float %.sroa.5.0.i.i, i64 0
  %foldExtExtBinop = fmul <2 x float> %2, %.sroa.07.0.i.i
  %foldExtExtBinop801 = fmul <2 x float> %2, %.sroa.07.0.i.i
  %shift803 = shufflevector <2 x float> %foldExtExtBinop801, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop804 = fadd <2 x float> %foldExtExtBinop, %shift803
  %i.al = extractelement <2 x float> %foldExtExtBinop804, i64 0
  %i.am = fmul float %3, %.sroa.5.0.i.i
  %i.an = fadd float %i.am, %i.al                 ; 3 uses
  %.sroa.4.12.vec.insert.i = insertelement <2 x float> %.sroa.4.8.vec.insert70.i, float %i.an, i64 1
  %i.ao = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.ap = fmul float %i.ao, 5.000000e-03          ; 7 uses
  %i.aq = icmp ne ptr %9, null, !nosanitize !9
  %i.ar = ptrtoint ptr %9 to i64, !nosanitize !9  ; 12 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !9
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !9
  %i.au = and i1 %i.aq, %i.at, !nosanitize !9
  br i1 %i.au, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %b3MakePlaneFromPoints.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @27, i64 %i.ar) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %b3MakePlaneFromPoints.exit
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 52
  %.sroa.0243.0.copyload = load <2 x float>, ptr %i.av, align 4 ; 2 uses
  %.sroa.2244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 60
  %.sroa.2244.0.copyload = load float, ptr %.sroa.2244.0..sroa_idx, align 4
  %foldExtExtBinop761.a = fmul <2 x float> %.sroa.07.0.i.i, %.sroa.0243.0.copyload
  %foldExtExtBinop763 = fmul <2 x float> %.sroa.07.0.i.i, %.sroa.0243.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop763, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop765 = fadd <2 x float> %foldExtExtBinop761.a, %shift
  %i.aw = extractelement <2 x float> %foldExtExtBinop765, i64 0
  %i.ax = fmul float %.sroa.5.0.i.i, %.sroa.2244.0.copyload
  %i.ay = fadd float %i.ax, %i.aw
  %i.az = fsub float %i.ay, %i.an                 ; 3 uses
  %i.ba = icmp ne ptr %10, null, !nosanitize !9
  %i.bb = ptrtoint ptr %10 to i64, !nosanitize !9 ; 2 uses
  %i.bc = and i64 %i.bb, 3, !nosanitize !9
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !9
  %i.be = and i1 %i.ba, %i.bd, !nosanitize !9
  br i1 %i.be, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @29, i64 %i.bb) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 11 uses
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !46
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bi = load float, ptr %10, align 4, !tbaa !47
  %i.bj = fsub float %i.bi, %i.az
  %i.bk = tail call float @llvm.fabs.f32(float %i.bj)
  %i.bl = fcmp olt float %i.bk, %i.ap
  br i1 %i.bl, label %bb.ed, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.bf, align 4, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bm = fneg float %i.ap
  %i.bn = fcmp olt float %i.az, %i.bm
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.bf, align 4, !tbaa !46
  store float %i.az, ptr %10, align 4, !tbaa !47
  br label %bb.ed

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  store <2 x float> %2, ptr %12, align 16, !tbaa !17
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store <2 x float> %4, ptr %i.bo, align 4, !tbaa !17
  %.sroa.7386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 20
  store float %5, ptr %.sroa.7386.0..sroa_idx, align 4, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store <2 x float> %6, ptr %i.bp, align 8, !tbaa !17
  %.sroa.7374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store float %7, ptr %.sroa.7374.0..sroa_idx, align 16, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  store <2 x float> %i.i, ptr %13, align 16
  %.sroa.2231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.j, ptr %.sroa.2231.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.br = fsub <2 x float> %6, %4
  %i.bs = fsub float %7, %5
  store <2 x float> %i.br, ptr %i.bq, align 4
  %.sroa.2223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 20
  store float %i.bs, ptr %.sroa.2223.0..sroa_idx, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bu = fsub <2 x float> %2, %6
  %i.bv = fsub float %3, %7
  store <2 x float> %i.bu, ptr %i.bt, align 8
  %.sroa.2215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  store float %i.bv, ptr %.sroa.2215.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  store <2 x float> %2, ptr %14, align 8, !tbaa !17
  %.sroa.8.0..sroa_idx399 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float %3, ptr %.sroa.8.0..sroa_idx399, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 12
  store <2 x float> %4, ptr %i.bw, align 4, !tbaa !17
  %.sroa.7386.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store float %5, ptr %.sroa.7386.0..sroa_idx387, align 4, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store <2 x float> %6, ptr %i.bx, align 8, !tbaa !17
  %.sroa.7374.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store float %7, ptr %.sroa.7374.0..sroa_idx375, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 16 dereferenceable(12) %13, i64 12, i1 false), !tbaa.struct !33
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ca = ptrtoint ptr %13 to i64, !nosanitize !9 ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false), !tbaa.struct !33
  %.not457 = icmp ugt ptr %13, inttoptr (i64 -25 to ptr)
  br i1 %.not457, label %bb.o, label %bb.p, !prof !18, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  %i.cb = add i64 %i.ca, 24, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @31, i64 %i.ca, i64 %i.cb) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 8 dereferenceable(12) %i.bt, i64 12, i1 false), !tbaa.struct !33
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 3 uses
  store <2 x float> %.sroa.07.0.i.i, ptr %i.cd, align 8, !tbaa !17
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 3 uses
  store <2 x float> %.sroa.4.12.vec.insert.i, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 %8, ptr %i.ce, align 8, !tbaa !99
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 116
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !52 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %b3GetHullEdges.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = sext i32 %i.cg to i64                   ; 2 uses
  %i.cj = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.ci), !nosanitize !9 ; 2 uses
  %i.ck = extractvalue { i64, i1 } %i.cj, 1, !nosanitize !9
  br i1 %i.ck, label %bb.r, label %bb.s, !prof !18, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @99, i64 %i.ar, i64 %i.ci) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.cl = extractvalue { i64, i1 } %i.cj, 0, !nosanitize !9
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %bb.p, %bb.s
  %.0.i = phi ptr [ %i.cm, %bb.s ], [ null, %bb.p ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 124
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !53 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %b3GetHullPlanes.exit, label %bb.t

bb.t:                                             ; preds = %b3GetHullEdges.exit
  %i.cq = sext i32 %i.co to i64                   ; 2 uses
  %i.cr = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.cq), !nosanitize !9 ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1, !nosanitize !9
  br i1 %i.cs, label %bb.u, label %bb.v, !prof !18, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @101, i64 %i.ar, i64 %i.cq) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.ct = extractvalue { i64, i1 } %i.cr, 0, !nosanitize !9
  %i.cu = inttoptr i64 %i.ct to ptr
  br label %b3GetHullPlanes.exit

b3GetHullPlanes.exit:                             ; preds = %bb.v, %b3GetHullEdges.exit
  %.0.i524 = phi ptr [ %i.cu, %bb.v ], [ null, %b3GetHullEdges.exit ] ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 108 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !54 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %b3GetHullPoints.exit, label %bb.w

bb.w:                                             ; preds = %b3GetHullPlanes.exit
  %i.cy = sext i32 %i.cw to i64                   ; 2 uses
  %i.cz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.cy), !nosanitize !9 ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1, !nosanitize !9
  br i1 %i.da, label %bb.x, label %bb.y, !prof !18, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @102, i64 %i.ar, i64 %i.cy) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.w
  %i.db = extractvalue { i64, i1 } %i.cz, 0, !nosanitize !9
  %i.dc = inttoptr i64 %i.db to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullPlanes.exit, %bb.y
  %.0.i525 = phi ptr [ %i.dc, %bb.y ], [ null, %b3GetHullPlanes.exit ] ; 8 uses
  br i1 %11, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %b3GetHullPoints.exit
  %i.dd = call float @b3GetLengthUnitsPerMeter() #9
  %i.de = fmul float %i.dd, 5.000000e-03
  %i.df = fmul float %i.de, 4.000000e+00
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %b3GetHullPoints.exit
  %i.dg = phi float [ %i.df, %bb.z ], [ 0.000000e+00, %b3GetHullPoints.exit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 7 ; 2 uses
  store i8 1, ptr %i.dh, align 1, !tbaa !100
  %i.di = load i8, ptr %i.bf, align 4, !tbaa !46
  switch i8 %i.di, label %bb.cu [
    i8 2, label %bb.ab
    i8 3, label %bb.aj
    i8 4, label %bb.ax
    i8 6, label %bb.cd
    i8 7, label %bb.ck
    i8 8, label %bb.cl
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dj = fneg <2 x float> %.sroa.07.0.i.i
  %i.dk = fneg float %.sroa.5.0.i.i
  %i.dl = call i32 @b3FindHullSupportVertex(ptr noundef nonnull %9, <2 x float> %i.dj, float %i.dk) #9 ; 3 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [12 x i8], ptr %.0.i525, i64 %i.dm ; 3 uses
  %i.do = mul nsw i64 %i.dm, 12
  %i.dp = ptrtoint ptr %.0.i525 to i64, !nosanitize !9 ; 3 uses
  %i.dq = add i64 %i.do, %i.dp, !nosanitize !9    ; 3 uses
  %i.dr = icmp ne ptr %.0.i525, null, !nosanitize !9 ; 2 uses
  %i.ds = icmp eq i64 %i.dq, 0
  %i.dt = xor i1 %i.dr, %i.ds
  %i.du = icmp uge i64 %i.dq, %i.dp, !nosanitize !9
  %i.dv = icmp slt i32 %i.dl, 0
  %i.dw = xor i1 %i.dv, %i.du
  %i.dx = and i1 %i.dt, %i.dw, !nosanitize !9
  br i1 %i.dx, label %bb.ad, label %bb.ac, !prof !10, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @32, i64 %i.dp, i64 %i.dq) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.dy = ptrtoint ptr %i.dn to i64, !nosanitize !9 ; 2 uses
  %i.dz = and i64 %i.dy, 3, !nosanitize !9
  %i.ea = icmp eq i64 %i.dz, 0, !nosanitize !9
  %i.eb = and i1 %i.dr, %i.ea
  br i1 %i.eb, label %bb.af, label %bb.ae, !prof !10, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @33, i64 %i.dy) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %bb.ad
  %.sroa.0183.0.copyload = load <2 x float>, ptr %i.dn, align 4, !tbaa !17
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.4184.0.copyload = load float, ptr %.sroa.4184.0..sroa_idx, align 4, !tbaa !17
  %i.ec = fmul <2 x float> %.sroa.07.0.i.i, %.sroa.0183.0.copyload ; 2 uses
  %shift767 = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop768 = fadd <2 x float> %i.ec, %shift767
  %i.ed = extractelement <2 x float> %foldExtExtBinop768, i64 0
  %i.ee = fmul float %.sroa.5.0.i.i, %.sroa.4184.0.copyload
  %i.ef = fadd float %i.ee, %i.ed
  %i.eg = fsub float %i.ef, %i.an
  %i.eh = fcmp ogt float %i.eg, %i.dg
  br i1 %i.eh, label %.critedge489, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 5
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !55
  %i.ek = zext i8 %i.ej to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.el = load i64, ptr %10, align 4
  store i64 %i.el, ptr %15, align 8
  %i.em = call fastcc float @b3CollideTriangleFace(ptr noundef %0, i32 noundef %1, ptr noundef %14, ptr noundef %9, i32 %i.ek, i32 %i.dl, ptr noundef %15, i1 noundef zeroext %11)
  %i.en = load i32, ptr %i.f, align 8, !tbaa !16
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.ep = load float, ptr %10, align 4, !tbaa !47
  %i.eq = fsub float %i.ep, %i.em
  %i.er = call float @llvm.fabs.f32(float %i.eq)
  %i.es = fcmp olt float %i.er, %i.ap
  br i1 %i.es, label %bb.ai, label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ag
  store i32 0, ptr %i.f, align 8, !tbaa !16
  store i32 0, ptr %10, align 4
  store i32 0, ptr %i.bf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  br label %bb.cu

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  br label %.critedge489

bb.aj:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 6
  %i.eu = load i8, ptr %i.et, align 2, !tbaa !56  ; 2 uses
  %i.ev = zext i8 %i.eu to i64                    ; 2 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %.0.i524, i64 %i.ev ; 3 uses
  %i.ex = shl nuw nsw i64 %i.ev, 4
  %i.ey = ptrtoint ptr %.0.i524 to i64, !nosanitize !9 ; 3 uses
  %i.ez = add i64 %i.ex, %i.ey, !nosanitize !9    ; 3 uses
  %i.fa = icmp ne ptr %.0.i524, null, !nosanitize !9 ; 2 uses
  %i.fb = icmp eq i64 %i.ez, 0
  %i.fc = xor i1 %i.fa, %i.fb
  %i.fd = icmp uge i64 %i.ez, %i.ey, !nosanitize !9
  %i.fe = and i1 %i.fd, %i.fc, !nosanitize !9
  br i1 %i.fe, label %bb.al, label %bb.ak, !prof !10, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @34, i64 %i.ey, i64 %i.ez) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.aj
  %i.ff = ptrtoint ptr %i.ew to i64, !nosanitize !9 ; 2 uses
  %i.fg = and i64 %i.ff, 3, !nosanitize !9
  %i.fh = icmp eq i64 %i.fg, 0, !nosanitize !9
  %i.fi = and i1 %i.fa, %i.fh
  br i1 %i.fi, label %bb.ao, label %bb.am, !prof !10, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @36, i64 %i.ff) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.ao
  %i.fj = add i64 %i.fk, 24, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @37, i64 %i.fk, i64 %i.fj) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %bb.al
  %.sroa.0168.0.copyload = load <2 x float>, ptr %i.ew, align 4, !tbaa !17 ; 6 uses
  %.sroa.7172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.7172.0.copyload = load <2 x float>, ptr %.sroa.7172.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %.sroa.7172.8.vec.extract = extractelement <2 x float> %.sroa.7172.0.copyload, i64 0 ; 5 uses
  %i.fk = ptrtoint ptr %12 to i64, !nosanitize !9 ; 5 uses
  %.not472.1 = icmp ugt ptr %12, inttoptr (i64 -25 to ptr)
  br i1 %.not472.1, label %bb.an, label %bb.ap, !prof !18, !nosanitize !9

bb.ap:                                            ; preds = %bb.ao
  %i.fl = fmul float %3, %.sroa.7172.8.vec.extract
  %foldExtExtBinop770 = fmul <2 x float> %2, %.sroa.0168.0.copyload
  %foldExtExtBinop772 = fmul <2 x float> %2, %.sroa.0168.0.copyload
  %shift774 = shufflevector <2 x float> %foldExtExtBinop772, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop775 = fadd <2 x float> %foldExtExtBinop770, %shift774
  %i.fm = extractelement <2 x float> %foldExtExtBinop775, i64 0
  %i.fn = fadd float %i.fl, %i.fm                 ; 2 uses
  %.sroa.2154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 20
  %.sroa.2154.0.copyload = load float, ptr %.sroa.2154.0..sroa_idx, align 4
  %i.fo = fmul float %.sroa.7172.8.vec.extract, %.sroa.2154.0.copyload
  %.sroa.0153.0.copyload = load <2 x float>, ptr %i.bo, align 4
  %i.fp = fmul <2 x float> %.sroa.0168.0.copyload, %.sroa.0153.0.copyload ; 2 uses
  %shift777 = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop778 = fadd <2 x float> %i.fp, %shift777
  %i.fq = extractelement <2 x float> %foldExtExtBinop778, i64 0
  %i.fr = fadd float %i.fo, %i.fq                 ; 2 uses
  %i.fs = fcmp ogt float %i.fn, %i.fr             ; 2 uses
  %.1405 = zext i1 %i.fs to i32
  %.1407.v = select i1 %i.fs, float %i.fr, float %i.fn
  %.sroa.0153.0.copyload.1 = load <2 x float>, ptr %i.bp, align 8
  %.sroa.2154.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %.sroa.2154.0.copyload.1 = load float, ptr %.sroa.2154.0..sroa_idx.1, align 16
  %i.ft = fmul <2 x float> %.sroa.0168.0.copyload, %.sroa.0153.0.copyload.1 ; 2 uses
  %shift780 = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop781 = fadd <2 x float> %i.ft, %shift780
  %i.fu = extractelement <2 x float> %foldExtExtBinop781, i64 0
  %i.fv = fmul float %.sroa.7172.8.vec.extract, %.sroa.2154.0.copyload.1
  %i.fw = fadd float %i.fv, %i.fu
  %i.fx = fcmp ogt float %.1407.v, %i.fw
  %.1405.1 = select i1 %i.fx, i32 2, i32 %.1405   ; 2 uses
  %i.fy = zext nneg i32 %.1405.1 to i64           ; 2 uses
  %i.fz = mul nuw nsw i64 %i.fy, 12
  %i.ga = add i64 %i.fz, %i.fk, !nosanitize !9    ; 2 uses
  %.not471 = icmp ult i64 %i.ga, %i.fk, !nosanitize !9
  br i1 %.not471, label %bb.aq, label %bb.ar, !prof !18, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @38, i64 %i.fk, i64 %i.ga) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %i.gb = getelementptr inbounds nuw [12 x i8], ptr %12, i64 %i.fy ; 2 uses
  %.sroa.0149.0.copyload = load <2 x float>, ptr %i.gb, align 4, !tbaa !17
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.sroa.4150.0.copyload = load float, ptr %.sroa.4150.0..sroa_idx, align 4, !tbaa !17
  %i.gc = fmul <2 x float> %.sroa.0168.0.copyload, %.sroa.0149.0.copyload ; 2 uses
  %shift783 = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop784 = fadd <2 x float> %i.gc, %shift783
  %i.gd = extractelement <2 x float> %foldExtExtBinop784, i64 0
  %i.ge = fmul float %.sroa.7172.8.vec.extract, %.sroa.4150.0.copyload
  %i.gf = fadd float %i.ge, %i.gd
  %.sroa.1.12.vec.extract.i547 = extractelement <2 x float> %.sroa.7172.0.copyload, i64 1
  %i.gg = fsub float %i.gf, %.sroa.1.12.vec.extract.i547 ; 3 uses
  %i.gh = fcmp ogt float %i.gg, %i.dg
  br i1 %i.gh, label %.critedge489, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gi = fmul float %i.ap, -2.000000e+00
  %i.gj = fcmp uge float %i.gg, %i.gi
  br i1 %i.gj, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  %i.gk = fneg <2 x float> %.sroa.0168.0.copyload
  %i.gl = fneg float %.sroa.7172.8.vec.extract
  store <2 x float> %i.gk, ptr %16, align 8, !tbaa !17
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %i.gl, ptr %.sroa.4142.0..sroa_idx, align 8, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 12
  store float %i.gg, ptr %i.gm, align 4, !tbaa !37
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %.1405.1, ptr %i.gn, align 8, !tbaa !38
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.gp = zext i8 %i.eu to i32
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !39
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 3, ptr %i.gq, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  %i.gr = load i64, ptr %10, align 4
  store i64 %i.gr, ptr %17, align 8
  %i.gs = call fastcc float @b3CollideHullFace(ptr noundef %0, i32 noundef %1, ptr noundef %14, ptr noundef %9, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %16, ptr noundef %17, i1 noundef zeroext %11)
  %i.gt = load i32, ptr %i.f, align 8, !tbaa !16
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %bb.au, label %.critedge484

bb.au:                                            ; preds = %bb.at
  %i.gv = load float, ptr %10, align 4, !tbaa !47
  %i.gw = fsub float %i.gv, %i.gs
  %i.gx = call float @llvm.fabs.f32(float %i.gw)
  %i.gy = fcmp olt float %i.gx, %i.ap
  br i1 %i.gy, label %bb.av, label %.critedge484

.critedge484:                                     ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  br label %.critedge489

bb.aw:                                            ; preds = %.critedge484, %bb.as
  store i32 0, ptr %i.f, align 8, !tbaa !16
  store i32 0, ptr %10, align 4
  store i32 0, ptr %i.bf, align 4
  br label %bb.cu

bb.ax:                                            ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 5
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !55  ; 3 uses
  %i.hb = zext nneg i8 %i.ha to i32
  %i.hc = zext i8 %i.ha to i64                    ; 4 uses
  %i.hd = icmp ult i8 %i.ha, 3
  br i1 %i.hd, label %bb.az, label %bb.ay, !prof !10, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @39, i64 %i.hc) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.az:                                            ; preds = %bb.ax
  %i.he = mul nuw nsw i64 %i.hc, 12               ; 2 uses
  %i.hf = ptrtoint ptr %12 to i64, !nosanitize !9 ; 3 uses
  %i.hg = add i64 %i.he, %i.hf, !nosanitize !9    ; 2 uses
  %.not463 = icmp ult i64 %i.hg, %i.hf, !nosanitize !9
  br i1 %.not463, label %bb.ba, label %bb.bb, !prof !18, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @40, i64 %i.hf, i64 %i.hg) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %12, i64 %i.hc ; 2 uses
  %.sroa.0128.0.copyload = load <2 x float>, ptr %i.hh, align 4, !tbaa !17 ; 2 uses
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.sroa.5130.0.copyload = load float, ptr %.sroa.5130.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %i.hi = add i64 %i.he, %i.ca, !nosanitize !9    ; 2 uses
  %.not464 = icmp ult i64 %i.hi, %i.ca, !nosanitize !9
  br i1 %.not464, label %bb.bc, label %bb.bd, !prof !18, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @41, i64 %i.ca, i64 %i.hi) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bd:                                            ; preds = %bb.bb
  %i.hj = getelementptr inbounds nuw [12 x i8], ptr %13, i64 %i.hc ; 2 uses
  %.sroa.0123.0.copyload = load <2 x float>, ptr %i.hj, align 4, !tbaa !17 ; 5 uses
  %.sroa.7127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.sroa.7127.0.copyload = load float, ptr %.sroa.7127.0..sroa_idx, align 4, !tbaa !17 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 6
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !56  ; 2 uses
  %i.hm = zext i8 %i.hl to i32
  %i.hn = zext i8 %i.hl to i64                    ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.hn ; 6 uses
  %i.hp = shl nuw nsw i64 %i.hn, 2
  %i.hq = ptrtoint ptr %.0.i to i64, !nosanitize !9 ; 3 uses
  %i.hr = add i64 %i.hp, %i.hq, !nosanitize !9    ; 3 uses
  %i.hs = icmp ne ptr %.0.i, null, !nosanitize !9 ; 3 uses
  %i.ht = icmp eq i64 %i.hr, 0
  %i.hu = xor i1 %i.hs, %i.ht
  %i.hv = icmp uge i64 %i.hr, %i.hq, !nosanitize !9
  %i.hw = and i1 %i.hv, %i.hu, !nosanitize !9
  br i1 %i.hw, label %bb.bf, label %bb.be, !prof !10, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @42, i64 %i.hq, i64 %i.hr) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bf:                                            ; preds = %bb.bd
  %i.hx = ptrtoint ptr %i.ho to i64, !nosanitize !9 ; 3 uses
  %i.hy = add i64 %i.hx, 4, !nosanitize !9        ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 0
  %i.ia = xor i1 %i.hs, %i.hz
  %i.ib = icmp ult ptr %i.ho, inttoptr (i64 -4 to ptr)
  %i.ic = and i1 %i.ib, %i.ia, !nosanitize !9
  br i1 %i.ic, label %bb.bh, label %bb.bg, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @43, i64 %i.hx, i64 %i.hy) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.hs, label %bb.bj, label %bb.bi, !prof !10, !nosanitize !9

bb.bi:                                            ; preds = %bb.bh
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.hx) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bj:                                            ; preds = %bb.bh
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !58
  %i.if = zext i8 %i.ie to i64                    ; 2 uses
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %.0.i525, i64 %i.if ; 3 uses
  %i.ih = mul nuw nsw i64 %i.if, 12
  %i.ii = ptrtoint ptr %.0.i525 to i64, !nosanitize !9 ; 6 uses
  %i.ij = add i64 %i.ih, %i.ii, !nosanitize !9    ; 3 uses
  %i.ik = icmp ne ptr %.0.i525, null, !nosanitize !9 ; 2 uses
  %i.il = icmp eq i64 %i.ij, 0
  %i.im = xor i1 %i.ik, %i.il
  %i.in = icmp uge i64 %i.ij, %i.ii, !nosanitize !9
  %i.io = and i1 %i.in, %i.im, !nosanitize !9
  br i1 %i.io, label %bb.bl, label %bb.bk, !prof !10, !nosanitize !9

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @46, i64 %i.ii, i64 %i.ij) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bl:                                            ; preds = %bb.bj
  %i.ip = ptrtoint ptr %i.ig to i64, !nosanitize !9 ; 2 uses
  %i.iq = and i64 %i.ip, 3, !nosanitize !9
  %i.ir = icmp eq i64 %i.iq, 0, !nosanitize !9
  %i.is = and i1 %i.ik, %i.ir
  br i1 %i.is, label %bb.bn, label %bb.bm, !prof !10, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @47, i64 %i.ip) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bn:                                            ; preds = %bb.bl
  %.sroa.0113.0.copyload = load <2 x float>, ptr %i.ig, align 4, !tbaa !17 ; 2 uses
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.5115.0.copyload = load float, ptr %.sroa.5115.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ho, i64 6
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !58
  %i.iv = zext i8 %i.iu to i64                    ; 2 uses
  %i.iw = mul nuw nsw i64 %i.iv, 12
  %i.ix = add i64 %i.iw, %i.ii, !nosanitize !9    ; 2 uses
  %.not706 = icmp ult i64 %i.ix, %i.ii, !nosanitize !9
  br i1 %.not706, label %bb.bo, label %bb.bp, !prof !18, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @48, i64 %i.ii, i64 %i.ix) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bp:                                            ; preds = %bb.bn
  %i.iy = getelementptr inbounds nuw [12 x i8], ptr %.0.i525, i64 %i.iv ; 2 uses
  %.sroa.0109.0.copyload = load <2 x float>, ptr %i.iy, align 4
  %.sroa.2110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %.sroa.2110.0.copyload = load float, ptr %.sroa.2110.0..sroa_idx, align 4
  %i.iz = fsub <2 x float> %.sroa.0109.0.copyload, %.sroa.0113.0.copyload
  %i.ja = fsub float %.sroa.2110.0.copyload, %.sroa.5115.0.copyload
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ho, i64 3
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !59
  %i.jd = zext i8 %i.jc to i64                    ; 2 uses
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %.0.i524, i64 %i.jd ; 3 uses
  %i.jf = shl nuw nsw i64 %i.jd, 4
  %i.jg = ptrtoint ptr %.0.i524 to i64, !nosanitize !9 ; 6 uses
  %i.jh = add i64 %i.jf, %i.jg, !nosanitize !9    ; 3 uses
  %i.ji = icmp ne ptr %.0.i524, null, !nosanitize !9 ; 2 uses
  %i.jj = icmp eq i64 %i.jh, 0
  %i.jk = xor i1 %i.ji, %i.jj
  %i.jl = icmp uge i64 %i.jh, %i.jg, !nosanitize !9
  %i.jm = and i1 %i.jl, %i.jk, !nosanitize !9
  br i1 %i.jm, label %bb.br, label %bb.bq, !prof !10, !nosanitize !9

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @49, i64 %i.jg, i64 %i.jh) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.br:                                            ; preds = %bb.bp
  %i.jn = ptrtoint ptr %i.je to i64, !nosanitize !9 ; 2 uses
  %i.jo = and i64 %i.jn, 3, !nosanitize !9
  %i.jp = icmp eq i64 %i.jo, 0, !nosanitize !9
  %i.jq = and i1 %i.ji, %i.jp
  br i1 %i.jq, label %bb.bt, label %bb.bs, !prof !10, !nosanitize !9

bb.bs:                                            ; preds = %bb.br
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @50, i64 %i.jn) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bt:                                            ; preds = %bb.br
  %.sroa.0100.0.copyload = load <2 x float>, ptr %i.je, align 4, !tbaa !17 ; 4 uses
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %.sroa.5102.0.copyload = load float, ptr %.sroa.5102.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ho, i64 7
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !59
  %i.jt = zext i8 %i.js to i64                    ; 2 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %.0.i524, i64 %i.jt ; 3 uses
  %i.jv = shl nuw nsw i64 %i.jt, 4
  %i.jw = add i64 %i.jv, %i.jg, !nosanitize !9    ; 2 uses
  %.not707 = icmp ult i64 %i.jw, %i.jg, !nosanitize !9
  br i1 %.not707, label %bb.bu, label %bb.bv, !prof !18, !nosanitize !9

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @51, i64 %i.jg, i64 %i.jw) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bv:                                            ; preds = %bb.bt
  %i.jx = ptrtoint ptr %i.ju to i64, !nosanitize !9 ; 2 uses
  %i.jy = and i64 %i.jx, 3, !nosanitize !9
  %i.jz = icmp eq i64 %i.jy, 0, !nosanitize !9
  br i1 %i.jz, label %bb.bx, label %bb.bw, !prof !10, !nosanitize !9

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @52, i64 %i.jx) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bx:                                            ; preds = %bb.bv
  %.sroa.098.0.copyload = load <2 x float>, ptr %i.ju, align 4, !tbaa !17 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %.sroa.03.0.vec.extract.i562 = extractelement <2 x float> %.sroa.0100.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i564 = extractelement <2 x float> %.sroa.0100.0.copyload, i64 1
  %.sroa.03.0.vec.extract.i566 = extractelement <2 x float> %.sroa.098.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i568 = extractelement <2 x float> %.sroa.098.0.copyload, i64 1
  %i.ka = shufflevector <2 x float> %.sroa.0123.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kb = shufflevector <2 x float> %.sroa.098.0.copyload, <2 x float> %.sroa.0100.0.copyload, <2 x i32> <i32 3, i32 0>
  %i.kc = fmul <2 x float> %i.ka, %i.kb
  %i.kd = shufflevector <2 x float> %.sroa.0100.0.copyload, <2 x float> %.sroa.098.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ke = fmul <2 x float> %.sroa.0123.0.copyload, %i.kd
  %i.kf = fadd <2 x float> %i.kc, %i.ke
  %i.kg = insertelement <2 x float> poison, float %.sroa.7127.0.copyload, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = insertelement <2 x float> poison, float %.sroa.5102.0.copyload, i64 0
  %i.kj = insertelement <2 x float> %i.ki, float %.sroa.5.0.copyload, i64 1
  %i.kk = fmul <2 x float> %i.kh, %i.kj
  %i.kl = fadd <2 x float> %i.kk, %i.kf           ; 4 uses
  %i.km = fmul <2 x float> %.sroa.07.0.i.i, %i.iz ; 2 uses
  %shift786 = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop787 = fadd <2 x float> %i.km, %shift786
  %i.kn = extractelement <2 x float> %foldExtExtBinop787, i64 0
  %i.ko = fmul float %.sroa.5.0.i.i, %i.ja
  %i.kp = fadd float %i.ko, %i.kn
  %i.kq = extractelement <2 x float> %i.kl, i64 0 ; 4 uses
  %i.kr = extractelement <2 x float> %i.kl, i64 1 ; 2 uses
  %i.ks = fmul float %i.kq, %i.kr
  %i.kt = fcmp olt float %i.ks, 0.000000e+00
  %i.ku = fmul float %i.kp, %i.kq
  %i.kv = fcmp ogt float %i.ku, 0.000000e+00
  %or.cond = select i1 %i.kt, i1 %i.kv, i1 false
  br i1 %or.cond, label %bb.by, label %.critedge491

bb.by:                                            ; preds = %bb.bx
  %i.kw = fmul <2 x float> %i.kl, %i.kl           ; 2 uses
  %i.kx = extractelement <2 x float> %i.kw, i64 0 ; 2 uses
  %i.ky = extractelement <2 x float> %i.kw, i64 1 ; 2 uses
  %i.kz = fcmp ogt float %i.kx, %i.ky
  %i.la = select i1 %i.kz, float %i.kx, float %i.ky
  %i.lb = fmul <2 x float> %.sroa.0123.0.copyload, %.sroa.0123.0.copyload ; 2 uses
  %shift789 = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop790 = fadd <2 x float> %i.lb, %shift789
  %i.lc = extractelement <2 x float> %foldExtExtBinop790, i64 0
  %i.ld = fmul float %.sroa.7127.0.copyload, %.sroa.7127.0.copyload
  %i.le = fadd float %i.ld, %i.lc
  %i.lf = fmul float %i.le, 2.500000e-05
  %i.lg = fcmp ult float %i.la, %i.lf
  br i1 %i.lg, label %.critedge491, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lh = fsub float %i.kq, %i.kr
  %i.li = fdiv float %i.kq, %i.lh                 ; 4 uses
  %i.lj = fsub float 1.000000e+00, %i.li          ; 3 uses
  %i.lk = fmul float %.sroa.5102.0.copyload, %i.lj
  %i.ll = fmul float %.sroa.03.0.vec.extract.i562, %i.lj
  %i.lm = fmul float %.sroa.03.0.vec.extract.i566, %i.li
  %i.ln = fadd float %i.lm, %i.ll                 ; 3 uses
  %i.lo = fmul float %.sroa.03.4.vec.extract.i564, %i.lj
  %i.lp = fmul float %.sroa.03.4.vec.extract.i568, %i.li
  %i.lq = fadd float %i.lp, %i.lo                 ; 3 uses
  %i.lr = fmul float %.sroa.5.0.copyload, %i.li
  %i.ls = fadd float %i.lr, %i.lk                 ; 3 uses
  %i.lt = fmul float %i.ln, %i.ln
  %i.lu = fmul float %i.lq, %i.lq
  %i.lv = fadd float %i.lt, %i.lu
  %i.lw = fmul float %i.ls, %i.ls
  %i.lx = fadd float %i.lw, %i.lv                 ; 2 uses
  %i.ly = fcmp ogt float %i.lx, f0x057A0000
  br i1 %i.ly, label %bb.ca, label %b3Normalize.exit

bb.ca:                                            ; preds = %bb.bz
  %sqrt = call float @llvm.sqrt.f32(float %i.lx)
  %i.lz = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ma = fmul float %i.ln, %i.lz
  %.sroa.07.0.vec.insert.i = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.mb = fmul float %i.lq, %i.lz
  %.sroa.07.4.vec.insert.i = insertelement <2 x float> %.sroa.07.0.vec.insert.i, float %i.mb, i64 1
  %i.mc = fmul float %i.ls, %i.lz
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.bz, %bb.ca
  %.sroa.07.0.i = phi <2 x float> [ %.sroa.07.4.vec.insert.i, %bb.ca ], [ zeroinitializer, %bb.bz ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.mc, %bb.ca ], [ 0.000000e+00, %bb.bz ] ; 2 uses
  %i.md = fsub float %.sroa.5130.0.copyload, %.sroa.5115.0.copyload
  %i.me = fsub <2 x float> %.sroa.0128.0.copyload, %.sroa.0113.0.copyload
  %i.mf = fmul <2 x float> %i.me, %.sroa.07.0.i   ; 2 uses
  %shift792 = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop793 = fadd <2 x float> %i.mf, %shift792
  %i.mg = extractelement <2 x float> %foldExtExtBinop793, i64 0
  %i.mh = fmul float %i.md, %.sroa.5.0.i
  %i.mi = fadd float %i.mh, %i.mg                 ; 3 uses
  %i.mj = fcmp ogt float %i.mi, %i.dg
  br i1 %i.mj, label %.critedge489, label %bb.cb

bb.cb:                                            ; preds = %b3Normalize.exit
  %i.mk = load float, ptr %10, align 4, !tbaa !47
  %i.ml = fsub float %i.mk, %i.mi
  %i.mm = call float @llvm.fabs.f32(float %i.ml)
  %i.mn = fcmp olt float %i.mm, %i.ap
  br i1 %i.mn, label %bb.cc, label %.critedge491

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #9
  %i.mo = fneg <2 x float> %.sroa.07.0.i
  %i.mp = fneg float %.sroa.5.0.i
  store <2 x float> %i.mo, ptr %18, align 8, !tbaa !17
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store float %i.mp, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !17
  %i.mq = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %i.hb, ptr %i.mq, align 8, !tbaa !38
  %i.mr = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 %i.hm, ptr %i.mr, align 4, !tbaa !39
  %i.ms = getelementptr inbounds nuw i8, ptr %18, i64 12
  store float %i.mi, ptr %i.ms, align 4, !tbaa !37
  %i.mt = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 4, ptr %i.mt, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #9
  %i.mu = load i64, ptr %10, align 4
  store i64 %i.mu, ptr %19, align 8
  call fastcc void @b3CollideTriangleAndHullEdges(ptr noundef %0, <2 x float> %.sroa.0128.0.copyload, float %.sroa.5130.0.copyload, <2 x float> %.sroa.0123.0.copyload, float %.sroa.7127.0.copyload, ptr noundef %9, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %18, ptr noundef %19)
  %i.mv = load i32, ptr %i.f, align 8, !tbaa !16
  %i.mw = icmp slt i32 %i.mv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  br i1 %i.mw, label %.critedge491, label %.critedge489

.critedge491:                                     ; preds = %bb.by, %bb.cc, %bb.cb, %bb.bx
  store i32 0, ptr %10, align 4
  store i32 0, ptr %i.bf, align 4
  br label %bb.cu

bb.cd:                                            ; preds = %bb.aa
  %i.mx = load i32, ptr %i.cv, align 4, !tbaa !54, !noalias !101 ; 2 uses
  %i.my = icmp eq i32 %i.mx, 0
  br i1 %i.my, label %b3GetHullPoints.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mz = sext i32 %i.mx to i64                   ; 2 uses
  %i.na = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.mz), !nosanitize !9 ; 2 uses
  %i.nb = extractvalue { i64, i1 } %i.na, 1, !nosanitize !9
  br i1 %i.nb, label %bb.cf, label %bb.cg, !prof !18, !nosanitize !9

bb.cf:                                            ; preds = %bb.ce
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @102, i64 %i.ar, i64 %i.mz) #8, !noalias !101, !nosanitize !9
  unreachable, !nosanitize !9

bb.cg:                                            ; preds = %bb.ce
  %i.nc = extractvalue { i64, i1 } %i.na, 0, !nosanitize !9
  %i.nd = inttoptr i64 %i.nc to ptr
  br label %b3GetHullPoints.exit.i

b3GetHullPoints.exit.i:                           ; preds = %bb.cg, %bb.cd
  %.0.i.i = phi ptr [ %i.nd, %bb.cg ], [ null, %bb.cd ] ; 3 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.cd, align 8, !tbaa !17, !noalias !101
  %.sroa.6.8.vec.extract.i = load float, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !17, !noalias !101
  %i.ne = fneg <2 x float> %.sroa.0.0.copyload.i
  %i.nf = fneg float %.sroa.6.8.vec.extract.i
  %i.ng = call i32 @b3FindHullSupportVertex(ptr noundef nonnull %9, <2 x float> %i.ne, float %i.nf) #9, !noalias !101 ; 3 uses
  %i.nh = sext i32 %i.ng to i64                   ; 2 uses
  %i.ni = mul nsw i64 %i.nh, 12
  %i.nj = ptrtoint ptr %.0.i.i to i64, !nosanitize !9 ; 3 uses
  %i.nk = add i64 %i.ni, %i.nj, !nosanitize !9    ; 3 uses
  %i.nl = icmp ne ptr %.0.i.i, null, !nosanitize !9 ; 2 uses
  %i.nm = icmp eq i64 %i.nk, 0
  %i.nn = xor i1 %i.nl, %i.nm
  %i.no = icmp uge i64 %i.nk, %i.nj, !nosanitize !9
  %i.np = icmp slt i32 %i.ng, 0
  %i.nq = xor i1 %i.np, %i.no
  %i.nr = and i1 %i.nn, %i.nq, !nosanitize !9
  br i1 %i.nr, label %bb.ci, label %bb.ch, !prof !10, !nosanitize !9

bb.ch:                                            ; preds = %b3GetHullPoints.exit.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @162, i64 %i.nj, i64 %i.nk) #8, !noalias !101, !nosanitize !9
  unreachable, !nosanitize !9

bb.ci:                                            ; preds = %b3GetHullPoints.exit.i
  %i.ns = getelementptr inbounds [12 x i8], ptr %.0.i.i, i64 %i.nh
  %i.nt = ptrtoint ptr %i.ns to i64, !nosanitize !9 ; 2 uses
  %i.nu = and i64 %i.nt, 3, !nosanitize !9
  %i.nv = icmp eq i64 %i.nu, 0, !nosanitize !9
  %i.nw = and i1 %i.nl, %i.nv
  br i1 %i.nw, label %b3QueryTriangleFace.exit, label %bb.cj, !prof !10, !nosanitize !9

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @163, i64 %i.nt) #8, !noalias !101, !nosanitize !9
  unreachable, !nosanitize !9

b3QueryTriangleFace.exit:                         ; preds = %bb.ci
  %i.nx = call fastcc float @b3CollideTriangleFace(ptr noundef %0, i32 noundef %1, ptr noundef %14, ptr noundef %9, i32 0, i32 %i.ng, ptr noundef %10, i1 noundef zeroext %11) ; 0 uses
  br label %.critedge489

bb.ck:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #9
  call fastcc void @b3QueryHullFace(ptr dead_on_unwind noalias writable align 4 %20, ptr noundef %14, ptr noundef %9)
  %i.ny = call fastcc float @b3CollideHullFace(ptr noundef %0, i32 noundef %1, ptr noundef %14, ptr noundef %9, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %20, ptr noundef %10, i1 noundef zeroext %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #9
  br label %.critedge489

bb.cl:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #9
  call fastcc void @b3QueryTriangleAndHullEdges(ptr dead_on_unwind noalias writable align 4 %21, ptr noundef %14, ptr noundef %9)
  %i.nz = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !38 ; 3 uses
  %.not459 = icmp eq i32 %i.oa, -1
  br i1 %.not459, label %bb.ct, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ob = sext i32 %i.oa to i64, !nosanitize !9   ; 4 uses
  %i.oc = icmp ult i32 %i.oa, 3
  br i1 %i.oc, label %bb.co, label %bb.cn, !prof !10, !nosanitize !9

bb.cn:                                            ; preds = %bb.cm
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @53, i64 %i.ob) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.co:                                            ; preds = %bb.cm
  %i.od = mul nuw nsw i64 %i.ob, 12               ; 2 uses
  %i.oe = ptrtoint ptr %12 to i64, !nosanitize !9 ; 3 uses
  %i.of = add i64 %i.od, %i.oe, !nosanitize !9    ; 2 uses
  %.not460 = icmp ult i64 %i.of, %i.oe, !nosanitize !9
  br i1 %.not460, label %bb.cp, label %bb.cq, !prof !18, !nosanitize !9

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @54, i64 %i.oe, i64 %i.of) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.cq:                                            ; preds = %bb.co
  %i.og = add i64 %i.od, %i.ca, !nosanitize !9    ; 2 uses
  %.not461 = icmp ult i64 %i.og, %i.ca, !nosanitize !9
  br i1 %.not461, label %bb.cr, label %bb.cs, !prof !18, !nosanitize !9

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @55, i64 %i.ca, i64 %i.og) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.cs:                                            ; preds = %bb.cq
  %i.oh = getelementptr inbounds nuw [12 x i8], ptr %13, i64 %i.ob ; 2 uses
  %i.oi = getelementptr inbounds nuw [12 x i8], ptr %12, i64 %i.ob ; 2 uses
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %.sroa.424.0.copyload = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !17
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.oi, align 4, !tbaa !17
  %.sroa.021.0.copyload = load <2 x float>, ptr %i.oh, align 4, !tbaa !17
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %.sroa.422.0.copyload = load float, ptr %.sroa.422.0..sroa_idx, align 4, !tbaa !17
  call fastcc void @b3CollideTriangleAndHullEdges(ptr noundef %0, <2 x float> %.sroa.023.0.copyload, float %.sroa.424.0.copyload, <2 x float> %.sroa.021.0.copyload, float %.sroa.422.0.copyload, ptr noundef %9, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %21, ptr noundef %10)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #9
  br label %.critedge489

bb.cu:                                            ; preds = %.critedge, %.critedge491, %bb.aw, %bb.aa
  store i8 0, ptr %i.dh, align 1, !tbaa !100
  %i.oj = load i32, ptr %i.cv, align 4, !tbaa !54, !noalias !102 ; 2 uses
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %b3GetHullPoints.exit.i600, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ol = sext i32 %i.oj to i64                   ; 2 uses
  %i.om = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.ol), !nosanitize !9 ; 2 uses
  %i.on = extractvalue { i64, i1 } %i.om, 1, !nosanitize !9
  br i1 %i.on, label %bb.cw, label %bb.cx, !prof !18, !nosanitize !9

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @102, i64 %i.ar, i64 %i.ol) #8, !noalias !102, !nosanitize !9
  unreachable, !nosanitize !9

bb.cx:                                            ; preds = %bb.cv
  %i.oo = extractvalue { i64, i1 } %i.om, 0, !nosanitize !9
  %i.op = inttoptr i64 %i.oo to ptr
  br label %b3GetHullPoints.exit.i600

b3GetHullPoints.exit.i600:                        ; preds = %bb.cx, %bb.cu
  %.0.i.i601 = phi ptr [ %i.op, %bb.cx ], [ null, %bb.cu ] ; 3 uses
  %.sroa.0.0.copyload.i602 = load <2 x float>, ptr %i.cd, align 8, !tbaa !17, !noalias !102 ; 2 uses
  %.sroa.6.0.copyload.i604 = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !17, !noalias !102 ; 2 uses
  %.sroa.6.8.vec.extract.i605 = extractelement <2 x float> %.sroa.6.0.copyload.i604, i64 0 ; 2 uses
  %i.oq = fneg <2 x float> %.sroa.0.0.copyload.i602
  %i.or = fneg float %.sroa.6.8.vec.extract.i605
  %i.os = call i32 @b3FindHullSupportVertex(ptr noundef nonnull %9, <2 x float> %i.oq, float %i.or) #9, !noalias !102 ; 4 uses
  %i.ot = sext i32 %i.os to i64                   ; 2 uses
  %i.ou = getelementptr inbounds [12 x i8], ptr %.0.i.i601, i64 %i.ot ; 3 uses
  %i.ov = mul nsw i64 %i.ot, 12
  %i.ow = ptrtoint ptr %.0.i.i601 to i64, !nosanitize !9 ; 3 uses
  %i.ox = add i64 %i.ov, %i.ow, !nosanitize !9    ; 3 uses
  %i.oy = icmp ne ptr %.0.i.i601, null, !nosanitize !9 ; 2 uses
  %i.oz = icmp eq i64 %i.ox, 0
  %i.pa = xor i1 %i.oy, %i.oz
  %i.pb = icmp uge i64 %i.ox, %i.ow, !nosanitize !9
  %i.pc = icmp slt i32 %i.os, 0
  %i.pd = xor i1 %i.pc, %i.pb
  %i.pe = and i1 %i.pa, %i.pd, !nosanitize !9
  br i1 %i.pe, label %bb.cz, label %bb.cy, !prof !10, !nosanitize !9

bb.cy:                                            ; preds = %b3GetHullPoints.exit.i600
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @162, i64 %i.ow, i64 %i.ox) #8, !noalias !102, !nosanitize !9
  unreachable, !nosanitize !9

bb.cz:                                            ; preds = %b3GetHullPoints.exit.i600
  %i.pf = ptrtoint ptr %i.ou to i64, !nosanitize !9 ; 2 uses
  %i.pg = and i64 %i.pf, 3, !nosanitize !9
  %i.ph = icmp eq i64 %i.pg, 0, !nosanitize !9
  %i.pi = and i1 %i.oy, %i.ph
  br i1 %i.pi, label %b3QueryTriangleFace.exit617, label %bb.da, !prof !10, !nosanitize !9

bb.da:                                            ; preds = %bb.cz
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @163, i64 %i.pf) #8, !noalias !102, !nosanitize !9
  unreachable, !nosanitize !9

b3QueryTriangleFace.exit617:                      ; preds = %bb.cz
  %.sroa.01.0.copyload.i610 = load <2 x float>, ptr %i.ou, align 4, !tbaa !17, !noalias !102
  %.sroa.4.0..sroa_idx.i611 = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.sroa.4.0.copyload.i612 = load float, ptr %.sroa.4.0..sroa_idx.i611, align 4, !tbaa !17, !noalias !102
  %i.pj = fmul <2 x float> %.sroa.0.0.copyload.i602, %.sroa.01.0.copyload.i610 ; 2 uses
  %shift795 = shufflevector <2 x float> %i.pj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop796 = fadd <2 x float> %i.pj, %shift795
  %i.pk = extractelement <2 x float> %foldExtExtBinop796, i64 0
  %i.pl = fmul float %.sroa.6.8.vec.extract.i605, %.sroa.4.0.copyload.i612
  %i.pm = fadd float %i.pl, %i.pk
  %.sroa.1.12.vec.extract.i.i615 = extractelement <2 x float> %.sroa.6.0.copyload.i604, i64 1
  %i.pn = fsub float %i.pm, %.sroa.1.12.vec.extract.i.i615 ; 5 uses
  %i.po = fcmp ogt float %i.pn, %i.dg
  br i1 %i.po, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %b3QueryTriangleFace.exit617
  store float %i.pn, ptr %10, align 4, !tbaa !47
  store i8 2, ptr %i.bf, align 4, !tbaa !46
  %i.pp = getelementptr inbounds nuw i8, ptr %10, i64 5
  store i8 0, ptr %i.pp, align 1, !tbaa !55
end_hunk_0
begin_hunk_1_@b3CollideTriangleAndHull:bb.a
bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #9
  call fastcc void @b3QueryTriangleAndHullEdges(ptr dead_on_unwind noalias writable align 4 %23, ptr noundef %14, ptr noundef %9)
  %i.qd = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !37 ; 4 uses
  %i.qf = fcmp ogt float %i.qe, %i.dg
  br i1 %i.qf, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store float %i.qe, ptr %10, align 4, !tbaa !47
  store i8 4, ptr %i.bf, align 4, !tbaa !46
  %i.qg = getelementptr inbounds nuw i8, ptr %10, i64 5
  %i.qh = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !38
  %i.qj = trunc i32 %i.qi to i8
  store i8 %i.qj, ptr %i.qg, align 1, !tbaa !55
  %i.qk = getelementptr inbounds nuw i8, ptr %10, i64 6
  %i.ql = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !39
  %i.qn = trunc i32 %i.qm to i8
  store i8 %i.qn, ptr %i.qk, align 2, !tbaa !56
  br label %bb.eb

bb.dg:                                            ; preds = %bb.de
  %.sroa.014.0.copyload = load <2 x float>, ptr %22, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.215.0.copyload = load float, ptr %.sroa.215.0..sroa_idx, align 8
  %i.qo = fmul <2 x float> %.sroa.07.0.i.i, %.sroa.014.0.copyload ; 2 uses
  %shift798 = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop799 = fadd <2 x float> %i.qo, %shift798
  %i.qp = extractelement <2 x float> %foldExtExtBinop799, i64 0
  %i.qq = fmul float %.sroa.5.0.i.i, %.sroa.215.0.copyload
  %i.qr = fadd float %i.qq, %i.qp
  %i.qs = fcmp olt float %i.qr, -2.500000e-01
  %i.qt = fcmp ult float %i.pt, %i.pn
  %brmerge = select i1 %i.qt, i1 true, i1 %i.qs
  br i1 %brmerge, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qu = call fastcc float @b3CollideHullFace(ptr noundef %0, i32 noundef %1, ptr noundef %14, ptr noundef %9, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %22, ptr noundef %10, i1 noundef zeroext %11)
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.qv = call fastcc float @b3CollideTriangleFace(ptr noundef %0, i32 noundef %1, ptr noundef %14, ptr noundef %9, i32 0, i32 %i.os, ptr noundef %10, i1 noundef zeroext %11)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.0403 = phi float [ %i.qu, %bb.dh ], [ %i.qv, %bb.di ]
  %i.qw = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !38 ; 3 uses
  %.not474 = icmp eq i32 %i.qx, -1
  %.pre715 = load i32, ptr %i.f, align 8, !tbaa !16 ; 4 uses
  br i1 %.not474, label %bb.dt, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.qy = fcmp ogt float %i.pn, %i.pt
  %i.qz = select i1 %i.qy, float %i.pn, float %i.pt
  %i.ra = icmp eq i32 %.pre715, 0
  %i.rb = fcmp ogt float %i.qe, %i.qz
  %or.cond494 = and i1 %i.rb, %i.ra
  br i1 %or.cond494, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rc = icmp eq i32 %.pre715, 1
  %i.rd = fadd float %i.ap, %.0403
  %i.re = fcmp ogt float %i.qe, %i.rd
  %or.cond705 = select i1 %i.rc, i1 %i.re, i1 false
  br i1 %or.cond705, label %bb.dm, label %bb.dt

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.rf = sext i32 %i.qx to i64, !nosanitize !9   ; 4 uses
  %i.rg = icmp ult i32 %i.qx, 3
  br i1 %i.rg, label %bb.do, label %bb.dn, !prof !10, !nosanitize !9

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @56, i64 %i.rf) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.do:                                            ; preds = %bb.dm
  %i.rh = mul nuw nsw i64 %i.rf, 12               ; 2 uses
  %i.ri = ptrtoint ptr %12 to i64, !nosanitize !9 ; 3 uses
  %i.rj = add i64 %i.rh, %i.ri, !nosanitize !9    ; 2 uses
  %.not475 = icmp ult i64 %i.rj, %i.ri, !nosanitize !9
  br i1 %.not475, label %bb.dp, label %bb.dq, !prof !18, !nosanitize !9

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @57, i64 %i.ri, i64 %i.rj) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dq:                                            ; preds = %bb.do
  %i.rk = add i64 %i.rh, %i.ca, !nosanitize !9    ; 2 uses
  %.not476 = icmp ult i64 %i.rk, %i.ca, !nosanitize !9
  br i1 %.not476, label %bb.dr, label %bb.ds, !prof !18, !nosanitize !9

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @58, i64 %i.ca, i64 %i.rk) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ds:                                            ; preds = %bb.dq
  %i.rl = getelementptr inbounds nuw [12 x i8], ptr %13, i64 %i.rf ; 2 uses
  %i.rm = getelementptr inbounds nuw [12 x i8], ptr %12, i64 %i.rf ; 2 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %.sroa.411.0.copyload = load float, ptr %.sroa.411.0..sroa_idx, align 4, !tbaa !17
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.rm, align 4, !tbaa !17
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.rl, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !17
  store i32 0, ptr %i.f, align 8, !tbaa !16
  call fastcc void @b3CollideTriangleAndHullEdges(ptr noundef %0, <2 x float> %.sroa.010.0.copyload, float %.sroa.411.0.copyload, <2 x float> %.sroa.09.0.copyload, float %.sroa.4.0.copyload, ptr noundef %9, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %23, ptr noundef %10)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !16
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dl, %bb.ds, %bb.dj
  %i.rn = phi i32 [ %.pre715, %bb.dl ], [ %.pre, %bb.ds ], [ %.pre715, %bb.dj ]
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %bb.du, label %bb.eb

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #9
  store <2 x float> %2, ptr %24, align 16, !tbaa !17
  %.sroa.8.0..sroa_idx401 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store float %3, ptr %.sroa.8.0..sroa_idx401, align 8, !tbaa !17
  %i.rp = getelementptr inbounds nuw i8, ptr %24, i64 12
  store <2 x float> %4, ptr %i.rp, align 4, !tbaa !17
  %.sroa.7386.0..sroa_idx389 = getelementptr inbounds nuw i8, ptr %24, i64 20
  store float %5, ptr %.sroa.7386.0..sroa_idx389, align 4, !tbaa !17
  %i.rq = getelementptr inbounds nuw i8, ptr %24, i64 24
  store <2 x float> %6, ptr %i.rq, align 8, !tbaa !17
  %.sroa.7374.0..sroa_idx377 = getelementptr inbounds nuw i8, ptr %24, i64 32
  store float %7, ptr %.sroa.7374.0..sroa_idx377, align 16, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #9
  %i.rr = getelementptr inbounds nuw i8, ptr %25, i64 56
  store i64 0, ptr %i.rr, align 8
  store ptr %24, ptr %25, align 8, !tbaa !26
  %.sroa.2632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 3, ptr %.sroa.2632.0..sroa_idx, align 8, !tbaa !27
  %.sroa.3633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 12
  store float 0.000000e+00, ptr %.sroa.3633.0..sroa_idx, align 4, !tbaa !17
  %i.rs = getelementptr inbounds nuw i8, ptr %9, i64 100
  %i.rt = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ru = load i32, ptr %i.rs, align 4, !tbaa !103
  store ptr %.0.i525, ptr %i.rt, align 8, !tbaa !26
  %.sroa.2630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i32 %i.ru, ptr %.sroa.2630.0..sroa_idx, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 28
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !17
  %i.rv = getelementptr inbounds nuw i8, ptr %25, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.rv, ptr noundef nonnull align 4 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %27, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef null, i32 noundef 0) #9
  %i.rw = getelementptr inbounds nuw i8, ptr %27, i64 36 ; 2 uses
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !32
  %i.ry = fcmp ogt float %i.rx, 0.000000e+00
  br i1 %i.ry, label %bb.dv, label %bb.ea

bb.dv:                                            ; preds = %bb.du
  store i32 1, ptr %i.f, align 8, !tbaa !16
  %i.rz = call fastcc i32 @b3GetTriangleFeature(ptr noundef nonnull %26)
  store i32 %i.rz, ptr %i.g, align 8, !tbaa !19
  %i.sa = getelementptr inbounds nuw i8, ptr %27, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.sa, i64 12, i1 false), !tbaa.struct !33
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !20 ; 3 uses
  %i.sd = icmp ne ptr %i.sc, null, !nosanitize !9
  %i.se = ptrtoint ptr %i.sc to i64, !nosanitize !9 ; 2 uses
  %i.sf = and i64 %i.se, 3, !nosanitize !9
  %i.sg = icmp eq i64 %i.sf, 0, !nosanitize !9
  %i.sh = and i1 %i.sd, %i.sg, !nosanitize !9
  br i1 %i.sh, label %bb.dx, label %bb.dw, !prof !10, !nosanitize !9

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @59, i64 %i.se) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dx:                                            ; preds = %bb.dv
  %i.si = getelementptr inbounds nuw i8, ptr %27, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sc, ptr noundef nonnull align 4 dereferenceable(12) %i.si, i64 12, i1 false), !tbaa.struct !33
  %i.sj = load ptr, ptr %i.sb, align 8, !tbaa !20 ; 4 uses
  %i.sk = icmp ne ptr %i.sj, null, !nosanitize !9
  %i.sl = ptrtoint ptr %i.sj to i64, !nosanitize !9 ; 2 uses
  %i.sm = and i64 %i.sl, 3, !nosanitize !9
  %i.sn = icmp eq i64 %i.sm, 0, !nosanitize !9
  %i.so = and i1 %i.sk, %i.sn, !nosanitize !9
  br i1 %i.so, label %bb.dz, label %bb.dy, !prof !10, !nosanitize !9

bb.dy:                                            ; preds = %bb.dx
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @60, i64 %i.sl) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dz:                                            ; preds = %bb.dx
  %i.sp = load float, ptr %i.rw, align 4, !tbaa !32
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 12
  store float %i.sp, ptr %i.sq, align 4, !tbaa !23
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  store i32 0, ptr %i.sr, align 4, !tbaa !24
  br label %bb.ea

bb.ea:                                            ; preds = %bb.du, %bb.dz
  store i32 0, ptr %10, align 4
  store i32 0, ptr %i.bf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #9
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dt, %bb.ea, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #9
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #9
  br label %.critedge489

.critedge489:                                     ; preds = %bb.db, %bb.ec, %bb.ai, %bb.ar, %bb.av, %bb.af, %bb.cc, %b3Normalize.exit, %bb.ct, %bb.ck, %b3QueryTriangleFace.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.ed

bb.ed:                                            ; preds = %bb.m, %.critedge489, %bb.j, %bb.c
  ret void
}

declare i32 @b3FindHullSupportVertex(ptr noundef, <2 x float>, float) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc float @b3CollideTriangleFace(ptr noundef nonnull %0, i32 noundef range(i32 4, -2147483648) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 %.16.val, i32 %.20.val, ptr noundef nonnull %4, i1 noundef zeroext %5) unnamed_addr #0 !func_sanitize !60 {
bb.a:
  %6 = alloca [128 x %struct.b3ClipVertex], align 16 ; 5 uses
  %7 = alloca [128 x %struct.b3ClipVertex], align 16 ; 3 uses
  %8 = alloca [3 x %struct.b3Vec3], align 16      ; 7 uses
  %9 = alloca [3 x %struct.b3Vec3], align 16      ; 7 uses
  %i.a = ptrtoint ptr %3 to i64, !nosanitize !9   ; 8 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @125, i64 %i.a) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %b3GetHullFaces.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = sext i32 %i.e to i64                     ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.a, i64 %i.g), !nosanitize !9 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1, !nosanitize !9
  br i1 %i.i, label %bb.e, label %bb.f, !prof !18, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @126, i64 %i.a, i64 %i.g) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.j = extractvalue { i64, i1 } %i.h, 0, !nosanitize !9
  %i.k = inttoptr i64 %i.j to ptr
  br label %b3GetHullFaces.exit

b3GetHullFaces.exit:                              ; preds = %bb.c, %bb.f
  %.0.i = phi ptr [ %i.k, %bb.f ], [ null, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.m = load i32, ptr %i.l, align 4, !tbaa !52
  %.fr373 = freeze i32 %i.m                       ; 2 uses
  %i.n = icmp eq i32 %.fr373, 0
  br i1 %i.n, label %b3GetHullEdges.exit, label %bb.g

bb.g:                                             ; preds = %b3GetHullFaces.exit
  %i.o = sext i32 %.fr373 to i64                  ; 2 uses
  %i.p = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.a, i64 %i.o), !nosanitize !9 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1, !nosanitize !9
  br i1 %i.q, label %bb.h, label %bb.i, !prof !18, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @99, i64 %i.a, i64 %i.o) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.r = extractvalue { i64, i1 } %i.p, 0, !nosanitize !9
  %i.s = inttoptr i64 %i.r to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %b3GetHullFaces.exit, %bb.i
  %.0.i139 = phi ptr [ %i.s, %bb.i ], [ null, %b3GetHullFaces.exit ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.u = load i32, ptr %i.t, align 4, !tbaa !54
  %.fr376 = freeze i32 %i.u                       ; 2 uses
  %i.v = icmp eq i32 %.fr376, 0
  br i1 %i.v, label %b3GetHullPoints.exit, label %bb.j

bb.j:                                             ; preds = %b3GetHullEdges.exit
  %i.w = sext i32 %.fr376 to i64                  ; 2 uses
  %i.x = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.a, i64 %i.w), !nosanitize !9 ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1, !nosanitize !9
  br i1 %i.y, label %bb.k, label %bb.l, !prof !18, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @102, i64 %i.a, i64 %i.w) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.z = extractvalue { i64, i1 } %i.x, 0, !nosanitize !9
  %i.aa = inttoptr i64 %i.z to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullEdges.exit, %bb.l
  %.0.i140 = phi ptr [ %i.aa, %bb.l ], [ null, %b3GetHullEdges.exit ] ; 3 uses
  %i.ab = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.ac = and i64 %i.ab, 3, !nosanitize !9
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !9
  br i1 %i.ad, label %bb.n, label %bb.m, !prof !10, !nosanitize !9

bb.m:                                             ; preds = %b3GetHullPoints.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @104, i64 %i.ab) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %b3GetHullPoints.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.ae, align 4, !tbaa !17 ; 7 uses
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.829.0.copyload = load <2 x float>, ptr %.sroa.829.0..sroa_idx, align 4, !tbaa !17 ; 5 uses
  %.sroa.829.8.vec.extract = extractelement <2 x float> %.sroa.829.0.copyload, i64 0 ; 3 uses
  %i.af = tail call i32 @b3FindIncidentFace(ptr noundef nonnull %3, <2 x float> %.sroa.024.0.copyload, float %.sroa.829.8.vec.extract, i32 noundef %.20.val) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.0.i, i64 %i.ag ; 3 uses
  %i.ai = ptrtoint ptr %.0.i to i64, !nosanitize !9 ; 3 uses
  %i.aj = add i64 %i.ag, %i.ai, !nosanitize !9    ; 3 uses
  %i.ak = icmp ne ptr %.0.i, null, !nosanitize !9 ; 2 uses
  %i.al = icmp eq i64 %i.aj, 0
  %i.am = xor i1 %i.ak, %i.al
  %i.an = icmp uge i64 %i.aj, %i.ai, !nosanitize !9
  %i.ao = icmp slt i32 %i.af, 0
  %i.ap = xor i1 %i.ao, %i.an
  %i.aq = and i1 %i.am, %i.ap, !nosanitize !9
  br i1 %i.aq, label %bb.p, label %bb.o, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @105, i64 %i.ai, i64 %i.aj) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  br i1 %i.ak, label %bb.r, label %bb.q, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  %i.ar = ptrtoint ptr %i.ah to i64, !nosanitize !9
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @107, i64 %i.ar) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.as = load i8, ptr %i.ah, align 1, !tbaa !63  ; 4 uses
  %i.at = ptrtoint ptr %.0.i139 to i64, !nosanitize !9 ; 10 uses
  %.not374 = icmp eq ptr %.0.i139, null, !nosanitize !9
  %i.au = ptrtoint ptr %.0.i140 to i64            ; 4 uses
  %i.av = ptrtoint ptr %6 to i64                  ; 3 uses
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.024.0.copyload, i64 0
  %.sroa.1.12.vec.extract.i = extractelement <2 x float> %.sroa.829.0.copyload, i64 1
  br i1 %.not374, label %.split.us, label %.split, !prof !18

.split.us:                                        ; preds = %bb.r
  %i.aw = zext i8 %i.as to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = icmp eq i8 %i.as, 0
  br i1 %i.ay, label %.split272.us, label %.split269.us, !prof !10, !nosanitize !9

.split:                                           ; preds = %bb.r
  %.not377 = icmp eq ptr %.0.i140, null
  br i1 %.not377, label %.split.split.us, label %.split.split.preheader, !prof !18

.split.split.preheader:                           ; preds = %.split
  %i.az = zext i8 %i.as to i32
  br label %.split.split

.split.split.us:                                  ; preds = %.split
  %i.ba = zext i8 %i.as to i64                    ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = add i64 %i.bb, %i.at, !nosanitize !9    ; 2 uses
  %.not378 = icmp ult i64 %i.bc, %i.at, !nosanitize !9
  br i1 %.not378, label %.split269.us, label %bb.s, !prof !18, !nosanitize !9

bb.s:                                             ; preds = %.split.split.us
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0.i139, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !64
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = add i64 %i.bg, %i.at, !nosanitize !9    ; 2 uses
  %.not43.us = icmp ult i64 %i.bh, %i.at, !nosanitize !9
  br i1 %.not43.us, label %.split283.us, label %bb.t, !prof !18, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0.i139, i64 %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !58  ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = mul nuw nsw i64 %i.bl, 12               ; 2 uses
  %i.bn = icmp eq i8 %i.bk, 0
  %i.bo = icmp uge i64 %i.bm, %i.au, !nosanitize !9
  %i.bp = and i1 %i.bo, %i.bn, !nosanitize !9
  br i1 %i.bp, label %.split297, label %.split293.us.a, !prof !10, !nosanitize !9

.split.split:                                     ; preds = %.split.split.preheader, %bb.z
  %indvars.iv = phi i64 [ 0, %.split.split.preheader ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %.0108 = phi i32 [ %i.az, %.split.split.preheader ], [ %i.bv, %bb.z ] ; 2 uses
  %i.bq = zext nneg i32 %.0108 to i64             ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = add i64 %i.br, %i.at, !nosanitize !9    ; 2 uses
  %.not379 = icmp ult i64 %i.bs, %i.at, !nosanitize !9
  br i1 %.not379, label %.split269.us, label %bb.u, !prof !18, !nosanitize !9

.split269.us:                                     ; preds = %.split.split, %.split.split.us, %.split.us
  %.us-phi270 = phi i64 [ %i.ax, %.split.us ], [ %i.bc, %.split.split.us ], [ %i.bs, %.split.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @108, i64 %i.at, i64 %.us-phi270) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split272.us:                                     ; preds = %.split.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @109, i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %.split.split
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0.i139, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64  ; 3 uses
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = zext i8 %i.bu to i64                    ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = add i64 %i.bx, %i.at, !nosanitize !9    ; 2 uses
  %.not43 = icmp ult i64 %i.by, %i.at, !nosanitize !9
  br i1 %.not43, label %.split283.us, label %bb.v, !prof !18, !nosanitize !9

.split283.us:                                     ; preds = %bb.u, %bb.s
  %.us-phi284 = phi i64 [ %i.bh, %bb.s ], [ %i.by, %bb.u ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @110, i64 %i.at, i64 %.us-phi284) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0.i139, i64 %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !58
  %i.cc = zext i8 %i.cb to i64                    ; 2 uses
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %.0.i140, i64 %i.cc ; 3 uses
  %i.ce = mul nuw nsw i64 %i.cc, 12
  %i.cf = add i64 %i.ce, %i.au, !nosanitize !9    ; 2 uses
  %.not380 = icmp ult i64 %i.cf, %i.au, !nosanitize !9
  br i1 %.not380, label %.split293.us.a, label %bb.w, !prof !18, !nosanitize !9

.split293.us.a:                                   ; preds = %bb.v, %bb.t
  %.us-phi295.a = phi i64 [ %i.bm, %bb.t ], [ %i.cf, %bb.v ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.au, i64 %.us-phi295.a) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  %i.cg = ptrtoint ptr %i.cd to i64, !nosanitize !9 ; 2 uses
  %i.ch = and i64 %i.cg, 3, !nosanitize !9
  %i.ci = icmp eq i64 %i.ch, 0, !nosanitize !9
  br i1 %i.ci, label %bb.x, label %.split297, !prof !10, !nosanitize !9

.split297:                                        ; preds = %bb.w, %bb.t
  %.us-phi298 = phi i64 [ 0, %bb.t ], [ %i.cg, %bb.w ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @112, i64 %.us-phi298) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  %i.cj = mul nuw nsw i64 %indvars.iv, 20
  %i.ck = add i64 %i.cj, %i.av, !nosanitize !9    ; 2 uses
  %.not133 = icmp ult i64 %i.ck, %i.av, !nosanitize !9
  br i1 %.not133, label %bb.y, label %bb.z, !prof !18, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @113, i64 %i.av, i64 %i.ck) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %indvars.iv ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %.sroa.046.0.copyload = load <2 x float>, ptr %i.cd, align 4, !tbaa !17 ; 2 uses
  store <2 x float> %.sroa.046.0.copyload, ptr %i.cl, align 4, !tbaa !17
  %.sroa.5.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store float %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx48, align 4, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = fmul float %.sroa.829.8.vec.extract, %.sroa.5.0.copyload
  %i.co = fmul <2 x float> %.sroa.024.0.copyload, %.sroa.046.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.co, %shift
  %i.cp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cq = fadd float %i.cn, %i.cp
  %i.cr = fsub float %i.cq, %.sroa.1.12.vec.extract.i
  store float %i.cr, ptr %i.cm, align 4, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ct = call i32 @b3MakeFeaturePair(i32 noundef 1, i32 noundef %.0108, i32 noundef 1, i32 noundef %i.bv) #9
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = load i8, ptr %i.ah, align 1, !tbaa !63
  %i.cv = icmp ne i8 %i.bu, %i.cu
  %i.cw = icmp ne i64 %indvars.iv, 127
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %i.cx, label %.split.split, label %bb.aa, !llvm.loop !104

bb.aa:                                            ; preds = %bb.z
  %i.cy = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !33
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull align 4 dereferenceable(12) %i.cz, i64 12, i1 false), !tbaa.struct !33
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dc, ptr noundef nonnull align 4 dereferenceable(12) %i.db, i64 12, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.dd, i64 12, i1 false), !tbaa.struct !33
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull align 4 dereferenceable(12) %i.de, i64 12, i1 false), !tbaa.struct !33
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull align 4 dereferenceable(12) %i.dg, i64 12, i1 false), !tbaa.struct !33
  %i.di = ptrtoint ptr %9 to i64, !nosanitize !9  ; 3 uses
  %i.dj = ptrtoint ptr %8 to i64                  ; 3 uses
  %i.dk = shufflevector <2 x float> %.sroa.024.0.copyload, <2 x float> %.sroa.829.0.copyload, <2 x i32> <i32 1, i32 2>
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ah
  %i.dl = icmp eq i32 %i.er, 0
  br i1 %i.dl, label %bb.ai, label %bb.al

bb.ac:                                            ; preds = %bb.aa, %bb.ah
  %indvars.iv567 = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next568, %bb.ah ] ; 6 uses
  %.1107303 = phi i32 [ %i.cy, %bb.aa ], [ %i.er, %bb.ah ]
  %.040301 = phi ptr [ %7, %bb.aa ], [ %.041300, %bb.ah ] ; 5 uses
  %.041300 = phi ptr [ %6, %bb.aa ], [ %.040301, %bb.ah ] ; 2 uses
  %i.dm = mul nuw nsw i64 %indvars.iv567, 12      ; 2 uses
  %i.dn = add i64 %i.dm, %i.di, !nosanitize !9    ; 2 uses
  %.not137 = icmp ult i64 %i.dn, %i.di, !nosanitize !9
  br i1 %.not137, label %bb.ad, label %bb.ae, !prof !18, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.di, i64 %i.dn) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %9, i64 %indvars.iv567 ; 2 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.do, align 4 ; 3 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4 ; 2 uses
  %i.dp = fmul float %.sroa.03.0.vec.extract.i.i, %.sroa.235.0.copyload
  %foldExtExtBinop833 = fmul <2 x float> %.sroa.829.0.copyload, %.sroa.034.0.copyload
  %i.dq = extractelement <2 x float> %foldExtExtBinop833, i64 0
  %i.dr = fsub float %i.dp, %i.dq                 ; 3 uses
  %i.ds = fmul float %i.dr, %i.dr
  %i.dt = fmul <2 x float> %i.dk, %.sroa.034.0.copyload
  %i.du = shufflevector <2 x float> %.sroa.034.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %.sroa.235.0.copyload, i64 1
  %i.dw = fmul <2 x float> %.sroa.024.0.copyload, %i.dv
  %i.dx = fsub <2 x float> %i.dt, %i.dw           ; 4 uses
  %i.dy = fmul <2 x float> %i.dx, %i.dx           ; 2 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 1
  %i.ea = fadd float %i.dz, %i.ds
  %i.eb = extractelement <2 x float> %i.dy, i64 0
  %i.ec = fadd float %i.eb, %i.ea                 ; 2 uses
  %i.ed = fcmp ogt float %i.ec, f0x057A0000
  br i1 %i.ed, label %bb.af, label %b3Normalize.exit

bb.af:                                            ; preds = %bb.ae
  %sqrt = call float @llvm.sqrt.f32(float %i.ec)
  %i.ee = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ef = extractelement <2 x float> %i.dx, i64 1
  %i.eg = fmul float %i.ef, %i.ee
  %.sroa.07.0.vec.insert.i = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.eh = fmul float %i.dr, %i.ee
  %.sroa.07.4.vec.insert.i = insertelement <2 x float> %.sroa.07.0.vec.insert.i, float %i.eh, i64 1
  %i.ei = extractelement <2 x float> %i.dx, i64 0
  %i.ej = fmul float %i.ei, %i.ee
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.ae, %bb.af
  %.sroa.07.0.i = phi <2 x float> [ %.sroa.07.4.vec.insert.i, %bb.af ], [ zeroinitializer, %bb.ae ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.ej, %bb.af ], [ 0.000000e+00, %bb.ae ] ; 2 uses
  %i.ek = add i64 %i.dm, %i.dj, !nosanitize !9    ; 2 uses
  %.not138 = icmp ult i64 %i.ek, %i.dj, !nosanitize !9
  br i1 %.not138, label %bb.ag, label %bb.ah, !prof !18, !nosanitize !9

bb.ag:                                            ; preds = %b3Normalize.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @115, i64 %i.dj, i64 %i.ek) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %b3Normalize.exit
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %8, i64 %indvars.iv567 ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.el, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.211.8.vec.insert.i = insertelement <2 x float> poison, float %.sroa.5.0.i, i64 0
  %i.em = fmul <2 x float> %.sroa.07.0.i, %.sroa.0.0.copyload ; 2 uses
  %shift835 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop836 = fadd <2 x float> %i.em, %shift835
  %i.en = extractelement <2 x float> %foldExtExtBinop836, i64 0
  %i.eo = fmul float %.sroa.5.0.i, %.sroa.2.0.copyload
  %i.ep = fadd float %i.eo, %i.en
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %.sroa.211.8.vec.insert.i, float %i.ep, i64 1
  %i.eq = trunc nuw nsw i64 %indvars.iv567 to i32
  %i.er = call i32 @b3ClipPolygon(ptr noundef %.040301, ptr noundef %.041300, i32 noundef %.1107303, <2 x float> %.sroa.07.0.i, <2 x float> %.sroa.211.12.vec.insert.i, i32 noundef %i.eq, <2 x float> %.sroa.024.0.copyload, <2 x float> %.sroa.829.0.copyload) #9 ; 4 uses
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1
  %i.es = icmp samesign ult i64 %indvars.iv567, 2
  %i.et = icmp sgt i32 %i.er, 0                   ; 2 uses
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  br i1 %i.eu, label %bb.ac, label %bb.ab, !llvm.loop !105

bb.ai:                                            ; preds = %bb.ab
  %i.ev = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.ew = and i64 %i.ev, 3, !nosanitize !9
  %i.ex = icmp eq i64 %i.ew, 0, !nosanitize !9
  br i1 %i.ex, label %bb.ak, label %bb.aj, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @116, i64 %i.ev) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  store i32 0, ptr %4, align 4
  %.sroa_idx2 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa_idx2, align 4
  br label %bb.be

bb.al:                                            ; preds = %bb.ab
  %i.ey = call noundef i32 @llvm.smin.i32(i32 %i.er, i32 range(i32 4, -2147483648) %1) ; 2 uses
  br i1 %i.et, label %.lr.ph.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %bb.al
  %i.ez = ptrtoint ptr %.040301 to i64, !nosanitize !9 ; 5 uses
  %i.fa = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fc = and i64 %i.fa, 7
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split, !prof !10, !nosanitize !9

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %wide.trip.count576 = zext nneg i32 %i.ey to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.ar
  %indvars.iv573 = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next574, %bb.ar ] ; 3 uses
  %.0102305.us317 = phi i32 [ 0, %.lr.ph.split.split.us.preheader ], [ %.1.us, %bb.ar ] ; 5 uses
  %.0103304.us318 = phi float [ f0x7F7FFFFF, %.lr.ph.split.split.us.preheader ], [ %i.fk, %bb.ar ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [20 x i8], ptr %.040301, i64 %indvars.iv573 ; 3 uses
  %i.ff = mul nuw nsw i64 %indvars.iv573, 20
  %i.fg = add i64 %i.ff, %i.ez, !nosanitize !9    ; 2 uses
  %.not384 = icmp ult i64 %i.fg, %i.ez, !nosanitize !9
  br i1 %.not384, label %.split309.us, label %bb.am, !prof !18, !nosanitize !9

bb.am:                                            ; preds = %.lr.ph.split.split.us
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 12 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !35 ; 3 uses
  %i.fj = fcmp olt float %.0103304.us318, %i.fi
  %i.fk = select i1 %i.fj, float %.0103304.us318, float %i.fi ; 2 uses
  %i.fl = fcmp ule float %i.fi, 0.000000e+00
  %or.cond.not.us = select i1 %5, i1 true, i1 %i.fl
  br i1 %or.cond.not.us, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.fm = load ptr, ptr %i.fb, align 8, !tbaa !20 ; 3 uses
  %i.fn = sext i32 %.0102305.us317 to i64         ; 2 uses
  %i.fo = getelementptr inbounds [24 x i8], ptr %i.fm, i64 %i.fn ; 4 uses
  %i.fp = mul nsw i64 %i.fn, 24
  %i.fq = ptrtoint ptr %i.fm to i64, !nosanitize !9 ; 3 uses
  %i.fr = add i64 %i.fp, %i.fq, !nosanitize !9    ; 3 uses
  %i.fs = icmp ne ptr %i.fm, null, !nosanitize !9 ; 2 uses
  %i.ft = icmp eq i64 %i.fr, 0
  %i.fu = xor i1 %i.fs, %i.ft
  %i.fv = icmp uge i64 %i.fr, %i.fq, !nosanitize !9
  %i.fw = icmp slt i32 %.0102305.us317, 0
  %i.fx = xor i1 %i.fw, %i.fv
  %i.fy = and i1 %i.fu, %i.fx, !nosanitize !9
  br i1 %i.fy, label %bb.ao, label %.split332.us.a, !prof !10, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  %i.fz = ptrtoint ptr %i.fo to i64, !nosanitize !9 ; 2 uses
  %i.ga = and i64 %i.fz, 3, !nosanitize !9
  %i.gb = icmp eq i64 %i.ga, 0, !nosanitize !9
  %i.gc = and i1 %i.fs, %i.gb
  br i1 %i.gc, label %bb.ap, label %.split336.us, !prof !10, !nosanitize !9

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fo, ptr noundef nonnull align 4 dereferenceable(12) %i.fe, i64 12, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.ge = load float, ptr %i.fh, align 4, !tbaa !35
  store float %i.ge, ptr %i.gd, align 4, !tbaa !23
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !24
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !24
  %i.gi = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0102305.us317, i32 1), !nosanitize !9 ; 2 uses
  %i.gj = extractvalue { i32, i1 } %i.gi, 1, !nosanitize !9
  br i1 %i.gj, label %.split348.us, label %bb.aq, !prof !18, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  %i.gk = extractvalue { i32, i1 } %i.gi, 0, !nosanitize !9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.am
  %.1.us = phi i32 [ %i.gk, %bb.aq ], [ %.0102305.us317, %bb.am ] ; 2 uses
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond577.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count576
  br i1 %exitcond577.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !106

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %5, label %.split370, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %wide.trip.count = zext nneg i32 %i.ey to i64
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.preheader, %bb.at
  %indvars.iv570 = phi i64 [ 0, %.lr.ph.split.split.split.preheader ], [ %indvars.iv.next571, %bb.at ] ; 3 uses
  %.0103304 = phi float [ f0x7F7FFFFF, %.lr.ph.split.split.split.preheader ], [ %i.gt, %bb.at ] ; 2 uses
  %i.gl = mul nuw nsw i64 %indvars.iv570, 20
  %i.gm = add i64 %i.gl, %i.ez, !nosanitize !9    ; 2 uses
  %.not383 = icmp ult i64 %i.gm, %i.ez, !nosanitize !9
  br i1 %.not383, label %.split309.us, label %bb.as, !prof !18, !nosanitize !9

.split309.us:                                     ; preds = %.lr.ph.split.split.split, %.lr.ph.split.split.us
  %.us-phi311 = phi i64 [ %i.fg, %.lr.ph.split.split.us ], [ %i.gm, %.lr.ph.split.split.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @117, i64 %i.ez, i64 %.us-phi311) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %.lr.ph.split.split.split
  %i.gn = getelementptr inbounds nuw [20 x i8], ptr %.040301, i64 %indvars.iv570
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.gp = load float, ptr %i.go, align 4, !tbaa !35 ; 3 uses
  %i.gq = fcmp ule float %i.gp, 0.000000e+00
  br i1 %i.gq, label %.split370, label %bb.at

.split370:                                        ; preds = %bb.as, %.lr.ph.split.split
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @118, i64 %i.fa) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split332.us.a:                                   ; preds = %bb.an
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @119, i64 %i.fq, i64 %i.fr) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split336.us:                                     ; preds = %bb.ao
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @120, i64 %i.fz) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split348.us:                                     ; preds = %bb.ap
  %i.gr = zext nneg i32 %.0102305.us317 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @121, i64 %i.gr, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  %i.gs = fcmp olt float %.0103304, %i.gp
  %i.gt = select i1 %i.gs, float %.0103304, float %i.gp ; 2 uses
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next571, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.at, %bb.ar, %bb.al
  %.0103.lcssa = phi float [ f0x7F7FFFFF, %bb.al ], [ %i.fk, %bb.ar ], [ %i.gt, %bb.at ] ; 4 uses
  %.0102.lcssa = phi i32 [ 0, %bb.al ], [ %.1.us, %bb.ar ], [ 0, %bb.at ]
  br i1 %5, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge
  %i.gu = call float @b3GetLengthUnitsPerMeter() #9
  %i.gv = fmul float %i.gu, 5.000000e-03
  %i.gw = fmul float %i.gv, 4.000000e+00
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge, %bb.au
  %i.gx = phi float [ %i.gw, %bb.au ], [ 0.000000e+00, %._crit_edge ]
  %i.gy = fcmp ult float %.0103.lcssa, %i.gx
  br i1 %i.gy, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gz = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.ha = and i64 %i.gz, 3, !nosanitize !9
  %i.hb = icmp eq i64 %i.ha, 0, !nosanitize !9
  br i1 %i.hb, label %bb.ay, label %bb.ax, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @122, i64 %i.gz) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  store i32 0, ptr %4, align 4
  %.sroa_idx1 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa_idx1, align 4
  br label %bb.be

bb.az:                                            ; preds = %bb.av
  %i.hc = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.hd = and i64 %i.hc, 7, !nosanitize !9
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !9
  br i1 %i.he, label %bb.bb, label %bb.ba, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @123, i64 %i.hc) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0102.lcssa, ptr %i.hf, align 8, !tbaa !16
  store <2 x float> %.sroa.024.0.copyload, ptr %0, align 8, !tbaa !17
  %.sroa.829.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.829.8.vec.extract, ptr %.sroa.829.0..sroa_idx30, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.hg, align 8, !tbaa !19
  %i.hh = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.hi = and i64 %i.hh, 3, !nosanitize !9
  %i.hj = icmp eq i64 %i.hi, 0, !nosanitize !9
  br i1 %i.hj, label %bb.bd, label %bb.bc, !prof !10, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @124, i64 %i.hh) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bd:                                            ; preds = %bb.bb
  store float %.0103.lcssa, ptr %4, align 4, !tbaa !47
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.hk, align 4, !tbaa !46
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.hm = trunc i32 %.16.val to i8
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !55
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ho = trunc i32 %.20.val to i8
  store i8 %i.ho, ptr %i.hn, align 2, !tbaa !56
  br label %bb.be

bb.be:                                            ; preds = %bb.ay, %bb.bd, %bb.ak
  %.1105 = phi float [ f0x7F7FFFFF, %bb.ak ], [ %.0103.lcssa, %bb.bd ], [ %.0103.lcssa, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret float %.1105
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc float @b3CollideHullFace(ptr noundef nonnull %0, i32 noundef range(i32 4, -2147483648) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr noundef nonnull %5, i1 noundef zeroext %6) unnamed_addr #0 !func_sanitize !60 {
bb.a:
  %7 = alloca [64 x %struct.b3ClipVertex], align 16 ; 18 uses
  %8 = alloca [64 x %struct.b3ClipVertex], align 16 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @127, i64 %i.a) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !16
  %i.e = ptrtoint ptr %3 to i64, !nosanitize !9   ; 10 uses
  %i.f = and i64 %i.e, 7, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !9
  br i1 %i.g, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @125, i64 %i.e) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %b3GetHullFaces.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.i to i64                     ; 2 uses
  %i.l = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %i.k), !nosanitize !9 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1, !nosanitize !9
  br i1 %i.m, label %bb.g, label %bb.h, !prof !18, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @126, i64 %i.e, i64 %i.k) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { i64, i1 } %i.l, 0, !nosanitize !9
  %i.o = inttoptr i64 %i.n to ptr
  br label %b3GetHullFaces.exit

b3GetHullFaces.exit:                              ; preds = %bb.e, %bb.h
  %.0.i = phi ptr [ %i.o, %bb.h ], [ null, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52
  %.fr561 = freeze i32 %i.q                       ; 2 uses
  %i.r = icmp eq i32 %.fr561, 0
  br i1 %i.r, label %b3GetHullEdges.exit, label %bb.i

bb.i:                                             ; preds = %b3GetHullFaces.exit
  %i.s = sext i32 %.fr561 to i64                  ; 2 uses
  %i.t = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %i.s), !nosanitize !9 ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1, !nosanitize !9
  br i1 %i.u, label %bb.j, label %bb.k, !prof !18, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @99, i64 %i.e, i64 %i.s) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.v = extractvalue { i64, i1 } %i.t, 0, !nosanitize !9
  %i.w = inttoptr i64 %i.v to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %b3GetHullFaces.exit, %bb.k
  %.0.i193 = phi ptr [ %i.w, %bb.k ], [ null, %b3GetHullFaces.exit ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %b3GetHullPlanes.exit, label %bb.l

bb.l:                                             ; preds = %b3GetHullEdges.exit
  %i.aa = sext i32 %i.y to i64                    ; 2 uses
  %i.ab = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %i.aa), !nosanitize !9 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1, !nosanitize !9
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !18, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @101, i64 %i.e, i64 %i.aa) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.ad = extractvalue { i64, i1 } %i.ab, 0, !nosanitize !9
  %i.ae = inttoptr i64 %i.ad to ptr
  br label %b3GetHullPlanes.exit

b3GetHullPlanes.exit:                             ; preds = %b3GetHullEdges.exit, %bb.n
  %.0.i194 = phi ptr [ %i.ae, %bb.n ], [ null, %b3GetHullEdges.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54
  %.fr564 = freeze i32 %i.ag                      ; 2 uses
  %i.ah = icmp eq i32 %.fr564, 0
  br i1 %i.ah, label %b3GetHullPoints.exit, label %bb.o

bb.o:                                             ; preds = %b3GetHullPlanes.exit
  %i.ai = sext i32 %.fr564 to i64                 ; 2 uses
  %i.aj = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %i.ai), !nosanitize !9 ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1, !nosanitize !9
  br i1 %i.ak, label %bb.p, label %bb.q, !prof !18, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @102, i64 %i.e, i64 %i.ai) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.al = extractvalue { i64, i1 } %i.aj, 0, !nosanitize !9
  %i.am = inttoptr i64 %i.al to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullPlanes.exit, %bb.q
  %.0.i195 = phi ptr [ %i.am, %bb.q ], [ null, %b3GetHullPlanes.exit ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !39 ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 4 uses
  %i.aq = getelementptr inbounds [16 x i8], ptr %.0.i194, i64 %i.ap ; 3 uses
  %i.ar = shl nsw i64 %i.ap, 4
  %i.as = ptrtoint ptr %.0.i194 to i64, !nosanitize !9 ; 3 uses
  %i.at = add i64 %i.ar, %i.as, !nosanitize !9    ; 3 uses
  %i.au = icmp ne ptr %.0.i194, null, !nosanitize !9 ; 2 uses
  %i.av = icmp eq i64 %i.at, 0
  %i.aw = xor i1 %i.au, %i.av
  %i.ax = icmp uge i64 %i.at, %i.as, !nosanitize !9
  %i.ay = icmp slt i32 %i.ao, 0                   ; 2 uses
  %i.az = xor i1 %i.ay, %i.ax
  %i.ba = and i1 %i.aw, %i.az, !nosanitize !9
  br i1 %i.ba, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %b3GetHullPoints.exit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @128, i64 %i.as, i64 %i.at) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %b3GetHullPoints.exit
  %i.bb = ptrtoint ptr %i.aq to i64, !nosanitize !9 ; 2 uses
  %i.bc = and i64 %i.bb, 3, !nosanitize !9
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !9
  %i.be = and i1 %i.au, %i.bd
  br i1 %i.be, label %bb.u, label %bb.t, !prof !10, !nosanitize !9

end_hunk_1
begin_hunk_2_@b3CollideHullFace:bb.a
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @134, i64 %i.cv) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.cw = load i8, ptr %i.cm, align 1, !tbaa !63  ; 4 uses
  %i.cx = ptrtoint ptr %.0.i193 to i64, !nosanitize !9 ; 10 uses
  %.not562 = icmp eq ptr %.0.i193, null, !nosanitize !9
  %i.cy = ptrtoint ptr %.0.i195 to i64            ; 7 uses
  br i1 %.not562, label %.split.us, label %.split, !prof !18

.split.us:                                        ; preds = %bb.ae
  %i.cz = zext i8 %i.cw to i64
  %i.da = shl nuw nsw i64 %i.cz, 2
  %i.db = icmp eq i8 %i.cw, 0
  br i1 %i.db, label %.split467.us, label %.split464.us, !prof !10, !nosanitize !9

.split:                                           ; preds = %bb.ae
  %.not565 = icmp eq ptr %.0.i195, null
  br i1 %.not565, label %.split.split.us, label %.split.split, !prof !18

.split.split.us:                                  ; preds = %.split
  %i.dc = zext i8 %i.cw to i64                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0.i193, i64 %i.dc ; 2 uses
  %i.de = shl nuw nsw i64 %i.dc, 2
  %i.df = add i64 %i.de, %i.cx, !nosanitize !9    ; 2 uses
  %.not566 = icmp ult i64 %i.df, %i.cx, !nosanitize !9
  br i1 %.not566, label %.split464.us, label %bb.af, !prof !18, !nosanitize !9

bb.af:                                            ; preds = %.split.split.us
  %i.dg = load i8, ptr %i.dd, align 1, !tbaa !64
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 2
  %i.dj = add i64 %i.di, %i.cx, !nosanitize !9    ; 2 uses
  %.not271.us = icmp ult i64 %i.dj, %i.cx, !nosanitize !9
  br i1 %.not271.us, label %.split481.us, label %bb.ag, !prof !18, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !58  ; 2 uses
  %i.dm = zext i8 %i.dl to i64
  %i.dn = mul nuw nsw i64 %i.dm, 12               ; 2 uses
  %i.do = icmp eq i8 %i.dl, 0
  %i.dp = icmp uge i64 %i.dn, %i.cy, !nosanitize !9
  %i.dq = and i1 %i.dp, %i.do, !nosanitize !9
  br i1 %i.dq, label %.split492, label %.split488.us, !prof !10, !nosanitize !9

.split.split:                                     ; preds = %.split, %bb.at
  %.0260 = phi ptr [ %.0258, %bb.at ], [ %8, %.split ] ; 4 uses
  %.0258 = phi ptr [ %.0260, %bb.at ], [ %7, %.split ] ; 2 uses
  %.0161.in = phi i8 [ %i.dv, %bb.at ], [ %i.cw, %.split ] ; 2 uses
  %.0160 = phi i32 [ %i.fr, %bb.at ], [ 3, %.split ]
  %.0161 = zext i8 %.0161.in to i32
  %i.dr = zext i8 %.0161.in to i64                ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0.i193, i64 %i.dr ; 2 uses
  %i.dt = shl nuw nsw i64 %i.dr, 2
  %i.du = add i64 %i.dt, %i.cx, !nosanitize !9    ; 2 uses
  %.not567 = icmp ult i64 %i.du, %i.cx, !nosanitize !9
  br i1 %.not567, label %.split464.us, label %bb.ah, !prof !18, !nosanitize !9

.split464.us:                                     ; preds = %.split.split, %.split.split.us, %.split.us
  %.us-phi465 = phi i64 [ %i.da, %.split.us ], [ %i.df, %.split.split.us ], [ %i.du, %.split.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @135, i64 %i.cx, i64 %.us-phi465) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split467.us:                                     ; preds = %.split.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @136, i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %.split.split
  %i.dv = load i8, ptr %i.ds, align 1, !tbaa !64  ; 3 uses
  %i.dw = zext i8 %i.dv to i64                    ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0.i193, i64 %i.dw
  %i.dy = shl nuw nsw i64 %i.dw, 2
  %i.dz = add i64 %i.dy, %i.cx, !nosanitize !9    ; 2 uses
  %.not271 = icmp ult i64 %i.dz, %i.cx, !nosanitize !9
  br i1 %.not271, label %.split481.us, label %bb.ai, !prof !18, !nosanitize !9

.split481.us:                                     ; preds = %bb.ah, %bb.af
  %.us-phi482 = phi i64 [ %i.dj, %bb.af ], [ %i.dz, %bb.ah ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @137, i64 %i.cx, i64 %.us-phi482) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !58
  %i.ec = zext i8 %i.eb to i64                    ; 2 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %.0.i195, i64 %i.ec ; 3 uses
  %i.ee = mul nuw nsw i64 %i.ec, 12
  %i.ef = add i64 %i.ee, %i.cy, !nosanitize !9    ; 2 uses
  %.not568 = icmp ult i64 %i.ef, %i.cy, !nosanitize !9
  br i1 %.not568, label %.split488.us, label %bb.aj, !prof !18, !nosanitize !9

.split488.us:                                     ; preds = %bb.ai, %bb.ag
  %.us-phi490 = phi i64 [ %i.dn, %bb.ag ], [ %i.ef, %bb.ai ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @138, i64 %i.cy, i64 %.us-phi490) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  %i.eg = ptrtoint ptr %i.ed to i64, !nosanitize !9 ; 2 uses
  %i.eh = and i64 %i.eg, 3, !nosanitize !9
  %i.ei = icmp eq i64 %i.eh, 0, !nosanitize !9
  br i1 %i.ei, label %bb.ak, label %.split492, !prof !10, !nosanitize !9

.split492:                                        ; preds = %bb.aj, %bb.ag
  %.us-phi493 = phi i64 [ 0, %bb.ag ], [ %i.eg, %bb.aj ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @139, i64 %.us-phi493) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.ed, align 4, !tbaa !17 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !58
  %i.el = zext i8 %i.ek to i64                    ; 2 uses
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %.0.i195, i64 %i.el ; 3 uses
  %i.en = mul nuw nsw i64 %i.el, 12
  %i.eo = add i64 %i.en, %i.cy, !nosanitize !9    ; 2 uses
  %.not272 = icmp ult i64 %i.eo, %i.cy, !nosanitize !9
  br i1 %.not272, label %bb.al, label %bb.am, !prof !18, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @140, i64 %i.cy, i64 %i.eo) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak
  %i.ep = ptrtoint ptr %i.em to i64, !nosanitize !9 ; 2 uses
  %i.eq = and i64 %i.ep, 3, !nosanitize !9
  %i.er = icmp eq i64 %i.eq, 0, !nosanitize !9
  br i1 %i.er, label %bb.ao, label %bb.an, !prof !10, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @141, i64 %i.ep) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %bb.am
  %.sroa.069.0.copyload = load <2 x float>, ptr %i.em, align 4, !tbaa !17
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.470.0.copyload = load float, ptr %.sroa.470.0..sroa_idx, align 4, !tbaa !17
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.071.0.copyload, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.071.0.copyload, i64 1
  %i.es = fsub <2 x float> %.sroa.069.0.copyload, %.sroa.071.0.copyload ; 3 uses
  %i.et = fsub float %.sroa.470.0.copyload, %.sroa.5.0.copyload ; 3 uses
  %i.eu = fmul <2 x float> %i.es, %i.es           ; 2 uses
  %shift1011 = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1012 = fadd <2 x float> %i.eu, %shift1011
  %i.ev = extractelement <2 x float> %foldExtExtBinop1012, i64 0
  %i.ew = fmul float %i.et, %i.et
  %i.ex = fadd float %i.ew, %i.ev                 ; 2 uses
  %i.ey = fcmp ogt float %i.ex, f0x057A0000
  br i1 %i.ey, label %bb.ap, label %b3Normalize.exit

bb.ap:                                            ; preds = %bb.ao
  %sqrt = call float @llvm.sqrt.f32(float %i.ex)
  %i.ez = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.fa = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.es, %i.fb
  %i.fd = fmul float %i.et, %i.ez
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.ao, %bb.ap
  %.sroa.07.0.i = phi <2 x float> [ %i.fc, %bb.ap ], [ zeroinitializer, %bb.ao ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.fd, %bb.ap ], [ 0.000000e+00, %bb.ao ] ; 2 uses
  %shift1014 = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1015 = fmul <2 x float> %.sroa.10.0.copyload, %shift1014
  %i.fe = extractelement <2 x float> %foldExtExtBinop1015, i64 0
  %i.ff = fmul float %i.bl, %.sroa.5.0.i
  %i.fg = fsub float %i.fe, %i.ff                 ; 2 uses
  %.sroa.016.0.vec.insert.i = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fh = fmul float %.sroa.03.0.vec.extract.i.i, %.sroa.5.0.i
  %foldExtExtBinop1017 = fmul <2 x float> %.sroa.10.0.copyload, %.sroa.07.0.i
  %i.fi = extractelement <2 x float> %foldExtExtBinop1017, i64 0
  %i.fj = fsub float %i.fh, %i.fi                 ; 2 uses
  %.sroa.016.4.vec.insert.i = insertelement <2 x float> %.sroa.016.0.vec.insert.i, float %i.fj, i64 1
  %i.fk = fmul <2 x float> %i.bk, %.sroa.07.0.i   ; 2 uses
  %shift1019 = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1020 = fsub <2 x float> %i.fk, %shift1019 ; 2 uses
  %i.fl = extractelement <2 x float> %foldExtExtBinop1020, i64 0
  %i.fm = fmul float %.sroa.0.0.vec.extract.i, %i.fg
  %i.fn = fmul float %.sroa.0.4.vec.extract.i, %i.fj
  %i.fo = fadd float %i.fm, %i.fn
  %i.fp = fmul float %.sroa.5.0.copyload, %i.fl
  %i.fq = fadd float %i.fp, %i.fo
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %foldExtExtBinop1020, float %i.fq, i64 1
  %i.fr = call i32 @b3ClipPolygon(ptr noundef %.0260, ptr noundef %.0258, i32 noundef %.0160, <2 x float> %.sroa.016.4.vec.insert.i, <2 x float> %.sroa.211.12.vec.insert.i, i32 noundef %.0161, <2 x float> %.sroa.0111.0.copyload, <2 x float> %.sroa.10.0.copyload) #9 ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 2
  br i1 %i.fs, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %b3Normalize.exit
  %i.ft = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.fu = and i64 %i.ft, 3, !nosanitize !9
  %i.fv = icmp eq i64 %i.fu, 0, !nosanitize !9
  br i1 %i.fv, label %bb.as, label %bb.ar, !prof !10, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @142, i64 %i.ft) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %bb.aq
  store i32 0, ptr %5, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.fw, align 4
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fx = load float, ptr %9, align 4, !tbaa !37
  br label %bb.bi

bb.at:                                            ; preds = %b3Normalize.exit
  %i.fy = load i8, ptr %i.cm, align 1, !tbaa !63
  %.not189 = icmp eq i8 %i.dv, %i.fy
  br i1 %.not189, label %.lr.ph.split, label %.split.split, !llvm.loop !107

.lr.ph.split:                                     ; preds = %bb.at
  %i.fz = ptrtoint ptr %.0260 to i64, !nosanitize !9 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gb = call noundef i32 @llvm.smin.i32(i32 %i.fr, i32 range(i32 4, -2147483648) %1)
  %wide.trip.count744 = zext nneg i32 %i.gb to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.az
  %indvars.iv741 = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next742, %bb.az ] ; 3 uses
  %.0156496.us508 = phi i32 [ 0, %.lr.ph.split ], [ %.1157.us, %bb.az ] ; 5 uses
  %.0158495.us509 = phi float [ f0x7F7FFFFF, %.lr.ph.split ], [ %i.gi, %bb.az ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [20 x i8], ptr %.0260, i64 %indvars.iv741 ; 4 uses
  %i.gd = mul nuw nsw i64 %indvars.iv741, 20
  %i.ge = add i64 %i.gd, %i.fz, !nosanitize !9    ; 2 uses
  %.not571 = icmp ult i64 %i.ge, %i.fz, !nosanitize !9
  br i1 %.not571, label %.split500.us, label %bb.au, !prof !18, !nosanitize !9

bb.au:                                            ; preds = %.lr.ph.split.split.us
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 12 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !35 ; 5 uses
  %i.gh = fcmp olt float %.0158495.us509, %i.gg
  %i.gi = select i1 %i.gh, float %.0158495.us509, float %i.gg ; 5 uses
  %i.gj = fcmp ule float %i.gg, 0.000000e+00
  %or.cond.not.us = select i1 %6, i1 true, i1 %i.gj
  br i1 %or.cond.not.us, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %.sroa.014.0.copyload.us = load <2 x float>, ptr %i.gc, align 4
  %.sroa.215.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.215.0.copyload.us = load float, ptr %.sroa.215.0..sroa_idx.us, align 4
  %i.gk = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fmul <2 x float> %.sroa.0111.0.copyload, %i.gl
  %i.gn = fsub <2 x float> %.sroa.014.0.copyload.us, %i.gm
  %i.go = fmul float %.sroa.1.8.vec.extract.i, %i.gg
  %i.gp = fsub float %.sroa.215.0.copyload.us, %i.go
  %i.gq = load ptr, ptr %i.ga, align 8, !tbaa !20 ; 3 uses
  %i.gr = sext i32 %.0156496.us508 to i64         ; 2 uses
  %i.gs = getelementptr inbounds [24 x i8], ptr %i.gq, i64 %i.gr ; 5 uses
  %i.gt = mul nsw i64 %i.gr, 24
  %i.gu = ptrtoint ptr %i.gq to i64, !nosanitize !9 ; 3 uses
  %i.gv = add i64 %i.gt, %i.gu, !nosanitize !9    ; 3 uses
  %i.gw = icmp ne ptr %i.gq, null, !nosanitize !9 ; 2 uses
  %i.gx = icmp eq i64 %i.gv, 0
  %i.gy = xor i1 %i.gw, %i.gx
  %i.gz = icmp uge i64 %i.gv, %i.gu, !nosanitize !9
  %i.ha = icmp slt i32 %.0156496.us508, 0
  %i.hb = xor i1 %i.ha, %i.gz
  %i.hc = and i1 %i.gy, %i.hb, !nosanitize !9
  br i1 %i.hc, label %bb.aw, label %.split520.us.a, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  %i.hd = ptrtoint ptr %i.gs to i64, !nosanitize !9 ; 2 uses
  %i.he = and i64 %i.hd, 3, !nosanitize !9
  %i.hf = icmp eq i64 %i.he, 0, !nosanitize !9
  %i.hg = and i1 %i.gw, %i.hf
  br i1 %i.hg, label %bb.ax, label %.split524.us, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  store <2 x float> %i.gn, ptr %i.gs, align 4, !tbaa !17
  %.sroa.417.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store float %i.gp, ptr %.sroa.417.0..sroa_idx.us, align 4, !tbaa !17
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.hi = load float, ptr %i.gf, align 4, !tbaa !35
  store float %i.hi, ptr %i.hh, align 4, !tbaa !23
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = call i32 @b3FlipPair(i32 %i.hl) #9
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !24
  %i.hn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0156496.us508, i32 1), !nosanitize !9 ; 2 uses
  %i.ho = extractvalue { i32, i1 } %i.hn, 1, !nosanitize !9
  br i1 %i.ho, label %.split533.us, label %bb.ay, !prof !18, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %i.hp = extractvalue { i32, i1 } %i.hn, 0, !nosanitize !9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.au
  %.1157.us = phi i32 [ %i.hp, %bb.ay ], [ %.0156496.us508, %bb.au ] ; 2 uses
  %indvars.iv.next742 = add nuw nsw i64 %indvars.iv741, 1 ; 2 uses
  %exitcond745.not = icmp eq i64 %indvars.iv.next742, %wide.trip.count744
  br i1 %exitcond745.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !108

.split500.us:                                     ; preds = %.lr.ph.split.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @143, i64 %i.fz, i64 %i.ge) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split520.us.a:                                   ; preds = %bb.av
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @144, i64 %i.gu, i64 %i.gv) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split524.us:                                     ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @145, i64 %i.hd) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split533.us:                                     ; preds = %bb.ax
  %i.hq = zext nneg i32 %.0156496.us508 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @146, i64 %i.hq, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge:                                      ; preds = %bb.az
  br i1 %6, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge
  %i.hr = call float @b3GetLengthUnitsPerMeter() #9
  %i.hs = fmul float %i.hr, 5.000000e-03
  %i.ht = fmul float %i.hs, 4.000000e+00
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge, %bb.ba
  %i.hu = phi float [ %i.ht, %bb.ba ], [ 0.000000e+00, %._crit_edge ]
  %i.hv = fcmp ogt float %i.gi, %i.hu
  br i1 %i.hv, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.d, align 8, !tbaa !16
  %i.hw = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.hx = and i64 %i.hw, 3, !nosanitize !9
  %i.hy = icmp eq i64 %i.hx, 0, !nosanitize !9
  br i1 %i.hy, label %bb.be, label %bb.bd, !prof !10, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @147, i64 %i.hw) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.be:                                            ; preds = %bb.bc
  store i32 0, ptr %5, align 4
  %.sroa_idx230 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa_idx230, align 4
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bb
  store i32 %.1157.us, ptr %i.d, align 8, !tbaa !16
  %i.hz = fneg <2 x float> %.sroa.0111.0.copyload
  %i.ia = fneg float %.sroa.1.8.vec.extract.i
  store <2 x float> %i.hz, ptr %0, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2, ptr %i.ib, align 8, !tbaa !19
  %i.ic = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.id = and i64 %i.ic, 3, !nosanitize !9
  %i.ie = icmp eq i64 %i.id, 0, !nosanitize !9
  br i1 %i.ie, label %bb.bh, label %bb.bg, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @148, i64 %i.ic) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bh:                                            ; preds = %bb.bf
  store float %i.gi, ptr %5, align 4, !tbaa !47
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 3, ptr %i.if, align 4, !tbaa !46
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !38
  %i.ij = trunc i32 %i.ii to i8
  store i8 %i.ij, ptr %i.ig, align 1, !tbaa !55
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.il = load i32, ptr %i.an, align 4, !tbaa !39
  %i.im = trunc i32 %i.il to i8
  store i8 %i.im, ptr %i.ik, align 2, !tbaa !56
  br label %bb.bi

bb.bi:                                            ; preds = %bb.as, %bb.be, %bb.bh
  %.3 = phi float [ %i.fx, %bb.as ], [ %i.gi, %bb.bh ], [ %i.gi, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret float %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3CollideTriangleAndHullEdges(ptr noundef nonnull %0, <2 x float> %1, float %2, <2 x float> %3, float %4, ptr noundef nonnull %5, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %6, ptr noundef nonnull %7) unnamed_addr #0 !func_sanitize !109 {
bb.a:
  %8 = alloca %struct.b3SegmentDistanceResult, align 8 ; 9 uses
  %i.a = alloca [3 x i32], align 4                ; 5 uses
  %i.b = ptrtoint ptr %5 to i64, !nosanitize !9   ; 6 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  br i1 %i.d, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @97, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %b3GetHullEdges.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.f to i64                     ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.h), !nosanitize !9 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !nosanitize !9
  br i1 %i.j, label %bb.e, label %bb.f, !prof !18, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @99, i64 %i.b, i64 %i.h) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.k = extractvalue { i64, i1 } %i.i, 0, !nosanitize !9
  %i.l = inttoptr i64 %i.k to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %bb.c, %bb.f
  %.0.i = phi ptr [ %i.l, %bb.f ], [ null, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !54   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %b3GetHullPoints.exit, label %bb.g

bb.g:                                             ; preds = %b3GetHullEdges.exit
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.p), !nosanitize !9 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1, !nosanitize !9
  br i1 %i.r, label %bb.h, label %bb.i, !prof !18, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @102, i64 %i.b, i64 %i.p) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.s = extractvalue { i64, i1 } %i.q, 0, !nosanitize !9
  %i.t = inttoptr i64 %i.s to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullEdges.exit, %bb.i
  %.0.i107 = phi ptr [ %i.t, %bb.i ], [ null, %b3GetHullEdges.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39   ; 4 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.w ; 3 uses
  %i.y = shl nsw i64 %i.w, 2
  %i.z = ptrtoint ptr %.0.i to i64, !nosanitize !9 ; 6 uses
  %i.aa = add i64 %i.y, %i.z, !nosanitize !9      ; 3 uses
  %i.ab = icmp ne ptr %.0.i, null, !nosanitize !9 ; 2 uses
  %i.ac = icmp eq i64 %i.aa, 0
  %i.ad = xor i1 %i.ab, %i.ac
  %i.ae = icmp uge i64 %i.aa, %i.z, !nosanitize !9
  %i.af = icmp slt i32 %i.v, 0
  %i.ag = xor i1 %i.af, %i.ae
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !9
  br i1 %i.ah, label %bb.k, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %b3GetHullPoints.exit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @149, i64 %i.z, i64 %i.aa) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %b3GetHullPoints.exit
  br i1 %i.ab, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.x to i64, !nosanitize !9
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @150, i64 %i.ai) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !110
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.al
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = add i64 %i.an, %i.z, !nosanitize !9     ; 2 uses
  %.not139 = icmp ult i64 %i.ao, %i.z, !nosanitize !9
  br i1 %.not139, label %bb.n, label %bb.o, !prof !18, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @151, i64 %i.z, i64 %i.ao) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !58
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %.0.i107, i64 %i.ar ; 3 uses
  %i.at = mul nuw nsw i64 %i.ar, 12
  %i.au = ptrtoint ptr %.0.i107 to i64, !nosanitize !9 ; 6 uses
  %i.av = add i64 %i.at, %i.au, !nosanitize !9    ; 3 uses
  %i.aw = icmp ne ptr %.0.i107, null, !nosanitize !9 ; 2 uses
  %i.ax = icmp eq i64 %i.av, 0
  %i.ay = xor i1 %i.aw, %i.ax
  %i.az = icmp uge i64 %i.av, %i.au, !nosanitize !9
  %i.ba = and i1 %i.az, %i.ay, !nosanitize !9
  br i1 %i.ba, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @152, i64 %i.au, i64 %i.av) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bb = ptrtoint ptr %i.as to i64, !nosanitize !9 ; 2 uses
  %i.bc = and i64 %i.bb, 3, !nosanitize !9
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !9
  %i.be = and i1 %i.aw, %i.bd
  br i1 %i.be, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @153, i64 %i.bb) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %.sroa.053.0.copyload = load <2 x float>, ptr %i.as, align 4, !tbaa !17 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !17 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !58
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %.0.i107, i64 %i.bh ; 3 uses
  %i.bj = mul nuw nsw i64 %i.bh, 12
  %i.bk = add i64 %i.bj, %i.au, !nosanitize !9    ; 2 uses
  %.not140 = icmp ult i64 %i.bk, %i.au, !nosanitize !9
  br i1 %.not140, label %bb.t, label %bb.u, !prof !18, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @154, i64 %i.au, i64 %i.bk) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.bl = ptrtoint ptr %i.bi to i64, !nosanitize !9 ; 2 uses
  %i.bm = and i64 %i.bl, 3, !nosanitize !9
  %i.bn = icmp eq i64 %i.bm, 0, !nosanitize !9
  br i1 %i.bn, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @155, i64 %i.bl) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.bi, align 4, !tbaa !17
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.452.0.copyload = load float, ptr %.sroa.452.0..sroa_idx, align 4, !tbaa !17
  %i.bo = fsub <2 x float> %.sroa.051.0.copyload, %.sroa.053.0.copyload
  %i.bp = fsub float %.sroa.452.0.copyload, %.sroa.6.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @b3LineDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %8, <2 x float> %1, float %2, <2 x float> %3, float %4, <2 x float> %.sroa.053.0.copyload, float %.sroa.6.0.copyload, <2 x float> %i.bo, float %i.bp) #9
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !43 ; 2 uses
  %i.bs = fcmp olt float %i.br, 0.000000e+00
  %i.bt = fcmp ogt float %i.br, 1.000000e+00
  %or.cond = or i1 %i.bs, %i.bt
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !44 ; 2 uses
  %i.bw = fcmp olt float %i.bv, 0.000000e+00
  %i.bx = fcmp ogt float %i.bv, 1.000000e+00
  %or.cond106 = or i1 %i.bw, %i.bx
  br i1 %or.cond106, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.by = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.bz = and i64 %i.by, 3, !nosanitize !9
  %i.ca = icmp eq i64 %i.bz, 0, !nosanitize !9
  br i1 %i.ca, label %bb.aa, label %bb.z, !prof !10, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @156, i64 %i.by) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %bb.y
  store i32 0, ptr %7, align 4
  %.sroa_idx132 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %.sroa_idx132, align 4
  br label %bb.am

bb.ab:                                            ; preds = %bb.x
  %foldExtExtBinop = fsub <2 x float> %.sroa.053.0.copyload, %1
  %foldExtExtBinop2 = fsub <2 x float> %.sroa.053.0.copyload, %1
  %i.cb = fsub float %.sroa.6.0.copyload, %2
  %.sroa.019.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.220.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 8
  %foldExtExtBinop4 = fmul <2 x float> %foldExtExtBinop, %.sroa.019.0.copyload
  %foldExtExtBinop6 = fmul <2 x float> %foldExtExtBinop2, %.sroa.019.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop8 = fadd <2 x float> %foldExtExtBinop4, %shift
  %i.cc = extractelement <2 x float> %foldExtExtBinop8, i64 0
  %i.cd = fmul float %i.cb, %.sroa.220.0.copyload
  %i.ce = fadd float %i.cd, %i.cc                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.012.0.copyload = load <2 x float>, ptr %8, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 8
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.cf, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.211.0.copyload = load float, ptr %.sroa.211.0..sroa_idx, align 8
  %i.cg = fadd float %.sroa.213.0.copyload, %.sroa.211.0.copyload
  %i.ch = fadd <2 x float> %.sroa.012.0.copyload, %.sroa.010.0.copyload
  %i.ci = fmul <2 x float> %i.ch, splat (float 5.000000e-01)
  %i.cj = fmul float %i.cg, 5.000000e-01
  %i.ck = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.cl = and i64 %i.ck, 7, !nosanitize !9
  %i.cm = icmp eq i64 %i.cl, 0, !nosanitize !9
  br i1 %i.cm, label %bb.ad, label %bb.ac, !prof !10, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @157, i64 %i.ck) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20 ; 6 uses
  %i.cp = icmp ne ptr %i.co, null, !nosanitize !9
  %i.cq = ptrtoint ptr %i.co to i64, !nosanitize !9 ; 2 uses
  %i.cr = and i64 %i.cq, 3, !nosanitize !9
  %i.cs = icmp eq i64 %i.cr, 0, !nosanitize !9
  %i.ct = and i1 %i.cp, %i.cs, !nosanitize !9
  br i1 %i.ct, label %bb.af, label %bb.ae, !prof !10, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @158, i64 %i.cq) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %bb.ad
  store <2 x float> %i.ci, ptr %i.co, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store float %i.cj, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store float %i.ce, ptr %i.cu, align 4, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !38 ; 4 uses
  %i.cy = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef %i.cx, i32 noundef 1, i32 noundef %i.v) #9
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !24
  %i.cz = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.da = and i64 %i.cz, 3, !nosanitize !9
  %i.db = icmp eq i64 %i.da, 0, !nosanitize !9
  br i1 %i.db, label %bb.ah, label %bb.ag, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @159, i64 %i.cz) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  store float %i.ce, ptr %7, align 4, !tbaa !47
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 4, ptr %i.dc, align 4, !tbaa !46
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.de = trunc i32 %i.cx to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 6
  %i.dg = trunc i32 %i.v to i8
  store i8 %i.dg, ptr %i.df, align 2, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !33
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.dh, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @__const.b3CollideTriangleAndHullEdges.edgesFeatures, i64 12, i1 false)
  %i.di = sext i32 %i.cx to i64, !nosanitize !9   ; 3 uses
  %i.dj = icmp ult i32 %i.cx, 3
  br i1 %i.dj, label %bb.aj, label %bb.ai, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @160, i64 %i.di) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ah
  %i.dk = shl nuw nsw i64 %i.di, 2
  %i.dl = ptrtoint ptr %i.a to i64, !nosanitize !9 ; 3 uses
  %i.dm = add i64 %i.dk, %i.dl, !nosanitize !9    ; 2 uses
  %.not105 = icmp ult i64 %i.dm, %i.dl, !nosanitize !9
  br i1 %.not105, label %bb.ak, label %bb.al, !prof !18, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @161, i64 %i.dl, i64 %i.dm) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !27
  store i32 %i.dp, ptr %i.do, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3QueryHullFace(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 !func_sanitize !65 {
bb.a:
  %3 = alloca [3 x %struct.b3Vec3], align 16      ; 11 uses
  %i.a = ptrtoint ptr %2 to i64, !nosanitize !9   ; 4 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @100, i64 %i.a) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.e = load i32, ptr %i.d, align 4, !tbaa !53
  %.fr135 = freeze i32 %i.e                       ; 2 uses
  %i.f = icmp eq i32 %.fr135, 0
  br i1 %i.f, label %b3GetHullPlanes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = sext i32 %.fr135 to i64                  ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.a, i64 %i.g), !nosanitize !9 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1, !nosanitize !9
  br i1 %i.i, label %bb.e, label %bb.f, !prof !18, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @101, i64 %i.a, i64 %i.g) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.j = extractvalue { i64, i1 } %i.h, 0, !nosanitize !9
  %i.k = inttoptr i64 %i.j to ptr
  br label %b3GetHullPlanes.exit

b3GetHullPlanes.exit:                             ; preds = %bb.c, %bb.f
  %.0.i = phi ptr [ %i.k, %bb.f ], [ null, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !112  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.n = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.o = and i64 %i.n, 3, !nosanitize !9
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !9
  br i1 %i.p, label %bb.h, label %bb.g, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %b3GetHullPlanes.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @164, i64 %i.n) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %b3GetHullPlanes.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !33
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !tbaa.struct !33
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false), !tbaa.struct !33
  %i.u = icmp sgt i32 %i.m, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.v = ptrtoint ptr %.0.i to i64, !nosanitize !9 ; 5 uses
  %.not136 = icmp eq ptr %.0.i, null, !nosanitize !9
  %i.w = ptrtoint ptr %3 to i64                   ; 5 uses
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %i.q, align 4 ; 2 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load <4 x float>, ptr %.sroa.212.0..sroa_idx.i, align 8
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %.sroa.011.0.copyload.i = load <2 x float>, ptr %3, align 16 ; 2 uses
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.s, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 16
  %.sroa.03.4.vec.extract.i38.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  br i1 %.not136, label %.split117, label %.lr.ph.split, !prof !18

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not31.i = icmp ugt ptr %3, inttoptr (i64 -25 to ptr)
  br i1 %.not31.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader, !prof !18, !nosanitize !9

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.m to i64
  %i.z = shufflevector <2 x float> %.sroa.011.0.copyload.i, <2 x float> %.sroa.05.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.aa = shufflevector <2 x float> %.sroa.011.0.copyload.i, <2 x float> %.sroa.05.0.copyload.i, <2 x i32> <i32 0, i32 2>
end_hunk_2
