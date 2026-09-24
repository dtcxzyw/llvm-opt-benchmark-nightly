Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/distance?download=true
inline.NumInlined: 304
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3GetSweepTransform:bb.a

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load <2 x float>, ptr %i.f, align 4      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load <2 x float>, ptr %i.i, align 4      ; 3 uses
  %i.k = load <2 x float>, ptr %i.g, align 4      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.m = load <2 x float>, ptr %i.l, align 4      ; 2 uses
  %i.n = shufflevector <2 x float> %i.h, <2 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.o = shufflevector <2 x float> %i.k, <2 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.p = fmul <4 x float> %i.n, %i.o              ; 4 uses
  %shift = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.p, %shift
  %shift39 = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop40 = fadd <4 x float> %foldExtExtBinop, %shift39
  %shift42 = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop43 = fadd <4 x float> %shift42, %foldExtExtBinop40
  %i.q = extractelement <4 x float> %foldExtExtBinop43, i64 0
  %i.r = fcmp olt float %i.q, 0.000000e+00        ; 2 uses
  %i.s = fneg <2 x float> %i.h
  %i.t = fneg <2 x float> %i.j
  %i.u = select i1 %i.r, <2 x float> %i.t, <2 x float> %i.j
  %i.v = select i1 %i.r, <2 x float> %i.s, <2 x float> %i.h
  %i.w = fsub float 1.000000e+00, %2              ; 2 uses
  %i.x = insertelement <2 x float> poison, float %2, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x float> %i.y, %i.k
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ac = fmul <2 x float> %i.ab, %i.v
  %i.ad = fadd <2 x float> %i.z, %i.ac            ; 2 uses
  %i.ae = fmul <2 x float> %i.y, %i.m
  %i.af = fmul <2 x float> %i.ab, %i.u
  %i.ag = fadd <2 x float> %i.ae, %i.af           ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> %i.ag, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.ai = fmul <4 x float> %i.ah, %i.ah           ; 4 uses
  %shift45 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop46 = fadd <4 x float> %i.ai, %shift45
  %shift48 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop49 = fadd <4 x float> %foldExtExtBinop46, %shift48
  %shift51 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop52 = fadd <4 x float> %shift51, %foldExtExtBinop49
  %i.aj = extractelement <4 x float> %foldExtExtBinop52, i64 0 ; 2 uses
  %i.ak = fcmp ogt float %i.aj, f0x057A0000
  br i1 %i.ak, label %bb.d, label %b3NLerp.exit

bb.d:                                             ; preds = %bb.c
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.aj)
  %i.al = fdiv float 1.000000e+00, %sqrt.i.i
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = fmul <2 x float> %i.ad, %i.an
  %i.ap = fmul <2 x float> %i.ag, %i.an
  br label %b3NLerp.exit

b3NLerp.exit:                                     ; preds = %bb.c, %bb.d
  %.sroa.4.0.i.i = phi <2 x float> [ %i.ap, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.c ] ; 5 uses
  %.sroa.0.0.i.i = phi <2 x float> [ %i.ao, %bb.d ], [ zeroinitializer, %bb.c ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.0.0.i.i, ptr %i.aq, align 4
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <2 x float> %.sroa.4.0.i.i, ptr %.sroa.425.0..sroa_idx, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.ar, align 4
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.220.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 4
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.as, align 4
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.218.0.copyload = load float, ptr %.sroa.218.0..sroa_idx, align 4
  %i.at = fmul float %i.w, %.sroa.220.0.copyload
  %i.au = fmul float %2, %.sroa.218.0.copyload
  %i.av = fadd float %i.at, %i.au
  %.sroa.09.0.copyload = load <2 x float>, ptr %1, align 4 ; 4 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 4 ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %i.aw = fmul <2 x float> %i.ab, %.sroa.019.0.copyload
  %i.ax = fmul <2 x float> %i.y, %.sroa.017.0.copyload
  %i.ay = fadd <2 x float> %i.aw, %i.ax
  %foldExtExtBinop54 = fmul <2 x float> %.sroa.4.0.i.i, %.sroa.09.0.copyload
  %i.az = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.ba = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.210.0.copyload
  %i.bb = shufflevector <2 x float> %.sroa.09.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bc = insertelement <2 x float> %i.bb, float %.sroa.210.0.copyload, i64 1 ; 2 uses
  %i.bd = fmul <2 x float> %.sroa.0.0.i.i, %i.bc
  %i.be = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> %.sroa.4.0.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %.sroa.09.0.copyload
  %i.bg = fsub <2 x float> %i.bd, %i.bf           ; 2 uses
  %i.bh = fsub float %i.az, %i.ba
  %i.bi = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bj = insertelement <2 x float> %i.bb, float %.sroa.210.0.copyload, i64 0
  %i.bk = fmul <2 x float> %i.bi, %i.bj
  %i.bl = fmul <2 x float> %i.bi, %i.bc
  %i.bm = fadd <2 x float> %i.bk, %i.bg           ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %i.bh, i64 0
  %i.bp = fadd <2 x float> %i.bl, %i.bo           ; 2 uses
  %i.bq = fmul <2 x float> %i.be, %i.bm
  %i.br = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> %.sroa.0.0.i.i, <2 x i32> <i32 0, i32 2>
  %i.bs = fmul <2 x float> %i.br, %i.bp
  %i.bt = fsub <2 x float> %i.bq, %i.bs
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.bv = fmul <2 x float> %.sroa.0.0.i.i, %i.bu  ; 2 uses
  %shift56 = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop57 = fsub <2 x float> %i.bv, %shift56
  %i.bw = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.bx = fmul <2 x float> %i.bt, splat (float 2.000000e+00)
  %i.by = fadd <2 x float> %.sroa.09.0.copyload, %i.bx
  %i.bz = fmul float %i.bw, 2.000000e+00
  %i.ca = fadd float %.sroa.210.0.copyload, %i.bz
  %i.cb = fsub <2 x float> %i.ay, %i.by
  %i.cc = fsub float %i.av, %i.ca
  store <2 x float> %i.cb, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.cc, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3TimeOfImpact(ptr dead_on_unwind noalias nofree writable sret(%struct.b3TOIOutput) align 4 captures(none) initializes((0, 52)) %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !89 {
bb.a:
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  %3 = alloca %struct.b3Transform, align 4        ; 5 uses
  %i.a = alloca [3 x i32], align 4                ; 13 uses
  %i.b = alloca [3 x i32], align 4                ; 13 uses
  %4 = alloca %struct.b3Transform, align 8        ; 7 uses
  %5 = alloca %struct.b3Transform, align 8        ; 7 uses
  %6 = alloca %struct.b3Sweep, align 4            ; 12 uses
  %7 = alloca %struct.b3Sweep, align 4            ; 12 uses
  %8 = alloca %struct.b3ShapeProxy, align 8       ; 11 uses
  %9 = alloca %struct.b3ShapeProxy, align 8       ; 11 uses
  %10 = alloca %struct.b3SimplexCache, align 8    ; 6 uses
  %11 = alloca %struct.b3DistanceInput, align 8   ; 10 uses
  %12 = alloca %struct.b3Transform, align 8       ; 8 uses
  %13 = alloca %struct.b3Transform, align 8       ; 8 uses
  %14 = alloca %struct.b3DistanceOutput, align 8  ; 11 uses
  %15 = alloca %struct.b3SeparationFunction, align 8 ; 36 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  store float -1.000000e+00, ptr %i.c, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.d = icmp ne ptr %1, null, !nosanitize !11
  %i.e = ptrtoint ptr %1 to i64, !nosanitize !11  ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !11
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !11
  %i.h = and i1 %i.d, %i.g, !nosanitize !11
  br i1 %i.h, label %bb.c, label %bb.b, !prof !12, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @56, i64 %i.e) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %6, ptr noundef nonnull align 8 dereferenceable(68) %i.i, i64 68, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %7, ptr noundef nonnull align 4 dereferenceable(68) %i.j, i64 68, i1 false), !tbaa.struct !92
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.sroa.0298.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 7 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !19 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, i8 0, i64 12, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %.sroa.0294.0.copyload = load <2 x float>, ptr %i.l, align 4
  %.sroa.2295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %.sroa.2295.0.copyload = load float, ptr %.sroa.2295.0..sroa_idx, align 4
  %i.m = fsub <2 x float> %.sroa.0294.0.copyload, %.sroa.0298.0.copyload
  %i.n = fsub float %.sroa.2295.0.copyload, %.sroa.10.0.copyload
  store <2 x float> %i.m, ptr %i.l, align 4
  store float %i.n, ptr %.sroa.2295.0..sroa_idx, align 4, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %.sroa.0284.0.copyload = load <2 x float>, ptr %i.o, align 4
  %.sroa.2285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.sroa.2285.0.copyload = load float, ptr %.sroa.2285.0..sroa_idx, align 4
  %i.p = fsub <2 x float> %.sroa.0284.0.copyload, %.sroa.0298.0.copyload
  %i.q = fsub float %.sroa.2285.0.copyload, %.sroa.10.0.copyload
  store <2 x float> %i.p, ptr %i.o, align 4
  store float %i.q, ptr %.sroa.2285.0..sroa_idx, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.sroa.0274.0.copyload = load <2 x float>, ptr %i.r, align 4
  %.sroa.2275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %.sroa.2275.0.copyload = load float, ptr %.sroa.2275.0..sroa_idx, align 4
  %i.s = fsub <2 x float> %.sroa.0274.0.copyload, %.sroa.0298.0.copyload
  %i.t = fsub float %.sroa.2275.0.copyload, %.sroa.10.0.copyload
  store <2 x float> %i.s, ptr %i.r, align 4
  store float %i.t, ptr %.sroa.2275.0..sroa_idx, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !35
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !17   ; 2 uses
  %i.z = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.w, i32 %i.y), !nosanitize !11 ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 0        ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.z, 1, !nosanitize !11
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !20, !nosanitize !11

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i32 %i.w to i64, !nosanitize !11
  %i.ad = zext i32 %i.y to i64, !nosanitize !11
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @57, i64 %i.ac, i64 %i.ad) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !94
  %i.ag = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.ah = fmul float %i.ag, 5.000000e-03          ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !95
  %i.al = load float, ptr %i.aj, align 4, !tbaa !95
  %i.am = fadd float %i.ak, %i.al
  %i.an = fsub float %i.am, %i.ah                 ; 2 uses
  %i.ao = fcmp ogt float %i.ah, %i.an
  %i.ap = select i1 %i.ao, float %i.ah, float %i.an ; 6 uses
  %i.aq = fmul float %i.ah, 2.500000e-01          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !35
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !35
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.4653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.5654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 12
  %.sroa.6655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 20
  %.sroa.4648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.5649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 44
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.2217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.sroa.2206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 12
  %.sroa.2196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.az = fadd float %i.aq, %i.ap                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 84 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 176 ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.10599.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.10585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.2573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = ptrtoint ptr %i.a to i64                ; 8 uses
  %i.bm = add i64 %i.bl, 4                        ; 2 uses
  %.not714.i = icmp eq i64 %i.bm, 0               ; 2 uses
  %.not715.i = icmp eq ptr %i.a, inttoptr (i64 -4 to ptr) ; 3 uses
  %.not716.i = icmp ugt ptr %i.a, inttoptr (i64 -9 to ptr) ; 2 uses
  %i.bn = ptrtoint ptr %i.b to i64                ; 8 uses
  %i.bo = add i64 %i.bn, 4                        ; 2 uses
  %.not717.i = icmp eq i64 %i.bo, 0               ; 2 uses
  %.not718.i = icmp eq ptr %i.b, inttoptr (i64 -4 to ptr) ; 3 uses
  %.not719.i = icmp ugt ptr %i.b, inttoptr (i64 -9 to ptr) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 2 uses
  %.sroa.71252.12..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %.sroa.7.12..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 152 ; 16 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 160 ; 16 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 164 ; 9 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 172 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 68
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 60
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 76
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 40
  %.sroa.220.0..sroa_idx.i620 = getelementptr inbounds nuw i8, ptr %15, i64 36
  %.sroa.218.0..sroa_idx.i623 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %.sroa.210.0..sroa_idx.i630 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 108
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 104
  %.sroa.218.0..sroa_idx.i594 = getelementptr inbounds nuw i8, ptr %15, i64 116
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 92
  %i.cf = fsub float %i.ap, %i.aq                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 32 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 32 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 152
  br label %bb.f

bb.f:                                             ; preds = %select.unfold698, %bb.e
  %.0316 = phi i32 [ 0, %bb.e ], [ %i.ft, %select.unfold698 ]
  %.0 = phi float [ 0.000000e+00, %bb.e ], [ %.2.ph, %select.unfold698 ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %12, ptr noundef nonnull %6, float noundef %.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %13, ptr noundef nonnull %7, float noundef %.0)
  %.sroa.0652.0.copyload = load <2 x float>, ptr %13, align 8
  %.sroa.4653.0.copyload = load float, ptr %.sroa.4653.0..sroa_idx, align 8
  %.sroa.5654.0.copyload = load <2 x float>, ptr %.sroa.5654.0..sroa_idx, align 4 ; 4 uses
  %.sroa.6655.0.copyload = load <2 x float>, ptr %.sroa.6655.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0647.0.copyload = load <2 x float>, ptr %12, align 8 ; 9 uses
  %.sroa.4648.0.copyload = load float, ptr %.sroa.4648.0..sroa_idx, align 8 ; 8 uses
  %.sroa.5649.0.copyload = load <2 x float>, ptr %.sroa.5649.0..sroa_idx, align 4 ; 44 uses
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 25 uses
  %i.cn = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.co = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5649.0.copyload, i64 0 ; 14 uses
  %i.cp = fsub <2 x float> %.sroa.0652.0.copyload, %.sroa.0647.0.copyload ; 4 uses
  %i.cq = fsub float %.sroa.4653.0.copyload, %.sroa.4648.0.copyload ; 3 uses
  %i.cr = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cs = insertelement <2 x float> %i.cr, float %i.cq, i64 1 ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %.sroa.5649.0.copyload
  %i.cu = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.5649.0.copyload, <2 x i32> <i32 0, i32 2> ; 9 uses
  %i.cv = fmul <2 x float> %i.cp, %i.cu
  %i.cw = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 16 uses
  %i.cx = fmul <2 x float> %i.cp, %i.cw
  %i.cy = insertelement <2 x float> %i.cr, float %i.cq, i64 0 ; 2 uses
  %i.cz = fmul <2 x float> %i.cy, %.sroa.5649.0.copyload
  %i.da = fsub <2 x float> %i.ct, %i.cx
  %i.db = fsub <2 x float> %i.cv, %i.cz
  %i.dc = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 10 uses
  %i.dd = fmul <2 x float> %i.cy, %i.dc
  %i.de = fmul <2 x float> %i.cs, %i.dc
  %i.df = fsub <2 x float> %i.da, %i.dd           ; 2 uses
  %i.dg = fsub <2 x float> %i.db, %i.de           ; 2 uses
  %i.dh = fmul <2 x float> %i.cw, %i.df
  %i.di = fmul <2 x float> %i.cu, %i.dg
  %i.dj = fsub <2 x float> %i.dh, %i.di
  %foldExtExtBinop = fmul <2 x float> %.sroa.5649.0.copyload, %i.dg
  %foldExtExtBinop9124 = fmul <2 x float> %.sroa.5649.0.copyload, %i.df
  %shift = shufflevector <2 x float> %foldExtExtBinop9124, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9126 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.dk = fmul <2 x float> %i.dj, splat (float 2.000000e+00)
  %i.dl = fadd <2 x float> %i.cp, %i.dk
  %i.dm = fmul <2 x float> %.sroa.5654.0.copyload, %i.co ; 2 uses
  %shift9128 = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9129 = fsub <2 x float> %i.dm, %shift9128
  %i.dn = shufflevector <2 x float> %.sroa.6655.0.copyload, <2 x float> %.sroa.5654.0.copyload, <4 x i32> <i32 poison, i32 0, i32 3, i32 2>
  %i.do = shufflevector <2 x float> %foldExtExtBinop9126, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> %i.dn, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dq = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 poison, i32 0, i32 2, i32 2>
  %i.dr = insertelement <4 x float> %i.dq, float 2.000000e+00, i64 0
  %i.ds = fmul <4 x float> %i.dp, %i.dr           ; 3 uses
  %i.dt = extractelement <4 x float> %i.ds, i64 0
  %i.du = fadd float %i.cq, %i.dt
  %i.dv = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.dw = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dx = fmul <2 x float> %.sroa.6655.0.copyload, %i.dw
  %i.dy = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.dz = shufflevector <2 x float> %i.dx, <2 x float> %i.dy, <2 x i32> <i32 0, i32 3>
  %i.ea = fsub <2 x float> %i.dv, %i.dz
  %i.eb = fmul <2 x float> %.sroa.5654.0.copyload, %i.dc
  %i.ec = fadd <2 x float> %i.eb, %i.ea
  %i.ed = shufflevector <2 x float> %.sroa.6655.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = fmul <2 x float> %i.ed, %.sroa.5649.0.copyload
  %i.ef = fsub <2 x float> %i.ec, %i.ee
  %i.eg = fmul <2 x float> %.sroa.6655.0.copyload, %i.cn ; 2 uses
  %foldExtExtBinop9131 = fadd <2 x float> %foldExtExtBinop9129, %i.eg
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.231.8.vec.insert.i = fsub <2 x float> %foldExtExtBinop9131, %i.eh
  %i.ei = shufflevector <2 x float> %.sroa.5654.0.copyload, <2 x float> %.sroa.6655.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ej = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ek = fmul <4 x float> %i.ei, %i.ej           ; 4 uses
  %shift9136 = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9137 = fadd <4 x float> %i.ek, %shift9136
  %shift9139 = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9140 = fadd <4 x float> %shift9139, %foldExtExtBinop9137
  %shift9142 = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9143 = fadd <4 x float> %shift9142, %foldExtExtBinop9140
  %i.el = shufflevector <4 x float> %foldExtExtBinop9143, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.231.12.vec.insert.i = shufflevector <2 x float> %.sroa.231.8.vec.insert.i, <2 x float> %i.el, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.dl, ptr %i.at, align 8
  store float %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  store <2 x float> %i.ef, ptr %.sroa.5.0..sroa_idx, align 4
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %14, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef null, i32 noundef 0)
  %i.em = load float, ptr %i.au, align 4, !tbaa !30 ; 3 uses
end_hunk_0
begin_hunk_1_@b3TimeOfImpact:bb.a
  %i.awx = fmul <2 x float> %.sroa.0578.0.copyload.i, %i.aws
  %i.awy = fmul <2 x float> %i.avh, %.sroa.0111.0.copyload.i
  %i.awz = fmul <2 x float> %i.avh, %i.awu
  %i.axa = shufflevector <2 x float> %.sroa.0592.0.copyload.i, <2 x float> %.sroa.10599.0.copyload.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.axb = shufflevector <2 x float> %.sroa.0141.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.axc = insertelement <2 x float> %i.axb, float %.sroa.5143.0.copyload.i, i64 0 ; 3 uses
  %i.axd = fmul <2 x float> %i.axa, %i.axc
  %i.axe = insertelement <2 x float> %i.axb, float %.sroa.5143.0.copyload.i, i64 1 ; 2 uses
  %i.axf = fmul <2 x float> %i.asd, %i.axe
  %i.axg = fmul <2 x float> %i.asd, %.sroa.0141.0.copyload.i
  %i.axh = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.axc
  %i.axi = fmul <2 x float> %i.ask, %.sroa.0141.0.copyload.i
  %i.axj = fmul <2 x float> %i.ask, %i.axe
  %i.axk = extractelement <2 x float> %i.awh, i64 1
  %i.axl = fsub <2 x float> %i.awt, %i.awv
  %i.axm = fsub <2 x float> %i.aww, %i.awx
  %i.axn = fadd <2 x float> %i.awy, %i.axl        ; 2 uses
  %i.axo = fadd <2 x float> %i.awz, %i.axm        ; 2 uses
  %i.axp = fmul <2 x float> %.sroa.0578.0.copyload.i, %i.axo
  %i.axq = fmul <2 x float> %i.avs, %i.axn
  %i.axr = fsub <2 x float> %i.axp, %i.axq
  %i.axs = fmul <2 x float> %i.axr, splat (float 2.000000e+00)
  %i.axt = fadd <2 x float> %i.aws, %i.axs
  %i.axu = fsub <2 x float> %i.axd, %i.axf
  %i.axv = fsub <2 x float> %i.axg, %i.axh
  %i.axw = fadd <2 x float> %i.axi, %i.axu        ; 2 uses
  %i.axx = fadd <2 x float> %i.axj, %i.axv        ; 2 uses
  %i.axy = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.axx
  %i.axz = fmul <2 x float> %i.axa, %i.axw
  %i.aya = fsub <2 x float> %i.axy, %i.axz
  %i.ayb = shufflevector <2 x float> %.sroa.10585.0.copyload.i, <2 x float> %.sroa.10599.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.ayc = shufflevector <2 x float> %i.axn, <2 x float> %i.axw, <2 x i32> <i32 0, i32 2>
  %i.ayd = fmul <2 x float> %i.ayb, %i.ayc
  %i.aye = shufflevector <2 x float> %.sroa.0578.0.copyload.i, <2 x float> %.sroa.0592.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.ayf = shufflevector <2 x float> %i.axo, <2 x float> %i.axx, <2 x i32> <i32 1, i32 3>
  %i.ayg = fmul <2 x float> %i.aye, %i.ayf
  %i.ayh = fsub <2 x float> %i.ayd, %i.ayg
  %i.ayi = fmul <2 x float> %i.ayh, splat (float 2.000000e+00)
  %i.ayj = shufflevector <2 x float> %.sroa.0111.0.copyload.i, <2 x float> %.sroa.0141.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.ayk = fadd <2 x float> %i.ayj, %i.ayi        ; 2 uses
  %i.ayl = fmul <2 x float> %i.aya, splat (float 2.000000e+00)
  %i.aym = fadd <2 x float> %i.axc, %i.ayl
  %shift9316 = shufflevector <2 x float> %i.ayk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9317 = fsub <2 x float> %i.ayk, %shift9316
  %i.ayn = extractelement <2 x float> %foldExtExtBinop9317, i64 0
  %i.ayo = fsub <2 x float> %i.axt, %i.aym
  %i.ayp = fadd float %i.qc, %i.ayn
  %i.ayq = fadd <2 x float> %i.qh, %i.ayo
  %i.ayr = fmul float %i.ayp, %i.axk
  %i.ays = shufflevector <2 x float> %i.awh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ayt = insertelement <2 x float> %i.ays, float %i.awl, i64 0
  %i.ayu = fmul <2 x float> %i.ayq, %i.ayt        ; 2 uses
  %i.ayv = extractelement <2 x float> %i.ayu, i64 1
  %i.ayw = fadd float %i.ayv, %i.ayr
  %i.ayx = extractelement <2 x float> %i.ayu, i64 0
  %i.ayy = fadd float %i.ayx, %i.ayw
  %i.ayz = fcmp olt float %i.ayy, 0.000000e+00
  br i1 %i.ayz, label %bb.dz, label %b3GetFinalSweepTransform.exit1231.i

bb.dz:                                            ; preds = %bb.dy
  %i.aza = fneg <2 x float> %i.awh
  %i.azb = fneg float %i.awl
  %i.azc = fneg <2 x float> %.sroa.07.0.i727.i
  %i.azd = fneg float %.sroa.5.0.i728.i
  br label %b3GetFinalSweepTransform.exit1231.i

