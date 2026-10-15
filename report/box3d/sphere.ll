Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/sphere?download=true
inline.NumInlined: 54
inline.NumDeleted: 17
begin_hunk_0_@b3ComputeSweptSphereAABB:bb.a
  %i.q = fadd <2 x float> %i.o, %i.l              ; 2 uses
  %i.r = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.f, i64 0
  %i.t = fadd <2 x float> %i.p, %i.s              ; 2 uses
  %i.u = fmul <2 x float> %i.j, %i.q
  %i.v = shufflevector <2 x float> %.sroa.6115.0.copyload, <2 x float> %.sroa.5114.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.w = fmul <2 x float> %i.v, %i.t
  %i.x = fsub <2 x float> %i.u, %i.w
  %i.y = shufflevector <2 x float> %i.t, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %i.z = fmul <2 x float> %.sroa.5114.0.copyload, %i.y ; 2 uses
  %i.aa = fmul <2 x float> %i.x, splat (float 2.000000e+00)
  %i.ab = fadd <2 x float> %.sroa.045.0.copyload, %i.aa
  %i.ac = fadd <2 x float> %.sroa.0112.0.copyload, %i.ab ; 4 uses
  %foldExtExtBinop117 = fmul <2 x float> %.sroa.045.0.copyload, %.sroa.6.0.copyload
  %i.ad = extractelement <2 x float> %foldExtExtBinop117, i64 0
  %i.ae = fmul float %.sroa.246.0.copyload, %.sroa.011.0.vec.extract.i.i66
  %i.af = fsub float %i.ad, %i.ae
  %i.ag = fmul <2 x float> %i.h, %.sroa.5.0.copyload
  %i.ah = shufflevector <2 x float> %.sroa.5.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ai = fmul <2 x float> %.sroa.045.0.copyload, %i.ah
  %i.aj = fsub <2 x float> %i.ag, %i.ai           ; 2 uses
  %i.ak = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.al = fmul <2 x float> %i.m, %i.ak
  %i.am = fmul <2 x float> %i.h, %i.ak
  %i.an = fadd <2 x float> %i.al, %i.aj           ; 2 uses
  %i.ao = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ap = insertelement <2 x float> %i.ao, float %i.af, i64 0
  %i.aq = fadd <2 x float> %i.am, %i.ap           ; 2 uses
  %i.ar = fmul <2 x float> %i.ah, %i.an
  %i.as = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = fsub <2 x float> %i.ar, %i.at
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  %i.aw = fmul <2 x float> %.sroa.5.0.copyload, %i.av ; 2 uses
  %i.ax = fmul <2 x float> %i.au, splat (float 2.000000e+00)
  %i.ay = fadd <2 x float> %.sroa.045.0.copyload, %i.ax
  %i.az = fadd <2 x float> %.sroa.0.0.copyload, %i.ay ; 4 uses
  %i.ba = shufflevector <2 x float> %i.z, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bb = shufflevector <2 x float> %i.z, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bc = fsub <2 x float> %i.ba, %i.bb
  %i.bd = fmul <2 x float> %i.bc, splat (float 2.000000e+00)
  %i.be = insertelement <2 x float> poison, float %.sroa.246.0.copyload, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fadd <2 x float> %i.bf, %i.bd
  %i.bh = insertelement <2 x float> %i.c, float %.sroa.4.0.copyload, i64 1
  %i.bi = fadd <2 x float> %i.bh, %i.bg           ; 2 uses
  %i.bj = fcmp olt <2 x float> %i.ac, %i.az
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.ac, <2 x float> %i.az
  %i.bl = extractelement <2 x float> %i.bi, i64 0 ; 4 uses
  %i.bm = extractelement <2 x float> %i.bi, i64 1 ; 4 uses
  %i.bn = fcmp olt float %i.bl, %i.bm
  %i.bo = select i1 %i.bn, float %i.bl, float %i.bm
  %i.bp = insertelement <2 x float> poison, float %i.b, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fsub <2 x float> %i.bk, %i.bq
  %i.bs = fsub float %i.bo, %i.b
  store <2 x float> %i.br, ptr %0, align 4
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bs, ptr %.sroa.218.0..sroa_idx, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bu = fcmp ogt float %i.bl, %i.bm
  %i.bv = select i1 %i.bu, float %i.bl, float %i.bm
  %i.bw = fcmp ogt <2 x float> %i.ac, %i.az
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.ac, <2 x float> %i.az
  %i.by = fadd <2 x float> %i.bq, %i.bx
  %i.bz = fadd float %i.b, %i.bv
  store <2 x float> %i.by, ptr %i.bt, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bz, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3OverlapSphere(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.b3DistanceInput, align 8    ; 12 uses
  %4 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %5 = alloca %struct.b3DistanceOutput, align 4   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !11
  store ptr %0, ptr %3, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.b, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.09.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.410.0.copyload = load float, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.511.0.copyload = load <2 x float>, ptr %.sroa.511.0..sroa_idx, align 4 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 6 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.e = fsub <2 x float> zeroinitializer, %.sroa.09.0.copyload ; 4 uses
  %i.f = fsub float 0.000000e+00, %.sroa.410.0.copyload ; 3 uses
  %i.g = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.h = insertelement <2 x float> %i.g, float %i.f, i64 1 ; 2 uses
  %i.i = fmul <2 x float> %i.h, %.sroa.511.0.copyload
  %i.j = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.511.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.k = fmul <2 x float> %i.e, %i.j
  %i.l = shufflevector <2 x float> %.sroa.511.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.m = fmul <2 x float> %i.e, %i.l
  %i.n = insertelement <2 x float> %i.g, float %i.f, i64 0 ; 2 uses
  %i.o = fmul <2 x float> %i.n, %.sroa.511.0.copyload
  %i.p = fsub <2 x float> %i.i, %i.m
  %i.q = fsub <2 x float> %i.k, %i.o
  %i.r = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.s = fmul <2 x float> %i.n, %i.r
  %i.t = fmul <2 x float> %i.h, %i.r
  %i.u = fsub <2 x float> %i.p, %i.s              ; 2 uses
  %i.v = fsub <2 x float> %i.q, %i.t              ; 2 uses
  %i.w = fmul <2 x float> %i.l, %i.u
  %i.x = fmul <2 x float> %i.j, %i.v
  %i.y = fsub <2 x float> %i.w, %i.x
  %foldExtExtBinop = fmul <2 x float> %.sroa.511.0.copyload, %i.v
  %foldExtExtBinop15 = fmul <2 x float> %.sroa.511.0.copyload, %i.u
  %shift = shufflevector <2 x float> %foldExtExtBinop15, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.z = extractelement <2 x float> %foldExtExtBinop17, i64 0
  %i.aa = fmul <2 x float> %i.y, splat (float 2.000000e+00)
  %i.ab = fadd <2 x float> %i.e, %i.aa
  %i.ac = fmul float %i.z, 2.000000e+00
  %i.ad = fadd float %i.f, %i.ac
  %i.ae = shufflevector <2 x float> %.sroa.511.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.af = fmul <4 x float> %i.ae, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %i.ag = extractelement <4 x float> %i.af, i64 1 ; 2 uses
  %i.ah = extractelement <4 x float> %i.af, i64 2
  %i.ai = extractelement <4 x float> %i.af, i64 0 ; 2 uses
  %i.aj = fsub float %i.ag, %i.ai
  %i.ak = fmul float %.sroa.3.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.al = fadd float %i.aj, %i.ak
  %i.am = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.an = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ao = fsub <2 x float> %i.am, %i.an
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  %i.as = fsub <2 x float> %i.ar, %.sroa.511.0.copyload
  %i.at = fsub float %i.al, %.sroa.3.8.vec.extract.i
  %.sroa.251.8.vec.insert.i = insertelement <2 x float> poison, float %i.at, i64 0
  %i.au = fadd float %i.ai, %i.ag
  %i.av = fadd float %i.ah, %i.au
  %i.aw = fadd float %.sroa.3.12.vec.extract.i, %i.av
  %.sroa.251.12.vec.insert.i = insertelement <2 x float> %.sroa.251.8.vec.insert.i, float %i.aw, i64 1
  store <2 x float> %i.ab, ptr %i.d, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.as, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.251.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.ax, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #10
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34
  %i.ba = call float @b3GetLengthUnitsPerMeter() #10
  %i.bb = fmul float %i.ba, 5.000000e-03
  %i.bc = fmul float %i.bb, 1.000000e-01
  %i.bd = fcmp olt float %i.az, %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.bd
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3RayCastSphere(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3CastOutput) align 4 captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %.sroa.082.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !12 ; 2 uses
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.584.0.copyload = load float, ptr %.sroa.584.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %.sroa.075.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.276.0.copyload = load float, ptr %.sroa.276.0..sroa_idx, align 4
  %i.a = fsub <2 x float> %.sroa.075.0.copyload, %.sroa.082.0.copyload ; 6 uses
  %i.b = fsub float %.sroa.276.0.copyload, %.sroa.584.0.copyload ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !11 ; 2 uses
  %i.e = fmul float %i.d, %i.d                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.058.0.copyload = load <2 x float>, ptr %i.f, align 4 ; 4 uses
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.259.0.copyload = load float, ptr %.sroa.259.0..sroa_idx, align 4 ; 3 uses
  %.sroa.010.0.vec.extract.i = extractelement <2 x float> %.sroa.058.0.copyload, i64 0
  %.sroa.010.4.vec.extract.i = extractelement <2 x float> %.sroa.058.0.copyload, i64 1
  %i.g = fmul <2 x float> %.sroa.058.0.copyload, %.sroa.058.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.g, %shift
  %i.h = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.i = fmul float %.sroa.259.0.copyload, %.sroa.259.0.copyload
  %i.j = fadd float %i.i, %i.h                    ; 2 uses
  %i.k = fcmp ogt float %i.j, f0x057A0000
  br i1 %i.k, label %b3GetLengthAndNormalize.exit, label %b3GetLengthAndNormalize.exit.thread

b3GetLengthAndNormalize.exit:                     ; preds = %bb.a
  %3 = tail call float @sqrtf(float noundef %i.j) #10 ; 4 uses
  %4 = fdiv float 1.000000e+00, %3                ; 3 uses
  %5 = fmul float %.sroa.259.0.copyload, %4       ; 3 uses
  %6 = fcmp oeq float %3, 0.000000e+00
  br i1 %6, label %b3GetLengthAndNormalize.exit.thread, label %b3GetLengthAndNormalize.exit.a

b3GetLengthAndNormalize.exit.thread:              ; preds = %bb.a, %b3GetLengthAndNormalize.exit
  %7 = fmul <2 x float> %i.a, %i.a                ; 2 uses
  %shift146 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147 = fadd <2 x float> %7, %shift146
  %8 = extractelement <2 x float> %foldExtExtBinop147, i64 0
  %9 = fmul float %i.b, %i.b
  %10 = fadd float %9, %8
  %11 = fcmp olt float %10, %i.e
  br i1 %11, label %12, label %bb.j

12:                                               ; preds = %b3GetLengthAndNormalize.exit.thread
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !22
  br label %.sink.split

b3GetLengthAndNormalize.exit.a:                   ; preds = %b3GetLengthAndNormalize.exit
  %i.l = fmul float %.sroa.010.0.vec.extract.i, %4 ; 3 uses
  %i.m = fmul float %.sroa.010.4.vec.extract.i, %4 ; 3 uses
  %i.n = extractelement <2 x float> %i.a, i64 0   ; 3 uses
  %i.o = fmul float %i.n, %i.l
  %i.p = extractelement <2 x float> %i.a, i64 1   ; 3 uses
  %i.q = fmul float %i.p, %i.m
  %i.r = fadd float %i.o, %i.q
  %i.s = fmul float %i.b, %5
  %i.t = fadd float %i.s, %i.r                    ; 4 uses
  %i.u = fmul float %i.l, %i.t
  %i.v = fsub float %i.n, %i.u                    ; 2 uses
  %i.w = fmul float %i.m, %i.t
  %i.x = fsub float %i.p, %i.w                    ; 2 uses
  %i.y = fmul float %5, %i.t
  %i.z = fsub float %i.b, %i.y                    ; 2 uses
  %i.aa = fmul float %i.v, %i.v
  %i.ab = fmul float %i.x, %i.x
  %i.ac = fadd float %i.aa, %i.ab
  %i.ad = fmul float %i.z, %i.z
  %i.ae = fadd float %i.ad, %i.ac                 ; 2 uses
  %i.af = fcmp ogt float %i.ae, %i.e
  br i1 %i.af, label %bb.j, label %bb.b

bb.b:                                             ; preds = %b3GetLengthAndNormalize.exit.a
  %i.ag = fneg float %i.t
  %i.ah = fsub float %i.e, %i.ae
  %i.ai = tail call float @sqrtf(float noundef %i.ah) #10
  %i.aj = fsub float %i.ag, %i.ai                 ; 6 uses
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !24 ; 3 uses
  %i.an = fmul float %3, %i.am
  %i.ao = fcmp olt float %i.an, %i.aj
  br i1 %i.ao, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = fmul <2 x float> %i.a, %i.a             ; 2 uses
  %shift148 = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop149 = fadd <2 x float> %i.ap, %shift148
  %i.aq = extractelement <2 x float> %foldExtExtBinop149, i64 0
  %i.ar = fmul float %i.b, %i.b
  %i.as = fadd float %i.ar, %i.aq
  %i.at = fcmp olt float %i.as, %i.e
  br i1 %i.at, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !22
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.av = fmul float %i.l, %i.aj
  %i.aw = fadd float %i.n, %i.av                  ; 3 uses
  %i.ax = fmul float %i.m, %i.aj
  %i.ay = fadd float %i.p, %i.ax                  ; 3 uses
  %i.az = fmul float %5, %i.aj
  %i.ba = fadd float %i.b, %i.az                  ; 3 uses
  %i.bb = fdiv float %i.aj, %3                    ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store float %i.bb, ptr %i.bc, align 4, !tbaa !26
  %i.bd = fcmp ogt float %i.bb, %i.am
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = fpext float %i.am to double
  %i.bf = fpext float %i.bb to double
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, double noundef %i.be, double noundef %i.bf) #10
  %i.bg = load float, ptr %i.al, align 4, !tbaa !24
  store float %i.bg, ptr %i.bc, align 4, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bh = fmul float %i.aw, %i.aw
  %i.bi = fmul float %i.ay, %i.ay
  %i.bj = fadd float %i.bh, %i.bi
  %i.bk = fmul float %i.ba, %i.ba
  %i.bl = fadd float %i.bk, %i.bj                 ; 2 uses
  %i.bm = fcmp ogt float %i.bl, f0x057A0000
  br i1 %i.bm, label %bb.i, label %b3Normalize.exit

