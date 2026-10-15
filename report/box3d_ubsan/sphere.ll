Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/sphere?download=true
inline.NumInlined: 54
inline.NumDeleted: 17
begin_hunk_0_@b3ComputeSweptSphereAABB:bb.a
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
  %.sroa.513.0.copyload = load <2 x float>, ptr %.sroa.513.0..sroa_idx, align 4 ; 8 uses
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
  %foldExtExtBinop = fmul <2 x float> %.sroa.513.0.copyload, %i.af
  %foldExtExtBinop18 = fmul <2 x float> %.sroa.513.0.copyload, %i.ae
  %shift = shufflevector <2 x float> %foldExtExtBinop18, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.aj = extractelement <2 x float> %foldExtExtBinop20, i64 0
  %i.ak = fmul <2 x float> %i.ai, splat (float 2.000000e+00)
  %i.al = fadd <2 x float> %i.o, %i.ak
  %i.am = fmul float %i.aj, 2.000000e+00
  %i.an = fadd float %i.p, %i.am
  %i.ao = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ap = fmul <4 x float> %i.ao, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %i.aq = extractelement <4 x float> %i.ap, i64 1 ; 2 uses
  %i.ar = extractelement <4 x float> %i.ap, i64 2
  %i.as = extractelement <4 x float> %i.ap, i64 0 ; 2 uses
  %i.at = fsub float %i.aq, %i.as
  %i.au = fmul float %.sroa.2.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.av = fadd float %i.at, %i.au
  %i.aw = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fadd <2 x float> %i.ba, %i.ay
  %i.bc = fsub <2 x float> %i.bb, %.sroa.513.0.copyload
  %i.bd = fsub float %i.av, %.sroa.2.8.vec.extract65.i
  %.sroa.231.8.vec.insert.i = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.be = fadd float %i.as, %i.aq
  %i.bf = fadd float %i.ar, %i.be
  %i.bg = fadd float %.sroa.2.12.vec.extract.i, %i.bf
  %.sroa.231.12.vec.insert.i = insertelement <2 x float> %.sroa.231.8.vec.insert.i, float %i.bg, i64 1
  store <2 x float> %i.al, ptr %i.n, align 8, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.bc, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.bh, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !42
  %i.bk = call float @b3GetLengthUnitsPerMeter() #9
  %i.bl = fmul float %i.bk, 5.000000e-03
  %i.bm = fmul float %i.bl, 1.000000e-01
  %i.bn = fcmp olt float %i.bj, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i1 %i.bn
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
  %3 = tail call float @sqrtf(float noundef %i.t) #9 ; 4 uses
  %4 = fdiv float 1.000000e+00, %3                ; 3 uses
  %5 = fmul float %.sroa.259.0.copyload, %4       ; 3 uses
  %6 = fcmp oeq float %3, 0.000000e+00
  br i1 %6, label %b3GetLengthAndNormalize.exit.thread, label %b3GetLengthAndNormalize.exit.a

b3GetLengthAndNormalize.exit.thread:              ; preds = %bb.e, %b3GetLengthAndNormalize.exit
  %7 = fmul <2 x float> %i.k, %i.k                ; 2 uses
  %shift159 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop160 = fadd <2 x float> %7, %shift159
  %8 = extractelement <2 x float> %foldExtExtBinop160, i64 0
  %9 = fmul float %i.l, %i.l
  %10 = fadd float %9, %8
  %11 = fcmp olt float %10, %i.o
  br i1 %11, label %12, label %bb.n

12:                                               ; preds = %b3GetLengthAndNormalize.exit.thread
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !26
  br label %.sink.split

b3GetLengthAndNormalize.exit.a:                   ; preds = %b3GetLengthAndNormalize.exit
  %i.v = fmul float %.sroa.0.0.vec.extract.i105, %4 ; 3 uses
  %i.w = fmul float %.sroa.0.4.vec.extract20.i, %4 ; 3 uses
  %i.x = extractelement <2 x float> %i.k, i64 0   ; 3 uses
  %i.y = fmul float %i.x, %i.v
  %i.z = extractelement <2 x float> %i.k, i64 1   ; 3 uses
  %i.aa = fmul float %i.z, %i.w
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = fmul float %i.l, %5
  %i.ad = fadd float %i.ac, %i.ab                 ; 4 uses
  %i.ae = fmul float %i.v, %i.ad
  %i.af = fsub float %i.x, %i.ae                  ; 2 uses
  %i.ag = fmul float %i.w, %i.ad
  %i.ah = fsub float %i.z, %i.ag                  ; 2 uses
  %i.ai = fmul float %5, %i.ad
  %i.aj = fsub float %i.l, %i.ai                  ; 2 uses
  %i.ak = fmul float %i.af, %i.af
  %i.al = fmul float %i.ah, %i.ah
  %i.am = fadd float %i.ak, %i.al
  %i.an = fmul float %i.aj, %i.aj
  %i.ao = fadd float %i.an, %i.am                 ; 2 uses
  %i.ap = fcmp ogt float %i.ao, %i.o
  br i1 %i.ap, label %bb.n, label %bb.f