b3GetFinalSweepTransform.exit1231.i:              ; preds = %bb.dz, %bb.dy
  %.sroa.8.0.i = phi float [ %i.azd, %bb.dz ], [ %.sroa.5.0.i728.i, %bb.dy ] ; 4 uses
  %.sroa.9.0.i = phi float [ %i.azb, %bb.dz ], [ %i.awl, %bb.dy ] ; 4 uses
  %.sroa.077.0.i = phi <2 x float> [ %i.aza, %bb.dz ], [ %i.awh, %bb.dy ] ; 5 uses
  %i.aze = phi <2 x float> [ %i.azc, %bb.dz ], [ %.sroa.07.0.i727.i, %bb.dy ] ; 5 uses
  %.sroa.71252.12.copyload.i = load <2 x float>, ptr %.sroa.71252.12..sroa_idx.i, align 4, !noalias !101 ; 7 uses
  %.sroa.41250.12.copyload.i = load <2 x float>, ptr %i.bp, align 4, !noalias !101 ; 8 uses
  %.sroa.09.0.vec.extract.i.i.i1203.i = extractelement <2 x float> %.sroa.41250.12.copyload.i, i64 0
  %.sroa.4.12.copyload.i = load <2 x float>, ptr %i.bq, align 4, !noalias !101 ; 6 uses
  %.sroa.7.12.copyload.i = load <2 x float>, ptr %.sroa.7.12..sroa_idx.i, align 4, !noalias !101 ; 3 uses
  %foldExtExtBinop9319 = fmul <2 x float> %.sroa.07.0.i735.i, %.sroa.71252.12.copyload.i
  %i.azf = fmul float %.sroa.5.0.i736.i, %.sroa.09.0.vec.extract.i.i.i1203.i
  %i.azg = shufflevector <2 x float> %.sroa.41250.12.copyload.i, <2 x float> %.sroa.07.0.i735.i, <2 x i32> <i32 1, i32 3>
  %i.azh = shufflevector <2 x float> %.sroa.41250.12.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.azi = insertelement <2 x float> %i.azh, float %.sroa.5.0.i736.i, i64 0
  %i.azj = fmul <2 x float> %i.azg, %i.azi        ; 2 uses
  %i.azk = shufflevector <2 x float> %.sroa.41250.12.copyload.i, <2 x float> %.sroa.71252.12.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.azl = fmul <2 x float> %.sroa.07.0.i735.i, %i.azk ; 2 uses
  %i.azm = shufflevector <2 x float> %i.azl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.azn = fsub <2 x float> %i.azj, %i.azm
  %i.azo = shufflevector <2 x float> %i.azj, <2 x float> %foldExtExtBinop9319, <2 x i32> <i32 1, i32 2>
  %i.azp = insertelement <2 x float> %i.azl, float %i.azf, i64 1
  %i.azq = fsub <2 x float> %i.azo, %i.azp
  %i.azr = insertelement <2 x float> %.sroa.07.0.i735.i, float %.sroa.5.0.i736.i, i64 1
  %i.azs = shufflevector <2 x float> %.sroa.71252.12.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.azt = fmul <2 x float> %i.azr, %i.azs
  %i.azu = shufflevector <2 x float> %.sroa.71252.12.copyload.i, <2 x float> %.sroa.07.0.i735.i, <2 x i32> <i32 1, i32 3>
  %i.azv = insertelement <2 x float> %.sroa.71252.12.copyload.i, float %.sroa.5.0.i736.i, i64 0
  %i.azw = fmul <2 x float> %i.azu, %i.azv
  %i.azx = fadd <2 x float> %i.azt, %i.azn        ; 2 uses
  %i.azy = fadd <2 x float> %i.azw, %i.azq        ; 2 uses
  %i.azz = shufflevector <2 x float> %.sroa.71252.12.copyload.i, <2 x float> %.sroa.41250.12.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.baa = fmul <2 x float> %i.azz, %i.azx
  %i.bab = shufflevector <2 x float> %.sroa.41250.12.copyload.i, <2 x float> %.sroa.71252.12.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.bac = fmul <2 x float> %i.bab, %i.azy
  %i.bad = fsub <2 x float> %i.baa, %i.bac
  %i.bae = fmul <2 x float> %i.bad, splat (float 2.000000e+00)
  %i.baf = fadd <2 x float> %i.asb, %i.bae        ; 3 uses
  %i.bag = shufflevector <2 x float> %i.aze, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bah = insertelement <2 x float> %i.bag, float %.sroa.8.0.i, i64 1 ; 2 uses
  %i.bai = fmul <2 x float> %i.bah, %.sroa.4.12.copyload.i
  %i.baj = shufflevector <2 x float> %.sroa.7.12.copyload.i, <2 x float> %.sroa.4.12.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bak = fmul <2 x float> %i.aze, %i.baj
  %i.bal = shufflevector <2 x float> %.sroa.4.12.copyload.i, <2 x float> %.sroa.7.12.copyload.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bam = fmul <2 x float> %i.aze, %i.bal
  %i.ban = insertelement <2 x float> %i.bag, float %.sroa.8.0.i, i64 0 ; 2 uses
  %i.bao = fmul <2 x float> %i.ban, %.sroa.4.12.copyload.i
  %i.bap = fsub <2 x float> %i.bai, %i.bam
  %i.baq = fsub <2 x float> %i.bak, %i.bao
  %i.bar = shufflevector <2 x float> %.sroa.7.12.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bas = fmul <2 x float> %i.ban, %i.bar
  %i.bat = fmul <2 x float> %i.bah, %i.bar
  %i.bau = fadd <2 x float> %i.bas, %i.bap        ; 2 uses
  %i.bav = fadd <2 x float> %i.bat, %i.baq        ; 2 uses
  %i.baw = fmul <2 x float> %i.bal, %i.bau
  %i.bax = fmul <2 x float> %i.baj, %i.bav
  %i.bay = fsub <2 x float> %i.baw, %i.bax
  %i.baz = fmul <2 x float> %i.bay, splat (float 2.000000e+00)
  %i.bba = fadd <2 x float> %i.aze, %i.baz        ; 3 uses
  %i.bbb = shufflevector <2 x float> %.sroa.4.12.copyload.i, <2 x float> %.sroa.41250.12.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.bbc = shufflevector <2 x float> %i.bav, <2 x float> %i.azy, <2 x i32> <i32 0, i32 3>
  %i.bbd = fmul <2 x float> %i.bbb, %i.bbc
  %i.bbe = shufflevector <2 x float> %.sroa.4.12.copyload.i, <2 x float> %.sroa.41250.12.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.bbf = shufflevector <2 x float> %i.bau, <2 x float> %i.azx, <2 x i32> <i32 1, i32 2>
  %i.bbg = fmul <2 x float> %i.bbe, %i.bbf
  %i.bbh = fsub <2 x float> %i.bbd, %i.bbg
  %i.bbi = fmul <2 x float> %i.bbh, splat (float 2.000000e+00)
  %i.bbj = insertelement <2 x float> poison, float %.sroa.8.0.i, i64 0
  %i.bbk = insertelement <2 x float> %i.bbj, float %.sroa.5.0.i736.i, i64 1
  %i.bbl = fadd <2 x float> %i.bbk, %i.bbi        ; 3 uses
  %i.bbm = shufflevector <2 x float> %i.baf, <2 x float> %i.bba, <2 x i32> <i32 0, i32 3>
  %i.bbn = fmul <2 x float> %i.bbm, %i.bbl        ; 2 uses
  %shift9321 = shufflevector <2 x float> %i.bbn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9322 = fsub <2 x float> %i.bbn, %shift9321
  %shift9324 = shufflevector <2 x float> %i.bbl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9325 = fmul <2 x float> %shift9324, %i.bba
  %shift9327 = shufflevector <2 x float> %i.baf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9328 = fmul <2 x float> %shift9327, %i.bbl
  %foldExtExtBinop9330 = fsub <2 x float> %foldExtExtBinop9325, %foldExtExtBinop9328
  %i.bbo = fmul <2 x float> %i.baf, %i.bba        ; 2 uses
  %shift9332 = shufflevector <2 x float> %i.bbo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9333 = fsub <2 x float> %shift9332, %i.bbo
  %i.bbp = extractelement <2 x float> %foldExtExtBinop9333, i64 0
  %foldExtExtBinop9335 = fmul <2 x float> %.sroa.077.0.i, %foldExtExtBinop9322
  %shift9337 = shufflevector <2 x float> %.sroa.077.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9338 = fmul <2 x float> %shift9337, %foldExtExtBinop9330
  %foldExtExtBinop9340 = fadd <2 x float> %foldExtExtBinop9335, %foldExtExtBinop9338
  %i.bbq = extractelement <2 x float> %foldExtExtBinop9340, i64 0
  %i.bbr = fmul float %.sroa.9.0.i, %i.bbp
  %i.bbs = fadd float %i.bbr, %i.bbq
  %i.bbt = fcmp olt float %i.bbs, 0.000000e+00
  br i1 %i.bbt, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %b3GetFinalSweepTransform.exit1231.i
  store i32 1, ptr %i.be, align 8, !tbaa !41, !alias.scope !101
  %i.bbu = fmul <2 x float> %.sroa.077.0.i, %.sroa.077.0.i ; 2 uses
  %shift9342 = shufflevector <2 x float> %i.bbu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9343 = fadd <2 x float> %i.bbu, %shift9342
  %i.bbv = extractelement <2 x float> %foldExtExtBinop9343, i64 0
  %i.bbw = fmul float %.sroa.9.0.i, %.sroa.9.0.i
  %i.bbx = fadd float %i.bbw, %i.bbv              ; 2 uses
  %i.bby = fcmp ogt float %i.bbx, f0x057A0000
  br i1 %i.bby, label %bb.eb, label %b3Normalize.exit.i

bb.eb:                                            ; preds = %bb.ea
  %sqrt1320.i = call float @llvm.sqrt.f32(float %i.bbx)
  %i.bbz = fdiv float 1.000000e+00, %sqrt1320.i   ; 2 uses
  %i.bca = insertelement <2 x float> poison, float %i.bbz, i64 0
  %i.bcb = shufflevector <2 x float> %i.bca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcc = fmul <2 x float> %.sroa.077.0.i, %i.bcb
  %i.bcd = fmul float %.sroa.9.0.i, %i.bbz
  br label %b3Normalize.exit.i

b3Normalize.exit.i:                               ; preds = %bb.eb, %bb.ea
  %.sroa.07.0.i.i = phi <2 x float> [ %i.bcc, %bb.eb ], [ zeroinitializer, %bb.ea ]
  %.sroa.5.0.i.i = phi float [ %i.bcd, %bb.eb ], [ 0.000000e+00, %bb.ea ]
  store <2 x float> %.sroa.07.0.i.i, ptr %i.br, align 8, !alias.scope !101
  store float %.sroa.5.0.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !19, !alias.scope !101
  br label %b3MakeSeparationFunction.exit

bb.ec:                                            ; preds = %b3GetFinalSweepTransform.exit1231.i
  store i32 2, ptr %i.be, align 8, !tbaa !41, !alias.scope !101
  store <2 x float> %.sroa.07.0.i735.i, ptr %i.br, align 8, !alias.scope !101
  store float %.sroa.5.0.i736.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !19, !alias.scope !101
  store <2 x float> %i.aze, ptr %i.bs, align 4, !alias.scope !101
  store float %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !19, !alias.scope !101
  br label %b3MakeSeparationFunction.exit

b3MakeSeparationFunction.exit:                    ; preds = %bb.n, %bb.o, %bb.aj, %b3Normalize.exit765.i, %bb.ao, %bb.ap, %bb.bm, %bb.cj, %bb.dx, %b3Normalize.exit.i, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9, !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9, !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9, !noalias !101
  %.promoted2404 = load i32, ptr %i.cg, align 4
  %.promoted = load i32, ptr %i.cl, align 4       ; 3 uses
  %16 = add i32 %i.aa, %.promoted
  br label %bb.ed

bb.ed:                                            ; preds = %bb.hg, %b3MakeSeparationFunction.exit
  %i.bce = phi i32 [ %.promoted, %b3MakeSeparationFunction.exit ], [ %18, %bb.hg ] ; 30 uses
  %.lcssa24032405 = phi i32 [ %.promoted2404, %b3MakeSeparationFunction.exit ], [ %i.cst, %bb.hg ] ; 31 uses
  %.0338 = phi float [ %i.af, %b3MakeSeparationFunction.exit ], [ %.3341, %bb.hg ] ; 7 uses
  %.0335 = phi i32 [ 0, %b3MakeSeparationFunction.exit ], [ %i.csy, %bb.hg ]
  %i.bcf = load <2 x float>, ptr %i.bt, align 4, !noalias !102 ; 3 uses
  %i.bcg = load <2 x float>, ptr %i.bv, align 4, !noalias !102 ; 3 uses
  %i.bch = load <2 x float>, ptr %i.bu, align 4, !noalias !102 ; 2 uses
  %i.bci = load <2 x float>, ptr %i.bw, align 4, !noalias !102 ; 2 uses
  %i.bcj = shufflevector <2 x float> %i.bcf, <2 x float> %i.bcg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bck = shufflevector <2 x float> %i.bch, <2 x float> %i.bci, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bcl = fmul <4 x float> %i.bcj, %i.bck        ; 4 uses
  %shift9345 = shufflevector <4 x float> %i.bcl, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9346 = fadd <4 x float> %i.bcl, %shift9345
  %shift9348 = shufflevector <4 x float> %i.bcl, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9349 = fadd <4 x float> %foldExtExtBinop9346, %shift9348
  %shift9351 = shufflevector <4 x float> %i.bcl, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9352 = fadd <4 x float> %shift9351, %foldExtExtBinop9349
  %i.bcm = extractelement <4 x float> %foldExtExtBinop9352, i64 0
  %i.bcn = fcmp olt float %i.bcm, 0.000000e+00    ; 2 uses
  %i.bco = fneg <2 x float> %i.bcf
  %i.bcp = fneg <2 x float> %i.bcg
  %i.bcq = select i1 %i.bcn, <2 x float> %i.bcp, <2 x float> %i.bcg
  %i.bcr = select i1 %i.bcn, <2 x float> %i.bco, <2 x float> %i.bcf
  %i.bcs = fsub float 1.000000e+00, %.0338        ; 3 uses
  %i.bct = insertelement <2 x float> poison, float %.0338, i64 0
  %i.bcu = shufflevector <2 x float> %i.bct, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bcv = fmul <2 x float> %i.bcu, %i.bch
  %i.bcw = insertelement <2 x float> poison, float %i.bcs, i64 0
  %i.bcx = shufflevector <2 x float> %i.bcw, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bcy = fmul <2 x float> %i.bcx, %i.bcr
  %i.bcz = fadd <2 x float> %i.bcv, %i.bcy        ; 2 uses
  %i.bda = fmul <2 x float> %i.bcu, %i.bci
  %i.bdb = fmul <2 x float> %i.bcx, %i.bcq
  %i.bdc = fadd <2 x float> %i.bda, %i.bdb        ; 2 uses
  %i.bdd = shufflevector <2 x float> %i.bcz, <2 x float> %i.bdc, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.bde = fmul <4 x float> %i.bdd, %i.bdd        ; 4 uses
  %shift9354 = shufflevector <4 x float> %i.bde, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9355 = fadd <4 x float> %i.bde, %shift9354
  %shift9357 = shufflevector <4 x float> %i.bde, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9358 = fadd <4 x float> %foldExtExtBinop9355, %shift9357
  %shift9360 = shufflevector <4 x float> %i.bde, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9361 = fadd <4 x float> %shift9360, %foldExtExtBinop9358
  %i.bdf = extractelement <4 x float> %foldExtExtBinop9361, i64 0 ; 2 uses
  %i.bdg = fcmp ogt float %i.bdf, f0x057A0000
  br i1 %i.bdg, label %bb.ee, label %b3GetSweepTransform.exit646

bb.ee:                                            ; preds = %bb.ed
  %sqrt.i.i.i641 = call float @llvm.sqrt.f32(float %i.bdf)
  %i.bdh = fdiv float 1.000000e+00, %sqrt.i.i.i641
  %i.bdi = insertelement <2 x float> poison, float %i.bdh, i64 0
  %i.bdj = shufflevector <2 x float> %i.bdi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bdk = fmul <2 x float> %i.bcz, %i.bdj
  %i.bdl = fmul <2 x float> %i.bdc, %i.bdj
  br label %b3GetSweepTransform.exit646

b3GetSweepTransform.exit646:                      ; preds = %bb.ed, %bb.ee
  %.sroa.4.0.i.i.i616 = phi <2 x float> [ %i.bdl, %bb.ee ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.ed ] ; 21 uses
  %.sroa.0.0.i.i.i617 = phi <2 x float> [ %i.bdk, %bb.ee ], [ zeroinitializer, %bb.ed ] ; 34 uses
  %.sroa.019.0.copyload.i619 = load <2 x float>, ptr %i.bx, align 4, !noalias !102 ; 2 uses
  %.sroa.220.0.copyload.i621 = load float, ptr %.sroa.220.0..sroa_idx.i620, align 4, !noalias !102
  %.sroa.017.0.copyload.i622 = load <2 x float>, ptr %i.by, align 8, !noalias !102 ; 2 uses
  %.sroa.218.0.copyload.i624 = load float, ptr %.sroa.218.0..sroa_idx.i623, align 8, !noalias !102
  %.sroa.012.4.vec.extract.i.i627 = extractelement <2 x float> %.sroa.019.0.copyload.i619, i64 1
  %.sroa.0.4.vec.extract.i.i628 = extractelement <2 x float> %.sroa.017.0.copyload.i622, i64 1
  %i.bdm = fmul float %i.bcs, %.sroa.012.4.vec.extract.i.i627
  %i.bdn = fmul float %.0338, %.sroa.0.4.vec.extract.i.i628
  %i.bdo = fadd float %i.bdm, %i.bdn
  %.sroa.09.0.copyload.i629 = load <2 x float>, ptr %i.bb, align 8, !noalias !102 ; 4 uses
  %.sroa.210.0.copyload.i631 = load float, ptr %.sroa.210.0..sroa_idx.i630, align 8, !noalias !102 ; 3 uses
  %.sroa.2.8.vec.extract65.i.i632 = extractelement <2 x float> %.sroa.4.0.i.i.i616, i64 0 ; 3 uses
  %.sroa.09.4.vec.extract13.i.i.i633 = extractelement <2 x float> %.sroa.0.0.i.i.i617, i64 1 ; 6 uses
  %.sroa.0.4.vec.extract8.i.i.i634 = extractelement <2 x float> %.sroa.09.0.copyload.i629, i64 1 ; 2 uses
  %.sroa.09.0.vec.extract.i.i.i636 = extractelement <2 x float> %.sroa.0.0.i.i.i617, i64 0
  %.sroa.2.12.vec.extract.i.i637 = extractelement <2 x float> %.sroa.4.0.i.i.i616, i64 1
  %i.bdp = shufflevector <2 x float> %.sroa.019.0.copyload.i619, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bdq = insertelement <2 x float> %i.bdp, float %.sroa.220.0.copyload.i621, i64 0
  %i.bdr = fmul <2 x float> %i.bcx, %i.bdq
  %i.bds = shufflevector <2 x float> %.sroa.017.0.copyload.i622, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bdt = insertelement <2 x float> %i.bds, float %.sroa.218.0.copyload.i624, i64 0
  %i.bdu = fmul <2 x float> %i.bcu, %i.bdt
  %i.bdv = fadd <2 x float> %i.bdr, %i.bdu
  %i.bdw = fmul float %.sroa.09.4.vec.extract13.i.i.i633, %.sroa.210.0.copyload.i631
  %i.bdx = fmul float %.sroa.2.8.vec.extract65.i.i632, %.sroa.0.4.vec.extract8.i.i.i634
  %i.bdy = shufflevector <2 x float> %.sroa.4.0.i.i.i616, <2 x float> %.sroa.0.0.i.i.i617, <2 x i32> <i32 0, i32 2> ; 12 uses
  %i.bdz = fmul <2 x float> %i.bdy, %.sroa.09.0.copyload.i629 ; 2 uses
  %i.bea = shufflevector <2 x float> %.sroa.09.0.copyload.i629, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.beb = insertelement <2 x float> %i.bea, float %.sroa.210.0.copyload.i631, i64 0 ; 2 uses
  %i.bec = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.beb ; 2 uses
  %i.bed = shufflevector <2 x float> %i.bdz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bee = insertelement <2 x float> %i.bed, float %i.bdw, i64 0
  %i.bef = shufflevector <2 x float> %i.bec, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.beg = insertelement <2 x float> %i.bef, float %i.bdx, i64 0
  %i.beh = fsub <2 x float> %i.bee, %i.beg
  %i.bei = fsub <2 x float> %i.bdz, %i.bec
  %i.bej = shufflevector <2 x float> %.sroa.4.0.i.i.i616, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 18 uses
  %i.bek = fmul <2 x float> %i.bej, %.sroa.09.0.copyload.i629
  %i.bel = insertelement <2 x float> %i.bea, float %.sroa.210.0.copyload.i631, i64 1
  %i.bem = fmul <2 x float> %i.bej, %i.bel
  %i.ben = fadd <2 x float> %i.bek, %i.beh        ; 2 uses
  %i.beo = fadd <2 x float> %i.bem, %i.bei        ; 2 uses
  %foldExtExtBinop9363 = fmul <2 x float> %.sroa.4.0.i.i.i616, %i.ben
  %shift9365 = shufflevector <2 x float> %i.beo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9366 = fmul <2 x float> %.sroa.0.0.i.i.i617, %shift9365
  %foldExtExtBinop9368 = fsub <2 x float> %foldExtExtBinop9363, %foldExtExtBinop9366
  %i.bep = extractelement <2 x float> %foldExtExtBinop9368, i64 0
  %i.beq = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.beo
  %i.ber = shufflevector <2 x float> %.sroa.0.0.i.i.i617, <2 x float> %.sroa.4.0.i.i.i616, <2 x i32> <i32 1, i32 2> ; 12 uses
  %i.bes = fmul <2 x float> %i.ber, %i.ben
  %i.bet = fsub <2 x float> %i.beq, %i.bes
  %i.beu = fmul float %i.bep, 2.000000e+00
  %i.bev = fadd float %.sroa.0.4.vec.extract8.i.i.i634, %i.beu
  %i.bew = fmul <2 x float> %i.bet, splat (float 2.000000e+00)
  %i.bex = fadd <2 x float> %i.beb, %i.bew
  %i.bey = fsub float %i.bdo, %i.bev              ; 4 uses
  %i.bez = fsub <2 x float> %i.bdv, %i.bex        ; 4 uses
  %i.bfa = load <2 x float>, ptr %i.bz, align 8, !noalias !103 ; 3 uses
  %i.bfb = load <2 x float>, ptr %i.cb, align 8, !noalias !103 ; 3 uses
  %i.bfc = load <2 x float>, ptr %i.ca, align 8, !noalias !103 ; 2 uses
  %i.bfd = load <2 x float>, ptr %i.cc, align 8, !noalias !103 ; 2 uses
  %i.bfe = shufflevector <2 x float> %i.bfa, <2 x float> %i.bfb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bff = shufflevector <2 x float> %i.bfc, <2 x float> %i.bfd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bfg = fmul <4 x float> %i.bfe, %i.bff        ; 4 uses
  %shift9370 = shufflevector <4 x float> %i.bfg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9371 = fadd <4 x float> %i.bfg, %shift9370
  %shift9373 = shufflevector <4 x float> %i.bfg, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9374 = fadd <4 x float> %foldExtExtBinop9371, %shift9373
  %shift9376 = shufflevector <4 x float> %i.bfg, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9377 = fadd <4 x float> %shift9376, %foldExtExtBinop9374
  %i.bfh = extractelement <4 x float> %foldExtExtBinop9377, i64 0
  %i.bfi = fcmp olt float %i.bfh, 0.000000e+00    ; 2 uses
  %i.bfj = fneg <2 x float> %i.bfa
  %i.bfk = fneg <2 x float> %i.bfb
  %i.bfl = select i1 %i.bfi, <2 x float> %i.bfk, <2 x float> %i.bfb
  %i.bfm = select i1 %i.bfi, <2 x float> %i.bfj, <2 x float> %i.bfa
  %i.bfn = fmul <2 x float> %i.bcx, %i.bfl
  %i.bfo = fmul <2 x float> %i.bcx, %i.bfm
  %i.bfp = fmul <2 x float> %i.bcu, %i.bfc
  %i.bfq = fadd <2 x float> %i.bfp, %i.bfo        ; 2 uses
  %i.bfr = fmul <2 x float> %i.bcu, %i.bfd
  %i.bfs = fadd <2 x float> %i.bfr, %i.bfn        ; 2 uses
  %i.bft = shufflevector <2 x float> %i.bfq, <2 x float> %i.bfs, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.bfu = fmul <4 x float> %i.bft, %i.bft        ; 4 uses
  %shift9379 = shufflevector <4 x float> %i.bfu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9380 = fadd <4 x float> %i.bfu, %shift9379
  %shift9382 = shufflevector <4 x float> %i.bfu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9383 = fadd <4 x float> %foldExtExtBinop9380, %shift9382
  %shift9385 = shufflevector <4 x float> %i.bfu, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop9386 = fadd <4 x float> %shift9385, %foldExtExtBinop9383
  %i.bfv = extractelement <4 x float> %foldExtExtBinop9386, i64 0 ; 2 uses
  %i.bfw = fcmp ogt float %i.bfv, f0x057A0000
  br i1 %i.bfw, label %bb.ef, label %b3GetSweepTransform.exit

