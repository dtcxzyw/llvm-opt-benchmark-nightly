Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/sphere?download=true
inline.NumInlined: 54
inline.NumDeleted: 17
begin_hunk_0_@b3ComputeSweptSphereAABB:bb.a
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !14 ; 3 uses
  %.sroa.045.0.copyload = load <2 x float>, ptr %1, align 4 ; 7 uses
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.246.0.copyload = load float, ptr %.sroa.246.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0112.0.copyload = load <2 x float>, ptr %2, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load <2 x float>, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5114.0.copyload = load <2 x float>, ptr %.sroa.5114.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.6115.0.copyload = load <2 x float>, ptr %.sroa.6115.0..sroa_idx, align 4 ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5114.0.copyload, i64 0
  %.sroa.0.0.copyload = load <2 x float>, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 4 uses
  %.sroa.09.0.vec.extract.i.i66 = extractelement <2 x float> %.sroa.5.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.045.0.copyload, %.sroa.6115.0.copyload
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.j = fmul float %.sroa.246.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.k = fsub float %i.i, %i.j
  %i.l = shufflevector <2 x float> %.sroa.045.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.m = insertelement <2 x float> %i.l, float %.sroa.246.0.copyload, i64 1 ; 4 uses
  %i.n = fmul <2 x float> %i.m, %.sroa.5114.0.copyload
  %i.o = shufflevector <2 x float> %.sroa.5114.0.copyload, <2 x float> %.sroa.6115.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.p = fmul <2 x float> %.sroa.045.0.copyload, %i.o
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = insertelement <2 x float> %i.l, float %.sroa.246.0.copyload, i64 0 ; 2 uses
  %i.s = shufflevector <2 x float> %.sroa.6115.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.t = fmul <2 x float> %i.r, %i.s
  %i.u = fmul <2 x float> %i.m, %i.s
  %i.v = fadd <2 x float> %i.t, %i.q              ; 2 uses
  %i.w = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = insertelement <2 x float> %i.w, float %i.k, i64 0
  %i.y = fadd <2 x float> %i.u, %i.x              ; 2 uses
  %i.z = fmul <2 x float> %i.o, %i.v
  %i.aa = shufflevector <2 x float> %.sroa.6115.0.copyload, <2 x float> %.sroa.5114.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ab = fmul <2 x float> %i.aa, %i.y
  %i.ac = fsub <2 x float> %i.z, %i.ab
  %i.ad = shufflevector <2 x float> %i.y, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.ae = fmul <2 x float> %.sroa.5114.0.copyload, %i.ad ; 2 uses
  %i.af = fmul <2 x float> %i.ac, splat (float 2.000000e+00)
  %i.ag = fadd <2 x float> %.sroa.045.0.copyload, %i.af
  %i.ah = fadd <2 x float> %.sroa.0112.0.copyload, %i.ag ; 4 uses
  %foldExtExtBinop117 = fmul <2 x float> %.sroa.045.0.copyload, %.sroa.6.0.copyload
  %i.ai = extractelement <2 x float> %foldExtExtBinop117, i64 0
  %i.aj = fmul float %.sroa.246.0.copyload, %.sroa.09.0.vec.extract.i.i66
  %i.ak = fsub float %i.ai, %i.aj
  %i.al = fmul <2 x float> %i.m, %.sroa.5.0.copyload
  %i.am = shufflevector <2 x float> %.sroa.5.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.an = fmul <2 x float> %.sroa.045.0.copyload, %i.am
  %i.ao = fsub <2 x float> %i.al, %i.an           ; 2 uses
  %i.ap = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aq = fmul <2 x float> %i.r, %i.ap
  %i.ar = fmul <2 x float> %i.m, %i.ap
  %i.as = fadd <2 x float> %i.aq, %i.ao           ; 2 uses
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x float> %i.at, float %i.ak, i64 0
  %i.av = fadd <2 x float> %i.ar, %i.au           ; 2 uses
  %i.aw = fmul <2 x float> %i.am, %i.as
  %i.ax = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ay = fmul <2 x float> %i.ax, %i.av
  %i.az = fsub <2 x float> %i.aw, %i.ay
  %i.ba = shufflevector <2 x float> %i.av, <2 x float> %i.as, <2 x i32> <i32 0, i32 3>
  %i.bb = fmul <2 x float> %.sroa.5.0.copyload, %i.ba ; 2 uses
  %i.bc = fmul <2 x float> %i.az, splat (float 2.000000e+00)
  %i.bd = fadd <2 x float> %.sroa.045.0.copyload, %i.bc
  %i.be = fadd <2 x float> %.sroa.0.0.copyload, %i.bd ; 4 uses
  %i.bf = shufflevector <2 x float> %i.ae, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bg = shufflevector <2 x float> %i.ae, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.bh = fsub <2 x float> %i.bf, %i.bg
  %i.bi = fmul <2 x float> %i.bh, splat (float 2.000000e+00)
  %i.bj = insertelement <2 x float> poison, float %.sroa.246.0.copyload, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fadd <2 x float> %i.bk, %i.bi
  %i.bm = insertelement <2 x float> %i.h, float %.sroa.4.0.copyload, i64 1
  %i.bn = fadd <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = fcmp olt <2 x float> %i.ah, %i.be
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.ah, <2 x float> %i.be
  %i.bq = extractelement <2 x float> %i.bn, i64 0 ; 4 uses
  %i.br = extractelement <2 x float> %i.bn, i64 1 ; 4 uses
  %i.bs = fcmp olt float %i.bq, %i.br
  %i.bt = select i1 %i.bs, float %i.bq, float %i.br
  %i.bu = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = fsub <2 x float> %i.bp, %i.bv
  %i.bx = fsub float %i.bt, %i.g
  store <2 x float> %i.bw, ptr %0, align 4
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bx, ptr %.sroa.218.0..sroa_idx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bz = fcmp ogt float %i.bq, %i.br
  %i.ca = select i1 %i.bz, float %i.bq, float %i.br
  %i.cb = fcmp ogt <2 x float> %i.ah, %i.be
  %i.cc = select <2 x i1> %i.cb, <2 x float> %i.ah, <2 x float> %i.be
  %i.cd = fadd <2 x float> %i.bv, %i.cc
  %i.ce = fadd float %i.g, %i.ca
  store <2 x float> %i.cd, ptr %i.by, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ce, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3OverlapSphere(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #3 !func_sanitize !38 {
bb.a:
  %3 = alloca %struct.b3DistanceInput, align 8    ; 12 uses
  %4 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %5 = alloca %struct.b3DistanceOutput, align 4   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !14
  store ptr %0, ptr %3, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !15
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.011.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.412.0.copyload = load float, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.513.0.copyload = load <2 x float>, ptr %.sroa.513.0..sroa_idx, align 4 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 6 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.o = fsub <2 x float> zeroinitializer, %.sroa.011.0.copyload ; 4 uses
  %i.p = fsub float 0.000000e+00, %.sroa.412.0.copyload ; 3 uses
  %i.q = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1 ; 2 uses
  %i.s = fmul <2 x float> %i.r, %.sroa.513.0.copyload
  %i.t = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.513.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.u = fmul <2 x float> %i.o, %i.t
  %i.v = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.w = fmul <2 x float> %i.o, %i.v
  %i.x = insertelement <2 x float> %i.q, float %i.p, i64 0 ; 2 uses
  %i.y = fmul <2 x float> %i.x, %.sroa.513.0.copyload
  %i.z = fsub <2 x float> %i.s, %i.w
  %i.aa = fsub <2 x float> %i.u, %i.y
  %i.ab = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = fmul <2 x float> %i.x, %i.ab
  %i.ad = fmul <2 x float> %i.r, %i.ab
  %i.ae = fsub <2 x float> %i.z, %i.ac            ; 2 uses
  %i.af = fsub <2 x float> %i.aa, %i.ad           ; 2 uses
  %i.ag = fmul <2 x float> %i.v, %i.ae
  %i.ah = fmul <2 x float> %i.t, %i.af
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.ak = fmul <2 x float> %.sroa.513.0.copyload, %i.aj ; 2 uses
  %shift = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ak, %shift
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.am = fmul <2 x float> %i.ai, splat (float 2.000000e+00)
  %i.an = fadd <2 x float> %i.o, %i.am
  %i.ao = fmul float %i.al, 2.000000e+00
  %i.ap = fadd float %i.p, %i.ao
  %6 = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aq = fmul <4 x float> %6, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 5 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 1 ; 2 uses
  %i.as = extractelement <4 x float> %i.aq, i64 2
  %i.at = extractelement <4 x float> %i.aq, i64 0 ; 2 uses
  %i.au = fsub float %i.ar, %i.at
  %i.av = fmul float %.sroa.2.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.aw = fadd float %i.au, %i.av
  %i.ax = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ay = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.az = fsub <2 x float> %i.ax, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fadd <2 x float> %i.bb, %i.az
  %i.bd = fsub <2 x float> %i.bc, %.sroa.513.0.copyload
  %i.be = fsub float %i.aw, %.sroa.2.8.vec.extract65.i
  %.sroa.231.8.vec.insert.i = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bf = fadd float %i.at, %i.ar
  %i.bg = fadd float %i.as, %i.bf
  %i.bh = fadd float %.sroa.2.12.vec.extract.i, %i.bg
  %.sroa.231.12.vec.insert.i = insertelement <2 x float> %.sroa.231.8.vec.insert.i, float %i.bh, i64 1
  store <2 x float> %i.an, ptr %i.n, align 8, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.bd, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.bi, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #9
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !42
  %i.bl = call float @b3GetLengthUnitsPerMeter() #9
  %i.bm = fmul float %i.bl, 5.000000e-03
  %i.bn = fmul float %i.bm, 1.000000e-01
  %i.bo = fcmp olt float %i.bk, %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i1 %i.bo
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3RayCastSphere(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3CastOutput) align 4 captures(none) initializes((0, 48)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !func_sanitize !25 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @8, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.584.0.copyload = load float, ptr %.sroa.584.0..sroa_idx, align 4, !tbaa !15 ; 2 uses
  %i.f = icmp ne ptr %2, null, !nosanitize !9
  %i.g = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !9
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !9
  %i.j = and i1 %i.f, %i.i, !nosanitize !9
  br i1 %i.j, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @10, i64 %i.g) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %.sroa.082.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !15 ; 2 uses
  %.sroa.075.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.276.0.copyload = load float, ptr %.sroa.276.0..sroa_idx, align 4
  %i.k = fsub <2 x float> %.sroa.075.0.copyload, %.sroa.082.0.copyload ; 6 uses
  %i.l = fsub float %.sroa.276.0.copyload, %.sroa.584.0.copyload ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !14 ; 2 uses
  %i.o = fmul float %i.n, %i.n                    ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.058.0.copyload = load <2 x float>, ptr %i.p, align 4 ; 4 uses
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.259.0.copyload = load float, ptr %.sroa.259.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0.0.vec.extract.i105 = extractelement <2 x float> %.sroa.058.0.copyload, i64 0
  %.sroa.0.4.vec.extract20.i = extractelement <2 x float> %.sroa.058.0.copyload, i64 1
  %i.q = fmul <2 x float> %.sroa.058.0.copyload, %.sroa.058.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.q, %shift
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = fmul float %.sroa.259.0.copyload, %.sroa.259.0.copyload
  %i.t = fadd float %i.s, %i.r                    ; 2 uses
  %i.u = fcmp ogt float %i.t, f0x057A0000
  br i1 %i.u, label %b3GetLengthAndNormalize.exit, label %b3GetLengthAndNormalize.exit.thread

b3GetLengthAndNormalize.exit:                     ; preds = %bb.e
  %i.v = tail call float @sqrtf(float noundef %i.t) #9 ; 4 uses
  %i.w = fdiv float 1.000000e+00, %i.v            ; 3 uses
  %i.x = fmul float %.sroa.259.0.copyload, %i.w   ; 3 uses
  %i.y = fcmp oeq float %i.v, 0.000000e+00
  br i1 %i.y, label %b3GetLengthAndNormalize.exit.thread, label %bb.g

b3GetLengthAndNormalize.exit.thread:              ; preds = %bb.e, %b3GetLengthAndNormalize.exit
  %i.z = fmul <2 x float> %i.k, %i.k              ; 2 uses
  %shift159 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop160 = fadd <2 x float> %i.z, %shift159
  %i.aa = extractelement <2 x float> %foldExtExtBinop160, i64 0
  %i.ab = fmul float %i.l, %i.l
  %i.ac = fadd float %i.ab, %i.aa
  %i.ad = fcmp olt float %i.ac, %i.o
  br i1 %i.ad, label %bb.f, label %bb.p

bb.f:                                             ; preds = %b3GetLengthAndNormalize.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !26
  br label %.sink.split

bb.g:                                             ; preds = %b3GetLengthAndNormalize.exit
  %i.af = fmul float %.sroa.0.0.vec.extract.i105, %i.w ; 3 uses
  %i.ag = fmul float %.sroa.0.4.vec.extract20.i, %i.w ; 3 uses
  %i.ah = extractelement <2 x float> %i.k, i64 0  ; 3 uses
  %i.ai = fmul float %i.ah, %i.af
  %i.aj = extractelement <2 x float> %i.k, i64 1  ; 3 uses
  %i.ak = fmul float %i.aj, %i.ag
  %i.al = fadd float %i.ai, %i.ak
  %i.am = fmul float %i.l, %i.x
  %i.an = fadd float %i.am, %i.al                 ; 4 uses
  %i.ao = fmul float %i.af, %i.an
  %i.ap = fsub float %i.ah, %i.ao                 ; 2 uses
  %i.aq = fmul float %i.ag, %i.an
  %i.ar = fsub float %i.aj, %i.aq                 ; 2 uses
  %i.as = fmul float %i.x, %i.an
  %i.at = fsub float %i.l, %i.as                  ; 2 uses
  %i.au = fmul float %i.ap, %i.ap
  %i.av = fmul float %i.ar, %i.ar
  %i.aw = fadd float %i.au, %i.av
  %i.ax = fmul float %i.at, %i.at
  %i.ay = fadd float %i.ax, %i.aw                 ; 2 uses
  %i.az = fcmp ogt float %i.ay, %i.o
  br i1 %i.az, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = fneg float %i.an
  %i.bb = fsub float %i.o, %i.ay
  %i.bc = tail call float @sqrtf(float noundef %i.bb) #9
  %i.bd = fsub float %i.ba, %i.bc                 ; 6 uses
  %i.be = fcmp olt float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !28 ; 3 uses
  %i.bh = fmul float %i.v, %i.bg
  %i.bi = fcmp olt float %i.bh, %i.bd
  br i1 %i.bi, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bj = fmul <2 x float> %i.k, %i.k             ; 2 uses
  %shift162 = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop163 = fadd <2 x float> %i.bj, %shift162
  %i.bk = extractelement <2 x float> %foldExtExtBinop163, i64 0
  %i.bl = fmul float %i.l, %i.l
  %i.bm = fadd float %i.bl, %i.bk
  %i.bn = fcmp olt float %i.bm, %i.o
  br i1 %i.bn, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !26
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.bp = fmul float %i.af, %i.bd
  %i.bq = fadd float %i.ah, %i.bp                 ; 3 uses
  %i.br = fmul float %i.ag, %i.bd
  %i.bs = fadd float %i.aj, %i.br                 ; 3 uses
  %i.bt = fmul float %i.x, %i.bd
  %i.bu = fadd float %i.l, %i.bt                  ; 3 uses
  %i.bv = fdiv float %i.bd, %i.v                  ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store float %i.bv, ptr %i.bw, align 4, !tbaa !30
  %i.bx = fcmp ogt float %i.bv, %i.bg
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = fpext float %i.bg to double
  %i.bz = fpext float %i.bv to double
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, double noundef %i.by, double noundef %i.bz) #9
  %i.ca = load float, ptr %i.bf, align 4, !tbaa !28
  store float %i.ca, ptr %i.bw, align 4, !tbaa !30