bb.f:                                             ; preds = %b3GetLengthAndNormalize.exit.a
  %i.aq = fneg float %i.ad
  %i.ar = fsub float %i.o, %i.ao
  %i.as = tail call float @sqrtf(float noundef %i.ar) #9
  %i.at = fsub float %i.aq, %i.as                 ; 6 uses
  %i.au = fcmp olt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !28 ; 3 uses
  %i.ax = fmul float %3, %i.aw
  %i.ay = fcmp olt float %i.ax, %i.at
  br i1 %i.ay, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = fmul <2 x float> %i.k, %i.k             ; 2 uses
  %shift161 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop162 = fadd <2 x float> %i.az, %shift161
  %i.ba = extractelement <2 x float> %foldExtExtBinop162, i64 0
  %i.bb = fmul float %i.l, %i.l
  %i.bc = fadd float %i.bb, %i.ba
  %i.bd = fcmp olt float %i.bc, %i.o
  br i1 %i.bd, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !26
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.bf = fmul float %i.v, %i.at
  %i.bg = fadd float %i.x, %i.bf                  ; 3 uses
  %i.bh = fmul float %i.w, %i.at
  %i.bi = fadd float %i.z, %i.bh                  ; 3 uses
  %i.bj = fmul float %5, %i.at
  %i.bk = fadd float %i.l, %i.bj                  ; 3 uses
  %i.bl = fdiv float %i.at, %3                    ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store float %i.bl, ptr %i.bm, align 4, !tbaa !30
  %i.bn = fcmp ogt float %i.bl, %i.aw
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = fpext float %i.aw to double
  %i.bp = fpext float %i.bl to double
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, double noundef %i.bo, double noundef %i.bp) #9
  %i.bq = load float, ptr %i.av, align 4, !tbaa !28
  store float %i.bq, ptr %i.bm, align 4, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.br = fmul float %i.bg, %i.bg
  %i.bs = fmul float %i.bi, %i.bi
  %i.bt = fadd float %i.br, %i.bs
  %i.bu = fmul float %i.bk, %i.bk
  %i.bv = fadd float %i.bu, %i.bt                 ; 2 uses
  %i.bw = fcmp ogt float %i.bv, f0x057A0000
  br i1 %i.bw, label %bb.m, label %b3Normalize.exit

bb.m:                                             ; preds = %bb.l
  %sqrt = tail call float @sqrtf(float noundef %i.bv) #9
  %i.bx = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.by = fmul float %i.bg, %i.bx
  %.sroa.07.0.vec.insert.i = insertelement <2 x float> poison, float %i.by, i64 0
  %i.bz = fmul float %i.bi, %i.bx
  %.sroa.07.4.vec.insert.i = insertelement <2 x float> %.sroa.07.0.vec.insert.i, float %i.bz, i64 1
  %i.ca = fmul float %i.bk, %i.bx
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.l, %bb.m
  %.sroa.07.0.i = phi <2 x float> [ %.sroa.07.4.vec.insert.i, %bb.m ], [ zeroinitializer, %bb.l ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.ca, %bb.m ], [ 0.000000e+00, %bb.l ] ; 2 uses
  store <2 x float> %.sroa.07.0.i, ptr %0, align 4, !tbaa !15
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.413.0..sroa_idx, align 4, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cc = load float, ptr %i.m, align 4, !tbaa !14 ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %.sroa.07.0.i, %i.ce
  %i.cg = fadd <2 x float> %.sroa.082.0.copyload, %i.cf
  %i.ch = fmul float %.sroa.5.0.i, %i.cc
  %i.ci = fadd float %.sroa.584.0.copyload, %i.ch
  store <2 x float> %i.cg, ptr %i.cb, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ci, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  br label %.sink.split