bb.ef:                                            ; preds = %b3GetSweepTransform.exit646
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.bfv)
  %i.bfx = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.bfy = insertelement <2 x float> poison, float %i.bfx, i64 0
  %i.bfz = shufflevector <2 x float> %i.bfy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bga = fmul <2 x float> %i.bfq, %i.bfz
  %i.bgb = fmul <2 x float> %i.bfs, %i.bfz
  br label %b3GetSweepTransform.exit

b3GetSweepTransform.exit:                         ; preds = %b3GetSweepTransform.exit646, %bb.ef
  %.sroa.4.0.i.i.i = phi <2 x float> [ %i.bgb, %bb.ef ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit646 ] ; 21 uses
  %.sroa.0.0.i.i.i = phi <2 x float> [ %i.bga, %bb.ef ], [ zeroinitializer, %b3GetSweepTransform.exit646 ] ; 34 uses
  %.sroa.019.0.copyload.i = load <2 x float>, ptr %i.cd, align 8, !noalias !103 ; 2 uses
  %.sroa.220.0.copyload.i = load float, ptr %.sroa.220.0..sroa_idx.i, align 8, !noalias !103
  %.sroa.017.0.copyload.i593 = load <2 x float>, ptr %i.ce, align 4, !noalias !103 ; 2 uses
  %.sroa.218.0.copyload.i595 = load float, ptr %.sroa.218.0..sroa_idx.i594, align 4, !noalias !103
  %.sroa.012.4.vec.extract.i.i = extractelement <2 x float> %.sroa.019.0.copyload.i, i64 1
  %.sroa.0.4.vec.extract.i.i597 = extractelement <2 x float> %.sroa.017.0.copyload.i593, i64 1
  %i.bgc = fmul float %i.bcs, %.sroa.012.4.vec.extract.i.i
  %i.bgd = fmul float %.0338, %.sroa.0.4.vec.extract.i.i597
  %i.bge = fadd float %i.bgc, %i.bgd
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.bd, align 4, !noalias !103 ; 4 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 4, !noalias !103 ; 3 uses
  %.sroa.2.8.vec.extract65.i.i598 = extractelement <2 x float> %.sroa.4.0.i.i.i, i64 0 ; 4 uses
  %.sroa.09.4.vec.extract13.i.i.i599 = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1 ; 7 uses
  %.sroa.0.4.vec.extract8.i.i.i600 = extractelement <2 x float> %.sroa.09.0.copyload.i, i64 1 ; 2 uses
  %i.bgf = shufflevector <2 x float> %.sroa.019.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bgg = insertelement <2 x float> %i.bgf, float %.sroa.220.0.copyload.i, i64 0
  %i.bgh = fmul <2 x float> %i.bcx, %i.bgg
  %i.bgi = shufflevector <2 x float> %.sroa.017.0.copyload.i593, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bgj = insertelement <2 x float> %i.bgi, float %.sroa.218.0.copyload.i595, i64 0
  %i.bgk = fmul <2 x float> %i.bcu, %i.bgj
  %i.bgl = fadd <2 x float> %i.bgh, %i.bgk
  %i.bgm = fmul float %.sroa.09.4.vec.extract13.i.i.i599, %.sroa.210.0.copyload.i
  %i.bgn = fmul float %.sroa.2.8.vec.extract65.i.i598, %.sroa.0.4.vec.extract8.i.i.i600
  %i.bgo = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.0.0.i.i.i, <2 x i32> <i32 0, i32 2> ; 11 uses
  %i.bgp = fmul <2 x float> %i.bgo, %.sroa.09.0.copyload.i ; 2 uses
  %i.bgq = shufflevector <2 x float> %.sroa.09.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bgr = insertelement <2 x float> %i.bgq, float %.sroa.210.0.copyload.i, i64 0 ; 2 uses
  %i.bgs = fmul <2 x float> %.sroa.0.0.i.i.i, %i.bgr ; 2 uses
  %i.bgt = shufflevector <2 x float> %i.bgp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bgu = insertelement <2 x float> %i.bgt, float %i.bgm, i64 0
  %i.bgv = shufflevector <2 x float> %i.bgs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bgw = insertelement <2 x float> %i.bgv, float %i.bgn, i64 0
  %i.bgx = fsub <2 x float> %i.bgu, %i.bgw
  %i.bgy = fsub <2 x float> %i.bgp, %i.bgs
  %i.bgz = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 18 uses
  %i.bha = fmul <2 x float> %i.bgz, %.sroa.09.0.copyload.i
  %i.bhb = insertelement <2 x float> %i.bgq, float %.sroa.210.0.copyload.i, i64 1
  %i.bhc = fmul <2 x float> %i.bgz, %i.bhb
  %i.bhd = fadd <2 x float> %i.bha, %i.bgx        ; 2 uses
  %i.bhe = fadd <2 x float> %i.bhc, %i.bgy        ; 2 uses
  %foldExtExtBinop9388 = fmul <2 x float> %.sroa.4.0.i.i.i, %i.bhd
  %shift9390 = shufflevector <2 x float> %i.bhe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9391 = fmul <2 x float> %.sroa.0.0.i.i.i, %shift9390
  %foldExtExtBinop9393 = fsub <2 x float> %foldExtExtBinop9388, %foldExtExtBinop9391
  %i.bhf = extractelement <2 x float> %foldExtExtBinop9393, i64 0
  %i.bhg = fmul <2 x float> %.sroa.0.0.i.i.i, %i.bhe
  %i.bhh = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <2 x i32> <i32 1, i32 2> ; 11 uses
  %i.bhi = fmul <2 x float> %i.bhh, %i.bhd
  %i.bhj = fsub <2 x float> %i.bhg, %i.bhi
  %i.bhk = fmul float %i.bhf, 2.000000e+00
  %i.bhl = fadd float %.sroa.0.4.vec.extract8.i.i.i600, %i.bhk
  %i.bhm = fmul <2 x float> %i.bhj, splat (float 2.000000e+00)
  %i.bhn = fadd <2 x float> %i.bgr, %i.bhm
  %i.bho = fsub float %i.bge, %i.bhl              ; 4 uses
  %i.bhp = fsub <2 x float> %i.bgl, %i.bhn        ; 4 uses
  %i.bhq = load i32, ptr %i.be, align 8, !tbaa !41
  switch i32 %i.bhq, label %b3FindMinSeparation.exit [
    i32 1, label %bb.eg
    i32 2, label %bb.ez
    i32 3, label %bb.ft
    i32 4, label %bb.gd
  ]

bb.eg:                                            ; preds = %b3GetSweepTransform.exit
  %.sroa.0309.0.copyload.i = load <2 x float>, ptr %i.br, align 8 ; 6 uses
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !19 ; 3 uses
  %.sroa.0.4.vec.extract8.i.i.i540 = extractelement <2 x float> %.sroa.0309.0.copyload.i, i64 1 ; 4 uses
  %i.bhr = shufflevector <2 x float> %.sroa.0309.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bhs = insertelement <2 x float> %i.bhr, float %.sroa.6.0.copyload.i, i64 0 ; 6 uses
  %i.bht = fmul <2 x float> %i.ber, %i.bhs
  %i.bhu = insertelement <2 x float> %i.bhr, float %.sroa.6.0.copyload.i, i64 1 ; 3 uses
  %i.bhv = fmul <2 x float> %i.bdy, %i.bhu
  %i.bhw = fmul <2 x float> %i.bdy, %.sroa.0309.0.copyload.i
  %i.bhx = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.bhs
  %i.bhy = fsub <2 x float> %i.bht, %i.bhv
  %i.bhz = fsub <2 x float> %i.bhw, %i.bhx
  %i.bia = fmul <2 x float> %i.bej, %.sroa.0309.0.copyload.i
  %i.bib = fmul <2 x float> %i.bej, %i.bhu
  %i.bic = fsub <2 x float> %i.bhy, %i.bia        ; 2 uses
  %i.bid = fsub <2 x float> %i.bhz, %i.bib        ; 2 uses
  %foldExtExtBinop9395 = fmul <2 x float> %.sroa.4.0.i.i.i616, %i.bic
  %shift9397 = shufflevector <2 x float> %i.bid, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9398 = fmul <2 x float> %.sroa.0.0.i.i.i617, %shift9397
  %foldExtExtBinop9400 = fsub <2 x float> %foldExtExtBinop9395, %foldExtExtBinop9398
  %i.bie = extractelement <2 x float> %foldExtExtBinop9400, i64 0
  %i.bif = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.bid
  %i.big = fmul <2 x float> %i.ber, %i.bic
  %i.bih = fsub <2 x float> %i.bif, %i.big
  %i.bii = fmul <2 x float> %i.bih, splat (float 2.000000e+00)
  %i.bij = fmul float %i.bie, 2.000000e+00
  %i.bik = fadd float %.sroa.0.4.vec.extract8.i.i.i540, %i.bij
  %i.bil = fadd <2 x float> %i.bhs, %i.bii
  %i.bim = fmul float %.sroa.2.8.vec.extract65.i.i598, %.sroa.0.4.vec.extract8.i.i.i540
  %i.bin = fmul float %.sroa.09.4.vec.extract13.i.i.i599, %.sroa.6.0.copyload.i
  %i.bio = fmul <2 x float> %.sroa.0.0.i.i.i, %i.bhs ; 2 uses
  %i.bip = fmul <2 x float> %i.bgo, %.sroa.0309.0.copyload.i ; 2 uses
  %i.biq = shufflevector <2 x float> %i.bio, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bir = insertelement <2 x float> %i.biq, float %i.bim, i64 0
  %i.bis = shufflevector <2 x float> %i.bip, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bit = insertelement <2 x float> %i.bis, float %i.bin, i64 0
  %i.biu = fsub <2 x float> %i.bir, %i.bit
  %i.biv = fsub <2 x float> %i.bio, %i.bip
  %i.biw = fmul <2 x float> %i.bgz, %.sroa.0309.0.copyload.i
  %i.bix = fmul <2 x float> %i.bgz, %i.bhu
  %i.biy = fadd <2 x float> %i.biw, %i.biu        ; 2 uses
  %i.biz = fadd <2 x float> %i.bix, %i.biv        ; 2 uses
  %foldExtExtBinop9402 = fmul <2 x float> %.sroa.4.0.i.i.i, %i.biy
  %shift9404 = shufflevector <2 x float> %i.biz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9405 = fmul <2 x float> %.sroa.0.0.i.i.i, %shift9404
  %foldExtExtBinop9407 = fsub <2 x float> %foldExtExtBinop9402, %foldExtExtBinop9405
  %i.bja = extractelement <2 x float> %foldExtExtBinop9407, i64 0
  %i.bjb = fmul <2 x float> %.sroa.0.0.i.i.i, %i.biz
  %i.bjc = fmul <2 x float> %i.bhh, %i.biy
  %i.bjd = fsub <2 x float> %i.bjb, %i.bjc
  %i.bje = fmul <2 x float> %i.bjd, splat (float 2.000000e+00)
  %i.bjf = fmul float %i.bja, 2.000000e+00
  %i.bjg = fsub float %i.bjf, %.sroa.0.4.vec.extract8.i.i.i540
  %i.bjh = fsub <2 x float> %i.bje, %i.bhs
  %i.bji = load ptr, ptr %15, align 8, !tbaa !39  ; 4 uses
  %i.bjj = icmp ne ptr %i.bji, null, !nosanitize !11
  %i.bjk = ptrtoint ptr %i.bji to i64, !nosanitize !11 ; 2 uses
  %i.bjl = and i64 %i.bjk, 7, !nosanitize !11
  %i.bjm = icmp eq i64 %i.bjl, 0, !nosanitize !11
  %i.bjn = and i1 %i.bjj, %i.bjm, !nosanitize !11
  br i1 %i.bjn, label %bb.ei, label %bb.eh, !prof !12, !nosanitize !11

bb.eh:                                            ; preds = %bb.eg
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @186, i64 %i.bjk) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ei:                                            ; preds = %bb.eg
  %i.bjo = load ptr, ptr %i.bji, align 8, !tbaa !18 ; 6 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bji, i64 8
  %i.bjq = load i32, ptr %i.bjp, align 8, !tbaa !17 ; 2 uses
  %i.bjr = icmp ne ptr %i.bjo, null, !nosanitize !11
  %i.bjs = ptrtoint ptr %i.bjo to i64, !nosanitize !11 ; 8 uses
  %i.bjt = and i64 %i.bjs, 3, !nosanitize !11
  %i.bju = icmp eq i64 %i.bjt, 0, !nosanitize !11
  %i.bjv = and i1 %i.bjr, %i.bju, !nosanitize !11
  br i1 %i.bjv, label %bb.ek, label %bb.ej, !prof !12, !nosanitize !11

bb.ej:                                            ; preds = %bb.ei
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.bjs) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ek:                                            ; preds = %bb.ei
  %i.bjw = icmp sgt i32 %i.bjq, 1
  br i1 %i.bjw, label %.lr.ph.i.i, label %b3GetPointSupport.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ek
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bjo, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !19
  %.sroa.017.0.copyload.i.i = load <2 x float>, ptr %i.bjo, align 4 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bjq to i64
  %i.bjx = shufflevector <2 x float> %.sroa.017.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bjy = insertelement <2 x float> %i.bjx, float %.sroa.4.0.copyload.i.i, i64 0
  br label %bb.el

bb.el:                                            ; preds = %bb.en, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.en ] ; 4 uses
  %.035.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.en ]
  %.02534.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.126.i.i, %bb.en ] ; 2 uses
  %i.bjz = mul nuw nsw i64 %indvars.iv.i.i, 12
  %i.bka = add i64 %i.bjz, %i.bjs, !nosanitize !11 ; 2 uses
  %.not.i.i = icmp ult i64 %i.bka, %i.bjs, !nosanitize !11
  br i1 %.not.i.i, label %bb.em, label %bb.en, !prof !20, !nosanitize !11

bb.em:                                            ; preds = %bb.el
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.bjs, i64 %i.bka) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.en:                                            ; preds = %bb.el
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bkb = getelementptr inbounds nuw [12 x i8], ptr %i.bjo, i64 %indvars.iv.i.i ; 2 uses
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bkb, i64 8
  %.sroa.28.0.copyload.i.i = load float, ptr %.sroa.28.0..sroa_idx.i.i, align 4
  %.sroa.07.0.copyload.i.i = load <2 x float>, ptr %i.bkb, align 4 ; 2 uses
  %i.bkc = shufflevector <2 x float> %.sroa.07.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bkd = insertelement <2 x float> %i.bkc, float %.sroa.28.0.copyload.i.i, i64 0
  %i.bke = fsub <2 x float> %i.bkd, %i.bjy
  %i.bkf = fmul <2 x float> %i.bil, %i.bke        ; 2 uses
  %foldExtExtBinop9409 = fsub <2 x float> %.sroa.07.0.copyload.i.i, %.sroa.017.0.copyload.i.i
  %i.bkg = extractelement <2 x float> %foldExtExtBinop9409, i64 1
  %i.bkh = fmul float %i.bik, %i.bkg
  %i.bki = extractelement <2 x float> %i.bkf, i64 1
  %i.bkj = fadd float %i.bki, %i.bkh
  %i.bkk = extractelement <2 x float> %i.bkf, i64 0
  %i.bkl = fadd float %i.bkk, %i.bkj              ; 2 uses
  %i.bkm = fcmp ogt float %i.bkl, %.02534.i.i     ; 2 uses
  %i.bkn = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.1.i.i = select i1 %i.bkm, i32 %i.bkn, i32 %.035.i.i ; 2 uses
  %.126.i.i = select i1 %i.bkm, float %i.bkl, float %.02534.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %b3GetPointSupport.exit.i, label %bb.el, !llvm.loop !1

b3GetPointSupport.exit.i:                         ; preds = %bb.en, %bb.ek
  %.0.lcssa.i.i = phi i32 [ 0, %bb.ek ], [ %.1.i.i, %bb.en ] ; 3 uses
  %i.bko = load ptr, ptr %i.bc, align 8, !tbaa !40 ; 4 uses
  %i.bkp = icmp ne ptr %i.bko, null, !nosanitize !11
  %i.bkq = ptrtoint ptr %i.bko to i64, !nosanitize !11 ; 2 uses
  %i.bkr = and i64 %i.bkq, 7, !nosanitize !11
  %i.bks = icmp eq i64 %i.bkr, 0, !nosanitize !11
  %i.bkt = and i1 %i.bkp, %i.bks, !nosanitize !11
  br i1 %i.bkt, label %bb.ep, label %bb.eo, !prof !12, !nosanitize !11

bb.eo:                                            ; preds = %b3GetPointSupport.exit.i
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @187, i64 %i.bkq) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ep:                                            ; preds = %b3GetPointSupport.exit.i
  %i.bku = load ptr, ptr %i.bko, align 8, !tbaa !18 ; 6 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bko, i64 8
  %i.bkw = load i32, ptr %i.bkv, align 8, !tbaa !17 ; 2 uses
  %i.bkx = icmp ne ptr %i.bku, null, !nosanitize !11
  %i.bky = ptrtoint ptr %i.bku to i64, !nosanitize !11 ; 8 uses
  %i.bkz = and i64 %i.bky, 3, !nosanitize !11
  %i.bla = icmp eq i64 %i.bkz, 0, !nosanitize !11
  %i.blb = and i1 %i.bkx, %i.bla, !nosanitize !11
  br i1 %i.blb, label %bb.er, label %bb.eq, !prof !12, !nosanitize !11

bb.eq:                                            ; preds = %bb.ep
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.bky) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.er:                                            ; preds = %bb.ep
  %i.blc = icmp sgt i32 %i.bkw, 1
  br i1 %i.blc, label %.lr.ph.i410.i, label %b3GetPointSupport.exit430.i

.lr.ph.i410.i:                                    ; preds = %bb.er
  %.sroa.4.0..sroa_idx.i407.i = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  %.sroa.4.0.copyload.i408.i = load float, ptr %.sroa.4.0..sroa_idx.i407.i, align 4, !tbaa !19
  %.sroa.017.0.copyload.i411.i = load <2 x float>, ptr %i.bku, align 4 ; 2 uses
  %wide.trip.count.i416.i = zext nneg i32 %i.bkw to i64
  %i.bld = shufflevector <2 x float> %.sroa.017.0.copyload.i411.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ble = insertelement <2 x float> %i.bld, float %.sroa.4.0.copyload.i408.i, i64 0
  br label %bb.es

bb.es:                                            ; preds = %bb.eu, %.lr.ph.i410.i
  %indvars.iv.i417.i = phi i64 [ 1, %.lr.ph.i410.i ], [ %indvars.iv.next.i421.i, %bb.eu ] ; 4 uses
  %.035.i418.i = phi i32 [ 0, %.lr.ph.i410.i ], [ %.1.i427.i, %bb.eu ]
  %.02534.i419.i = phi float [ 0.000000e+00, %.lr.ph.i410.i ], [ %.126.i428.i, %bb.eu ] ; 2 uses
  %i.blf = mul nuw nsw i64 %indvars.iv.i417.i, 12
  %i.blg = add i64 %i.blf, %i.bky, !nosanitize !11 ; 2 uses
  %.not.i420.i = icmp ult i64 %i.blg, %i.bky, !nosanitize !11
  br i1 %.not.i420.i, label %bb.et, label %bb.eu, !prof !20, !nosanitize !11

bb.et:                                            ; preds = %bb.es
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.bky, i64 %i.blg) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.eu:                                            ; preds = %bb.es
  %indvars.iv.next.i421.i = add nuw nsw i64 %indvars.iv.i417.i, 1 ; 2 uses
  %i.blh = getelementptr inbounds nuw [12 x i8], ptr %i.bku, i64 %indvars.iv.i417.i ; 2 uses
  %.sroa.28.0..sroa_idx.i422.i = getelementptr inbounds nuw i8, ptr %i.blh, i64 8
  %.sroa.28.0.copyload.i423.i = load float, ptr %.sroa.28.0..sroa_idx.i422.i, align 4
  %.sroa.07.0.copyload.i424.i = load <2 x float>, ptr %i.blh, align 4 ; 2 uses
  %i.bli = shufflevector <2 x float> %.sroa.07.0.copyload.i424.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.blj = insertelement <2 x float> %i.bli, float %.sroa.28.0.copyload.i423.i, i64 0
  %i.blk = fsub <2 x float> %i.blj, %i.ble
  %i.bll = fmul <2 x float> %i.bjh, %i.blk        ; 2 uses
  %foldExtExtBinop9411 = fsub <2 x float> %.sroa.07.0.copyload.i424.i, %.sroa.017.0.copyload.i411.i
  %i.blm = extractelement <2 x float> %foldExtExtBinop9411, i64 1
  %i.bln = fmul float %i.bjg, %i.blm
  %i.blo = extractelement <2 x float> %i.bll, i64 1
  %i.blp = fadd float %i.blo, %i.bln
  %i.blq = extractelement <2 x float> %i.bll, i64 0
  %i.blr = fadd float %i.blq, %i.blp              ; 2 uses
  %i.bls = fcmp ogt float %i.blr, %.02534.i419.i  ; 2 uses
  %i.blt = trunc nuw nsw i64 %indvars.iv.i417.i to i32
  %.1.i427.i = select i1 %i.bls, i32 %i.blt, i32 %.035.i418.i ; 2 uses
  %.126.i428.i = select i1 %i.bls, float %i.blr, float %.02534.i419.i
  %exitcond.not.i429.i = icmp eq i64 %indvars.iv.next.i421.i, %wide.trip.count.i416.i
  br i1 %exitcond.not.i429.i, label %b3GetPointSupport.exit430.i, label %bb.es, !llvm.loop !1

b3GetPointSupport.exit430.i:                      ; preds = %bb.eu, %bb.er
  %.0.lcssa.i409.i = phi i32 [ 0, %bb.er ], [ %.1.i427.i, %bb.eu ] ; 3 uses
  %i.blu = fsub float %i.bho, %i.bey
  %i.blv = fsub <2 x float> %i.bhp, %i.bez
  %i.blw = sext i32 %.0.lcssa.i.i to i64          ; 2 uses
  %i.blx = mul nsw i64 %i.blw, 12
  %i.bly = add i64 %i.blx, %i.bjs, !nosanitize !11 ; 3 uses
  %i.blz = icmp ne i64 %i.bly, 0
  %i.bma = icmp uge i64 %i.bly, %i.bjs, !nosanitize !11
  %i.bmb = icmp slt i32 %.0.lcssa.i.i, 0
  %i.bmc = xor i1 %i.bmb, %i.bma
  %i.bmd = and i1 %i.blz, %i.bmc, !nosanitize !11
  br i1 %i.bmd, label %bb.ew, label %bb.ev, !prof !12, !nosanitize !11