end_hunk_0
begin_hunk_1_@b3ShapeCastSphere:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !14
  store ptr %1, ptr %3, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !15
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, ptr noundef nonnull align 8 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !44
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !26
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.s = load float, ptr %i.q, align 4, !tbaa !46
  store float %i.s, ptr %i.r, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !49    ; 3 uses
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.w = zext i8 %i.u to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @16, i64 %i.w) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i8 %i.u, ptr %i.x, align 4, !tbaa !50
  call void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #2

declare void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @b3CollideMoverAndSphere(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !func_sanitize !51 {
bb.a:
  %.sroa.014.i = alloca <2 x float>, align 8      ; 5 uses
  %.sroa.0.i = alloca <2 x float>, align 8        ; 5 uses
  %i.a = icmp ne ptr %2, null, !nosanitize !9
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @18, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %1, null, !nosanitize !9
  %i.g = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !9
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !9
  %i.j = and i1 %i.f, %i.i, !nosanitize !9
  br i1 %i.j, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @19, i64 %i.g) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !14
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.051.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4
  %.sroa.049.0.copyload = load <2 x float>, ptr %i.p, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %.sroa.047.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4
  %i.q = tail call { <2 x float>, float } @b3PointToSegmentDistance(<2 x float> %.sroa.051.0.copyload, float %.sroa.252.0.copyload, <2 x float> %.sroa.049.0.copyload, float %.sroa.250.0.copyload, <2 x float> %.sroa.047.0.copyload, float %.sroa.248.0.copyload) #9 ; 2 uses
  %.fca.1.extract45 = extractvalue { <2 x float>, float } %i.q, 1
  %.fca.0.extract44 = extractvalue { <2 x float>, float } %i.q, 0
  %.sroa.035.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.236.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4
  %i.r = fsub <2 x float> %.fca.0.extract44, %.sroa.035.0.copyload ; 3 uses
  %i.s = fsub float %.fca.1.extract45, %.sroa.236.0.copyload ; 3 uses
  %i.t = fmul <2 x float> %i.r, %i.r              ; 2 uses
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.t, %shift
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.v = fmul float %i.s, %i.s
  %i.w = fadd float %i.v, %i.u                    ; 2 uses
  %i.x = fcmp ogt float %i.w, f0x057A0000
  br i1 %i.x, label %bb.f, label %b3GetLengthAndNormalize.exit

bb.f:                                             ; preds = %bb.e
  %i.y = tail call float @sqrtf(float noundef %i.w) #9 ; 2 uses
  %i.z = fdiv float 1.000000e+00, %i.y            ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.r, %i.ab
  %i.ad = fmul float %i.s, %i.z
  br label %b3GetLengthAndNormalize.exit

b3GetLengthAndNormalize.exit:                     ; preds = %bb.e, %bb.f
  %.099 = phi float [ %i.y, %bb.f ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %.sroa.010.0.i = phi <2 x float> [ %i.ac, %bb.f ], [ zeroinitializer, %bb.e ]
  %.sroa.5.0.i = phi float [ %i.ad, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ae = fcmp ogt float %.099, %i.o
  br i1 %i.ae, label %bb.r, label %bb.g

bb.g:                                             ; preds = %b3GetLengthAndNormalize.exit
  %i.af = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.ag = fmul float %i.af, 5.000000e-03          ; 2 uses
  %i.ah = fcmp olt float %.099, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.p, align 4
  %.sroa.219.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %.sroa.016.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.217.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4
  %i.ai = fsub <2 x float> %.sroa.018.0.copyload, %.sroa.016.0.copyload ; 3 uses
  %i.aj = fsub float %.sroa.219.0.copyload, %.sroa.217.0.copyload ; 3 uses
  %i.ak = fmul <2 x float> %i.ai, %i.ai           ; 2 uses
  %shift109 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop110 = fadd <2 x float> %i.ak, %shift109
  %i.al = extractelement <2 x float> %foldExtExtBinop110, i64 0
  %i.am = fmul float %i.aj, %i.aj
  %i.an = fadd float %i.am, %i.al                 ; 2 uses
  %i.ao = fcmp ogt float %i.an, f0x057A0000
  br i1 %i.ao, label %bb.i, label %b3GetLengthAndNormalize.exit92

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call float @sqrtf(float noundef %i.an) #9 ; 2 uses
  %i.aq = fdiv float 1.000000e+00, %i.ap          ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.ai, %i.as
  %i.au = fmul float %i.aj, %i.aq
  br label %b3GetLengthAndNormalize.exit92

b3GetLengthAndNormalize.exit92:                   ; preds = %bb.h, %bb.i
  %.098 = phi float [ %i.ap, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.010.0.i86 = phi <2 x float> [ %i.at, %bb.i ], [ zeroinitializer, %bb.h ] ; 3 uses
  %.sroa.5.0.i87 = phi float [ %i.au, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.av = fcmp ogt float %.098, %i.ag
  br i1 %i.av, label %bb.j, label %bb.o

bb.j:                                             ; preds = %b3GetLengthAndNormalize.exit92
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.017.0.vec.extract.i = extractelement <2 x float> %.sroa.010.0.i86, i64 0 ; 2 uses
  %i.aw = tail call float @llvm.fabs.f32(float %.sroa.017.0.vec.extract.i)
  %or.cond.i = fcmp ogt float %i.aw, 5.000000e-01
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.017.4.vec.extract21.i = extractelement <2 x float> %.sroa.010.0.i86, i64 1
  store float %.sroa.017.4.vec.extract21.i, ptr %.sroa.014.i, align 8, !tbaa !54
  %i.ax = fneg float %.sroa.017.0.vec.extract.i
  %.sroa.014.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 4
  store float %i.ax, ptr %.sroa.014.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !55
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store float 0.000000e+00, ptr %.sroa.0.i, align 8, !tbaa !54
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  store float %.sroa.5.0.i87, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !55
  %.sroa.017.4.vec.extract.i = extractelement <2 x float> %.sroa.010.0.i86, i64 1 ; 3 uses
  %i.ay = fneg float %.sroa.017.4.vec.extract.i
  %3 = fmul float %.sroa.017.4.vec.extract.i, %.sroa.017.4.vec.extract.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.05.0.in.i = phi ptr [ %.sroa.014.i, %bb.k ], [ %.sroa.0.i, %bb.l ]
  %.sroa.5.0.i93 = phi float [ 0.000000e+00, %bb.k ], [ %3, %bb.l ]
  %.sroa.5.0.i93.a = phi float [ 0.000000e+00, %bb.k ], [ %i.ay, %bb.l ]
  %.sroa.05.0.i = load <2 x float>, ptr %.sroa.05.0.in.i, align 8, !tbaa !15 ; 3 uses
  %i.az = fmul <2 x float> %.sroa.05.0.i, %.sroa.05.0.i ; 2 uses
  %shift112 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop113 = fadd <2 x float> %i.az, %shift112
  %i.ba = extractelement <2 x float> %foldExtExtBinop113, i64 0
  %i.bb = fadd float %.sroa.5.0.i93, %i.ba        ; 2 uses
  %i.bc = fcmp ogt float %i.bb, f0x057A0000
  br i1 %i.bc, label %bb.n, label %b3Perp.exit

bb.n:                                             ; preds = %bb.m
  %i.bd = tail call float @sqrtf(float noundef %i.bb) #9
  %i.be = fdiv float 1.000000e+00, %i.bd          ; 2 uses
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %.sroa.05.0.i, %i.bg
  %i.bi = fmul float %.sroa.5.0.i93.a, %i.be
  br label %b3Perp.exit

b3Perp.exit:                                      ; preds = %bb.m, %bb.n
  %.sroa.07.0.i.i = phi <2 x float> [ %i.bh, %bb.n ], [ zeroinitializer, %bb.m ]
  %.sroa.5.0.i.i = phi float [ %i.bi, %bb.n ], [ 0.000000e+00, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.o

bb.o:                                             ; preds = %b3Perp.exit, %b3GetLengthAndNormalize.exit92, %bb.g
  %.1 = phi float [ %.099, %bb.g ], [ 0.000000e+00, %b3GetLengthAndNormalize.exit92 ], [ 0.000000e+00, %b3Perp.exit ]
  %.sroa.041.1 = phi <2 x float> [ %.sroa.010.0.i, %bb.g ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetLengthAndNormalize.exit92 ], [ %.sroa.07.0.i.i, %b3Perp.exit ]
  %.sroa.6.1 = phi float [ %.sroa.5.0.i, %bb.g ], [ 0.000000e+00, %b3GetLengthAndNormalize.exit92 ], [ %.sroa.5.0.i.i, %b3Perp.exit ]
  %i.bj = icmp ne ptr %0, null, !nosanitize !9
  %i.bk = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.bl = and i64 %i.bk, 3, !nosanitize !9
  %i.bm = icmp eq i64 %i.bl, 0, !nosanitize !9
  %i.bn = and i1 %i.bj, %i.bm, !nosanitize !9
  br i1 %i.bn, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @21, i64 %i.bk) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bo = fsub float %i.o, %.1
  %.sroa.4.sroa.0.0.copyload115 = load <3 x float>, ptr %1, align 4, !tbaa !15
  store <2 x float> %.sroa.041.1, ptr %0, align 4, !tbaa !15
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.6.1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !15
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bo, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <3 x float> %.sroa.4.sroa.0.0.copyload115, ptr %.sroa.4.0..sroa_idx94, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !19
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !19
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %b3GetLengthAndNormalize.exit, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %b3GetLengthAndNormalize.exit ]
  ret i32 %.0
}

declare { <2 x float>, float } @b3PointToSegmentDistance(<2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

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
!12 = !{!"b3Vec3", !11, i64 0, !11, i64 4, !11, i64 8}
!13 = !{!"b3Sphere", !12, i64 0, !11, i64 12}
!14 = !{!13, !11, i64 12}
!15 = !{!11, !11, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTS6b3Vec3", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{i64 0, i64 8, !18, i64 8, i64 4, !19, i64 12, i64 4, !15}
!21 = !{!"b3ShapeProxy", !17, i64 0, !6, i64 8, !11, i64 12}
!22 = !{!"b3Quat", !12, i64 0, !11, i64 12}
!23 = !{!"b3Transform", !12, i64 0, !22, i64 12}
!24 = !{!"_Bool", !5, i64 0}
!25 = !{i32 -1056584962, i32 434702245}
!26 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15}
!27 = !{!"b3RayCastInput", !12, i64 0, !12, i64 12, !11, i64 24}
!28 = !{!27, !11, i64 24}
!29 = !{!"b3CastOutput", !12, i64 0, !12, i64 12, !11, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !24, i64 44}
!30 = !{!29, !11, i64 24}
!31 = !{!29, !24, i64 44}
!32 = !{i32 -1056584962, i32 -1348534735}
!33 = !{!"b3Matrix3", !12, i64 0, !12, i64 12, !12, i64 24}
!34 = !{!"b3MassData", !11, i64 0, !12, i64 4, !33, i64 16}
!35 = !{!34, !11, i64 0}
!36 = !{i32 -1056584962, i32 -2021048374}
!37 = !{i32 -1056584962, i32 1769428002}
!38 = !{i32 -1056584962, i32 -800637625}
!39 = !{!"b3DistanceInput", !21, i64 0, !21, i64 16, !23, i64 32, !24, i64 60}
!40 = !{!39, !24, i64 60}
!41 = !{!"b3DistanceOutput", !12, i64 0, !12, i64 12, !12, i64 24, !11, i64 36, !6, i64 40, !6, i64 44}
!42 = !{!41, !11, i64 36}
!43 = !{i32 -1056584962, i32 -2116526856}
!44 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15}
!45 = !{!"b3ShapeCastInput", !21, i64 0, !12, i64 16, !11, i64 28, !24, i64 32}
!46 = !{!45, !11, i64 28}
!47 = !{!"b3ShapeCastPairInput", !21, i64 0, !21, i64 16, !23, i64 32, !12, i64 60, !11, i64 72, !24, i64 76}
!48 = !{!47, !11, i64 72}
!49 = !{!45, !24, i64 32}
!50 = !{!47, !24, i64 76}
!51 = !{i32 -1056584962, i32 -749143619}
!52 = !{!"b3Capsule", !12, i64 0, !12, i64 12, !11, i64 24}
!53 = !{!52, !11, i64 24}
!54 = !{!12, !11, i64 0}
!55 = !{!12, !11, i64 4}
end_hunk_1