.sink.split:                                      ; preds = %12, %b3Normalize.exit, %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.cj, align 4, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %b3GetLengthAndNormalize.exit.a, %bb.h, %b3GetLengthAndNormalize.exit.thread
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3RayCastHollowSphere(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3CastOutput) align 4 captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !func_sanitize !25 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.sroa.078.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !15 ; 2 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.580.0.copyload = load float, ptr %.sroa.580.0..sroa_idx, align 4, !tbaa !15 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.f = icmp ne ptr %2, null, !nosanitize !9
  %i.g = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !9
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !9
  %i.j = and i1 %i.f, %i.i, !nosanitize !9
  br i1 %i.j, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @12, i64 %i.g) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %.sroa.072.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.273.0.copyload = load float, ptr %.sroa.273.0..sroa_idx, align 4
  %i.k = fsub <2 x float> %.sroa.072.0.copyload, %.sroa.078.0.copyload ; 4 uses
  %i.l = fsub float %.sroa.273.0.copyload, %.sroa.580.0.copyload ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.061.0.copyload = load <2 x float>, ptr %i.m, align 4 ; 3 uses
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.262.0.copyload = load float, ptr %.sroa.262.0..sroa_idx, align 4 ; 3 uses
  %i.n = fmul <2 x float> %.sroa.061.0.copyload, %.sroa.061.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.n, %shift
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.p = fmul float %.sroa.262.0.copyload, %.sroa.262.0.copyload
  %i.q = fadd float %i.p, %i.o                    ; 2 uses
  %i.r = fcmp ogt float %i.q, f0x057A0000
  br i1 %i.r, label %bb.f, label %b3Normalize.exit99

bb.f:                                             ; preds = %bb.e
  %sqrt = tail call float @sqrtf(float noundef %i.q) #9
  %i.s = fdiv float 1.000000e+00, %sqrt           ; 2 uses
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %.sroa.061.0.copyload, %i.u
  %i.w = fmul float %.sroa.262.0.copyload, %i.s
  br label %b3Normalize.exit99