bb.ev:                                            ; preds = %b3GetPointSupport.exit430.i
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @188, i64 %i.bjs, i64 %i.bly) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ew:                                            ; preds = %b3GetPointSupport.exit430.i
  %i.bme = sext i32 %.0.lcssa.i409.i to i64       ; 2 uses
  %i.bmf = mul nsw i64 %i.bme, 12
  %i.bmg = add i64 %i.bmf, %i.bky, !nosanitize !11 ; 3 uses
  %i.bmh = icmp ne i64 %i.bmg, 0
  %i.bmi = icmp uge i64 %i.bmg, %i.bky, !nosanitize !11
  %i.bmj = icmp slt i32 %.0.lcssa.i409.i, 0
  %i.bmk = xor i1 %i.bmj, %i.bmi
  %i.bml = and i1 %i.bmh, %i.bmk, !nosanitize !11
  br i1 %i.bml, label %bb.ey, label %bb.ex, !prof !12, !nosanitize !11

bb.ex:                                            ; preds = %bb.ew
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @189, i64 %i.bky, i64 %i.bmg) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ey:                                            ; preds = %bb.ew
  %i.bmm = getelementptr inbounds [12 x i8], ptr %i.bku, i64 %i.bme ; 2 uses
  %i.bmn = getelementptr inbounds [12 x i8], ptr %i.bjo, i64 %i.blw ; 2 uses
  %.sroa.4270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bmn, i64 8
  %.sroa.4270.0.copyload.i = load float, ptr %.sroa.4270.0..sroa_idx.i, align 4, !tbaa !19 ; 3 uses
  %.sroa.0269.0.copyload.i = load <2 x float>, ptr %i.bmn, align 4 ; 5 uses
  %.sroa.0267.0.copyload.i = load <2 x float>, ptr %i.bmm, align 4 ; 5 uses
  %.sroa.4268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bmm, i64 8
  %.sroa.4268.0.copyload.i = load float, ptr %.sroa.4268.0..sroa_idx.i, align 4, !tbaa !19 ; 3 uses
  %i.bmo = fmul float %.sroa.09.4.vec.extract13.i.i.i599, %.sroa.4268.0.copyload.i
  %shift9413 = shufflevector <2 x float> %.sroa.0267.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9414 = fmul <2 x float> %.sroa.4.0.i.i.i, %shift9413
  %i.bmp = fmul <2 x float> %i.bgo, %.sroa.0267.0.copyload.i ; 2 uses
  %i.bmq = shufflevector <2 x float> %.sroa.0267.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bmr = insertelement <2 x float> %i.bmq, float %.sroa.4268.0.copyload.i, i64 0 ; 2 uses
  %i.bms = fmul <2 x float> %.sroa.0.0.i.i.i, %i.bmr ; 2 uses
  %i.bmt = shufflevector <2 x float> %i.bmp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bmu = insertelement <2 x float> %i.bmt, float %i.bmo, i64 0
  %i.bmv = shufflevector <2 x float> %i.bms, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bmw = shufflevector <2 x float> %foldExtExtBinop9414, <2 x float> %i.bmv, <2 x i32> <i32 0, i32 3>
  %i.bmx = fsub <2 x float> %i.bmu, %i.bmw
  %i.bmy = fsub <2 x float> %i.bmp, %i.bms
  %i.bmz = fmul <2 x float> %i.bgz, %.sroa.0267.0.copyload.i
  %i.bna = insertelement <2 x float> %i.bmq, float %.sroa.4268.0.copyload.i, i64 1
  %i.bnb = fmul <2 x float> %i.bgz, %i.bna
  %i.bnc = fadd <2 x float> %i.bmz, %i.bmx        ; 2 uses
  %i.bnd = fadd <2 x float> %i.bnb, %i.bmy        ; 2 uses
  %i.bne = fmul <2 x float> %.sroa.0.0.i.i.i, %i.bnd
  %i.bnf = fmul <2 x float> %i.bhh, %i.bnc
  %i.bng = fsub <2 x float> %i.bne, %i.bnf
  %i.bnh = fmul <2 x float> %i.bng, splat (float 2.000000e+00)
  %i.bni = fadd <2 x float> %i.bmr, %i.bnh
  %i.bnj = fmul float %.sroa.09.4.vec.extract13.i.i.i633, %.sroa.4270.0.copyload.i
  %shift9416 = shufflevector <2 x float> %.sroa.0269.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9417 = fmul <2 x float> %.sroa.4.0.i.i.i616, %shift9416
  %i.bnk = fmul <2 x float> %i.bdy, %.sroa.0269.0.copyload.i ; 2 uses
  %i.bnl = shufflevector <2 x float> %.sroa.0269.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bnm = insertelement <2 x float> %i.bnl, float %.sroa.4270.0.copyload.i, i64 0 ; 2 uses
  %i.bnn = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.bnm ; 2 uses
  %i.bno = shufflevector <2 x float> %i.bnk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bnp = insertelement <2 x float> %i.bno, float %i.bnj, i64 0
  %i.bnq = shufflevector <2 x float> %i.bnn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bnr = shufflevector <2 x float> %foldExtExtBinop9417, <2 x float> %i.bnq, <2 x i32> <i32 0, i32 3>
  %i.bns = fsub <2 x float> %i.bnp, %i.bnr
  %i.bnt = fsub <2 x float> %i.bnk, %i.bnn
  %i.bnu = fmul <2 x float> %i.bej, %.sroa.0269.0.copyload.i
  %i.bnv = insertelement <2 x float> %i.bnl, float %.sroa.4270.0.copyload.i, i64 1
  %i.bnw = fmul <2 x float> %i.bej, %i.bnv
  %i.bnx = fadd <2 x float> %i.bnu, %i.bns        ; 2 uses
  %i.bny = fadd <2 x float> %i.bnw, %i.bnt        ; 2 uses
  %i.bnz = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.bny
  %i.boa = fmul <2 x float> %i.ber, %i.bnx
  %i.bob = fsub <2 x float> %i.bnz, %i.boa
  %i.boc = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i616, <2 x i32> <i32 0, i32 2>
  %i.bod = shufflevector <2 x float> %i.bnc, <2 x float> %i.bnx, <2 x i32> <i32 0, i32 2>
  %i.boe = fmul <2 x float> %i.boc, %i.bod
  %i.bof = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> %.sroa.0.0.i.i.i617, <2 x i32> <i32 0, i32 2>
  %i.bog = shufflevector <2 x float> %i.bnd, <2 x float> %i.bny, <2 x i32> <i32 1, i32 3>
  %i.boh = fmul <2 x float> %i.bof, %i.bog
  %i.boi = fsub <2 x float> %i.boe, %i.boh
  %i.boj = fmul <2 x float> %i.boi, splat (float 2.000000e+00)
  %i.bok = shufflevector <2 x float> %.sroa.0267.0.copyload.i, <2 x float> %.sroa.0269.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.bol = fadd <2 x float> %i.bok, %i.boj        ; 2 uses
  %i.bom = fmul <2 x float> %i.bob, splat (float 2.000000e+00)
  %i.bon = fadd <2 x float> %i.bnm, %i.bom
  %shift9419 = shufflevector <2 x float> %i.bol, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9420 = fsub <2 x float> %i.bol, %shift9419
  %i.boo = extractelement <2 x float> %foldExtExtBinop9420, i64 0
  %i.bop = fsub <2 x float> %i.bni, %i.bon
  %i.boq = fadd float %i.blu, %i.boo
  %i.bor = fadd <2 x float> %i.blv, %i.bop
  %i.bos = fmul float %.sroa.0.4.vec.extract8.i.i.i540, %i.boq
  %i.bot = fmul <2 x float> %i.bhs, %i.bor        ; 2 uses
  %i.bou = extractelement <2 x float> %i.bot, i64 1
  %i.bov = fadd float %i.bou, %i.bos
  %i.bow = extractelement <2 x float> %i.bot, i64 0
  %i.box = fadd float %i.bow, %i.bov
  br label %b3FindMinSeparation.exit

bb.ez:                                            ; preds = %b3GetSweepTransform.exit
  %.sroa.2.12.vec.extract.i.i602 = extractelement <2 x float> %.sroa.4.0.i.i.i, i64 1
  %.sroa.0223.0.copyload.i = load <2 x float>, ptr %i.br, align 8 ; 6 uses
  %.sroa.2224.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 2 uses
  %i.boy = shufflevector <2 x float> %.sroa.0223.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0215.0.copyload.i = load <2 x float>, ptr %i.bs, align 4 ; 6 uses
  %.sroa.2216.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4 ; 2 uses
  %i.boz = shufflevector <2 x float> %.sroa.0215.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bpa = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> %.sroa.0.0.i.i.i617, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bpb = insertelement <2 x float> poison, float %.sroa.2216.0.copyload.i, i64 0
  %i.bpc = insertelement <2 x float> %i.bpb, float %.sroa.2224.0.copyload.i, i64 1 ; 3 uses
  %i.bpd = fmul <2 x float> %i.bpa, %i.bpc
  %i.bpe = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.boy ; 2 uses
  %i.bpf = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i616, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bpg = shufflevector <2 x float> %.sroa.0215.0.copyload.i, <2 x float> %.sroa.0223.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bph = fmul <2 x float> %i.bpf, %i.bpg
  %i.bpi = fsub <2 x float> %i.bpd, %i.bph
  %foldExtExtBinop9422 = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0215.0.copyload.i
  %i.bpj = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> %.sroa.0.0.i.i.i617, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bpk = fmul <2 x float> %i.bpj, %i.bpc
  %foldExtExtBinop9424 = fmul <2 x float> %.sroa.4.0.i.i.i616, %.sroa.0223.0.copyload.i
  %i.bpl = fmul <2 x float> %.sroa.0.0.i.i.i, %i.boz ; 2 uses
  %i.bpm = shufflevector <2 x float> %foldExtExtBinop9422, <2 x float> %foldExtExtBinop9424, <2 x i32> <i32 0, i32 2>
  %i.bpn = fsub <2 x float> %i.bpm, %i.bpk
  %shift9426 = shufflevector <2 x float> %i.bpe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9427 = fsub <2 x float> %i.bpe, %shift9426
  %i.bpo = extractelement <2 x float> %foldExtExtBinop9427, i64 0
  %shift9429 = shufflevector <2 x float> %i.bpl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9430 = fsub <2 x float> %i.bpl, %shift9429
  %i.bpp = extractelement <2 x float> %foldExtExtBinop9430, i64 0
  %i.bpq = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i616, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bpr = shufflevector <2 x float> %.sroa.0215.0.copyload.i, <2 x float> %.sroa.0223.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.bps = fmul <2 x float> %i.bpq, %i.bpr
  %i.bpt = fmul float %.sroa.2.12.vec.extract.i.i637, %.sroa.2224.0.copyload.i
  %i.bpu = fadd <2 x float> %i.bps, %i.bpi        ; 3 uses
  %i.bpv = fmul <2 x float> %i.bpq, %i.bpg
  %i.bpw = fmul float %.sroa.2.12.vec.extract.i.i602, %.sroa.2216.0.copyload.i
  %i.bpx = fadd <2 x float> %i.bpv, %i.bpn        ; 3 uses
  %i.bpy = fadd float %i.bpt, %i.bpo              ; 2 uses
  %i.bpz = fadd float %i.bpw, %i.bpp              ; 2 uses
  %foldExtExtBinop9435 = fmul <2 x float> %.sroa.4.0.i.i.i, %i.bpx
  %i.bqa = fmul float %.sroa.09.0.vec.extract.i.i.i636, %i.bpy
  %i.bqb = shufflevector <2 x float> %i.bpu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bqc = shufflevector <2 x float> %.sroa.4.0.i.i.i616, <2 x float> %.sroa.0.0.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.bqd = insertelement <2 x float> %i.bqb, float %i.bpz, i64 1
  %i.bqe = fmul <2 x float> %i.bqc, %i.bqd
  %i.bqf = insertelement <2 x float> poison, float %i.bqa, i64 0
  %i.bqg = shufflevector <2 x float> %i.bqf, <2 x float> %foldExtExtBinop9435, <2 x i32> <i32 0, i32 2>
  %i.bqh = fsub <2 x float> %i.bqe, %i.bqg
  %i.bqi = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.0.0.i.i.i617, <2 x i32> <i32 0, i32 3>
  %i.bqj = insertelement <2 x float> %i.bpu, float %i.bpy, i64 1
  %i.bqk = fmul <2 x float> %i.bqi, %i.bqj
  %i.bql = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i616, <2 x i32> <i32 0, i32 2>
  %i.bqm = insertelement <2 x float> %i.bpx, float %i.bpz, i64 0
  %i.bqn = fmul <2 x float> %i.bql, %i.bqm
  %i.bqo = fsub <2 x float> %i.bqk, %i.bqn
  %i.bqp = fmul <2 x float> %i.bpj, %i.bpx
  %i.bqq = fmul <2 x float> %i.bpa, %i.bpu
  %i.bqr = fsub <2 x float> %i.bqp, %i.bqq
  %i.bqs = fmul <2 x float> %i.bqh, splat (float 2.000000e+00)
  %i.bqt = shufflevector <2 x float> %.sroa.0223.0.copyload.i, <2 x float> %.sroa.0215.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.bqu = fadd <2 x float> %i.bqt, %i.bqs        ; 3 uses
  %i.bqv = fmul <2 x float> %i.bqo, splat (float 2.000000e+00)
  %i.bqw = shufflevector <2 x float> %.sroa.0215.0.copyload.i, <2 x float> %.sroa.0223.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.bqx = fadd <2 x float> %i.bqw, %i.bqv        ; 3 uses
  %i.bqy = fmul <2 x float> %i.bqr, splat (float 2.000000e+00)
  %i.bqz = fadd <2 x float> %i.bpc, %i.bqy        ; 2 uses
  %i.bra = fmul <2 x float> %i.bqz, %i.bqu
  %i.brb = shufflevector <2 x float> %i.bqz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.brc = fmul <2 x float> %i.bqx, %i.brb
  %i.brd = fsub <2 x float> %i.bra, %i.brc        ; 3 uses
  %shift9437 = shufflevector <2 x float> %i.bqx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9438 = fmul <2 x float> %shift9437, %i.bqx
  %shift9440 = shufflevector <2 x float> %i.bqu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9441 = fmul <2 x float> %i.bqu, %shift9440
  %foldExtExtBinop9443 = fsub <2 x float> %foldExtExtBinop9438, %foldExtExtBinop9441 ; 3 uses
  %i.bre = fmul <2 x float> %i.brd, %i.brd        ; 2 uses
  %shift9445 = shufflevector <2 x float> %i.bre, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9446 = fadd <2 x float> %i.bre, %shift9445
  %foldExtExtBinop9448 = fmul <2 x float> %foldExtExtBinop9443, %foldExtExtBinop9443
  %foldExtExtBinop9450 = fadd <2 x float> %foldExtExtBinop9448, %foldExtExtBinop9446
  %i.brf = extractelement <2 x float> %foldExtExtBinop9450, i64 0 ; 2 uses
  %i.brg = fcmp ogt float %i.brf, f0x057A0000
  br i1 %i.brg, label %bb.fa, label %b3Normalize.exit.i531

bb.fa:                                            ; preds = %bb.ez
  %i.brh = extractelement <2 x float> %foldExtExtBinop9443, i64 0
  %sqrt.i534 = call float @llvm.sqrt.f32(float %i.brf)
  %i.bri = fdiv float 1.000000e+00, %sqrt.i534    ; 2 uses
  %i.brj = insertelement <2 x float> poison, float %i.bri, i64 0
  %i.brk = shufflevector <2 x float> %i.brj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.brl = fmul <2 x float> %i.brd, %i.brk
  %i.brm = fmul float %i.brh, %i.bri
  br label %b3Normalize.exit.i531

b3Normalize.exit.i531:                            ; preds = %bb.fa, %bb.ez
  %.sroa.07.0.i.i532 = phi <2 x float> [ %i.brl, %bb.fa ], [ zeroinitializer, %bb.ez ] ; 7 uses
  %.sroa.5.0.i.i533 = phi float [ %i.brm, %bb.fa ], [ 0.000000e+00, %bb.ez ] ; 3 uses
  %.sroa.0.4.vec.extract8.i.i498.i = extractelement <2 x float> %.sroa.07.0.i.i532, i64 1 ; 3 uses
  %i.brn = shufflevector <2 x float> %.sroa.07.0.i.i532, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bro = insertelement <2 x float> %i.brn, float %.sroa.5.0.i.i533, i64 0 ; 7 uses
  %i.brp = fmul <2 x float> %i.ber, %i.bro
  %i.brq = insertelement <2 x float> %i.brn, float %.sroa.5.0.i.i533, i64 1 ; 2 uses
  %i.brr = fmul <2 x float> %i.bdy, %i.brq
  %i.brs = fmul <2 x float> %i.bdy, %.sroa.07.0.i.i532
  %i.brt = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.bro
  %i.bru = fsub <2 x float> %i.brp, %i.brr
  %i.brv = fsub <2 x float> %i.brs, %i.brt
  %i.brw = fmul <2 x float> %i.bej, %.sroa.07.0.i.i532
  %i.brx = fmul <2 x float> %i.bej, %i.brq
  %i.bry = fsub <2 x float> %i.bru, %i.brw        ; 2 uses
  %i.brz = fsub <2 x float> %i.brv, %i.brx        ; 2 uses
  %foldExtExtBinop9452 = fmul <2 x float> %.sroa.4.0.i.i.i616, %i.bry
  %shift9454 = shufflevector <2 x float> %i.brz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9455 = fmul <2 x float> %.sroa.0.0.i.i.i617, %shift9454
  %foldExtExtBinop9457 = fsub <2 x float> %foldExtExtBinop9452, %foldExtExtBinop9455
  %i.bsa = extractelement <2 x float> %foldExtExtBinop9457, i64 0
  %i.bsb = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.brz
  %i.bsc = fmul <2 x float> %i.ber, %i.bry
  %i.bsd = fsub <2 x float> %i.bsb, %i.bsc
  %i.bse = fmul <2 x float> %i.bsd, splat (float 2.000000e+00)
  %i.bsf = fmul float %i.bsa, 2.000000e+00
  %i.bsg = fadd float %.sroa.0.4.vec.extract8.i.i498.i, %i.bsf
  %i.bsh = fadd <2 x float> %i.bro, %i.bse
  %i.bsi = load ptr, ptr %15, align 8, !tbaa !39  ; 4 uses
  %i.bsj = icmp ne ptr %i.bsi, null, !nosanitize !11
  %i.bsk = ptrtoint ptr %i.bsi to i64, !nosanitize !11 ; 2 uses
  %i.bsl = and i64 %i.bsk, 7, !nosanitize !11
  %i.bsm = icmp eq i64 %i.bsl, 0, !nosanitize !11
  %i.bsn = and i1 %i.bsj, %i.bsm, !nosanitize !11
  br i1 %i.bsn, label %bb.fc, label %bb.fb, !prof !12, !nosanitize !11

bb.fb:                                            ; preds = %b3Normalize.exit.i531
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @190, i64 %i.bsk) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fc:                                            ; preds = %b3Normalize.exit.i531
  %i.bso = load ptr, ptr %i.bsi, align 8, !tbaa !18 ; 6 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsi, i64 8
  %i.bsq = load i32, ptr %i.bsp, align 8, !tbaa !17 ; 2 uses
  %i.bsr = icmp ne ptr %i.bso, null, !nosanitize !11
  %i.bss = ptrtoint ptr %i.bso to i64, !nosanitize !11 ; 8 uses
  %i.bst = and i64 %i.bss, 3, !nosanitize !11
  %i.bsu = icmp eq i64 %i.bst, 0, !nosanitize !11
  %i.bsv = and i1 %i.bsr, %i.bsu, !nosanitize !11
  br i1 %i.bsv, label %bb.fe, label %bb.fd, !prof !12, !nosanitize !11

bb.fd:                                            ; preds = %bb.fc
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.bss) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fe:                                            ; preds = %bb.fc
  %i.bsw = icmp sgt i32 %i.bsq, 1
  br i1 %i.bsw, label %.lr.ph.i509.i, label %b3GetPointSupport.exit529.i

.lr.ph.i509.i:                                    ; preds = %bb.fe
  %.sroa.4.0..sroa_idx.i506.i = getelementptr inbounds nuw i8, ptr %i.bso, i64 8
  %.sroa.4.0.copyload.i507.i = load float, ptr %.sroa.4.0..sroa_idx.i506.i, align 4, !tbaa !19
  %.sroa.017.0.copyload.i510.i = load <2 x float>, ptr %i.bso, align 4 ; 2 uses
  %wide.trip.count.i515.i = zext nneg i32 %i.bsq to i64
  %i.bsx = shufflevector <2 x float> %.sroa.017.0.copyload.i510.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bsy = insertelement <2 x float> %i.bsx, float %.sroa.4.0.copyload.i507.i, i64 0
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fh, %.lr.ph.i509.i
  %indvars.iv.i516.i = phi i64 [ 1, %.lr.ph.i509.i ], [ %indvars.iv.next.i520.i, %bb.fh ] ; 4 uses
  %.035.i517.i = phi i32 [ 0, %.lr.ph.i509.i ], [ %.1.i526.i, %bb.fh ]
  %.02534.i518.i = phi float [ 0.000000e+00, %.lr.ph.i509.i ], [ %.126.i527.i, %bb.fh ] ; 2 uses
  %i.bsz = mul nuw nsw i64 %indvars.iv.i516.i, 12
  %i.bta = add i64 %i.bsz, %i.bss, !nosanitize !11 ; 2 uses
  %.not.i519.i = icmp ult i64 %i.bta, %i.bss, !nosanitize !11
  br i1 %.not.i519.i, label %bb.fg, label %bb.fh, !prof !20, !nosanitize !11

bb.fg:                                            ; preds = %bb.ff
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.bss, i64 %i.bta) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fh:                                            ; preds = %bb.ff
  %indvars.iv.next.i520.i = add nuw nsw i64 %indvars.iv.i516.i, 1 ; 2 uses
  %i.btb = getelementptr inbounds nuw [12 x i8], ptr %i.bso, i64 %indvars.iv.i516.i ; 2 uses
  %.sroa.28.0..sroa_idx.i521.i = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  %.sroa.28.0.copyload.i522.i = load float, ptr %.sroa.28.0..sroa_idx.i521.i, align 4
  %.sroa.07.0.copyload.i523.i = load <2 x float>, ptr %i.btb, align 4 ; 2 uses
  %i.btc = shufflevector <2 x float> %.sroa.07.0.copyload.i523.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.btd = insertelement <2 x float> %i.btc, float %.sroa.28.0.copyload.i522.i, i64 0
  %i.bte = fsub <2 x float> %i.btd, %i.bsy
  %i.btf = fmul <2 x float> %i.bsh, %i.bte        ; 2 uses
  %foldExtExtBinop9459 = fsub <2 x float> %.sroa.07.0.copyload.i523.i, %.sroa.017.0.copyload.i510.i
  %i.btg = extractelement <2 x float> %foldExtExtBinop9459, i64 1
  %i.bth = fmul float %i.bsg, %i.btg
  %i.bti = extractelement <2 x float> %i.btf, i64 1
  %i.btj = fadd float %i.bti, %i.bth
  %i.btk = extractelement <2 x float> %i.btf, i64 0
  %i.btl = fadd float %i.btk, %i.btj              ; 2 uses
  %i.btm = fcmp ogt float %i.btl, %.02534.i518.i  ; 2 uses
  %i.btn = trunc nuw nsw i64 %indvars.iv.i516.i to i32
  %.1.i526.i = select i1 %i.btm, i32 %i.btn, i32 %.035.i517.i ; 2 uses
  %.126.i527.i = select i1 %i.btm, float %i.btl, float %.02534.i518.i
  %exitcond.not.i528.i = icmp eq i64 %indvars.iv.next.i520.i, %wide.trip.count.i515.i
  br i1 %exitcond.not.i528.i, label %b3GetPointSupport.exit529.i, label %bb.ff, !llvm.loop !1