bb.i:                                             ; preds = %bb.h
  %sqrt = tail call float @sqrtf(float noundef %i.bl) #10
  %i.bn = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.bo = fmul float %i.aw, %i.bn
  %.sroa.018.0.vec.insert.i = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bp = fmul float %i.ay, %i.bn
  %.sroa.018.4.vec.insert.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i, float %i.bp, i64 1
  %i.bq = fmul float %i.ba, %i.bn
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.h, %bb.i
  %.sroa.018.0.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.bq, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  store <2 x float> %.sroa.018.0.i, ptr %0, align 4, !tbaa !12
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.413.0..sroa_idx, align 4, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bs = load float, ptr %i.c, align 4, !tbaa !11 ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %.sroa.018.0.i, %i.bu
  %i.bw = fadd <2 x float> %.sroa.082.0.copyload, %i.bv
  %i.bx = fmul float %.sroa.5.0.i, %i.bs
  %i.by = fadd float %.sroa.584.0.copyload, %i.bx
  store <2 x float> %i.bw, ptr %i.br, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.by, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  br label %.sink.split

.sink.split:                                      ; preds = %12, %b3Normalize.exit, %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.bz, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %b3GetLengthAndNormalize.exit.a, %bb.d, %b3GetLengthAndNormalize.exit.thread
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @b3RayCastHollowSphere(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3CastOutput) align 4 captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.078.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !12 ; 2 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.580.0.copyload = load float, ptr %.sroa.580.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %.sroa.072.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.273.0.copyload = load float, ptr %.sroa.273.0..sroa_idx, align 4
  %i.a = fsub <2 x float> %.sroa.072.0.copyload, %.sroa.078.0.copyload ; 4 uses
  %i.b = fsub float %.sroa.273.0.copyload, %.sroa.580.0.copyload ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.061.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 3 uses
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.262.0.copyload = load float, ptr %.sroa.262.0..sroa_idx, align 4 ; 3 uses
  %i.d = fmul <2 x float> %.sroa.061.0.copyload, %.sroa.061.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.d, %shift
  %i.e = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.f = fmul float %.sroa.262.0.copyload, %.sroa.262.0.copyload
  %i.g = fadd float %i.f, %i.e                    ; 2 uses
  %i.h = fcmp ogt float %i.g, f0x057A0000
  br i1 %i.h, label %bb.b, label %b3Normalize.exit98

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @sqrtf(float noundef %i.g) #10
  %i.i = fdiv float 1.000000e+00, %sqrt           ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %.sroa.061.0.copyload, %i.k
  %i.m = fmul float %.sroa.262.0.copyload, %i.i
  br label %b3Normalize.exit98