b3Normalize.exit99:                               ; preds = %bb.e, %bb.f
  %.sroa.07.0.i93 = phi <2 x float> [ %i.v, %bb.f ], [ zeroinitializer, %bb.e ] ; 4 uses
  %.sroa.5.0.i94 = phi float [ %i.w, %bb.f ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %.sroa.0.0.vec.extract.i102 = extractelement <2 x float> %.sroa.07.0.i93, i64 0
  %.sroa.0.4.vec.extract.i103 = extractelement <2 x float> %.sroa.07.0.i93, i64 1 ; 2 uses
  %i.x = extractelement <2 x float> %i.k, i64 0
  %foldExtExtBinop148 = fmul <2 x float> %i.k, %.sroa.07.0.i93
  %i.y = extractelement <2 x float> %foldExtExtBinop148, i64 0
  %i.z = extractelement <2 x float> %i.k, i64 1   ; 2 uses
  %i.aa = fmul float %i.z, %.sroa.0.4.vec.extract.i103
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = fmul float %i.l, %.sroa.5.0.i94
  %i.ad = fadd float %i.ac, %i.ab                 ; 5 uses
  %i.ae = fmul float %.sroa.0.0.vec.extract.i102, %i.ad
  %i.af = fsub float %i.x, %i.ae                  ; 2 uses
  %i.ag = fmul float %.sroa.0.4.vec.extract.i103, %i.ad
  %i.ah = fsub float %i.z, %i.ag                  ; 2 uses
  %i.ai = fmul float %.sroa.5.0.i94, %i.ad
  %i.aj = fsub float %i.l, %i.ai                  ; 2 uses
  %i.ak = fmul float %i.af, %i.af
  %i.al = fmul float %i.ah, %i.ah
  %i.am = fadd float %i.ak, %i.al
  %i.an = fmul float %i.aj, %i.aj
  %i.ao = fadd float %i.an, %i.am                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !14 ; 4 uses
  %i.ar = fmul float %i.aq, %i.aq                 ; 2 uses
  %i.as = fcmp ogt float %i.ao, %i.ar
  br i1 %i.as, label %bb.k, label %bb.g

bb.g:                                             ; preds = %b3Normalize.exit99
  %i.at = fneg float %i.ad
  %i.au = fsub float %i.ar, %i.ao
  %i.av = tail call float @sqrtf(float noundef %i.au) #9 ; 2 uses
  %i.aw = fsub float %i.at, %i.av                 ; 2 uses
  %i.ax = fcmp olt float %i.aw, 0.000000e+00
  %i.ay = fsub float %i.av, %i.ad
  %.0 = select i1 %i.ax, float %i.ay, float %i.aw ; 5 uses
  %i.az = fcmp olt float %.0, 0.000000e+00
  br i1 %i.az, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !28
  %i.bc = fcmp ogt float %.0, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = insertelement <2 x float> poison, float %.0, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %.sroa.07.0.i93, %i.be
  %i.bg = fadd <2 x float> %i.k, %i.bf            ; 3 uses
  %i.bh = fmul float %.sroa.5.0.i94, %.0
  %i.bi = fadd float %i.l, %i.bh                  ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.0, ptr %i.bj, align 4, !tbaa !30
  %i.bk = fmul <2 x float> %i.bg, %i.bg           ; 2 uses
  %shift150 = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop151 = fadd <2 x float> %i.bk, %shift150
  %i.bl = extractelement <2 x float> %foldExtExtBinop151, i64 0
  %i.bm = fmul float %i.bi, %i.bi
  %i.bn = fadd float %i.bm, %i.bl                 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, f0x057A0000
  br i1 %i.bo, label %bb.j, label %b3Normalize.exit

bb.j:                                             ; preds = %bb.i
  %sqrt140 = tail call float @sqrtf(float noundef %i.bn) #9
  %i.bp = fdiv float 1.000000e+00, %sqrt140       ; 2 uses
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bg, %i.br
  %i.bt = fmul float %i.bi, %i.bp
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.i, %bb.j
  %.sroa.07.0.i = phi <2 x float> [ %i.bs, %bb.j ], [ zeroinitializer, %bb.i ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.bt, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  store <2 x float> %.sroa.07.0.i, ptr %0, align 4, !tbaa !15
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.413.0..sroa_idx, align 4, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bv = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bw, %.sroa.07.0.i
  %i.by = fadd <2 x float> %.sroa.078.0.copyload, %i.bx
  %i.bz = fmul float %i.aq, %.sroa.5.0.i
  %i.ca = fadd float %.sroa.580.0.copyload, %i.bz
  store <2 x float> %i.by, ptr %i.bu, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ca, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.cb, align 4, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %b3Normalize.exit, %bb.g, %bb.h, %b3Normalize.exit99
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3ShapeCastSphere(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !43 {
bb.a:
  %3 = alloca %struct.b3ShapeCastPairInput, align 8 ; 11 uses
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
  %sqrt.i = tail call float @sqrtf(float noundef %i.w) #9 ; 2 uses
  %i.y = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.r, %i.aa
  %i.ac = fmul float %i.s, %i.y
  br label %b3GetLengthAndNormalize.exit

b3GetLengthAndNormalize.exit:                     ; preds = %bb.e, %bb.f
  %.0101 = phi float [ %sqrt.i, %bb.f ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %.sroa.010.0.i = phi <2 x float> [ %i.ab, %bb.f ], [ zeroinitializer, %bb.e ]
  %.sroa.5.0.i = phi float [ %i.ac, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ad = fcmp ogt float %.0101, %i.o
  br i1 %i.ad, label %bb.r, label %bb.g

bb.g:                                             ; preds = %b3GetLengthAndNormalize.exit
  %i.ae = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.af = fmul float %i.ae, 5.000000e-03          ; 2 uses
  %i.ag = fcmp olt float %.0101, %i.af
  br i1 %i.ag, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.p, align 4
  %.sroa.219.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %.sroa.016.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.217.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4
  %i.ah = fsub <2 x float> %.sroa.018.0.copyload, %.sroa.016.0.copyload ; 3 uses
  %i.ai = fsub float %.sroa.219.0.copyload, %.sroa.217.0.copyload ; 3 uses
  %i.aj = fmul <2 x float> %i.ah, %i.ah           ; 2 uses
  %shift111 = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop112 = fadd <2 x float> %i.aj, %shift111
  %i.ak = extractelement <2 x float> %foldExtExtBinop112, i64 0
  %i.al = fmul float %i.ai, %i.ai
  %i.am = fadd float %i.al, %i.ak                 ; 2 uses
  %i.an = fcmp ogt float %i.am, f0x057A0000
  br i1 %i.an, label %bb.i, label %b3GetLengthAndNormalize.exit93

bb.i:                                             ; preds = %bb.h
  %sqrt.i90 = tail call float @sqrtf(float noundef %i.am) #9 ; 2 uses
  %i.ao = fdiv float 1.000000e+00, %sqrt.i90      ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.ah, %i.aq
  %i.as = fmul float %i.ai, %i.ao
  br label %b3GetLengthAndNormalize.exit93

b3GetLengthAndNormalize.exit93:                   ; preds = %bb.h, %bb.i
  %.0100 = phi float [ %sqrt.i90, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.010.0.i86 = phi <2 x float> [ %i.ar, %bb.i ], [ zeroinitializer, %bb.h ] ; 3 uses
  %.sroa.5.0.i87 = phi float [ %i.as, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.at = fcmp ogt float %.0100, %i.af
  br i1 %i.at, label %bb.j, label %bb.o

bb.j:                                             ; preds = %b3GetLengthAndNormalize.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.017.0.vec.extract.i = extractelement <2 x float> %.sroa.010.0.i86, i64 0 ; 2 uses
  %i.au = tail call float @llvm.fabs.f32(float %.sroa.017.0.vec.extract.i)
  %or.cond.i = fcmp ogt float %i.au, 5.000000e-01
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.017.4.vec.extract21.i = extractelement <2 x float> %.sroa.010.0.i86, i64 1
  store float %.sroa.017.4.vec.extract21.i, ptr %.sroa.014.i, align 8, !tbaa !54
  %i.av = fneg float %.sroa.017.0.vec.extract.i
  %.sroa.014.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 4
  store float %i.av, ptr %.sroa.014.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !55
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store float 0.000000e+00, ptr %.sroa.0.i, align 8, !tbaa !54
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  store float %.sroa.5.0.i87, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !55
  %.sroa.017.4.vec.extract.i = extractelement <2 x float> %.sroa.010.0.i86, i64 1
  %i.aw = fneg float %.sroa.017.4.vec.extract.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.05.0.in.i = phi ptr [ %.sroa.014.i, %bb.k ], [ %.sroa.0.i, %bb.l ]
  %.sroa.5.0.i94 = phi float [ 0.000000e+00, %bb.k ], [ %i.aw, %bb.l ] ; 3 uses
  %.sroa.05.0.i = load <2 x float>, ptr %.sroa.05.0.in.i, align 8, !tbaa !15 ; 3 uses
  %i.ax = fmul <2 x float> %.sroa.05.0.i, %.sroa.05.0.i ; 2 uses
  %shift114 = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop115 = fadd <2 x float> %i.ax, %shift114
  %i.ay = extractelement <2 x float> %foldExtExtBinop115, i64 0
  %i.az = fmul float %.sroa.5.0.i94, %.sroa.5.0.i94
  %i.ba = fadd float %i.az, %i.ay                 ; 2 uses
  %i.bb = fcmp ogt float %i.ba, f0x057A0000
  br i1 %i.bb, label %bb.n, label %b3Perp.exit

bb.n:                                             ; preds = %bb.m
  %sqrt.i95 = tail call float @sqrtf(float noundef %i.ba) #9
  %i.bc = fdiv float 1.000000e+00, %sqrt.i95      ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %.sroa.05.0.i, %i.be
  %i.bg = fmul float %.sroa.5.0.i94, %i.bc
  br label %b3Perp.exit

b3Perp.exit:                                      ; preds = %bb.m, %bb.n
  %.sroa.07.0.i.i = phi <2 x float> [ %i.bf, %bb.n ], [ zeroinitializer, %bb.m ]
  %.sroa.5.0.i.i = phi float [ %i.bg, %bb.n ], [ 0.000000e+00, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.o

bb.o:                                             ; preds = %b3Perp.exit, %b3GetLengthAndNormalize.exit93, %bb.g
  %.1 = phi float [ %.0101, %bb.g ], [ 0.000000e+00, %b3GetLengthAndNormalize.exit93 ], [ 0.000000e+00, %b3Perp.exit ]
  %.sroa.041.1 = phi <2 x float> [ %.sroa.010.0.i, %bb.g ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetLengthAndNormalize.exit93 ], [ %.sroa.07.0.i.i, %b3Perp.exit ]
  %.sroa.6.1 = phi float [ %.sroa.5.0.i, %bb.g ], [ 0.000000e+00, %b3GetLengthAndNormalize.exit93 ], [ %.sroa.5.0.i.i, %b3Perp.exit ]
  %i.bh = icmp ne ptr %0, null, !nosanitize !9
  %i.bi = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.bj = and i64 %i.bi, 3, !nosanitize !9
  %i.bk = icmp eq i64 %i.bj, 0, !nosanitize !9
  %i.bl = and i1 %i.bh, %i.bk, !nosanitize !9
  br i1 %i.bl, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @21, i64 %i.bi) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bm = fsub float %i.o, %.1
  %.sroa.4.sroa.0.0.copyload117 = load <3 x float>, ptr %1, align 4, !tbaa !15
  store <2 x float> %.sroa.041.1, ptr %0, align 4, !tbaa !15
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.6.1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !15
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bm, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <3 x float> %.sroa.4.sroa.0.0.copyload117, ptr %.sroa.4.0..sroa_idx96, align 4, !tbaa !15
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
end_hunk_0