b3GetPointSupport.exit529.i:                      ; preds = %bb.fh, %bb.fe
  %.0.lcssa.i508.i = phi i32 [ 0, %bb.fe ], [ %.1.i526.i, %bb.fh ] ; 3 uses
  %i.bto = fmul <2 x float> %i.bhh, %i.bro
  %i.btp = shufflevector <2 x float> %.sroa.07.0.i.i532, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.btq = insertelement <2 x float> %i.btp, float %.sroa.5.0.i.i533, i64 1 ; 2 uses
  %i.btr = fmul <2 x float> %i.bgo, %i.btq
  %i.bts = fmul <2 x float> %i.bgo, %.sroa.07.0.i.i532
  %i.btt = fmul <2 x float> %.sroa.0.0.i.i.i, %i.bro
  %i.btu = fmul <2 x float> %i.bgz, %.sroa.07.0.i.i532
  %i.btv = fmul <2 x float> %i.bgz, %i.btq
  %i.btw = fsub <2 x float> %i.bto, %i.btr
  %i.btx = fsub <2 x float> %i.bts, %i.btt
  %i.bty = fsub <2 x float> %i.btw, %i.btu        ; 2 uses
  %i.btz = fsub <2 x float> %i.btx, %i.btv        ; 2 uses
  %i.bua = fmul <2 x float> %.sroa.0.0.i.i.i, %i.btz
  %i.bub = fmul <2 x float> %i.bhh, %i.bty
  %i.buc = fsub <2 x float> %i.bua, %i.bub
  %i.bud = fmul <2 x float> %i.buc, splat (float 2.000000e+00)
  %i.bue = fadd <2 x float> %i.bro, %i.bud
  %i.buf = load ptr, ptr %i.bc, align 8, !tbaa !40 ; 4 uses
  %i.bug = icmp ne ptr %i.buf, null, !nosanitize !11
  %i.buh = ptrtoint ptr %i.buf to i64, !nosanitize !11 ; 2 uses
  %i.bui = and i64 %i.buh, 7, !nosanitize !11
  %i.buj = icmp eq i64 %i.bui, 0, !nosanitize !11
  %i.buk = and i1 %i.bug, %i.buj, !nosanitize !11
  br i1 %i.buk, label %bb.fj, label %bb.fi, !prof !12, !nosanitize !11

bb.fi:                                            ; preds = %b3GetPointSupport.exit529.i
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @191, i64 %i.buh) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fj:                                            ; preds = %b3GetPointSupport.exit529.i
  %foldExtExtBinop9461 = fmul <2 x float> %.sroa.4.0.i.i.i, %i.bty
  %shift9463 = shufflevector <2 x float> %i.btz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9464 = fmul <2 x float> %.sroa.0.0.i.i.i, %shift9463
  %foldExtExtBinop9466 = fsub <2 x float> %foldExtExtBinop9461, %foldExtExtBinop9464
  %i.bul = extractelement <2 x float> %foldExtExtBinop9466, i64 0
  %i.bum = fmul float %i.bul, 2.000000e+00
  %i.bun = fadd float %.sroa.0.4.vec.extract8.i.i498.i, %i.bum
  %i.buo = load ptr, ptr %i.buf, align 8, !tbaa !18 ; 6 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %i.buf, i64 8
  %i.buq = load i32, ptr %i.bup, align 8, !tbaa !17 ; 2 uses
  %i.bur = fneg float %i.bun
  %i.bus = icmp ne ptr %i.buo, null, !nosanitize !11
  %i.but = ptrtoint ptr %i.buo to i64, !nosanitize !11 ; 8 uses
  %i.buu = and i64 %i.but, 3, !nosanitize !11
  %i.buv = icmp eq i64 %i.buu, 0, !nosanitize !11
  %i.buw = and i1 %i.bus, %i.buv, !nosanitize !11
  br i1 %i.buw, label %bb.fl, label %bb.fk, !prof !12, !nosanitize !11

bb.fk:                                            ; preds = %bb.fj
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.but) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fl:                                            ; preds = %bb.fj
  %i.bux = icmp sgt i32 %i.buq, 1
  br i1 %i.bux, label %.lr.ph.i549.i, label %b3GetPointSupport.exit569.i

.lr.ph.i549.i:                                    ; preds = %bb.fl
  %.sroa.4.0..sroa_idx.i546.i = getelementptr inbounds nuw i8, ptr %i.buo, i64 8
  %.sroa.4.0.copyload.i547.i = load float, ptr %.sroa.4.0..sroa_idx.i546.i, align 4, !tbaa !19
  %.sroa.017.0.copyload.i550.i = load <2 x float>, ptr %i.buo, align 4 ; 2 uses
  %wide.trip.count.i555.i = zext nneg i32 %i.buq to i64
  %i.buy = shufflevector <2 x float> %.sroa.017.0.copyload.i550.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.buz = insertelement <2 x float> %i.buy, float %.sroa.4.0.copyload.i547.i, i64 0
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fo, %.lr.ph.i549.i
  %indvars.iv.i556.i = phi i64 [ 1, %.lr.ph.i549.i ], [ %indvars.iv.next.i560.i, %bb.fo ] ; 4 uses
  %.035.i557.i = phi i32 [ 0, %.lr.ph.i549.i ], [ %.1.i566.i, %bb.fo ]
  %.02534.i558.i = phi float [ 0.000000e+00, %.lr.ph.i549.i ], [ %.126.i567.i, %bb.fo ] ; 2 uses
  %i.bva = mul nuw nsw i64 %indvars.iv.i556.i, 12
  %i.bvb = add i64 %i.bva, %i.but, !nosanitize !11 ; 2 uses
  %.not.i559.i = icmp ult i64 %i.bvb, %i.but, !nosanitize !11
  br i1 %.not.i559.i, label %bb.fn, label %bb.fo, !prof !20, !nosanitize !11

bb.fn:                                            ; preds = %bb.fm
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.but, i64 %i.bvb) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fo:                                            ; preds = %bb.fm
  %indvars.iv.next.i560.i = add nuw nsw i64 %indvars.iv.i556.i, 1 ; 2 uses
  %i.bvc = getelementptr inbounds nuw [12 x i8], ptr %i.buo, i64 %indvars.iv.i556.i ; 2 uses
  %.sroa.28.0..sroa_idx.i561.i = getelementptr inbounds nuw i8, ptr %i.bvc, i64 8
  %.sroa.28.0.copyload.i562.i = load float, ptr %.sroa.28.0..sroa_idx.i561.i, align 4
  %.sroa.07.0.copyload.i563.i = load <2 x float>, ptr %i.bvc, align 4 ; 2 uses
  %foldExtExtBinop9468 = fsub <2 x float> %.sroa.07.0.copyload.i563.i, %.sroa.017.0.copyload.i550.i
  %i.bvd = extractelement <2 x float> %foldExtExtBinop9468, i64 1
  %i.bve = fmul float %i.bvd, %i.bur
  %i.bvf = shufflevector <2 x float> %.sroa.07.0.copyload.i563.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bvg = insertelement <2 x float> %i.bvf, float %.sroa.28.0.copyload.i562.i, i64 0
  %i.bvh = fsub <2 x float> %i.bvg, %i.buz
  %i.bvi = fmul <2 x float> %i.bue, %i.bvh        ; 2 uses
  %i.bvj = extractelement <2 x float> %i.bvi, i64 1
  %i.bvk = fsub float %i.bve, %i.bvj
  %i.bvl = extractelement <2 x float> %i.bvi, i64 0
  %i.bvm = fsub float %i.bvk, %i.bvl              ; 2 uses
  %i.bvn = fcmp ogt float %i.bvm, %.02534.i558.i  ; 2 uses
  %i.bvo = trunc nuw nsw i64 %indvars.iv.i556.i to i32
  %.1.i566.i = select i1 %i.bvn, i32 %i.bvo, i32 %.035.i557.i ; 2 uses
  %.126.i567.i = select i1 %i.bvn, float %i.bvm, float %.02534.i558.i
  %exitcond.not.i568.i = icmp eq i64 %indvars.iv.next.i560.i, %wide.trip.count.i555.i
  br i1 %exitcond.not.i568.i, label %b3GetPointSupport.exit569.i, label %bb.fm, !llvm.loop !1

b3GetPointSupport.exit569.i:                      ; preds = %bb.fo, %bb.fl
  %.0.lcssa.i548.i = phi i32 [ 0, %bb.fl ], [ %.1.i566.i, %bb.fo ] ; 3 uses
  %i.bvp = fsub float %i.bho, %i.bey
  %i.bvq = fsub <2 x float> %i.bhp, %i.bez
  %i.bvr = sext i32 %.0.lcssa.i508.i to i64       ; 2 uses
  %i.bvs = mul nsw i64 %i.bvr, 12
  %i.bvt = add i64 %i.bvs, %i.bss, !nosanitize !11 ; 3 uses
  %i.bvu = icmp ne i64 %i.bvt, 0
  %i.bvv = icmp uge i64 %i.bvt, %i.bss, !nosanitize !11
  %i.bvw = icmp slt i32 %.0.lcssa.i508.i, 0
  %i.bvx = xor i1 %i.bvw, %i.bvv
  %i.bvy = and i1 %i.bvu, %i.bvx, !nosanitize !11
  br i1 %i.bvy, label %bb.fq, label %bb.fp, !prof !12, !nosanitize !11

bb.fp:                                            ; preds = %b3GetPointSupport.exit569.i
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @192, i64 %i.bss, i64 %i.bvt) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fq:                                            ; preds = %b3GetPointSupport.exit569.i
  %i.bvz = sext i32 %.0.lcssa.i548.i to i64       ; 2 uses
  %i.bwa = mul nsw i64 %i.bvz, 12
  %i.bwb = add i64 %i.bwa, %i.but, !nosanitize !11 ; 3 uses
  %i.bwc = icmp ne i64 %i.bwb, 0
  %i.bwd = icmp uge i64 %i.bwb, %i.but, !nosanitize !11
  %i.bwe = icmp slt i32 %.0.lcssa.i548.i, 0
  %i.bwf = xor i1 %i.bwe, %i.bwd
  %i.bwg = and i1 %i.bwc, %i.bwf, !nosanitize !11
  br i1 %i.bwg, label %bb.fs, label %bb.fr, !prof !12, !nosanitize !11

bb.fr:                                            ; preds = %bb.fq
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @193, i64 %i.but, i64 %i.bwb) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fs:                                            ; preds = %bb.fq
  %i.bwh = getelementptr inbounds [12 x i8], ptr %i.buo, i64 %i.bvz ; 2 uses
  %i.bwi = getelementptr inbounds [12 x i8], ptr %i.bso, i64 %i.bvr ; 2 uses
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bwi, i64 8
  %.sroa.4152.0.copyload.i = load float, ptr %.sroa.4152.0..sroa_idx.i, align 4, !tbaa !19 ; 3 uses
  %.sroa.0151.0.copyload.i = load <2 x float>, ptr %i.bwi, align 4 ; 5 uses
  %.sroa.0149.0.copyload.i = load <2 x float>, ptr %i.bwh, align 4 ; 5 uses
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bwh, i64 8
  %.sroa.4150.0.copyload.i = load float, ptr %.sroa.4150.0..sroa_idx.i, align 4, !tbaa !19 ; 3 uses
  %i.bwj = fmul float %.sroa.09.4.vec.extract13.i.i.i599, %.sroa.4150.0.copyload.i
  %shift9470 = shufflevector <2 x float> %.sroa.0149.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9471 = fmul <2 x float> %.sroa.4.0.i.i.i, %shift9470
  %i.bwk = fmul <2 x float> %i.bgo, %.sroa.0149.0.copyload.i ; 2 uses
  %i.bwl = shufflevector <2 x float> %.sroa.0149.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bwm = insertelement <2 x float> %i.bwl, float %.sroa.4150.0.copyload.i, i64 0 ; 2 uses
  %i.bwn = fmul <2 x float> %.sroa.0.0.i.i.i, %i.bwm ; 2 uses
  %i.bwo = shufflevector <2 x float> %i.bwk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bwp = insertelement <2 x float> %i.bwo, float %i.bwj, i64 0
  %i.bwq = shufflevector <2 x float> %i.bwn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bwr = shufflevector <2 x float> %foldExtExtBinop9471, <2 x float> %i.bwq, <2 x i32> <i32 0, i32 3>
  %i.bws = fsub <2 x float> %i.bwp, %i.bwr
  %i.bwt = fsub <2 x float> %i.bwk, %i.bwn
  %i.bwu = fmul <2 x float> %i.bgz, %.sroa.0149.0.copyload.i
  %i.bwv = insertelement <2 x float> %i.bwl, float %.sroa.4150.0.copyload.i, i64 1
  %i.bww = fmul <2 x float> %i.bgz, %i.bwv
  %i.bwx = fadd <2 x float> %i.bwu, %i.bws        ; 2 uses
  %i.bwy = fadd <2 x float> %i.bww, %i.bwt        ; 2 uses
  %i.bwz = fmul <2 x float> %.sroa.0.0.i.i.i, %i.bwy
  %i.bxa = fmul <2 x float> %i.bhh, %i.bwx
  %i.bxb = fsub <2 x float> %i.bwz, %i.bxa
  %i.bxc = fmul <2 x float> %i.bxb, splat (float 2.000000e+00)
  %i.bxd = fadd <2 x float> %i.bwm, %i.bxc
  %i.bxe = fmul float %.sroa.09.4.vec.extract13.i.i.i633, %.sroa.4152.0.copyload.i
  %shift9473 = shufflevector <2 x float> %.sroa.0151.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9474 = fmul <2 x float> %.sroa.4.0.i.i.i616, %shift9473
  %i.bxf = fmul <2 x float> %i.bdy, %.sroa.0151.0.copyload.i ; 2 uses
  %i.bxg = shufflevector <2 x float> %.sroa.0151.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bxh = insertelement <2 x float> %i.bxg, float %.sroa.4152.0.copyload.i, i64 0 ; 2 uses
  %i.bxi = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.bxh ; 2 uses
  %i.bxj = shufflevector <2 x float> %i.bxf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bxk = insertelement <2 x float> %i.bxj, float %i.bxe, i64 0
  %i.bxl = shufflevector <2 x float> %i.bxi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bxm = shufflevector <2 x float> %foldExtExtBinop9474, <2 x float> %i.bxl, <2 x i32> <i32 0, i32 3>
  %i.bxn = fsub <2 x float> %i.bxk, %i.bxm
  %i.bxo = fsub <2 x float> %i.bxf, %i.bxi
  %i.bxp = fmul <2 x float> %i.bej, %.sroa.0151.0.copyload.i
  %i.bxq = insertelement <2 x float> %i.bxg, float %.sroa.4152.0.copyload.i, i64 1
  %i.bxr = fmul <2 x float> %i.bej, %i.bxq
  %i.bxs = fadd <2 x float> %i.bxp, %i.bxn        ; 2 uses
  %i.bxt = fadd <2 x float> %i.bxr, %i.bxo        ; 2 uses
  %i.bxu = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.bxt
  %i.bxv = fmul <2 x float> %i.ber, %i.bxs
  %i.bxw = fsub <2 x float> %i.bxu, %i.bxv
  %i.bxx = shufflevector <2 x float> %i.bwx, <2 x float> %i.bxs, <2 x i32> <i32 0, i32 2>
  %i.bxy = fmul <2 x float> %i.bpf, %i.bxx
  %i.bxz = shufflevector <2 x float> %i.bwy, <2 x float> %i.bxt, <2 x i32> <i32 1, i32 3>
  %i.bya = fmul <2 x float> %i.bpj, %i.bxz
  %i.byb = fsub <2 x float> %i.bxy, %i.bya
  %i.byc = fmul <2 x float> %i.byb, splat (float 2.000000e+00)
  %i.byd = shufflevector <2 x float> %.sroa.0149.0.copyload.i, <2 x float> %.sroa.0151.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.bye = fadd <2 x float> %i.byd, %i.byc        ; 2 uses
  %i.byf = fmul <2 x float> %i.bxw, splat (float 2.000000e+00)
  %i.byg = fadd <2 x float> %i.bxh, %i.byf
  %shift9476 = shufflevector <2 x float> %i.bye, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9477 = fsub <2 x float> %i.bye, %shift9476
  %i.byh = extractelement <2 x float> %foldExtExtBinop9477, i64 0
  %i.byi = fsub <2 x float> %i.bxd, %i.byg
  %i.byj = fadd float %i.bvp, %i.byh
  %i.byk = fadd <2 x float> %i.bvq, %i.byi
  %i.byl = fmul float %.sroa.0.4.vec.extract8.i.i498.i, %i.byj
  %i.bym = fmul <2 x float> %i.bro, %i.byk        ; 2 uses
  %i.byn = extractelement <2 x float> %i.bym, i64 1
  %i.byo = fadd float %i.byn, %i.byl
  %i.byp = extractelement <2 x float> %i.bym, i64 0
  %i.byq = fadd float %i.byp, %i.byo
  br label %b3FindMinSeparation.exit

bb.ft:                                            ; preds = %b3GetSweepTransform.exit
  %.sroa.0104.0.copyload.i = load <2 x float>, ptr %i.br, align 8 ; 4 uses
  %.sroa.2105.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 3 uses
  %i.byr = fmul float %.sroa.09.4.vec.extract13.i.i.i633, %.sroa.2105.0.copyload.i
  %.sroa.0.4.vec.extract8.i.i620.i = extractelement <2 x float> %.sroa.0104.0.copyload.i, i64 1 ; 2 uses
  %i.bys = fmul float %.sroa.2.8.vec.extract65.i.i632, %.sroa.0.4.vec.extract8.i.i620.i
  %.sroa.096.0.copyload.i = load <2 x float>, ptr %i.bs, align 4 ; 4 uses
  %.sroa.297.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.0.4.vec.extract8.i.i630.i = extractelement <2 x float> %.sroa.096.0.copyload.i, i64 1 ; 2 uses
  %i.byt = fmul <2 x float> %i.bdy, %.sroa.0104.0.copyload.i ; 2 uses
  %i.byu = shufflevector <2 x float> %.sroa.0104.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.byv = insertelement <2 x float> %i.byu, float %.sroa.2105.0.copyload.i, i64 0 ; 2 uses
  %i.byw = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.byv ; 2 uses
  %i.byx = shufflevector <2 x float> %i.byt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.byy = insertelement <2 x float> %i.byx, float %i.byr, i64 0
  %i.byz = shufflevector <2 x float> %i.byw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bza = insertelement <2 x float> %i.byz, float %i.bys, i64 0
  %i.bzb = fsub <2 x float> %i.byy, %i.bza
  %i.bzc = fsub <2 x float> %i.byt, %i.byw
  %i.bzd = fmul <2 x float> %i.bej, %.sroa.0104.0.copyload.i
  %i.bze = insertelement <2 x float> %i.byu, float %.sroa.2105.0.copyload.i, i64 1
  %i.bzf = fmul <2 x float> %i.bej, %i.bze
  %i.bzg = fadd <2 x float> %i.bzd, %i.bzb        ; 2 uses
  %i.bzh = fadd <2 x float> %i.bzf, %i.bzc        ; 2 uses
  %foldExtExtBinop9479 = fmul <2 x float> %.sroa.4.0.i.i.i616, %i.bzg
  %shift9481 = shufflevector <2 x float> %i.bzh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9482 = fmul <2 x float> %.sroa.0.0.i.i.i617, %shift9481
  %foldExtExtBinop9484 = fsub <2 x float> %foldExtExtBinop9479, %foldExtExtBinop9482
  %i.bzi = extractelement <2 x float> %foldExtExtBinop9484, i64 0
  %i.bzj = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.bzh
  %i.bzk = fmul <2 x float> %i.ber, %i.bzg
  %i.bzl = fsub <2 x float> %i.bzj, %i.bzk
  %i.bzm = fmul float %i.bzi, 2.000000e+00
  %i.bzn = fadd float %.sroa.0.4.vec.extract8.i.i620.i, %i.bzm ; 4 uses
  %i.bzo = fmul <2 x float> %i.bzl, splat (float 2.000000e+00)
  %i.bzp = fadd <2 x float> %i.byv, %i.bzo        ; 5 uses
  %i.bzq = fmul float %.sroa.09.4.vec.extract13.i.i.i633, %.sroa.297.0.copyload.i
  %i.bzr = fmul float %.sroa.2.8.vec.extract65.i.i632, %.sroa.0.4.vec.extract8.i.i630.i
  %i.bzs = fmul <2 x float> %i.bdy, %.sroa.096.0.copyload.i ; 2 uses
  %i.bzt = shufflevector <2 x float> %.sroa.096.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bzu = insertelement <2 x float> %i.bzt, float %.sroa.297.0.copyload.i, i64 0 ; 2 uses
  %i.bzv = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.bzu ; 2 uses
  %i.bzw = shufflevector <2 x float> %i.bzs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bzx = insertelement <2 x float> %i.bzw, float %i.bzq, i64 0
  %i.bzy = shufflevector <2 x float> %i.bzv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bzz = insertelement <2 x float> %i.bzy, float %i.bzr, i64 0
  %i.caa = fsub <2 x float> %i.bzx, %i.bzz
  %i.cab = fsub <2 x float> %i.bzs, %i.bzv
  %i.cac = fmul <2 x float> %i.bej, %.sroa.096.0.copyload.i
  %i.cad = insertelement <2 x float> %i.bzt, float %.sroa.297.0.copyload.i, i64 1
  %i.cae = fmul <2 x float> %i.bej, %i.cad
  %i.caf = fadd <2 x float> %i.cac, %i.caa        ; 2 uses
  %i.cag = fadd <2 x float> %i.cae, %i.cab        ; 2 uses
  %foldExtExtBinop9486 = fmul <2 x float> %.sroa.4.0.i.i.i616, %i.caf
  %shift9488 = shufflevector <2 x float> %i.cag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9489 = fmul <2 x float> %.sroa.0.0.i.i.i617, %shift9488
  %foldExtExtBinop9491 = fsub <2 x float> %foldExtExtBinop9486, %foldExtExtBinop9489
  %i.cah = extractelement <2 x float> %foldExtExtBinop9491, i64 0
  %i.cai = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.cag
  %i.caj = fmul <2 x float> %i.ber, %i.caf
  %i.cak = fsub <2 x float> %i.cai, %i.caj
  %i.cal = fmul float %i.cah, 2.000000e+00
  %i.cam = fadd float %.sroa.0.4.vec.extract8.i.i630.i, %i.cal
  %i.can = fmul <2 x float> %i.cak, splat (float 2.000000e+00)
  %i.cao = fadd <2 x float> %i.bzu, %i.can
  %i.cap = fadd float %i.bey, %i.cam
  %i.caq = fadd <2 x float> %i.bez, %i.cao
  %i.car = fmul <2 x float> %i.bhh, %i.bzp
  %i.cas = shufflevector <2 x float> %i.bzp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cat = insertelement <2 x float> %i.cas, float %i.bzn, i64 0 ; 2 uses
  %i.cau = fmul <2 x float> %i.bgo, %i.cat
  %i.cav = insertelement <2 x float> %i.cas, float %i.bzn, i64 1 ; 2 uses
  %i.caw = fmul <2 x float> %i.bgo, %i.cav
  %i.cax = fmul <2 x float> %.sroa.0.0.i.i.i, %i.bzp
  %i.cay = fsub <2 x float> %i.car, %i.cau
  %i.caz = fsub <2 x float> %i.caw, %i.cax
  %i.cba = fmul <2 x float> %i.bgz, %i.cav
  %i.cbb = fmul <2 x float> %i.bgz, %i.cat
  %i.cbc = fsub <2 x float> %i.cay, %i.cba        ; 2 uses
  %i.cbd = fsub <2 x float> %i.caz, %i.cbb        ; 2 uses
  %i.cbe = fmul <2 x float> %.sroa.0.0.i.i.i, %i.cbd
  %i.cbf = fmul <2 x float> %i.bhh, %i.cbc
  %i.cbg = fsub <2 x float> %i.cbe, %i.cbf
  %i.cbh = fmul <2 x float> %i.cbg, splat (float 2.000000e+00)
  %i.cbi = fadd <2 x float> %i.bzp, %i.cbh
  %i.cbj = load ptr, ptr %i.bc, align 8, !tbaa !40 ; 4 uses
  %i.cbk = icmp ne ptr %i.cbj, null, !nosanitize !11
  %i.cbl = ptrtoint ptr %i.cbj to i64, !nosanitize !11 ; 2 uses
  %i.cbm = and i64 %i.cbl, 7, !nosanitize !11
  %i.cbn = icmp eq i64 %i.cbm, 0, !nosanitize !11
  %i.cbo = and i1 %i.cbk, %i.cbn, !nosanitize !11
  br i1 %i.cbo, label %bb.fv, label %bb.fu, !prof !12, !nosanitize !11