b3Normalize.exit98:                               ; preds = %bb.a, %bb.b
  %.sroa.018.0.i92 = phi <2 x float> [ %i.l, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %.sroa.5.0.i93 = phi float [ %i.m, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.018.0.i92, i64 0
  %i.n = extractelement <2 x float> %i.a, i64 0
  %foldExtExtBinop129 = fmul <2 x float> %i.a, %.sroa.018.0.i92
  %i.o = extractelement <2 x float> %foldExtExtBinop129, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.018.0.i92, i64 1 ; 2 uses
  %i.p = extractelement <2 x float> %i.a, i64 1   ; 2 uses
  %i.q = fmul float %i.p, %.sroa.01.4.vec.extract.i
  %i.r = fadd float %i.o, %i.q
  %i.s = fmul float %i.b, %.sroa.5.0.i93
  %i.t = fadd float %i.s, %i.r                    ; 5 uses
  %i.u = fmul float %.sroa.01.0.vec.extract.i, %i.t
  %i.v = fsub float %i.n, %i.u                    ; 2 uses
  %i.w = fmul float %.sroa.01.4.vec.extract.i, %i.t
  %i.x = fsub float %i.p, %i.w                    ; 2 uses
  %i.y = fmul float %.sroa.5.0.i93, %i.t
  %i.z = fsub float %i.b, %i.y                    ; 2 uses
  %i.aa = fmul float %i.v, %i.v
  %i.ab = fmul float %i.x, %i.x
  %i.ac = fadd float %i.aa, %i.ab
  %i.ad = fmul float %i.z, %i.z
  %i.ae = fadd float %i.ad, %i.ac                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !11 ; 4 uses
  %i.ah = fmul float %i.ag, %i.ag                 ; 2 uses
  %i.ai = fcmp ogt float %i.ae, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.c

bb.c:                                             ; preds = %b3Normalize.exit98
  %i.aj = fneg float %i.t
  %i.ak = fsub float %i.ah, %i.ae
  %i.al = tail call float @sqrtf(float noundef %i.ak) #10 ; 2 uses
  %i.am = fsub float %i.aj, %i.al                 ; 2 uses
  %i.an = fcmp olt float %i.am, 0.000000e+00
  %i.ao = fsub float %i.al, %i.t
  %.0 = select i1 %i.an, float %i.ao, float %i.am ; 5 uses
  %i.ap = fcmp olt float %.0, 0.000000e+00
  br i1 %i.ap, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !24
  %i.as = fcmp ogt float %.0, %i.ar
  br i1 %i.as, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = insertelement <2 x float> poison, float %.0, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %.sroa.018.0.i92, %i.au
  %i.aw = fadd <2 x float> %i.a, %i.av            ; 3 uses
  %i.ax = fmul float %.sroa.5.0.i93, %.0
  %i.ay = fadd float %i.b, %i.ax                  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.0, ptr %i.az, align 4, !tbaa !26
  %i.ba = fmul <2 x float> %i.aw, %i.aw           ; 2 uses
  %shift131 = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132 = fadd <2 x float> %i.ba, %shift131
  %i.bb = extractelement <2 x float> %foldExtExtBinop132, i64 0
  %i.bc = fmul float %i.ay, %i.ay
  %i.bd = fadd float %i.bc, %i.bb                 ; 2 uses
  %i.be = fcmp ogt float %i.bd, f0x057A0000
  br i1 %i.be, label %bb.f, label %b3Normalize.exit

bb.f:                                             ; preds = %bb.e
  %sqrt123 = tail call float @sqrtf(float noundef %i.bd) #10
  %i.bf = fdiv float 1.000000e+00, %sqrt123       ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.aw, %i.bh
  %i.bj = fmul float %i.ay, %i.bf
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.e, %bb.f
  %.sroa.018.0.i = phi <2 x float> [ %i.bi, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.bj, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  store <2 x float> %.sroa.018.0.i, ptr %0, align 4, !tbaa !12
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.413.0..sroa_idx, align 4, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bl = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bm, %.sroa.018.0.i
  %i.bo = fadd <2 x float> %.sroa.078.0.copyload, %i.bn
  %i.bp = fmul float %i.ag, %.sroa.5.0.i
  %i.bq = fadd float %.sroa.580.0.copyload, %i.bp
  store <2 x float> %i.bo, ptr %i.bk, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bq, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.br, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %b3Normalize.exit, %bb.c, %bb.d, %b3Normalize.exit98
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3ShapeCastSphere(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.b3ShapeCastPairInput, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !11
  store ptr %1, ptr %3, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.b, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, ptr noundef nonnull align 8 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !35
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !22
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store float %i.h, ptr %i.i, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !40, !range !41, !noundef !42
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i8 %i.k, ptr %i.l, align 4, !tbaa !43
  call void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

declare void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @b3CollideMoverAndSphere(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load float, ptr %i.a, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !11
  %i.e = fadd float %i.b, %i.d                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.053.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.254.0.copyload = load float, ptr %.sroa.254.0..sroa_idx, align 4
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.f, align 4
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4
  %.sroa.049.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %i.g = tail call { <2 x float>, float } @b3PointToSegmentDistance(<2 x float> %.sroa.053.0.copyload, float %.sroa.254.0.copyload, <2 x float> %.sroa.051.0.copyload, float %.sroa.252.0.copyload, <2 x float> %.sroa.049.0.copyload, float %.sroa.250.0.copyload) #10 ; 2 uses
  %.fca.0.extract45 = extractvalue { <2 x float>, float } %i.g, 0
  %.fca.1.extract46 = extractvalue { <2 x float>, float } %i.g, 1
  %.sroa.036.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.237.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %i.h = fsub <2 x float> %.fca.0.extract45, %.sroa.036.0.copyload ; 3 uses
  %i.i = fsub float %.fca.1.extract46, %.sroa.237.0.copyload ; 3 uses
  %i.j = fmul <2 x float> %i.h, %i.h              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fmul float %i.i, %i.i
  %i.m = fadd float %i.l, %i.k                    ; 2 uses
  %i.n = fcmp ogt float %i.m, f0x057A0000
  br i1 %i.n, label %bb.b, label %b3GetLengthAndNormalize.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @sqrtf(float noundef %i.m) #10 ; 2 uses
  %i.o = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.h, %i.q
  %i.s = fmul float %i.i, %i.o
  br label %b3GetLengthAndNormalize.exit

b3GetLengthAndNormalize.exit:                     ; preds = %bb.a, %bb.b
  %.sink.i = phi float [ %sqrt.i, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %.sroa.021.0.i = phi <2 x float> [ %i.r, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.5.0.i = phi float [ %i.s, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.t = fcmp ogt float %.sink.i, %i.e
  br i1 %i.t, label %bb.k, label %bb.c

bb.c:                                             ; preds = %b3GetLengthAndNormalize.exit
  %i.u = tail call float @b3GetLengthUnitsPerMeter() #10
  %i.v = fmul float %i.u, 5.000000e-03            ; 2 uses
  %i.w = fcmp olt float %.sink.i, %i.v
  br i1 %i.w, label %bb.d, label %b3Perp.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.f, align 4
  %.sroa.220.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4
  %.sroa.017.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.218.0.copyload = load float, ptr %.sroa.254.0..sroa_idx, align 4
  %i.x = fsub <2 x float> %.sroa.019.0.copyload, %.sroa.017.0.copyload ; 3 uses
  %i.y = fsub float %.sroa.220.0.copyload, %.sroa.218.0.copyload ; 3 uses
  %i.z = fmul <2 x float> %i.x, %i.x              ; 2 uses
  %shift103 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = fadd <2 x float> %i.z, %shift103
  %i.aa = extractelement <2 x float> %foldExtExtBinop104, i64 0
  %i.ab = fmul float %i.y, %i.y
  %i.ac = fadd float %i.ab, %i.aa                 ; 2 uses
  %i.ad = fcmp ogt float %i.ac, f0x057A0000
  br i1 %i.ad, label %bb.e, label %b3GetLengthAndNormalize.exit91

bb.e:                                             ; preds = %bb.d
  %sqrt.i88 = tail call float @sqrtf(float noundef %i.ac) #10 ; 2 uses
  %i.ae = fdiv float 1.000000e+00, %sqrt.i88      ; 2 uses
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.x, %i.ag
  %i.ai = fmul float %i.y, %i.ae
  br label %b3GetLengthAndNormalize.exit91

b3GetLengthAndNormalize.exit91:                   ; preds = %bb.d, %bb.e
  %.sink.i83 = phi float [ %sqrt.i88, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.021.0.i84 = phi <2 x float> [ %i.ah, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %.sroa.5.0.i85 = phi float [ %i.ai, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.aj = fcmp ogt float %.sink.i83, %i.v
  br i1 %i.aj, label %bb.f, label %b3Perp.exit

bb.f:                                             ; preds = %b3GetLengthAndNormalize.exit91
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %.sroa.021.0.i84, i64 0
  %i.ak = tail call float @llvm.fabs.f32(float %.sroa.020.0.vec.extract.i)
  %or.cond.i = fcmp ogt float %i.ak, 5.000000e-01
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.012.0.vec.insert15.i = shufflevector <2 x float> %.sroa.021.0.i84, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = fneg <2 x float> %.sroa.021.0.i84
  %.sroa.012.4.vec.insert17.i = shufflevector <2 x float> %.sroa.012.0.vec.insert15.i, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %.sroa.021.0.i84, i64 1
  %i.am = fneg float %.sroa.020.4.vec.extract.i
  %.sroa.012.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.5.0.i85, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert17.i, %bb.g ], [ %.sroa.012.4.vec.insert.i, %bb.h ] ; 3 uses
  %.sroa.7.0.i = phi float [ 0.000000e+00, %bb.g ], [ %i.am, %bb.h ] ; 3 uses
  %i.an = fmul <2 x float> %.sroa.012.0.i, %.sroa.012.0.i ; 2 uses
  %shift106 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop107 = fadd <2 x float> %i.an, %shift106
  %i.ao = extractelement <2 x float> %foldExtExtBinop107, i64 0
  %i.ap = fmul float %.sroa.7.0.i, %.sroa.7.0.i
  %i.aq = fadd float %i.ap, %i.ao                 ; 2 uses
  %i.ar = fcmp ogt float %i.aq, f0x057A0000
  br i1 %i.ar, label %bb.j, label %b3Perp.exit

bb.j:                                             ; preds = %bb.i
  %sqrt.i92 = tail call float @sqrtf(float noundef %i.aq) #10
  %i.as = fdiv float 1.000000e+00, %sqrt.i92      ; 2 uses
  %i.at = insertelement <2 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %.sroa.012.0.i, %i.au
  %i.aw = fmul float %.sroa.7.0.i, %i.as
  br label %b3Perp.exit

b3Perp.exit:                                      ; preds = %bb.j, %bb.i, %b3GetLengthAndNormalize.exit91, %bb.c
  %.096 = phi float [ %.sink.i, %bb.c ], [ 0.000000e+00, %b3GetLengthAndNormalize.exit91 ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.j ]
  %.sroa.042.1 = phi <2 x float> [ %.sroa.021.0.i, %bb.c ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetLengthAndNormalize.exit91 ], [ zeroinitializer, %bb.i ], [ %i.av, %bb.j ]
  %.sroa.6.1 = phi float [ %.sroa.5.0.i, %bb.c ], [ 0.000000e+00, %b3GetLengthAndNormalize.exit91 ], [ 0.000000e+00, %bb.i ], [ %i.aw, %bb.j ]
  %i.ax = fsub float %i.e, %.096
  %.sroa.0.sroa.3.sroa.0.0.copyload109 = load <3 x float>, ptr %1, align 4, !tbaa !12
  store <2 x float> %.sroa.042.1, ptr %0, align 4, !tbaa !12
  %.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.6.1, ptr %.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 4, !tbaa !12
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ax, ptr %.sroa.0.sroa.2.0..sroa_idx, align 4, !tbaa !12
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <3 x float> %.sroa.0.sroa.3.sroa.0.0.copyload109, ptr %.sroa.0.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %b3GetLengthAndNormalize.exit, %b3Perp.exit
  %.0 = phi i32 [ 1, %b3Perp.exit ], [ 0, %b3GetLengthAndNormalize.exit ]
  ret i32 %.0
}

declare { <2 x float>, float } @b3PointToSegmentDistance(<2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"b3Vec3", !8, i64 0, !8, i64 4, !8, i64 8}
!10 = !{!"b3Sphere", !9, i64 0, !8, i64 12}
!11 = !{!10, !8, i64 12}
!12 = !{!8, !8, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS6b3Vec3", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{i64 0, i64 8, !15, i64 8, i64 4, !16, i64 12, i64 4, !12}
!18 = !{!"b3ShapeProxy", !14, i64 0, !5, i64 8, !8, i64 12}
!19 = !{!"b3Quat", !9, i64 0, !8, i64 12}
!20 = !{!"b3Transform", !9, i64 0, !19, i64 12}
!21 = !{!"_Bool", !4, i64 0}
!22 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12}
!23 = !{!"b3RayCastInput", !9, i64 0, !9, i64 12, !8, i64 24}
!24 = !{!23, !8, i64 24}
!25 = !{!"b3CastOutput", !9, i64 0, !9, i64 12, !8, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !21, i64 44}
!26 = !{!25, !8, i64 24}
!27 = !{!25, !21, i64 44}
!28 = !{!"b3Matrix3", !9, i64 0, !9, i64 12, !9, i64 24}
!29 = !{!"b3MassData", !8, i64 0, !9, i64 4, !28, i64 16}
!30 = !{!29, !8, i64 0}
!31 = !{!"b3DistanceInput", !18, i64 0, !18, i64 16, !20, i64 32, !21, i64 60}
!32 = !{!31, !21, i64 60}
!33 = !{!"b3DistanceOutput", !9, i64 0, !9, i64 12, !9, i64 24, !8, i64 36, !5, i64 40, !5, i64 44}
!34 = !{!33, !8, i64 36}
!35 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !12}
!36 = !{!"b3ShapeCastInput", !18, i64 0, !9, i64 16, !8, i64 28, !21, i64 32}
!37 = !{!36, !8, i64 28}
!38 = !{!"b3ShapeCastPairInput", !18, i64 0, !18, i64 16, !20, i64 32, !9, i64 60, !8, i64 72, !21, i64 76}
!39 = !{!38, !8, i64 72}
!40 = !{!36, !21, i64 32}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!38, !21, i64 76}
!44 = !{!"b3Capsule", !9, i64 0, !9, i64 12, !8, i64 24}
!45 = !{!44, !8, i64 24}
end_hunk_0