bb.fu:                                            ; preds = %bb.ft
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @194, i64 %i.cbl) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fv:                                            ; preds = %bb.ft
  %foldExtExtBinop9493 = fmul <2 x float> %.sroa.4.0.i.i.i, %i.cbc
  %shift9495 = shufflevector <2 x float> %i.cbd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9496 = fmul <2 x float> %.sroa.0.0.i.i.i, %shift9495
  %foldExtExtBinop9498 = fsub <2 x float> %foldExtExtBinop9493, %foldExtExtBinop9496
  %i.cbp = extractelement <2 x float> %foldExtExtBinop9498, i64 0
  %i.cbq = fmul float %i.cbp, 2.000000e+00
  %i.cbr = fadd float %i.bzn, %i.cbq
  %i.cbs = load ptr, ptr %i.cbj, align 8, !tbaa !18 ; 6 uses
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbj, i64 8
  %i.cbu = load i32, ptr %i.cbt, align 8, !tbaa !17 ; 2 uses
  %i.cbv = fneg float %i.cbr
  %i.cbw = icmp ne ptr %i.cbs, null, !nosanitize !11
  %i.cbx = ptrtoint ptr %i.cbs to i64, !nosanitize !11 ; 8 uses
  %i.cby = and i64 %i.cbx, 3, !nosanitize !11
  %i.cbz = icmp eq i64 %i.cby, 0, !nosanitize !11
  %i.cca = and i1 %i.cbw, %i.cbz, !nosanitize !11
  br i1 %i.cca, label %bb.fx, label %bb.fw, !prof !12, !nosanitize !11

bb.fw:                                            ; preds = %bb.fv
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.cbx) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fx:                                            ; preds = %bb.fv
  %i.ccb = icmp sgt i32 %i.cbu, 1
  br i1 %i.ccb, label %.lr.ph.i665.i, label %b3GetPointSupport.exit685.i

.lr.ph.i665.i:                                    ; preds = %bb.fx
  %.sroa.4.0..sroa_idx.i662.i = getelementptr inbounds nuw i8, ptr %i.cbs, i64 8
  %.sroa.4.0.copyload.i663.i = load float, ptr %.sroa.4.0..sroa_idx.i662.i, align 4, !tbaa !19
  %.sroa.017.0.copyload.i666.i = load <2 x float>, ptr %i.cbs, align 4 ; 2 uses
  %wide.trip.count.i671.i = zext nneg i32 %i.cbu to i64
  %i.ccc = shufflevector <2 x float> %.sroa.017.0.copyload.i666.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ccd = insertelement <2 x float> %i.ccc, float %.sroa.4.0.copyload.i663.i, i64 0
  br label %bb.fy

bb.fy:                                            ; preds = %bb.ga, %.lr.ph.i665.i
  %indvars.iv.i672.i = phi i64 [ 1, %.lr.ph.i665.i ], [ %indvars.iv.next.i676.i, %bb.ga ] ; 4 uses
  %.035.i673.i = phi i32 [ 0, %.lr.ph.i665.i ], [ %.1.i682.i, %bb.ga ]
  %.02534.i674.i = phi float [ 0.000000e+00, %.lr.ph.i665.i ], [ %.126.i683.i, %bb.ga ] ; 2 uses
  %i.cce = mul nuw nsw i64 %indvars.iv.i672.i, 12
  %i.ccf = add i64 %i.cce, %i.cbx, !nosanitize !11 ; 2 uses
  %.not.i675.i = icmp ult i64 %i.ccf, %i.cbx, !nosanitize !11
  br i1 %.not.i675.i, label %bb.fz, label %bb.ga, !prof !20, !nosanitize !11

bb.fz:                                            ; preds = %bb.fy
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.cbx, i64 %i.ccf) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ga:                                            ; preds = %bb.fy
  %indvars.iv.next.i676.i = add nuw nsw i64 %indvars.iv.i672.i, 1 ; 2 uses
  %i.ccg = getelementptr inbounds nuw [12 x i8], ptr %i.cbs, i64 %indvars.iv.i672.i ; 2 uses
  %.sroa.28.0..sroa_idx.i677.i = getelementptr inbounds nuw i8, ptr %i.ccg, i64 8
  %.sroa.28.0.copyload.i678.i = load float, ptr %.sroa.28.0..sroa_idx.i677.i, align 4
  %.sroa.07.0.copyload.i679.i = load <2 x float>, ptr %i.ccg, align 4 ; 2 uses
  %foldExtExtBinop9500 = fsub <2 x float> %.sroa.07.0.copyload.i679.i, %.sroa.017.0.copyload.i666.i
  %i.cch = extractelement <2 x float> %foldExtExtBinop9500, i64 1
  %i.cci = fmul float %i.cch, %i.cbv
  %i.ccj = shufflevector <2 x float> %.sroa.07.0.copyload.i679.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cck = insertelement <2 x float> %i.ccj, float %.sroa.28.0.copyload.i678.i, i64 0
  %i.ccl = fsub <2 x float> %i.cck, %i.ccd
  %i.ccm = fmul <2 x float> %i.cbi, %i.ccl        ; 2 uses
  %i.ccn = extractelement <2 x float> %i.ccm, i64 1
  %i.cco = fsub float %i.cci, %i.ccn
  %i.ccp = extractelement <2 x float> %i.ccm, i64 0
  %i.ccq = fsub float %i.cco, %i.ccp              ; 2 uses
  %i.ccr = fcmp ogt float %i.ccq, %.02534.i674.i  ; 2 uses
  %i.ccs = trunc nuw nsw i64 %indvars.iv.i672.i to i32
  %.1.i682.i = select i1 %i.ccr, i32 %i.ccs, i32 %.035.i673.i ; 2 uses
  %.126.i683.i = select i1 %i.ccr, float %i.ccq, float %.02534.i674.i
  %exitcond.not.i684.i = icmp eq i64 %indvars.iv.next.i676.i, %wide.trip.count.i671.i
  br i1 %exitcond.not.i684.i, label %b3GetPointSupport.exit685.i, label %bb.fy, !llvm.loop !1

b3GetPointSupport.exit685.i:                      ; preds = %bb.ga, %bb.fx
  %.0.lcssa.i664.i = phi i32 [ 0, %bb.fx ], [ %.1.i682.i, %bb.ga ] ; 3 uses
  %i.cct = sext i32 %.0.lcssa.i664.i to i64       ; 2 uses
  %i.ccu = mul nsw i64 %i.cct, 12
  %i.ccv = add i64 %i.ccu, %i.cbx, !nosanitize !11 ; 3 uses
  %i.ccw = icmp ne i64 %i.ccv, 0
  %i.ccx = icmp uge i64 %i.ccv, %i.cbx, !nosanitize !11
  %i.ccy = icmp slt i32 %.0.lcssa.i664.i, 0
  %i.ccz = xor i1 %i.ccy, %i.ccx
  %i.cda = and i1 %i.ccw, %i.ccz, !nosanitize !11
  br i1 %i.cda, label %bb.gc, label %bb.gb, !prof !12, !nosanitize !11

bb.gb:                                            ; preds = %b3GetPointSupport.exit685.i
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @195, i64 %i.cbx, i64 %i.ccv) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.gc:                                            ; preds = %b3GetPointSupport.exit685.i
  %i.cdb = getelementptr inbounds [12 x i8], ptr %i.cbs, i64 %i.cct ; 2 uses
  %.sroa.070.0.copyload.i = load <2 x float>, ptr %i.cdb, align 4 ; 4 uses
  %.sroa.271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdb, i64 8
  %.sroa.271.0.copyload.i = load float, ptr %.sroa.271.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.0.4.vec.extract8.i.i688.i = extractelement <2 x float> %.sroa.070.0.copyload.i, i64 1 ; 2 uses
  %i.cdc = fmul float %.sroa.09.4.vec.extract13.i.i.i599, %.sroa.271.0.copyload.i
  %i.cdd = fmul float %.sroa.2.8.vec.extract65.i.i598, %.sroa.0.4.vec.extract8.i.i688.i
  %i.cde = fmul <2 x float> %i.bgo, %.sroa.070.0.copyload.i ; 2 uses
  %i.cdf = shufflevector <2 x float> %.sroa.070.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cdg = insertelement <2 x float> %i.cdf, float %.sroa.271.0.copyload.i, i64 0 ; 2 uses
  %i.cdh = fmul <2 x float> %.sroa.0.0.i.i.i, %i.cdg ; 2 uses
  %i.cdi = shufflevector <2 x float> %i.cde, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cdj = insertelement <2 x float> %i.cdi, float %i.cdc, i64 0
  %i.cdk = shufflevector <2 x float> %i.cdh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cdl = insertelement <2 x float> %i.cdk, float %i.cdd, i64 0
  %i.cdm = fsub <2 x float> %i.cdj, %i.cdl
  %i.cdn = fsub <2 x float> %i.cde, %i.cdh
  %i.cdo = fmul <2 x float> %i.bgz, %.sroa.070.0.copyload.i
  %i.cdp = insertelement <2 x float> %i.cdf, float %.sroa.271.0.copyload.i, i64 1
  %i.cdq = fmul <2 x float> %i.bgz, %i.cdp
  %i.cdr = fadd <2 x float> %i.cdo, %i.cdm        ; 2 uses
  %i.cds = fadd <2 x float> %i.cdq, %i.cdn        ; 2 uses
  %foldExtExtBinop9502 = fmul <2 x float> %.sroa.4.0.i.i.i, %i.cdr
  %shift9504 = shufflevector <2 x float> %i.cds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9505 = fmul <2 x float> %.sroa.0.0.i.i.i, %shift9504
  %foldExtExtBinop9507 = fsub <2 x float> %foldExtExtBinop9502, %foldExtExtBinop9505
  %i.cdt = extractelement <2 x float> %foldExtExtBinop9507, i64 0
  %i.cdu = fmul <2 x float> %.sroa.0.0.i.i.i, %i.cds
  %i.cdv = fmul <2 x float> %i.bhh, %i.cdr
  %i.cdw = fsub <2 x float> %i.cdu, %i.cdv
  %i.cdx = fmul float %i.cdt, 2.000000e+00
  %i.cdy = fadd float %.sroa.0.4.vec.extract8.i.i688.i, %i.cdx
  %i.cdz = fmul <2 x float> %i.cdw, splat (float 2.000000e+00)
  %i.cea = fadd <2 x float> %i.cdg, %i.cdz
  %i.ceb = fadd float %i.bho, %i.cdy
  %i.cec = fadd <2 x float> %i.bhp, %i.cea
  %i.ced = fsub float %i.ceb, %i.cap
  %i.cee = fsub <2 x float> %i.cec, %i.caq
  %i.cef = fmul float %i.bzn, %i.ced
  %i.ceg = fmul <2 x float> %i.bzp, %i.cee        ; 2 uses
  %i.ceh = extractelement <2 x float> %i.ceg, i64 1
  %i.cei = fadd float %i.ceh, %i.cef
  %i.cej = extractelement <2 x float> %i.ceg, i64 0
  %i.cek = fadd float %i.cej, %i.cei
  br label %b3FindMinSeparation.exit

bb.gd:                                            ; preds = %b3GetSweepTransform.exit
  %.sroa.048.0.copyload.i = load <2 x float>, ptr %i.br, align 8 ; 4 uses
  %.sroa.249.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.0.4.vec.extract8.i.i718.i = extractelement <2 x float> %.sroa.048.0.copyload.i, i64 1 ; 2 uses
  %i.cel = fmul float %.sroa.09.4.vec.extract13.i.i.i599, %.sroa.249.0.copyload.i
  %i.cem = fmul float %.sroa.2.8.vec.extract65.i.i598, %.sroa.0.4.vec.extract8.i.i718.i
  %i.cen = fmul <2 x float> %i.bgo, %.sroa.048.0.copyload.i ; 2 uses
  %i.ceo = shufflevector <2 x float> %.sroa.048.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cep = insertelement <2 x float> %i.ceo, float %.sroa.249.0.copyload.i, i64 0 ; 2 uses
  %i.ceq = fmul <2 x float> %.sroa.0.0.i.i.i, %i.cep ; 2 uses
  %i.cer = shufflevector <2 x float> %i.cen, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ces = insertelement <2 x float> %i.cer, float %i.cel, i64 0
  %i.cet = shufflevector <2 x float> %i.ceq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ceu = insertelement <2 x float> %i.cet, float %i.cem, i64 0
  %i.cev = fsub <2 x float> %i.ces, %i.ceu
  %i.cew = fsub <2 x float> %i.cen, %i.ceq
  %i.cex = fmul <2 x float> %i.bgz, %.sroa.048.0.copyload.i
  %i.cey = insertelement <2 x float> %i.ceo, float %.sroa.249.0.copyload.i, i64 1
  %i.cez = fmul <2 x float> %i.bgz, %i.cey
  %i.cfa = fadd <2 x float> %i.cex, %i.cev        ; 2 uses
  %i.cfb = fadd <2 x float> %i.cez, %i.cew        ; 2 uses
  %foldExtExtBinop9509 = fmul <2 x float> %.sroa.4.0.i.i.i, %i.cfa
  %shift9511 = shufflevector <2 x float> %i.cfb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9512 = fmul <2 x float> %.sroa.0.0.i.i.i, %shift9511
  %foldExtExtBinop9514 = fsub <2 x float> %foldExtExtBinop9509, %foldExtExtBinop9512
  %i.cfc = extractelement <2 x float> %foldExtExtBinop9514, i64 0
  %i.cfd = fmul <2 x float> %.sroa.0.0.i.i.i, %i.cfb
  %i.cfe = fmul <2 x float> %i.bhh, %i.cfa
  %i.cff = fsub <2 x float> %i.cfd, %i.cfe
  %i.cfg = fmul float %i.cfc, 2.000000e+00
  %i.cfh = fadd float %.sroa.0.4.vec.extract8.i.i718.i, %i.cfg ; 4 uses
  %i.cfi = fmul <2 x float> %i.cff, splat (float 2.000000e+00)
  %i.cfj = fadd <2 x float> %i.cep, %i.cfi        ; 5 uses
  %i.cfk = fmul <2 x float> %i.ber, %i.cfj
  %i.cfl = shufflevector <2 x float> %i.cfj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cfm = insertelement <2 x float> %i.cfl, float %i.cfh, i64 0 ; 2 uses
  %i.cfn = fmul <2 x float> %i.bdy, %i.cfm
  %i.cfo = insertelement <2 x float> %i.cfl, float %i.cfh, i64 1 ; 2 uses
  %i.cfp = fmul <2 x float> %i.bdy, %i.cfo
  %i.cfq = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.cfj
  %i.cfr = fsub <2 x float> %i.cfk, %i.cfn
  %i.cfs = fsub <2 x float> %i.cfp, %i.cfq
  %i.cft = fmul <2 x float> %i.bej, %i.cfo
  %i.cfu = fmul <2 x float> %i.bej, %i.cfm
  %i.cfv = fsub <2 x float> %i.cfr, %i.cft        ; 2 uses
  %i.cfw = fsub <2 x float> %i.cfs, %i.cfu        ; 2 uses
  %i.cfx = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.cfw
  %i.cfy = fmul <2 x float> %i.ber, %i.cfv
  %i.cfz = fsub <2 x float> %i.cfx, %i.cfy
  %i.cga = fmul <2 x float> %i.cfz, splat (float 2.000000e+00)
  %i.cgb = fadd <2 x float> %i.cfj, %i.cga
  %i.cgc = load ptr, ptr %15, align 8, !tbaa !39  ; 4 uses
  %i.cgd = icmp ne ptr %i.cgc, null, !nosanitize !11
  %i.cge = ptrtoint ptr %i.cgc to i64, !nosanitize !11 ; 2 uses
  %i.cgf = and i64 %i.cge, 7, !nosanitize !11
  %i.cgg = icmp eq i64 %i.cgf, 0, !nosanitize !11
  %i.cgh = and i1 %i.cgd, %i.cgg, !nosanitize !11
  br i1 %i.cgh, label %bb.gf, label %bb.ge, !prof !12, !nosanitize !11

bb.ge:                                            ; preds = %bb.gd
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @196, i64 %i.cge) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.gf:                                            ; preds = %bb.gd
  %foldExtExtBinop9516 = fmul <2 x float> %.sroa.4.0.i.i.i616, %i.cfv
  %shift9518 = shufflevector <2 x float> %i.cfw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9519 = fmul <2 x float> %.sroa.0.0.i.i.i617, %shift9518
  %foldExtExtBinop9521 = fsub <2 x float> %foldExtExtBinop9516, %foldExtExtBinop9519
  %i.cgi = extractelement <2 x float> %foldExtExtBinop9521, i64 0
  %i.cgj = fmul float %i.cgi, 2.000000e+00
  %i.cgk = fadd float %i.cfh, %i.cgj
  %i.cgl = load ptr, ptr %i.cgc, align 8, !tbaa !18 ; 6 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgc, i64 8
  %i.cgn = load i32, ptr %i.cgm, align 8, !tbaa !17 ; 2 uses
  %i.cgo = fneg float %i.cgk
  %i.cgp = icmp ne ptr %i.cgl, null, !nosanitize !11
  %i.cgq = ptrtoint ptr %i.cgl to i64, !nosanitize !11 ; 8 uses
  %i.cgr = and i64 %i.cgq, 3, !nosanitize !11
  %i.cgs = icmp eq i64 %i.cgr, 0, !nosanitize !11
  %i.cgt = and i1 %i.cgp, %i.cgs, !nosanitize !11
  br i1 %i.cgt, label %bb.gh, label %bb.gg, !prof !12, !nosanitize !11

bb.gg:                                            ; preds = %bb.gf
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.cgq) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.gh:                                            ; preds = %bb.gf
  %i.cgu = icmp sgt i32 %i.cgn, 1
  br i1 %i.cgu, label %.lr.ph.i745.i, label %b3GetPointSupport.exit765.i

.lr.ph.i745.i:                                    ; preds = %bb.gh
  %.sroa.4.0..sroa_idx.i742.i = getelementptr inbounds nuw i8, ptr %i.cgl, i64 8
  %.sroa.4.0.copyload.i743.i = load float, ptr %.sroa.4.0..sroa_idx.i742.i, align 4, !tbaa !19
  %.sroa.017.0.copyload.i746.i = load <2 x float>, ptr %i.cgl, align 4 ; 2 uses
  %wide.trip.count.i751.i = zext nneg i32 %i.cgn to i64
  %i.cgv = shufflevector <2 x float> %.sroa.017.0.copyload.i746.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cgw = insertelement <2 x float> %i.cgv, float %.sroa.4.0.copyload.i743.i, i64 0
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gk, %.lr.ph.i745.i
  %indvars.iv.i752.i = phi i64 [ 1, %.lr.ph.i745.i ], [ %indvars.iv.next.i756.i, %bb.gk ] ; 4 uses
  %.035.i753.i = phi i32 [ 0, %.lr.ph.i745.i ], [ %.1.i762.i, %bb.gk ]
  %.02534.i754.i = phi float [ 0.000000e+00, %.lr.ph.i745.i ], [ %.126.i763.i, %bb.gk ] ; 2 uses
  %i.cgx = mul nuw nsw i64 %indvars.iv.i752.i, 12
  %i.cgy = add i64 %i.cgx, %i.cgq, !nosanitize !11 ; 2 uses
  %.not.i755.i = icmp ult i64 %i.cgy, %i.cgq, !nosanitize !11
  br i1 %.not.i755.i, label %bb.gj, label %bb.gk, !prof !20, !nosanitize !11

bb.gj:                                            ; preds = %bb.gi
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.cgq, i64 %i.cgy) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.gk:                                            ; preds = %bb.gi
  %indvars.iv.next.i756.i = add nuw nsw i64 %indvars.iv.i752.i, 1 ; 2 uses
  %i.cgz = getelementptr inbounds nuw [12 x i8], ptr %i.cgl, i64 %indvars.iv.i752.i ; 2 uses
  %.sroa.28.0..sroa_idx.i757.i = getelementptr inbounds nuw i8, ptr %i.cgz, i64 8
  %.sroa.28.0.copyload.i758.i = load float, ptr %.sroa.28.0..sroa_idx.i757.i, align 4
  %.sroa.07.0.copyload.i759.i = load <2 x float>, ptr %i.cgz, align 4 ; 2 uses
  %foldExtExtBinop9523 = fsub <2 x float> %.sroa.07.0.copyload.i759.i, %.sroa.017.0.copyload.i746.i
  %i.cha = extractelement <2 x float> %foldExtExtBinop9523, i64 1
  %i.chb = fmul float %i.cha, %i.cgo
  %i.chc = shufflevector <2 x float> %.sroa.07.0.copyload.i759.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.chd = insertelement <2 x float> %i.chc, float %.sroa.28.0.copyload.i758.i, i64 0
  %i.che = fsub <2 x float> %i.chd, %i.cgw
  %i.chf = fmul <2 x float> %i.cgb, %i.che        ; 2 uses
  %i.chg = extractelement <2 x float> %i.chf, i64 1
  %i.chh = fsub float %i.chb, %i.chg
  %i.chi = extractelement <2 x float> %i.chf, i64 0
  %i.chj = fsub float %i.chh, %i.chi              ; 2 uses
  %i.chk = fcmp ogt float %i.chj, %.02534.i754.i  ; 2 uses
  %i.chl = trunc nuw nsw i64 %indvars.iv.i752.i to i32
  %.1.i762.i = select i1 %i.chk, i32 %i.chl, i32 %.035.i753.i ; 2 uses
  %.126.i763.i = select i1 %i.chk, float %i.chj, float %.02534.i754.i
  %exitcond.not.i764.i = icmp eq i64 %indvars.iv.next.i756.i, %wide.trip.count.i751.i
  br i1 %exitcond.not.i764.i, label %b3GetPointSupport.exit765.i, label %bb.gi, !llvm.loop !1

b3GetPointSupport.exit765.i:                      ; preds = %bb.gk, %bb.gh
  %.0.lcssa.i744.i = phi i32 [ 0, %bb.gh ], [ %.1.i762.i, %bb.gk ] ; 3 uses
  %i.chm = sext i32 %.0.lcssa.i744.i to i64       ; 2 uses
  %i.chn = mul nsw i64 %i.chm, 12
  %i.cho = add i64 %i.chn, %i.cgq, !nosanitize !11 ; 3 uses
  %i.chp = icmp ne i64 %i.cho, 0
  %i.chq = icmp uge i64 %i.cho, %i.cgq, !nosanitize !11
  %i.chr = icmp slt i32 %.0.lcssa.i744.i, 0
  %i.chs = xor i1 %i.chr, %i.chq
  %i.cht = and i1 %i.chp, %i.chs, !nosanitize !11
  br i1 %i.cht, label %bb.gm, label %bb.gl, !prof !12, !nosanitize !11

bb.gl:                                            ; preds = %b3GetPointSupport.exit765.i
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @197, i64 %i.cgq, i64 %i.cho) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.gm:                                            ; preds = %b3GetPointSupport.exit765.i
  %i.chu = getelementptr inbounds [12 x i8], ptr %i.cgl, i64 %i.chm ; 2 uses
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.chu, i64 8
  %.sroa.223.0.copyload.i = load float, ptr %.sroa.223.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.022.0.copyload.i = load <2 x float>, ptr %i.chu, align 4 ; 5 uses
  %.sroa.015.0.copyload.i = load <2 x float>, ptr %i.bs, align 4 ; 5 uses
  %.sroa.216.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4 ; 3 uses
  %i.chv = fmul <2 x float> %i.bej, %.sroa.022.0.copyload.i
  %i.chw = fmul float %.sroa.09.4.vec.extract13.i.i.i633, %.sroa.223.0.copyload.i
  %shift9525 = shufflevector <2 x float> %.sroa.022.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9526 = fmul <2 x float> %.sroa.4.0.i.i.i616, %shift9525
  %i.chx = fmul <2 x float> %i.bdy, %.sroa.022.0.copyload.i ; 2 uses
  %i.chy = shufflevector <2 x float> %.sroa.022.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.chz = insertelement <2 x float> %i.chy, float %.sroa.223.0.copyload.i, i64 0 ; 2 uses
  %i.cia = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.chz ; 2 uses
  %i.cib = shufflevector <2 x float> %i.chx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cic = insertelement <2 x float> %i.cib, float %i.chw, i64 0
  %i.cid = shufflevector <2 x float> %i.cia, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cie = shufflevector <2 x float> %foldExtExtBinop9526, <2 x float> %i.cid, <2 x i32> <i32 0, i32 3>
  %i.cif = fsub <2 x float> %i.cic, %i.cie
  %i.cig = insertelement <2 x float> %i.chy, float %.sroa.223.0.copyload.i, i64 1
  %i.cih = fmul <2 x float> %i.bej, %i.cig
  %i.cii = fsub <2 x float> %i.chx, %i.cia
  %i.cij = fadd <2 x float> %i.chv, %i.cif        ; 2 uses
  %i.cik = fadd <2 x float> %i.cih, %i.cii        ; 2 uses
  %i.cil = fmul <2 x float> %.sroa.0.0.i.i.i617, %i.cik
  %i.cim = fmul <2 x float> %i.ber, %i.cij
  %i.cin = fsub <2 x float> %i.cil, %i.cim
  %i.cio = fmul <2 x float> %i.cin, splat (float 2.000000e+00)
  %i.cip = fadd <2 x float> %i.chz, %i.cio
  %i.ciq = fadd <2 x float> %i.bez, %i.cip
  %i.cir = fmul float %.sroa.09.4.vec.extract13.i.i.i599, %.sroa.216.0.copyload.i
  %shift9528 = shufflevector <2 x float> %.sroa.015.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9529 = fmul <2 x float> %.sroa.4.0.i.i.i, %shift9528
  %i.cis = fmul <2 x float> %i.bgo, %.sroa.015.0.copyload.i ; 2 uses
  %i.cit = shufflevector <2 x float> %.sroa.015.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ciu = insertelement <2 x float> %i.cit, float %.sroa.216.0.copyload.i, i64 0 ; 2 uses
  %i.civ = fmul <2 x float> %.sroa.0.0.i.i.i, %i.ciu ; 2 uses
  %i.ciw = shufflevector <2 x float> %i.cis, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cix = insertelement <2 x float> %i.ciw, float %i.cir, i64 0
  %i.ciy = shufflevector <2 x float> %i.civ, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ciz = shufflevector <2 x float> %foldExtExtBinop9529, <2 x float> %i.ciy, <2 x i32> <i32 0, i32 3>
  %i.cja = fsub <2 x float> %i.cix, %i.ciz
  %i.cjb = fsub <2 x float> %i.cis, %i.civ
  %i.cjc = fmul <2 x float> %i.bgz, %.sroa.015.0.copyload.i
  %i.cjd = insertelement <2 x float> %i.cit, float %.sroa.216.0.copyload.i, i64 1
  %i.cje = fmul <2 x float> %i.bgz, %i.cjd
  %i.cjf = fadd <2 x float> %i.cjc, %i.cja        ; 2 uses
  %i.cjg = fadd <2 x float> %i.cje, %i.cjb        ; 2 uses
  %i.cjh = fmul <2 x float> %.sroa.0.0.i.i.i, %i.cjg
  %i.cji = fmul <2 x float> %i.bhh, %i.cjf
  %i.cjj = fsub <2 x float> %i.cjh, %i.cji
  %i.cjk = fmul <2 x float> %i.cjj, splat (float 2.000000e+00)
  %i.cjl = fadd <2 x float> %i.ciu, %i.cjk
  %i.cjm = shufflevector <2 x float> %.sroa.4.0.i.i.i616, <2 x float> %.sroa.4.0.i.i.i, <2 x i32> <i32 0, i32 2>
  %i.cjn = shufflevector <2 x float> %i.cij, <2 x float> %i.cjf, <2 x i32> <i32 0, i32 2>
  %i.cjo = fmul <2 x float> %i.cjm, %i.cjn
  %i.cjp = shufflevector <2 x float> %.sroa.0.0.i.i.i617, <2 x float> %.sroa.0.0.i.i.i, <2 x i32> <i32 0, i32 2>
  %i.cjq = shufflevector <2 x float> %i.cik, <2 x float> %i.cjg, <2 x i32> <i32 1, i32 3>
  %i.cjr = fmul <2 x float> %i.cjp, %i.cjq
  %i.cjs = fsub <2 x float> %i.cjo, %i.cjr
  %i.cjt = fmul <2 x float> %i.cjs, splat (float 2.000000e+00)
  %i.cju = shufflevector <2 x float> %.sroa.022.0.copyload.i, <2 x float> %.sroa.015.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.cjv = fadd <2 x float> %i.cju, %i.cjt
  %i.cjw = insertelement <2 x float> poison, float %i.bey, i64 0
  %i.cjx = insertelement <2 x float> %i.cjw, float %i.bho, i64 1
  %i.cjy = fadd <2 x float> %i.cjx, %i.cjv        ; 2 uses
  %i.cjz = fadd <2 x float> %i.bhp, %i.cjl
  %shift9531 = shufflevector <2 x float> %i.cjy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9532 = fsub <2 x float> %i.cjy, %shift9531
  %i.cka = extractelement <2 x float> %foldExtExtBinop9532, i64 0
  %i.ckb = fsub <2 x float> %i.ciq, %i.cjz
  %i.ckc = fmul float %i.cfh, %i.cka
  %i.ckd = fmul <2 x float> %i.cfj, %i.ckb        ; 2 uses
  %i.cke = extractelement <2 x float> %i.ckd, i64 1
  %i.ckf = fadd float %i.cke, %i.ckc
  %i.ckg = extractelement <2 x float> %i.ckd, i64 0
  %i.ckh = fadd float %i.ckg, %i.ckf
  br label %b3FindMinSeparation.exit

b3FindMinSeparation.exit:                         ; preds = %b3GetSweepTransform.exit, %bb.ey, %bb.fs, %bb.gc, %bb.gm
  %.05399 = phi i32 [ undef, %b3GetSweepTransform.exit ], [ %.0.lcssa.i.i, %bb.ey ], [ %.0.lcssa.i508.i, %bb.fs ], [ -1, %bb.gc ], [ %.0.lcssa.i744.i, %bb.gm ] ; 2 uses
  %.05398 = phi i32 [ undef, %b3GetSweepTransform.exit ], [ %.0.lcssa.i409.i, %bb.ey ], [ %.0.lcssa.i548.i, %bb.fs ], [ %.0.lcssa.i664.i, %bb.gc ], [ -1, %bb.gm ] ; 2 uses
  %.0.i = phi float [ 0.000000e+00, %b3GetSweepTransform.exit ], [ %i.box, %bb.ey ], [ %i.byq, %bb.fs ], [ %i.cek, %bb.gc ], [ %i.ckh, %bb.gm ] ; 3 uses
  %i.cki = fsub float %.0.i, %i.ap
  %i.ckj = fcmp ogt float %i.cki, %i.aq
  br i1 %i.ckj, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %b3FindMinSeparation.exit
  %i.ckk = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ckl = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ckm = insertelement <2 x float> poison, float %.sroa.2206.0.copyload, i64 0
  %i.ckn = insertelement <2 x float> %i.ckm, float %.sroa.2196.0.copyload, i64 1
  %i.cko = fmul <2 x float> %i.ckl, %i.ckn
  %i.ckp = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> %.sroa.0195.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ckq = insertelement <4 x float> %i.ckp, float %.sroa.2206.0.copyload, i64 0
  %i.ckr = insertelement <4 x float> %i.ckq, float %.sroa.2196.0.copyload, i64 2 ; 3 uses
  %i.cks = fmul <4 x float> %i.ckk, %i.ckr
  %i.ckt = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.5649.0.copyload, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.cku = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> %.sroa.0195.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ckv = fmul <4 x float> %i.ckt, %i.cku
  %i.ckw = fsub <4 x float> %i.cks, %i.ckv        ; 2 uses
  %i.ckx = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cky = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> %.sroa.0195.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ckz = fmul <2 x float> %i.ckx, %i.cky
  %i.cla = fsub <2 x float> %i.ckz, %i.cko
  %i.clb = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.clc = shufflevector <4 x float> %i.ckp, <4 x float> %i.ckr, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cld = fmul <4 x float> %i.clb, %i.clc
  %i.cle = fmul <4 x float> %i.clb, %i.ckr
  %i.clf = shufflevector <4 x float> %i.ckw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.clg = shufflevector <2 x float> %i.cla, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.clh = shufflevector <4 x float> %i.clf, <4 x float> %i.clg, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cli = fadd <4 x float> %i.cle, %i.clh        ; 3 uses
  %i.clj = fadd <4 x float> %i.cld, %i.ckw        ; 3 uses
  %i.clk = shufflevector <4 x float> %i.cli, <4 x float> %i.clj, <2 x i32> <i32 1, i32 4>
  %i.cll = fmul <2 x float> %.sroa.5649.0.copyload, %i.clk ; 2 uses
  %i.clm = fmul <4 x float> %i.ckt, %i.clj
  %i.cln = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.clo = fmul <4 x float> %i.cln, %i.cli
  %i.clp = fsub <4 x float> %i.clm, %i.clo
  %i.clq = fmul <4 x float> %i.clp, splat (float 2.000000e+00)
  %i.clr = shufflevector <4 x float> %i.cli, <4 x float> %i.clj, <2 x i32> <i32 3, i32 6>
  %i.cls = fmul <2 x float> %.sroa.5649.0.copyload, %i.clr ; 2 uses
  %i.clt = shufflevector <2 x float> %i.cll, <2 x float> %i.cls, <2 x i32> <i32 0, i32 2>
  %i.clu = shufflevector <2 x float> %i.cll, <2 x float> %i.cls, <2 x i32> <i32 1, i32 3>
  %i.clv = fsub <2 x float> %i.clt, %i.clu
  %i.clw = fadd <4 x float> %i.cku, %i.clq
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  store i32 4, ptr %0, align 4, !tbaa !98
  %i.clx = load float, ptr %i.ae, align 8, !tbaa !94
  br label %.thread709

bb.go:                                            ; preds = %b3FindMinSeparation.exit
  %i.cly = fcmp ult float %.0.i, %i.cf
  br i1 %i.cly, label %bb.gp, label %select.unfold698

bb.gp:                                            ; preds = %bb.go
  %i.clz = call fastcc float @b3EvaluateSeparation(ptr noundef %15, i32 noundef %.05399, i32 noundef %.05398, float noundef %.0) ; 3 uses
  %i.cma = fcmp olt float %i.clz, %i.cf
  br i1 %i.cma, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.cmb = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.cmc = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cmd = insertelement <2 x float> poison, float %.sroa.2206.0.copyload, i64 0
  %i.cme = insertelement <2 x float> %i.cmd, float %.sroa.2196.0.copyload, i64 1
  %i.cmf = fmul <2 x float> %i.cmc, %i.cme
  %i.cmg = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> %.sroa.0195.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cmh = insertelement <4 x float> %i.cmg, float %.sroa.2206.0.copyload, i64 0
  %i.cmi = insertelement <4 x float> %i.cmh, float %.sroa.2196.0.copyload, i64 2 ; 3 uses
  %i.cmj = fmul <4 x float> %i.cmb, %i.cmi
  %i.cmk = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.5649.0.copyload, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.cml = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> %.sroa.0195.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cmm = fmul <4 x float> %i.cmk, %i.cml
  %i.cmn = fsub <4 x float> %i.cmj, %i.cmm        ; 2 uses
  %i.cmo = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cmp = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> %.sroa.0195.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cmq = fmul <2 x float> %i.cmo, %i.cmp
  %i.cmr = fsub <2 x float> %i.cmq, %i.cmf
  %i.cms = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cmt = shufflevector <4 x float> %i.cmg, <4 x float> %i.cmi, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cmu = fmul <4 x float> %i.cms, %i.cmt
  %i.cmv = fmul <4 x float> %i.cms, %i.cmi
  %i.cmw = shufflevector <4 x float> %i.cmn, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cmx = shufflevector <2 x float> %i.cmr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cmy = shufflevector <4 x float> %i.cmw, <4 x float> %i.cmx, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cmz = fadd <4 x float> %i.cmv, %i.cmy        ; 3 uses
  %i.cna = fadd <4 x float> %i.cmu, %i.cmn        ; 3 uses
  %i.cnb = shufflevector <4 x float> %i.cmz, <4 x float> %i.cna, <2 x i32> <i32 1, i32 4>
  %i.cnc = fmul <2 x float> %.sroa.5649.0.copyload, %i.cnb ; 2 uses
  %i.cnd = fmul <4 x float> %i.cmk, %i.cna
  %i.cne = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cnf = fmul <4 x float> %i.cne, %i.cmz
  %i.cng = fsub <4 x float> %i.cnd, %i.cnf
  %i.cnh = fmul <4 x float> %i.cng, splat (float 2.000000e+00)
  %i.cni = shufflevector <4 x float> %i.cmz, <4 x float> %i.cna, <2 x i32> <i32 3, i32 6>
  %i.cnj = fmul <2 x float> %.sroa.5649.0.copyload, %i.cni ; 2 uses
  %i.cnk = shufflevector <2 x float> %i.cnc, <2 x float> %i.cnj, <2 x i32> <i32 0, i32 2>
  %i.cnl = shufflevector <2 x float> %i.cnc, <2 x float> %i.cnj, <2 x i32> <i32 1, i32 3>
  %i.cnm = fsub <2 x float> %i.cnk, %i.cnl
  %i.cnn = fadd <4 x float> %i.cml, %i.cnh
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  store i32 1, ptr %0, align 4, !tbaa !98
  br label %.thread709

bb.gr:                                            ; preds = %bb.gp
  %i.cno = fcmp ugt float %i.clz, %i.az
  br i1 %i.cno, label %.preheader, label %bb.gs

.preheader:                                       ; preds = %bb.gr
  %i.cnp = add i32 %.lcssa24032405, 50
  %i.cnq = sub i32 2147483647, %.lcssa24032405
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.cnr = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.cns = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cnt = insertelement <2 x float> poison, float %.sroa.2206.0.copyload, i64 0
  %i.cnu = insertelement <2 x float> %i.cnt, float %.sroa.2196.0.copyload, i64 1
  %i.cnv = fmul <2 x float> %i.cns, %i.cnu
  %i.cnw = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> %.sroa.0195.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cnx = insertelement <4 x float> %i.cnw, float %.sroa.2206.0.copyload, i64 0
  %i.cny = insertelement <4 x float> %i.cnx, float %.sroa.2196.0.copyload, i64 2 ; 3 uses
  %i.cnz = fmul <4 x float> %i.cnr, %i.cny
  %i.coa = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.5649.0.copyload, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.cob = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> %.sroa.0195.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.coc = fmul <4 x float> %i.coa, %i.cob
  %i.cod = fsub <4 x float> %i.cnz, %i.coc        ; 2 uses
  %i.coe = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cof = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> %.sroa.0195.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cog = fmul <2 x float> %i.coe, %i.cof
  %i.coh = fsub <2 x float> %i.cog, %i.cnv
  %i.coi = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.coj = shufflevector <4 x float> %i.cnw, <4 x float> %i.cny, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cok = fmul <4 x float> %i.coi, %i.coj
  %i.col = fmul <4 x float> %i.coi, %i.cny
  %i.com = shufflevector <4 x float> %i.cod, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.con = shufflevector <2 x float> %i.coh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.coo = shufflevector <4 x float> %i.com, <4 x float> %i.con, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cop = fadd <4 x float> %i.col, %i.coo        ; 3 uses
  %i.coq = fadd <4 x float> %i.cok, %i.cod        ; 3 uses
  %i.cor = shufflevector <4 x float> %i.cop, <4 x float> %i.coq, <2 x i32> <i32 1, i32 4>
  %i.cos = fmul <2 x float> %.sroa.5649.0.copyload, %i.cor ; 2 uses
  %i.cot = fmul <4 x float> %i.coa, %i.coq
  %i.cou = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cov = fmul <4 x float> %i.cou, %i.cop
  %i.cow = fsub <4 x float> %i.cot, %i.cov
  %i.cox = fmul <4 x float> %i.cow, splat (float 2.000000e+00)
  %i.coy = shufflevector <4 x float> %i.cop, <4 x float> %i.coq, <2 x i32> <i32 3, i32 6>
  %i.coz = fmul <2 x float> %.sroa.5649.0.copyload, %i.coy ; 2 uses
  %i.cpa = shufflevector <2 x float> %i.cos, <2 x float> %i.coz, <2 x i32> <i32 0, i32 2>
  %i.cpb = shufflevector <2 x float> %i.cos, <2 x float> %i.coz, <2 x i32> <i32 1, i32 3>
  %i.cpc = fsub <2 x float> %i.cpa, %i.cpb
  %i.cpd = fadd <4 x float> %i.cob, %i.cox
  store i32 %.lcssa24032405, ptr %i.cg, align 4
  store i32 %i.bce, ptr %i.cl, align 4
  store i32 3, ptr %0, align 4, !tbaa !98
  br label %.thread709

bb.gt:                                            ; preds = %.preheader, %bb.gz
  %i.cpe = phi i32 [ %i.cpo, %bb.gz ], [ %.lcssa24032405, %.preheader ]
  %.0332 = phi float [ %.0332., %bb.gz ], [ %.0.i, %.preheader ] ; 2 uses
  %.0329 = phi float [ %..0329, %bb.gz ], [ %i.clz, %.preheader ] ; 3 uses
  %.0328 = phi i32 [ %i.cpp, %bb.gz ], [ 0, %.preheader ] ; 3 uses
  %.0325 = phi float [ %.0321..0325, %bb.gz ], [ %.0, %.preheader ] ; 4 uses
  %.0322 = phi float [ %.0322..0321, %bb.gz ], [ %.0338, %.preheader ] ; 3 uses
  %i.cpf = and i32 %.0328, 1
  %.not = icmp eq i32 %i.cpf, 0
  br i1 %.not, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.cpg = fsub float %i.ap, %.0329
  %i.cph = fsub float %.0322, %.0325
  %i.cpi = fmul float %i.cpg, %i.cph
  %i.cpj = fsub float %.0332, %.0329
  %i.cpk = fdiv float %i.cpi, %i.cpj
  %i.cpl = fadd float %.0325, %i.cpk
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  %i.cpm = fadd float %.0325, %.0322
  %i.cpn = fmul float %i.cpm, 5.000000e-01
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %.0321 = phi float [ %i.cpl, %bb.gu ], [ %i.cpn, %bb.gv ] ; 4 uses
  %exitcond = icmp eq i32 %.0328, %i.cnq
  br i1 %exitcond, label %bb.gx, label %bb.gy, !prof !20, !nosanitize !11

bb.gx:                                            ; preds = %bb.gw
  store i32 %i.bce, ptr %i.cl, align 4
  store i32 2147483647, ptr %i.cg, align 4
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @59, i64 2147483647, i64 1) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.gy:                                            ; preds = %bb.gw
  %i.cpo = add i32 %i.cpe, 1                      ; 3 uses
  %i.cpp = add nuw nsw i32 %.0328, 1              ; 3 uses
  %i.cpq = call fastcc float @b3EvaluateSeparation(ptr noundef %15, i32 noundef %.05399, i32 noundef %.05398, float noundef %.0321) ; 4 uses
  %i.cpr = fsub float %i.cpq, %i.ap
  %i.cps = call float @llvm.fabs.f32(float %i.cpr)
  %i.cpt = fcmp ugt float %i.cps, %i.aq
  br i1 %i.cpt, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.cpu = fcmp ogt float %i.cpq, %i.ap           ; 4 uses
  %.0332. = select i1 %i.cpu, float %.0332, float %i.cpq
  %..0329 = select i1 %i.cpu, float %i.cpq, float %.0329
  %.0321..0325 = select i1 %i.cpu, float %.0321, float %.0325
  %.0322..0321 = select i1 %i.cpu, float %.0322, float %.0321
  %i.cpv = icmp eq i32 %i.cpp, 50
  br i1 %i.cpv, label %.thread695, label %bb.gt

bb.ha:                                            ; preds = %bb.gy
  %i.cpw = icmp eq i32 %i.cpp, 49
  %i.cpx = load i32, ptr %i.be, align 8
  %i.cpy = icmp eq i32 %i.cpx, 2
  %or.cond = select i1 %i.cpw, i1 %i.cpy, i1 false
  br i1 %or.cond, label %bb.hb, label %.thread695

bb.hb:                                            ; preds = %bb.ha
  %i.cpz = load float, ptr %i.ae, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef nonnull %i.bb, float noundef %.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %i.bd, float noundef %.0)
  %i.cqa = load <2 x float>, ptr %i.ch, align 4   ; 5 uses
  %i.cqb = load <2 x float>, ptr %i.ci, align 4   ; 6 uses
  %.sroa.025.0.copyload.i = load <2 x float>, ptr %i.br, align 8 ; 6 uses
  %.sroa.226.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 2 uses
  %i.cqc = shufflevector <2 x float> %.sroa.025.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.09.0.vec.extract.i.i.i551 = extractelement <2 x float> %i.cqa, i64 0
  %.sroa.2.12.vec.extract.i.i552 = extractelement <2 x float> %i.cqb, i64 1
  %i.cqd = load <2 x float>, ptr %i.cj, align 4   ; 5 uses
  %i.cqe = load <2 x float>, ptr %i.ck, align 4   ; 6 uses
  %.sroa.017.0.copyload.i = load <2 x float>, ptr %i.bs, align 4 ; 6 uses
  %.sroa.218.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4 ; 2 uses
  %i.cqf = shufflevector <2 x float> %.sroa.017.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.2.12.vec.extract.i42.i = extractelement <2 x float> %i.cqe, i64 1
  %i.cqg = shufflevector <2 x float> %i.cqd, <2 x float> %i.cqa, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cqh = insertelement <2 x float> poison, float %.sroa.218.0.copyload.i, i64 0
  %i.cqi = insertelement <2 x float> %i.cqh, float %.sroa.226.0.copyload.i, i64 1 ; 3 uses
  %i.cqj = fmul <2 x float> %i.cqg, %i.cqi
  %i.cqk = fmul <2 x float> %i.cqa, %i.cqc        ; 2 uses
  %i.cql = shufflevector <2 x float> %i.cqe, <2 x float> %i.cqb, <2 x i32> <i32 0, i32 2>
  %i.cqm = shufflevector <2 x float> %.sroa.017.0.copyload.i, <2 x float> %.sroa.025.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cqn = fmul <2 x float> %i.cql, %i.cqm
  %i.cqo = fsub <2 x float> %i.cqj, %i.cqn
  %foldExtExtBinop9534 = fmul <2 x float> %i.cqe, %.sroa.017.0.copyload.i
  %i.cqp = shufflevector <2 x float> %i.cqd, <2 x float> %i.cqa, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cqq = fmul <2 x float> %i.cqp, %i.cqi
  %foldExtExtBinop9536 = fmul <2 x float> %i.cqb, %.sroa.025.0.copyload.i
  %i.cqr = fmul <2 x float> %i.cqd, %i.cqf        ; 2 uses
  %i.cqs = shufflevector <2 x float> %foldExtExtBinop9534, <2 x float> %foldExtExtBinop9536, <2 x i32> <i32 0, i32 2>
  %i.cqt = fsub <2 x float> %i.cqs, %i.cqq
  %shift9538 = shufflevector <2 x float> %i.cqk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9539 = fsub <2 x float> %i.cqk, %shift9538
  %i.cqu = extractelement <2 x float> %foldExtExtBinop9539, i64 0
  %shift9541 = shufflevector <2 x float> %i.cqr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9542 = fsub <2 x float> %i.cqr, %shift9541
  %i.cqv = extractelement <2 x float> %foldExtExtBinop9542, i64 0
  %i.cqw = shufflevector <2 x float> %i.cqe, <2 x float> %i.cqb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cqx = shufflevector <2 x float> %.sroa.017.0.copyload.i, <2 x float> %.sroa.025.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.cqy = fmul <2 x float> %i.cqw, %i.cqx
  %i.cqz = fmul float %.sroa.2.12.vec.extract.i.i552, %.sroa.226.0.copyload.i
  %i.cra = fadd <2 x float> %i.cqy, %i.cqo        ; 3 uses
  %i.crb = fmul <2 x float> %i.cqw, %i.cqm
  %i.crc = fmul float %.sroa.2.12.vec.extract.i42.i, %.sroa.218.0.copyload.i
  %i.crd = fadd <2 x float> %i.crb, %i.cqt        ; 3 uses
  %i.cre = fadd float %i.cqz, %i.cqu              ; 2 uses
  %i.crf = fadd float %i.crc, %i.cqv              ; 2 uses
  %foldExtExtBinop9547 = fmul <2 x float> %i.cqe, %i.crd
  %i.crg = fmul float %.sroa.09.0.vec.extract.i.i.i551, %i.cre
  %i.crh = shufflevector <2 x float> %i.cra, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cri = shufflevector <2 x float> %i.cqb, <2 x float> %i.cqd, <2 x i32> <i32 0, i32 3>
  %i.crj = insertelement <2 x float> %i.crh, float %i.crf, i64 1
  %i.crk = fmul <2 x float> %i.cri, %i.crj
  %i.crl = insertelement <2 x float> poison, float %i.crg, i64 0
  %i.crm = shufflevector <2 x float> %i.crl, <2 x float> %foldExtExtBinop9547, <2 x i32> <i32 0, i32 2>
  %i.crn = fsub <2 x float> %i.crk, %i.crm
  %i.cro = shufflevector <2 x float> %i.cqe, <2 x float> %i.cqa, <2 x i32> <i32 0, i32 3>
  %i.crp = insertelement <2 x float> %i.cra, float %i.cre, i64 1
  %i.crq = fmul <2 x float> %i.cro, %i.crp
  %i.crr = shufflevector <2 x float> %i.cqd, <2 x float> %i.cqb, <2 x i32> <i32 0, i32 2>
  %i.crs = insertelement <2 x float> %i.crd, float %i.crf, i64 0
  %i.crt = fmul <2 x float> %i.crr, %i.crs
  %i.cru = fsub <2 x float> %i.crq, %i.crt
  %i.crv = fmul <2 x float> %i.cqp, %i.crd
  %i.crw = fmul <2 x float> %i.cqg, %i.cra
  %i.crx = fsub <2 x float> %i.crv, %i.crw
  %i.cry = fmul <2 x float> %i.crn, splat (float 2.000000e+00)
  %i.crz = shufflevector <2 x float> %.sroa.025.0.copyload.i, <2 x float> %.sroa.017.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.csa = fadd <2 x float> %i.crz, %i.cry        ; 3 uses
  %i.csb = fmul <2 x float> %i.cru, splat (float 2.000000e+00)
  %i.csc = shufflevector <2 x float> %.sroa.017.0.copyload.i, <2 x float> %.sroa.025.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.csd = fadd <2 x float> %i.csc, %i.csb        ; 3 uses
  %i.cse = fmul <2 x float> %i.crx, splat (float 2.000000e+00)
  %i.csf = fadd <2 x float> %i.cqi, %i.cse        ; 2 uses
  %i.csg = fmul <2 x float> %i.csf, %i.csa
  %i.csh = shufflevector <2 x float> %i.csf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.csi = fmul <2 x float> %i.csd, %i.csh
  %i.csj = fsub <2 x float> %i.csg, %i.csi        ; 3 uses
  %shift9549 = shufflevector <2 x float> %i.csd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9550 = fmul <2 x float> %shift9549, %i.csd
  %shift9552 = shufflevector <2 x float> %i.csa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9553 = fmul <2 x float> %i.csa, %shift9552
  %foldExtExtBinop9555 = fsub <2 x float> %foldExtExtBinop9550, %foldExtExtBinop9553 ; 3 uses
  %i.csk = fmul <2 x float> %i.csj, %i.csj        ; 2 uses
  %shift9557 = shufflevector <2 x float> %i.csk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9558 = fadd <2 x float> %i.csk, %shift9557
  %foldExtExtBinop9560 = fmul <2 x float> %foldExtExtBinop9555, %foldExtExtBinop9555
  %foldExtExtBinop9562 = fadd <2 x float> %foldExtExtBinop9560, %foldExtExtBinop9558
  %i.csl = extractelement <2 x float> %foldExtExtBinop9562, i64 0 ; 2 uses
  %i.csm = fcmp ogt float %i.csl, f0x057A0000
  br i1 %i.csm, label %bb.hc, label %b3Normalize.exit.i553

bb.hc:                                            ; preds = %bb.hb
  %i.csn = extractelement <2 x float> %foldExtExtBinop9555, i64 0
  %sqrt.i556 = call float @llvm.sqrt.f32(float %i.csl)
  %i.cso = fdiv float 1.000000e+00, %sqrt.i556    ; 2 uses
  %i.csp = insertelement <2 x float> poison, float %i.cso, i64 0
  %i.csq = shufflevector <2 x float> %i.csp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csr = fmul <2 x float> %i.csj, %i.csq
  %i.css = fmul float %i.csn, %i.cso
  br label %b3Normalize.exit.i553

b3Normalize.exit.i553:                            ; preds = %bb.hb, %bb.hc
  %.sroa.07.0.i.i554 = phi <2 x float> [ %i.csr, %bb.hc ], [ zeroinitializer, %bb.hb ]
  %.sroa.5.0.i.i555 = phi float [ %i.css, %bb.hc ], [ 0.000000e+00, %bb.hb ]
  store i32 1, ptr %i.be, align 8, !tbaa !41
  store <2 x float> %.sroa.07.0.i.i554, ptr %i.br, align 8
  store float %.sroa.5.0.i.i555, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.thread695

.thread695:                                       ; preds = %bb.gz, %b3Normalize.exit.i553, %bb.ha
  %i.cst = phi i32 [ %i.cpo, %b3Normalize.exit.i553 ], [ %i.cpo, %bb.ha ], [ %i.cnp, %bb.gz ] ; 4 uses
  %.3341 = phi float [ %i.cpz, %b3Normalize.exit.i553 ], [ %.0321, %bb.ha ], [ %.0338, %bb.gz ]
  %i.csu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bce, i32 1), !nosanitize !11 ; 2 uses
  %i.csv = extractvalue { i32, i1 } %i.csu, 1, !nosanitize !11
  br i1 %i.csv, label %bb.hd, label %bb.he, !prof !20, !nosanitize !11

bb.hd:                                            ; preds = %.thread695
  store i32 %i.cst, ptr %i.cg, align 4
  store i32 2147483647, ptr %i.cl, align 4
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @60, i64 2147483647, i64 1) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.he:                                            ; preds = %.thread695
  %i.csw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0335, i32 1), !nosanitize !11 ; 2 uses
  %i.csx = extractvalue { i32, i1 } %i.csw, 1, !nosanitize !11
  br i1 %i.csx, label %bb.hf, label %bb.hg, !prof !20, !nosanitize !11

bb.hf:                                            ; preds = %bb.he
  %17 = xor i32 %.promoted, -2147483648
  store i32 %i.cst, ptr %i.cg, align 4
  store i32 %17, ptr %i.cl, align 4
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @61, i64 2147483647, i64 1) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.hg:                                            ; preds = %bb.he
  %i.csy = extractvalue { i32, i1 } %i.csw, 0, !nosanitize !11 ; 2 uses
  %18 = extractvalue { i32, i1 } %i.csu, 0, !nosanitize !11
  %i.csz = icmp eq i32 %i.csy, %i.aa
  br i1 %i.csz, label %select.unfold698, label %bb.ed

.thread709:                                       ; preds = %bb.gs, %bb.gq, %bb.gn
  %.0.lcssa7386.sink = phi float [ %.0, %bb.gs ], [ %.0, %bb.gq ], [ %i.clx, %bb.gn ]
  %i.cta = phi <4 x float> [ %i.cpd, %bb.gs ], [ %i.cnn, %bb.gq ], [ %i.clw, %bb.gn ] ; 2 uses
  %i.ctb = phi <2 x float> [ %i.cpc, %bb.gs ], [ %i.cnm, %bb.gq ], [ %i.clv, %bb.gn ]
  store float %.0.lcssa7386.sink, ptr %i.c, align 4, !tbaa !91
  %i.ctc = fmul <2 x float> %i.ctb, splat (float 2.000000e+00)
  %i.ctd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cte = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ctf = load float, ptr %i.ctd, align 4, !tbaa !99
  %i.ctg = load float, ptr %i.cte, align 4, !tbaa !100 ; 2 uses
  %i.cth = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cti = insertelement <2 x float> poison, float %.sroa.2206.0.copyload, i64 0
  %i.ctj = insertelement <2 x float> %i.cti, float %.sroa.2196.0.copyload, i64 1
  %i.ctk = fadd <2 x float> %i.ctj, %i.ctc
  %i.ctl = insertelement <2 x float> poison, float %.sroa.4648.0.copyload, i64 0
  %i.ctm = shufflevector <2 x float> %i.ctl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ctn = fadd <2 x float> %i.ctm, %i.ctk        ; 2 uses
  %i.cto = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.ctp = shufflevector <2 x float> %i.cto, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ctq = insertelement <2 x float> poison, float %i.ctf, i64 0 ; 2 uses
  %i.ctr = insertelement <2 x float> %i.ctq, float %i.ctg, i64 1
  %i.cts = fmul <2 x float> %i.ctp, %i.ctr        ; 2 uses
  %i.ctt = fadd <2 x float> %i.ctn, %i.cts
  %i.ctu = fsub <2 x float> %i.ctn, %i.cts
  %i.ctv = shufflevector <2 x float> %i.ctt, <2 x float> %i.ctu, <2 x i32> <i32 0, i32 3>
  %i.ctw = fmul <2 x float> %i.ctv, splat (float 5.000000e-01) ; 2 uses
  %shift9564 = shufflevector <2 x float> %i.ctw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9565 = fadd <2 x float> %i.ctw, %shift9564
  %i.ctx = extractelement <2 x float> %foldExtExtBinop9565, i64 0
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cty = shufflevector <4 x float> %i.cta, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ctz = fadd <2 x float> %.sroa.0647.0.copyload, %i.cty
  %i.cua = shufflevector <4 x float> %i.cta, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cub = fadd <2 x float> %.sroa.0647.0.copyload, %i.cua
  %i.cuc = shufflevector <2 x float> %i.ctq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cud = fmul <2 x float> %i.fl, %i.cuc
  %i.cue = fadd <2 x float> %i.cub, %i.cud
  %i.cuf = insertelement <2 x float> poison, float %i.ctg, i64 0
  %i.cug = shufflevector <2 x float> %i.cuf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cuh = fmul <2 x float> %i.fl, %i.cug
  %i.cui = fsub <2 x float> %i.ctz, %i.cuh
  %i.cuj = fmul <2 x float> %i.cue, splat (float 5.000000e-01)
  %i.cuk = fmul <2 x float> %i.cui, splat (float 5.000000e-01)
  %i.cul = fadd <2 x float> %i.cuj, %i.cuk
  %i.cum = fadd <2 x float> %.sroa.0298.0.copyload, %i.cul
  %i.cun = fadd float %.sroa.10.0.copyload, %i.ctx
  store <2 x float> %i.cum, ptr %i.cth, align 4
  store float %i.cun, ptr %.sroa.415.0..sroa_idx, align 4, !tbaa !19
  %i.cuo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.fl, ptr %i.cuo, align 4
  %.sroa.16.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.fn, ptr %.sroa.16.0..sroa_idx234, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  br label %.thread715

select.unfold698:                                 ; preds = %bb.hg, %bb.go
  %i.cup = phi i32 [ %i.bce, %bb.go ], [ %16, %bb.hg ]
  %.lcssa24032476 = phi i32 [ %.lcssa24032405, %bb.go ], [ %i.cst, %bb.hg ]
  %.2.ph = phi float [ %.0338, %bb.go ], [ %.0, %bb.hg ]
  store i32 %.lcssa24032476, ptr %i.cg, align 4
  store i32 %i.cup, ptr %i.cl, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.f

.thread715:                                       ; preds = %bb.m, %bb.k, %bb.i, %.thread709
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc float @b3EvaluateSeparation(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, float noundef %3) unnamed_addr #0 !func_sanitize !104 {
bb.a:
  %4 = alloca %struct.b3Transform, align 8        ; 19 uses
  %5 = alloca %struct.b3Transform, align 8        ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !11  ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !11
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !11
  br i1 %i.c, label %bb.c, label %bb.b, !prof !12, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @198, i64 %i.a) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %4, ptr noundef nonnull %i.d, float noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %5, ptr noundef nonnull %i.e, float noundef %3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41
  switch i32 %i.g, label %bb.ag [
    i32 1, label %bb.d
    i32 2, label %bb.m
    i32 3, label %bb.w
    i32 4, label %bb.ab
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0166.0.copyload = load <2 x float>, ptr %i.h, align 8 ; 2 uses
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.4167.0.copyload = load float, ptr %.sroa.4167.0..sroa_idx, align 8, !tbaa !19
  %i.i = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.j = icmp ne ptr %i.i, null, !nosanitize !11
  %i.k = ptrtoint ptr %i.i to i64, !nosanitize !11 ; 2 uses
  %i.l = and i64 %i.k, 7, !nosanitize !11
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !11
  %i.n = and i1 %i.j, %i.m, !nosanitize !11
  br i1 %i.n, label %bb.f, label %bb.e, !prof !12, !nosanitize !11

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @199, i64 %i.k) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !18   ; 3 uses
  %i.p = sext i32 %1 to i64                       ; 2 uses
  %i.q = mul nsw i64 %i.p, 12
  %i.r = ptrtoint ptr %i.o to i64, !nosanitize !11 ; 3 uses
  %i.s = add i64 %i.q, %i.r, !nosanitize !11      ; 3 uses
  %i.t = icmp ne ptr %i.o, null, !nosanitize !11
  %i.u = icmp eq i64 %i.s, 0
  %i.v = xor i1 %i.t, %i.u
  %i.w = icmp uge i64 %i.s, %i.r, !nosanitize !11
  %i.x = icmp slt i32 %1, 0
  %i.y = xor i1 %i.x, %i.w
  %i.z = and i1 %i.v, %i.y, !nosanitize !11
  br i1 %i.z, label %bb.h, label %bb.g, !prof !12, !nosanitize !11

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @200, i64 %i.r, i64 %i.s) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.aa, align 4 ; 4 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0480.0.copyload = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.4481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4481.0.copyload = load float, ptr %.sroa.4481.0..sroa_idx, align 8
  %.sroa.5482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.5482.0.copyload = load <2 x float>, ptr %.sroa.5482.0..sroa_idx, align 4 ; 6 uses
  %.sroa.6483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.6483.0.copyload = load <2 x float>, ptr %.sroa.6483.0..sroa_idx, align 4 ; 5 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.6483.0.copyload, i64 0
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %.sroa.5482.0.copyload, i64 1
  %.sroa.0.4.vec.extract8.i.i = extractelement <2 x float> %.sroa.0162.0.copyload, i64 1 ; 2 uses
  %i.ab = fmul float %.sroa.2163.0.copyload, %.sroa.09.4.vec.extract13.i.i
  %i.ac = fmul float %.sroa.0.4.vec.extract8.i.i, %.sroa.2.8.vec.extract65.i
  %i.ad = shufflevector <2 x float> %.sroa.6483.0.copyload, <2 x float> %.sroa.5482.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ae = fmul <2 x float> %.sroa.0162.0.copyload, %i.ad ; 2 uses
  %i.af = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.2163.0.copyload, i64 0 ; 2 uses
  %i.ah = fmul <2 x float> %i.ag, %.sroa.5482.0.copyload ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aj = insertelement <2 x float> %i.ai, float %i.ab, i64 0
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.al = insertelement <2 x float> %i.ak, float %i.ac, i64 0
  %i.am = fsub <2 x float> %i.aj, %i.al
  %i.an = fsub <2 x float> %i.ae, %i.ah
  %i.ao = shufflevector <2 x float> %.sroa.6483.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ap = fmul <2 x float> %.sroa.0162.0.copyload, %i.ao
  %i.aq = insertelement <2 x float> %i.af, float %.sroa.2163.0.copyload, i64 1
  %i.ar = fmul <2 x float> %i.aq, %i.ao
  %i.as = fadd <2 x float> %i.ap, %i.am           ; 2 uses
  %i.at = fadd <2 x float> %i.ar, %i.an           ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.6483.0.copyload, %i.as
  %shift = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop492 = fmul <2 x float> %.sroa.5482.0.copyload, %shift
  %foldExtExtBinop494 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop492
  %i.au = extractelement <2 x float> %foldExtExtBinop494, i64 0
  %i.av = fmul <2 x float> %.sroa.5482.0.copyload, %i.at
  %i.aw = shufflevector <2 x float> %.sroa.5482.0.copyload, <2 x float> %.sroa.6483.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ax = fmul <2 x float> %i.aw, %i.as
  %i.ay = fsub <2 x float> %i.av, %i.ax
  %i.az = fmul float %i.au, 2.000000e+00
  %i.ba = fadd float %.sroa.0.4.vec.extract8.i.i, %i.az
  %i.bb = fmul <2 x float> %i.ay, splat (float 2.000000e+00)
  %i.bc = fadd <2 x float> %i.ag, %i.bb
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0480.0.copyload, i64 1
  %i.bd = fadd float %.sroa.0.4.vec.extract.i, %i.ba
  %i.be = shufflevector <2 x float> %.sroa.0480.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bf = insertelement <2 x float> %i.be, float %.sroa.4481.0.copyload, i64 0
  %i.bg = fadd <2 x float> %i.bf, %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !40 ; 3 uses
  %i.bj = icmp ne ptr %i.bi, null, !nosanitize !11
  %i.bk = ptrtoint ptr %i.bi to i64, !nosanitize !11 ; 2 uses
  %i.bl = and i64 %i.bk, 7, !nosanitize !11
  %i.bm = icmp eq i64 %i.bl, 0, !nosanitize !11
  %i.bn = and i1 %i.bj, %i.bm, !nosanitize !11
  br i1 %i.bn, label %bb.j, label %bb.i, !prof !12, !nosanitize !11

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @201, i64 %i.bk) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.j:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !18 ; 3 uses
  %i.bp = sext i32 %2 to i64                      ; 2 uses
  %i.bq = mul nsw i64 %i.bp, 12
  %i.br = ptrtoint ptr %i.bo to i64, !nosanitize !11 ; 3 uses
  %i.bs = add i64 %i.bq, %i.br, !nosanitize !11   ; 3 uses
  %i.bt = icmp ne ptr %i.bo, null, !nosanitize !11
  %i.bu = icmp eq i64 %i.bs, 0
  %i.bv = xor i1 %i.bt, %i.bu
  %i.bw = icmp uge i64 %i.bs, %i.br, !nosanitize !11
  %i.bx = icmp slt i32 %2, 0
  %i.by = xor i1 %i.bx, %i.bw
  %i.bz = and i1 %i.bv, %i.by, !nosanitize !11
  br i1 %i.bz, label %bb.l, label %bb.k, !prof !12, !nosanitize !11

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @202, i64 %i.br, i64 %i.bs) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds [12 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %.sroa.0154.0.copyload = load <2 x float>, ptr %i.ca, align 4 ; 4 uses
  %.sroa.2155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.2155.0.copyload = load float, ptr %.sroa.2155.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0476.0.copyload = load <2 x float>, ptr %5, align 8 ; 2 uses
  %.sroa.4477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4477.0.copyload = load float, ptr %.sroa.4477.0..sroa_idx, align 8
  %.sroa.5478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.5478.0.copyload = load <2 x float>, ptr %.sroa.5478.0..sroa_idx, align 4 ; 6 uses
  %.sroa.6479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.6479.0.copyload = load <2 x float>, ptr %.sroa.6479.0..sroa_idx, align 4 ; 5 uses
  %.sroa.2.8.vec.extract65.i236 = extractelement <2 x float> %.sroa.6479.0.copyload, i64 0
  %.sroa.09.4.vec.extract13.i.i237 = extractelement <2 x float> %.sroa.5478.0.copyload, i64 1
  %.sroa.0.4.vec.extract8.i.i238 = extractelement <2 x float> %.sroa.0154.0.copyload, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i249 = extractelement <2 x float> %.sroa.0476.0.copyload, i64 1
  %.sroa.0.4.vec.extract.i263 = extractelement <2 x float> %.sroa.0166.0.copyload, i64 1
  %i.cb = fmul float %.sroa.2155.0.copyload, %.sroa.09.4.vec.extract13.i.i237
  %i.cc = fmul float %.sroa.0.4.vec.extract8.i.i238, %.sroa.2.8.vec.extract65.i236
  %i.cd = shufflevector <2 x float> %.sroa.6479.0.copyload, <2 x float> %.sroa.5478.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ce = fmul <2 x float> %.sroa.0154.0.copyload, %i.cd ; 2 uses
  %i.cf = shufflevector <2 x float> %.sroa.0154.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cg = insertelement <2 x float> %i.cf, float %.sroa.2155.0.copyload, i64 0 ; 2 uses
  %i.ch = fmul <2 x float> %i.cg, %.sroa.5478.0.copyload ; 2 uses
  %i.ci = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %i.cb, i64 0
  %i.ck = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cl = insertelement <2 x float> %i.ck, float %i.cc, i64 0
  %i.cm = fsub <2 x float> %i.cj, %i.cl
  %i.cn = fsub <2 x float> %i.ce, %i.ch
  %i.co = shufflevector <2 x float> %.sroa.6479.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
end_hunk_1
