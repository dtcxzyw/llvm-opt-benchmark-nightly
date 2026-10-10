Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/triangle_manifold?download=true
inline.NumInlined: 155
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3CollideTriangleAndSphere:bb.a
  %foldExtExtBinop233 = fmul <2 x float> %foldExtExtBinop228, %foldExtExtBinop228
  %foldExtExtBinop235 = fadd <2 x float> %foldExtExtBinop233, %foldExtExtBinop231
  %i.t = extractelement <2 x float> %foldExtExtBinop235, i64 0 ; 3 uses
  %i.u = fcmp ogt float %i.t, f0x057A0000         ; 2 uses
  br i1 %i.u, label %bb.c, label %b3MakePlaneFromPoints.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.t)
  %i.v = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.y = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.x, %i.y
  %i.aa = fmul float %i.r, %i.v
  br label %b3MakePlaneFromPoints.exit

b3MakePlaneFromPoints.exit:                       ; preds = %bb.b, %bb.c
  %.sroa.018.0.i.i = phi <2 x float> [ %i.z, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.5.0.i.i = phi float [ %i.aa, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.ab = fmul <2 x float> %.sroa.0139.0.copyload, %.sroa.018.0.i.i ; 2 uses
  %shift237 = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop238 = fadd <2 x float> %i.ab, %shift237
  %i.ac = extractelement <2 x float> %foldExtExtBinop238, i64 0
  %i.ad = fmul float %.sroa.7.0.copyload, %.sroa.5.0.i.i
  %i.ae = fadd float %i.ad, %i.ac
  %i.af = fmul <2 x float> %.sroa.0143.0.copyload, %.sroa.018.0.i.i ; 2 uses
  %shift240 = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop241 = fadd <2 x float> %i.af, %shift240
  %i.ag = extractelement <2 x float> %foldExtExtBinop241, i64 0
  %i.ah = fmul float %.sroa.8.0.copyload, %.sroa.5.0.i.i
  %i.ai = fadd float %i.ah, %i.ag
  %i.aj = fcmp olt float %i.ai, %i.ae
  br i1 %i.aj, label %bb.i, label %bb.d

bb.d:                                             ; preds = %b3MakePlaneFromPoints.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !63 ; 4 uses
  %i.am = tail call { <2 x float>, i64 } @b3ClosestPointOnTriangle(<2 x float> %.sroa.0139.0.copyload, float %.sroa.7.0.copyload, <2 x float> %.sroa.0135.0.copyload, float %.sroa.6138.0.copyload, <2 x float> %.sroa.0131.0.copyload, float %.sroa.6134.0.copyload, <2 x float> %.sroa.0143.0.copyload, float %.sroa.8.0.copyload) #9 ; 2 uses
  %i.an = extractvalue { <2 x float>, i64 } %i.am, 0 ; 2 uses
  %i.ao = extractvalue { <2 x float>, i64 } %i.am, 1 ; 2 uses
  %.sroa.6116.sroa.0.0.extract.trunc = trunc i64 %i.ao to i32
  %i.ap = bitcast i32 %.sroa.6116.sroa.0.0.extract.trunc to float ; 2 uses
  %.sroa.6116.sroa.6.0.extract.shift = lshr i64 %i.ao, 32
  %.sroa.6116.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6116.sroa.6.0.extract.shift to i32
  %i.aq = fsub <2 x float> %.sroa.0143.0.copyload, %i.an ; 3 uses
  %i.ar = fsub float %.sroa.8.0.copyload, %i.ap   ; 3 uses
  %i.as = fmul <2 x float> %i.aq, %i.aq           ; 2 uses
  %shift243 = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop244 = fadd <2 x float> %i.as, %shift243
  %i.at = extractelement <2 x float> %foldExtExtBinop244, i64 0
  %i.au = fmul float %i.ar, %i.ar
  %i.av = fadd float %i.au, %i.at                 ; 3 uses
  %i.aw = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.ax = fmul float %i.aw, 5.000000e-03
  %i.ay = fmul float %i.ax, 4.000000e+00
  %i.az = fadd float %i.al, %i.ay                 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fcmp ogt float %i.av, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %sqrt = tail call float @llvm.sqrt.f32(float %i.av) ; 4 uses
  %i.bc = fmul float %sqrt, %sqrt
  %i.bd = fcmp ogt float %i.bc, f0x057A0000
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.aq, %i.bg
  %i.bi = fmul float %i.ar, %i.be
  br label %b3Normalize.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.u, label %bb.h, label %b3Normalize.exit

bb.h:                                             ; preds = %bb.g
  %sqrt222 = tail call float @llvm.sqrt.f32(float %i.t)
  %i.bj = fdiv float 1.000000e+00, %sqrt222       ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  %i.bo = fmul float %i.r, %i.bj
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.06.4.vec.insert.i.pn = phi <2 x float> [ %i.bh, %bb.f ], [ %i.bn, %bb.h ], [ zeroinitializer, %bb.g ] ; 2 uses
  %.pn220 = phi float [ %i.bi, %bb.f ], [ %i.bo, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.bp = fmul float %i.al, %.pn220
  %i.bq = fsub float %.sroa.8.0.copyload, %i.bp
  %i.br = fadd float %i.bq, %i.ap
  %i.bs = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bt, %.sroa.06.4.vec.insert.i.pn
  %i.bv = fsub <2 x float> %.sroa.0143.0.copyload, %i.bu
  %i.bw = fadd <2 x float> %i.an, %i.bv
  %i.bx = fmul <2 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = fmul float %i.br, 5.000000e-01
  store <2 x float> %.sroa.06.4.vec.insert.i.pn, ptr %0, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.pn220, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !15
  store i32 1, ptr %i.a, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.6116.sroa.6.0.extract.trunc, ptr %i.bz, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.av, ptr %i.ca, align 4, !tbaa !64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17 ; 4 uses
  store <2 x float> %i.bx, ptr %i.cc, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store float %i.by, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %i.cd = fsub float %sqrt, %i.al
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store float %i.cd, ptr %i.ce, align 4, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i32 0, ptr %i.cf, align 4, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %b3MakePlaneFromPoints.exit, %bb.d, %b3Normalize.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare { <2 x float>, i64 } @b3ClosestPointOnTriangle(<2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #2

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @b3CollideTriangleAndCapsule(ptr nofree noundef captures(none) initializes((32, 36)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.b3DistanceInput, align 8    ; 11 uses
  %6 = alloca %struct.b3DistanceOutput, align 8   ; 9 uses
  %7 = alloca [2 x %struct.b3ClipVertex], align 16 ; 13 uses
  %8 = alloca %struct.b3SeparatingAxis, align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !14
  %i.b = icmp slt i32 %1, 2
  br i1 %i.b, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0147.0.copyload = load <2 x float>, ptr %2, align 4, !tbaa !15 ; 4 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4148.0.copyload = load float, ptr %.sroa.4148.0..sroa_idx, align 4, !tbaa !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0145.0.copyload = load <2 x float>, ptr %i.c, align 4, !tbaa !15 ; 2 uses
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.4146.0.copyload = load float, ptr %.sroa.4146.0..sroa_idx, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0143.0.copyload = load <2 x float>, ptr %i.d, align 4, !tbaa !15 ; 2 uses
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.4144.0.copyload = load float, ptr %.sroa.4144.0..sroa_idx, align 4, !tbaa !15
  %i.e = shufflevector <2 x float> %.sroa.0143.0.copyload, <2 x float> %.sroa.0145.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.f = fsub <2 x float> %i.e, %.sroa.0147.0.copyload ; 3 uses
  %i.g = shufflevector <2 x float> %.sroa.0145.0.copyload, <2 x float> %.sroa.0143.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.h = fsub <2 x float> %i.g, %.sroa.0147.0.copyload ; 3 uses
  %i.i = insertelement <2 x float> poison, float %.sroa.4146.0.copyload, i64 0
  %i.j = insertelement <2 x float> %i.i, float %.sroa.4144.0.copyload, i64 1
  %i.k = insertelement <2 x float> poison, float %.sroa.4148.0.copyload, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fsub <2 x float> %i.j, %i.l              ; 2 uses
  %i.n = fmul <2 x float> %i.m, %i.f
  %i.o = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.p = fmul <2 x float> %i.h, %i.o
  %i.q = fsub <2 x float> %i.n, %i.p              ; 3 uses
  %shift = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.h, %shift
  %shift269 = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop270 = fmul <2 x float> %shift269, %i.f
  %foldExtExtBinop272 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop270 ; 3 uses
  %i.r = fmul <2 x float> %i.q, %i.q              ; 2 uses
  %shift274 = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop275 = fadd <2 x float> %shift274, %i.r
  %foldExtExtBinop277 = fmul <2 x float> %foldExtExtBinop272, %foldExtExtBinop272
  %foldExtExtBinop279 = fadd <2 x float> %foldExtExtBinop277, %foldExtExtBinop275
  %i.s = extractelement <2 x float> %foldExtExtBinop279, i64 0 ; 2 uses
  %i.t = fcmp ogt float %i.s, f0x057A0000
  br i1 %i.t, label %bb.c, label %b3MakePlaneFromPoints.exit

bb.c:                                             ; preds = %bb.b
  %i.u = extractelement <2 x float> %foldExtExtBinop272, i64 0
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.s)
  %i.v = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.y = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.x, %i.y
  %i.aa = fmul float %i.u, %i.v
  br label %b3MakePlaneFromPoints.exit

b3MakePlaneFromPoints.exit:                       ; preds = %bb.b, %bb.c
  %.sroa.018.0.i.i = phi <2 x float> [ %i.z, %bb.c ], [ zeroinitializer, %bb.b ] ; 27 uses
  %.sroa.5.0.i.i = phi float [ %i.aa, %bb.c ], [ 0.000000e+00, %bb.b ] ; 22 uses
  %.sroa.5.8.vec.insert57.i = insertelement <2 x float> poison, float %.sroa.5.0.i.i, i64 0
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.018.0.i.i, i64 0 ; 3 uses
  %foldExtExtBinop281 = fmul <2 x float> %.sroa.0147.0.copyload, %.sroa.018.0.i.i
  %foldExtExtBinop283 = fmul <2 x float> %.sroa.0147.0.copyload, %.sroa.018.0.i.i
  %shift285 = shufflevector <2 x float> %foldExtExtBinop283, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop286 = fadd <2 x float> %foldExtExtBinop281, %shift285
  %i.ab = extractelement <2 x float> %foldExtExtBinop286, i64 0
  %i.ac = fmul float %.sroa.4148.0.copyload, %.sroa.5.0.i.i
  %i.ad = fadd float %i.ac, %i.ab                 ; 6 uses
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.8.vec.insert57.i, float %i.ad, i64 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %.sroa.0113.0.copyload = load <2 x float>, ptr %3, align 4
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.2114.0.copyload = load float, ptr %.sroa.2114.0..sroa_idx, align 4
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.ae, align 4
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 4
  %i.af = fmul float %.sroa.2114.0.copyload, 5.000000e-01
  %i.ag = fmul float %.sroa.2112.0.copyload, 5.000000e-01
  %i.ah = fadd float %i.af, %i.ag
  %i.ai = fmul <2 x float> %.sroa.0113.0.copyload, splat (float 5.000000e-01)
  %i.aj = fmul <2 x float> %.sroa.0111.0.copyload, splat (float 5.000000e-01)
  %i.ak = fadd <2 x float> %i.ai, %i.aj
  %i.al = fmul <2 x float> %.sroa.018.0.i.i, %i.ak ; 2 uses
  %shift288 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop289 = fadd <2 x float> %i.al, %shift288
  %i.am = extractelement <2 x float> %foldExtExtBinop289, i64 0
  %i.an = fmul float %.sroa.5.0.i.i, %i.ah
  %i.ao = fadd float %i.an, %i.am
  %i.ap = fcmp olt float %i.ao, %i.ad
  br i1 %i.ap, label %bb.at, label %bb.d

bb.d:                                             ; preds = %b3MakePlaneFromPoints.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %2, ptr %5, align 8, !tbaa !23
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %.sroa.2101.0..sroa_idx, align 8, !tbaa !24
  %.sroa.3102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float 0.000000e+00, ptr %.sroa.3102.0..sroa_idx, align 4, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.aq, align 8, !tbaa !23
  %.sroa.299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 2, ptr %.sroa.299.0..sroa_idx, align 8, !tbaa !24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ar, ptr noundef nonnull align 4 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !25
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i8 0, ptr %i.as, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %6, ptr noundef nonnull %5, ptr noundef %4, ptr noundef null, i32 noundef 0) #9
  %i.at = call float @b3GetLengthUnitsPerMeter() #9
  %i.au = fmul float %i.at, 5.000000e-03
  %i.av = fmul float %i.au, 4.000000e+00
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !27 ; 12 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !29 ; 2 uses
  %i.ba = fadd float %i.ax, %i.av
  %i.bb = fcmp ogt float %i.az, %i.ba
  br i1 %i.bb, label %bb.as, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = fcmp ogt float %i.az, f0x37480000
  br i1 %i.bc, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.sroa.079.0.copyload = load <2 x float>, ptr %i.bd, align 4 ; 2 uses
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %.sroa.280.0.copyload = load float, ptr %.sroa.280.0..sroa_idx, align 4 ; 2 uses
  %.sroa.077.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.278.0.copyload = load float, ptr %.sroa.278.0..sroa_idx, align 8 ; 2 uses
  %i.be = fsub <2 x float> %.sroa.079.0.copyload, %.sroa.077.0.copyload ; 3 uses
  %i.bf = fsub float %.sroa.280.0.copyload, %.sroa.278.0.copyload ; 3 uses
  %i.bg = fmul <2 x float> %i.be, %i.be           ; 2 uses
  %shift291 = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop292 = fadd <2 x float> %i.bg, %shift291
  %i.bh = extractelement <2 x float> %foldExtExtBinop292, i64 0
  %i.bi = fmul float %i.bf, %i.bf
  %i.bj = fadd float %i.bi, %i.bh                 ; 2 uses
  %i.bk = fcmp ogt float %i.bj, f0x057A0000
  br i1 %i.bk, label %bb.g, label %b3Normalize.exit

bb.g:                                             ; preds = %bb.f
  %sqrt = call float @llvm.sqrt.f32(float %i.bj)
  %i.bl = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.be, %i.bn
  %i.bp = fmul float %i.bf, %i.bl
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.f, %bb.g
  %.sroa.018.0.i = phi <2 x float> [ %i.bo, %bb.g ], [ zeroinitializer, %bb.f ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.bp, %bb.g ], [ 0.000000e+00, %bb.f ] ; 3 uses
  %i.bq = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.018.0.i ; 2 uses
  %shift294 = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop295 = fadd <2 x float> %i.bq, %shift294
  %i.br = extractelement <2 x float> %foldExtExtBinop295, i64 0
  %i.bs = fmul float %.sroa.5.0.i.i, %.sroa.5.0.i
  %i.bt = fadd float %i.bs, %i.br
  %i.bu = call float @llvm.fabs.f32(float %i.bt)
  %i.bv = fcmp ogt float %i.bu, 2.000000e-01
  br i1 %i.bv, label %bb.h, label %bb.j

bb.h:                                             ; preds = %b3Normalize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !30
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float 0.000000e+00, ptr %i.bw, align 4, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.by = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  store i32 %i.by, ptr %i.bx, align 16, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false), !tbaa.struct !30
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float 0.000000e+00, ptr %i.ca, align 16, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.cc = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #9
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !21
  %i.cd = call fastcc zeroext i1 @b3ClipSegmentToTriangleFace(ptr noundef %7, ptr noundef nonnull %2, <2 x float> %.sroa.018.0.i.i, <2 x float> %.sroa.5.12.vec.insert.i)
  br i1 %i.cd, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %.sroa.056.0.copyload = load <2 x float>, ptr %7, align 16 ; 2 uses
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.257.0.copyload = load float, ptr %.sroa.257.0..sroa_idx, align 8 ; 2 uses
  %i.ce = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.056.0.copyload ; 2 uses
  %shift297 = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop298 = fadd <2 x float> %i.ce, %shift297
  %i.cf = extractelement <2 x float> %foldExtExtBinop298, i64 0
  %i.cg = fmul float %.sroa.5.0.i.i, %.sroa.257.0.copyload
  %i.ch = fadd float %i.cg, %i.cf
  %i.ci = fsub float %i.ch, %i.ad                 ; 2 uses
  %.sroa.052.0.copyload = load <2 x float>, ptr %i.bz, align 4 ; 2 uses
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.253.0.copyload = load float, ptr %.sroa.253.0..sroa_idx, align 4 ; 2 uses
  %i.cj = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.052.0.copyload ; 2 uses
  %shift300 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop301 = fadd <2 x float> %i.cj, %shift300
  %i.ck = extractelement <2 x float> %foldExtExtBinop301, i64 0
  %i.cl = fmul float %.sroa.5.0.i.i, %.sroa.253.0.copyload
  %i.cm = fadd float %i.cl, %i.ck
  %i.cn = fsub float %i.cm, %i.ad                 ; 2 uses
  %i.co = fadd float %i.ax, %i.ci
  %i.cp = fmul float %i.co, 5.000000e-01          ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %.sroa.018.0.i.i, %i.cr
  %i.ct = fsub <2 x float> %.sroa.056.0.copyload, %i.cs
  %i.cu = fmul float %.sroa.5.0.i.i, %i.cp
  %i.cv = fsub float %.sroa.257.0.copyload, %i.cu
  %i.cw = fadd float %i.ax, %i.cn
  %i.cx = fmul float %i.cw, 5.000000e-01          ; 2 uses
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %.sroa.018.0.i.i, %i.cz
  %i.db = fsub <2 x float> %.sroa.052.0.copyload, %i.da
  %i.dc = fmul float %.sroa.5.0.i.i, %i.cx
  %i.dd = fsub float %.sroa.253.0.copyload, %i.dc
  store <2 x float> %.sroa.018.0.i.i, ptr %0, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i.i, ptr %.sroa.6.0..sroa_idx50, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.de, align 8, !tbaa !16
  store i32 2, ptr %i.a, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !17 ; 4 uses
  store <2 x float> %i.ct, ptr %i.dg, align 4, !tbaa !15
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store float %i.cv, ptr %.sroa.446.0..sroa_idx, align 4, !tbaa !15
  %i.dh = fsub float %i.ci, %i.ax
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store float %i.dh, ptr %i.di, align 4, !tbaa !20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dk = load i32, ptr %i.bx, align 16, !tbaa !21
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !21
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !17 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store <2 x float> %i.db, ptr %i.dm, align 4, !tbaa !15
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store float %i.dd, ptr %.sroa.436.0..sroa_idx, align 4, !tbaa !15
  %i.dn = fsub float %i.cn, %i.ax
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  store float %i.dn, ptr %i.do, align 4, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dq = load i32, ptr %i.cb, align 4, !tbaa !21
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.as

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %.sroa.016.0.copyload.pre = load <2 x float>, ptr %i.bd, align 4
  %.sroa.217.0.copyload.pre = load float, ptr %.sroa.280.0..sroa_idx, align 4
  %.sroa.08.0.copyload.pre = load <2 x float>, ptr %6, align 8
  %.sroa.29.0.copyload.pre = load float, ptr %.sroa.278.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %b3Normalize.exit
  %.sroa.29.0.copyload = phi float [ %.sroa.29.0.copyload.pre, %.critedge ], [ %.sroa.278.0.copyload, %b3Normalize.exit ]
  %.sroa.217.0.copyload = phi float [ %.sroa.217.0.copyload.pre, %.critedge ], [ %.sroa.280.0.copyload, %b3Normalize.exit ]
  %i.dr = phi <2 x float> [ %.sroa.016.0.copyload.pre, %.critedge ], [ %.sroa.079.0.copyload, %b3Normalize.exit ]
  %i.ds = phi <2 x float> [ %.sroa.08.0.copyload.pre, %.critedge ], [ %.sroa.077.0.copyload, %b3Normalize.exit ]
  %i.dt = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.du, %.sroa.018.0.i
  %i.dw = fmul float %i.ax, %.sroa.5.0.i
  %i.dx = fsub float %.sroa.217.0.copyload, %i.dw
  %i.dy = fmul <2 x float> %i.ds, splat (float 5.000000e-01)
  %i.dz = fsub <2 x float> %i.dr, %i.dv
  %i.ea = fmul <2 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fadd <2 x float> %i.ea, %i.dy
  %i.ec = fmul float %.sroa.29.0.copyload, 5.000000e-01
  %i.ed = fmul float %i.dx, 5.000000e-01
  %i.ee = fadd float %i.ed, %i.ec
  store <2 x float> %.sroa.018.0.i, ptr %0, align 8, !tbaa !15
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.685.0..sroa_idx, align 8, !tbaa !15
  store i32 1, ptr %i.a, align 8, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.eg = load i16, ptr %i.ef, align 4, !tbaa !35 ; 3 uses
  %.not.i = icmp eq i16 %i.eg, 0
  br i1 %.not.i, label %b3GetTriangleFeature.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 5 uses
  %wide.trip.count.i = zext i16 %i.eg to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ei = icmp ult i16 %i.eg, 4
  br i1 %i.ei, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 65532
  br label %bb.l

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.loopexit.i.unr-lcssa ]
  %.078.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.fl, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod333 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod333)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.k ] ; 2 uses
  %.078.i.epil = phi i32 [ %.078.i.epil.init, %.epil.preheader ], [ %i.en, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.i.epil
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !21
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw i32 1, %i.el
  %i.en = or i32 %i.em, %.078.i.epil              ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.k, !llvm.loop !65

._crit_edge.loopexit.i:                           ; preds = %bb.k, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.fl, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.en, %bb.k ]
  %i.eo = sext i32 %.lcssa to i64
  br label %b3GetTriangleFeature.exit

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.l ] ; 5 uses
  %.078.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.fl, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.l ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.i
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !21
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = shl nuw i32 1, %i.er
  %i.et = or i32 %i.es, %.078.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !21
  %i.ex = zext nneg i8 %i.ew to i32
  %i.ey = shl nuw i32 1, %i.ex
  %i.ez = or i32 %i.ey, %i.et
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !21
  %i.fd = zext nneg i8 %i.fc to i32
  %i.fe = shl nuw i32 1, %i.fd
  %i.ff = or i32 %i.fe, %i.ez
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !21
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = shl nuw i32 1, %i.fj
  %i.fl = or i32 %i.fk, %i.ff                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.l, !llvm.loop !0

b3GetTriangleFeature.exit:                        ; preds = %bb.j, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi i64 [ 0, %bb.j ], [ %i.eo, %._crit_edge.loopexit.i ]
  %i.fm = getelementptr inbounds [4 x i8], ptr @s_triangleFeatures, i64 %.07.lcssa.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !24
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !17 ; 4 uses
  store <2 x float> %i.eb, ptr %i.fq, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store float %i.ee, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %i.fr = load float, ptr %i.ay, align 4, !tbaa !29
  %i.fs = fsub float %i.fr, %i.ax
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store float %i.fs, ptr %i.ft, align 4, !tbaa !20
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i32 0, ptr %i.fu, align 4, !tbaa !21
  br label %bb.as

bb.m:                                             ; preds = %bb.e
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %3, align 4, !noalias !76 ; 5 uses
  %.sroa.23.0.copyload.i = load float, ptr %.sroa.2114.0..sroa_idx, align 4, !noalias !76 ; 5 uses
  %i.fv = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.02.0.copyload.i ; 2 uses
  %shift303 = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop304 = fadd <2 x float> %i.fv, %shift303
  %i.fw = extractelement <2 x float> %foldExtExtBinop304, i64 0
  %i.fx = fmul float %.sroa.5.0.i.i, %.sroa.23.0.copyload.i
  %i.fy = fadd float %i.fx, %i.fw
  %i.fz = fsub float %i.fy, %i.ad                 ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ae, align 4, !noalias !76 ; 2 uses
  %.sroa.2.0.copyload.i = load float, ptr %.sroa.2112.0..sroa_idx, align 4, !noalias !76 ; 2 uses
  %i.ga = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.0.0.copyload.i ; 2 uses
  %shift306 = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop307 = fadd <2 x float> %i.ga, %shift306
  %i.gb = extractelement <2 x float> %foldExtExtBinop307, i64 0
  %i.gc = fmul float %.sroa.5.0.i.i, %.sroa.2.0.copyload.i
  %i.gd = fadd float %i.gc, %i.gb
  %i.ge = fsub float %i.gd, %i.ad                 ; 2 uses
  %.inv = fcmp olt float %i.fz, %i.ge
  %.sink22.i = select i1 %.inv, float %i.fz, float %i.ge ; 2 uses
  %i.gf = fcmp ogt float %.sink22.i, %i.ax
  br i1 %i.gf, label %bb.as, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.gg = fsub <2 x float> %.sroa.0.0.copyload.i, %.sroa.02.0.copyload.i ; 9 uses
  %i.gh = fsub float %.sroa.2.0.copyload.i, %.sroa.23.0.copyload.i ; 6 uses
  %foldExtExtBinop309 = fmul <2 x float> %.sroa.018.0.i.i, %i.gg
  %foldExtExtBinop311 = fmul <2 x float> %.sroa.018.0.i.i, %i.gg
  %shift313 = shufflevector <2 x float> %foldExtExtBinop311, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop314 = fadd <2 x float> %foldExtExtBinop309, %shift313
  %i.gi = extractelement <2 x float> %foldExtExtBinop314, i64 0
  %i.gj = fmul float %.sroa.5.0.i.i, %i.gh
  %i.gk = fadd float %i.gj, %i.gi                 ; 11 uses
  %.sroa.0105.0.copyload.i = load <2 x float>, ptr %i.d, align 4, !tbaa !15, !noalias !77 ; 2 uses
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.4144.0..sroa_idx, align 4, !tbaa !15, !noalias !77 ; 2 uses
  %i.gl = fmul float %i.gk, %i.gk                 ; 3 uses
  %foldExtExtBinop316 = fmul <2 x float> %i.gg, %i.gg
  %foldExtExtBinop318 = fmul <2 x float> %i.gg, %i.gg
  %shift320 = shufflevector <2 x float> %foldExtExtBinop318, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop321 = fadd <2 x float> %foldExtExtBinop316, %shift320
  %i.gm = extractelement <2 x float> %foldExtExtBinop321, i64 0
  %i.gn = fmul float %i.gh, %i.gh
  %i.go = fadd float %i.gn, %i.gm
  %i.gp = fmul float %i.go, 2.500000e-05          ; 3 uses
  %i.gq = shufflevector <2 x float> %.sroa.018.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gr = insertelement <2 x float> %i.gq, float %.sroa.5.0.i.i, i64 1 ; 3 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %2, align 4, !tbaa !15, !noalias !77 ; 3 uses
  %.sroa.696.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.696.0.copyload.i = load float, ptr %.sroa.696.0..sroa_idx.i, align 4, !tbaa !15, !noalias !77 ; 3 uses
  %9 = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0105.0.copyload.i ; 3 uses
  %10 = fsub float %.sroa.696.0.copyload.i, %.sroa.7.0.copyload.i ; 2 uses
  %11 = fmul float %.sroa.04.0.vec.extract.i.i, %10
  %12 = extractelement <2 x float> %9, i64 0
  %13 = fmul float %.sroa.5.0.i.i, %12
  %14 = fsub float %11, %13                       ; 3 uses
  %i.gs = fmul <2 x float> %i.gr, %9
  %15 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x float> %15, float %10, i64 1
  %17 = fmul <2 x float> %.sroa.018.0.i.i, %16
  %i.gt = fsub <2 x float> %i.gs, %17             ; 4 uses
  %18 = fmul float %14, %14
  %19 = fmul <2 x float> %i.gt, %i.gt             ; 2 uses
  %20 = extractelement <2 x float> %19, i64 1
  %21 = fadd float %20, %18
  %22 = extractelement <2 x float> %19, i64 0
  %23 = fadd float %22, %21                       ; 2 uses
  %i.gu = fcmp ogt float %23, f0x057A0000
  br i1 %i.gu, label %bb.o, label %b3Normalize.exit174.i

bb.o:                                             ; preds = %bb.n
  %sqrt.i250 = call float @llvm.sqrt.f32(float %23)
  %24 = fdiv float 1.000000e+00, %sqrt.i250       ; 3 uses
  %i.gv = extractelement <2 x float> %i.gt, i64 1
  %25 = fmul float %i.gv, %24
  %.sroa.018.0.vec.insert.i172.i = insertelement <2 x float> poison, float %25, i64 0
  %26 = fmul float %14, %24
  %.sroa.018.4.vec.insert.i173.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i172.i, float %26, i64 1
  %27 = extractelement <2 x float> %i.gt, i64 0
  %i.gw = fmul float %27, %24
  br label %b3Normalize.exit174.i

b3Normalize.exit174.i:                            ; preds = %bb.o, %bb.n
  %.sroa.018.0.i168.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i173.i, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %.sroa.5.0.i169.i = phi float [ %i.gw, %bb.o ], [ 0.000000e+00, %bb.n ] ; 3 uses
  %i.gx = fmul <2 x float> %i.gg, %.sroa.018.0.i168.i ; 2 uses
  %shift323.a = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop324 = fadd <2 x float> %i.gx, %shift323.a
  %i.gy = extractelement <2 x float> %foldExtExtBinop324, i64 0
  %i.gz = fmul float %i.gh, %.sroa.5.0.i169.i
  %i.ha = fadd float %i.gz, %i.gy                 ; 7 uses
  %i.hb = fmul float %i.ha, %i.ha
  %i.hc = fadd float %i.gl, %i.hb
  %i.hd = fcmp olt float %i.hc, %i.gp
  br i1 %i.hd, label %bb.v, label %bb.p

bb.p:                                             ; preds = %b3Normalize.exit174.i
  %i.he = fmul float %i.gk, %i.ha
  %i.hf = fcmp ugt float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hg = fsub float %i.ha, %i.gk
  %i.hh = fdiv float %i.ha, %i.hg                 ; 3 uses
  %i.hi = fsub float 1.000000e+00, %i.hh          ; 2 uses
  %i.hj = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fmul <2 x float> %.sroa.018.0.i168.i, %i.hk
  %i.hm = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x float> %.sroa.018.0.i.i, %i.hn
  %i.hp = fadd <2 x float> %i.ho, %i.hl
  %i.hq = fmul float %.sroa.5.0.i169.i, %i.hi
  %i.hr = fmul float %.sroa.5.0.i.i, %i.hh
  %i.hs = fadd float %i.hr, %i.hq
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ht = fadd float %i.gk, %i.ha
  %i.hu = fdiv float %i.ha, %i.ht                 ; 3 uses
  %i.hv = fsub float 1.000000e+00, %i.hu          ; 2 uses
  %i.hw = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = fmul <2 x float> %.sroa.018.0.i168.i, %i.hx
  %i.hz = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x float> %.sroa.018.0.i.i, %i.ia
  %i.ic = fsub <2 x float> %i.hy, %i.ib
  %i.id = fmul float %.sroa.5.0.i169.i, %i.hv
  %i.ie = fmul float %.sroa.5.0.i.i, %i.hu
  %i.if = fsub float %i.id, %i.ie
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.013.4.vec.insert.i.pn.i = phi <2 x float> [ %i.hp, %bb.q ], [ %i.ic, %bb.r ] ; 3 uses
  %.pn225.i = phi float [ %i.hs, %bb.q ], [ %i.if, %bb.r ] ; 3 uses
  %i.ig = fmul <2 x float> %.sroa.013.4.vec.insert.i.pn.i, %.sroa.013.4.vec.insert.i.pn.i ; 2 uses
  %shift326.a = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop327.a = fadd <2 x float> %i.ig, %shift326.a
  %i.ih = extractelement <2 x float> %foldExtExtBinop327.a, i64 0
  %i.ii = fmul float %.pn225.i, %.pn225.i
  %i.ij = fadd float %i.ii, %i.ih                 ; 2 uses
  %i.ik = fcmp ogt float %i.ij, f0x057A0000
  br i1 %i.ik, label %bb.t, label %b3Normalize.exit.i

bb.t:                                             ; preds = %bb.s
  %sqrt227.i = call float @llvm.sqrt.f32(float %i.ij)
  %i.il = fdiv float 1.000000e+00, %sqrt227.i     ; 2 uses
  %i.im = insertelement <2 x float> poison, float %i.il, i64 0
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x float> %.sroa.013.4.vec.insert.i.pn.i, %i.in
  %i.ip = fmul float %.pn225.i, %i.il
  br label %b3Normalize.exit.i

b3Normalize.exit.i:                               ; preds = %bb.t, %bb.s
  %.sroa.018.0.i.i244 = phi <2 x float> [ %i.io, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %.sroa.5.0.i.i245 = phi float [ %i.ip, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.iq = fsub <2 x float> %.sroa.02.0.copyload.i, %.sroa.0105.0.copyload.i
  %i.ir = fsub float %.sroa.23.0.copyload.i, %.sroa.7.0.copyload.i
  %i.is = fmul <2 x float> %i.iq, %.sroa.018.0.i.i244 ; 2 uses
  %shift329 = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop330 = fadd <2 x float> %i.is, %shift329
  %i.it = extractelement <2 x float> %foldExtExtBinop330, i64 0
  %i.iu = fmul float %i.ir, %.sroa.5.0.i.i245
  %i.iv = fadd float %i.iu, %i.it                 ; 2 uses
  %i.iw = fcmp ogt float %i.iv, f0xFF7FFFFF
  br i1 %i.iw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %b3Normalize.exit.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %b3Normalize.exit.i, %b3Normalize.exit174.i
  %.2160.i = phi i32 [ -1, %b3Normalize.exit174.i ], [ 0, %bb.u ], [ -1, %b3Normalize.exit.i ] ; 2 uses
  %.2157.i = phi i32 [ -1, %b3Normalize.exit174.i ], [ 2, %bb.u ], [ -1, %b3Normalize.exit.i ] ; 2 uses
  %.2.i = phi float [ f0xFF7FFFFF, %b3Normalize.exit174.i ], [ %i.iv, %bb.u ], [ f0xFF7FFFFF, %b3Normalize.exit.i ] ; 3 uses
  %.sroa.0122.2.i = phi <2 x float> [ zeroinitializer, %b3Normalize.exit174.i ], [ %.sroa.018.0.i.i244, %bb.u ], [ zeroinitializer, %b3Normalize.exit.i ] ; 2 uses
  %.sroa.5.2.i = phi float [ 0.000000e+00, %b3Normalize.exit174.i ], [ %.sroa.5.0.i.i245, %bb.u ], [ 0.000000e+00, %b3Normalize.exit.i ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.093.0.copyload.i.1 = load <2 x float>, ptr %i.ix, align 4, !tbaa !15, !noalias !77 ; 3 uses
  %.sroa.696.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.696.0.copyload.i.1 = load float, ptr %.sroa.696.0..sroa_idx.i.1, align 4, !tbaa !15, !noalias !77 ; 3 uses
  %28 = fsub <2 x float> %.sroa.093.0.copyload.i.1, %.sroa.093.0.copyload.i ; 3 uses
  %29 = fsub float %.sroa.696.0.copyload.i.1, %.sroa.696.0.copyload.i ; 2 uses
  %30 = fmul float %.sroa.04.0.vec.extract.i.i, %29
  %31 = extractelement <2 x float> %28, i64 0
  %32 = fmul float %.sroa.5.0.i.i, %31
  %33 = fsub float %30, %32                       ; 3 uses
  %i.iy = fmul <2 x float> %i.gr, %28
  %34 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %35 = insertelement <2 x float> %34, float %29, i64 1
  %36 = fmul <2 x float> %.sroa.018.0.i.i, %35
  %i.iz = fsub <2 x float> %i.iy, %36             ; 4 uses
  %37 = fmul float %33, %33
  %38 = fmul <2 x float> %i.iz, %i.iz             ; 2 uses
  %39 = extractelement <2 x float> %38, i64 1
  %40 = fadd float %39, %37
  %41 = extractelement <2 x float> %38, i64 0
  %42 = fadd float %41, %40                       ; 2 uses
  %i.ja = fcmp ogt float %42, f0x057A0000
  br i1 %i.ja, label %bb.w, label %b3Normalize.exit174.i.1

bb.w:                                             ; preds = %bb.v
  %sqrt.i250.1 = call float @llvm.sqrt.f32(float %42)
  %43 = fdiv float 1.000000e+00, %sqrt.i250.1     ; 3 uses
  %i.jb = extractelement <2 x float> %i.iz, i64 1
  %44 = fmul float %i.jb, %43
  %.sroa.018.0.vec.insert.i172.i.1 = insertelement <2 x float> poison, float %44, i64 0
  %45 = fmul float %33, %43
  %.sroa.018.4.vec.insert.i173.i.1 = insertelement <2 x float> %.sroa.018.0.vec.insert.i172.i.1, float %45, i64 1
  %46 = extractelement <2 x float> %i.iz, i64 0
  %i.jc = fmul float %46, %43
  br label %b3Normalize.exit174.i.1

b3Normalize.exit174.i.1:                          ; preds = %bb.w, %bb.v
  %.sroa.018.0.i168.i.1 = phi <2 x float> [ %.sroa.018.4.vec.insert.i173.i.1, %bb.w ], [ zeroinitializer, %bb.v ] ; 3 uses
  %.sroa.5.0.i169.i.1 = phi float [ %i.jc, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.jd = fmul <2 x float> %i.gg, %.sroa.018.0.i168.i.1 ; 2 uses
  %shift323.1.a = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop324.1 = fadd <2 x float> %i.jd, %shift323.1.a
  %i.je = extractelement <2 x float> %foldExtExtBinop324.1, i64 0
  %i.jf = fmul float %i.gh, %.sroa.5.0.i169.i.1
  %i.jg = fadd float %i.jf, %i.je                 ; 7 uses
  %i.jh = fmul float %i.jg, %i.jg
  %i.ji = fadd float %i.gl, %i.jh
  %i.jj = fcmp olt float %i.ji, %i.gp
  br i1 %i.jj, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %b3Normalize.exit174.i.1
  %i.jk = fmul float %i.gk, %i.jg
  %i.jl = fcmp ugt float %i.jk, 0.000000e+00
  br i1 %i.jl, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jm = fsub float %i.jg, %i.gk
  %i.jn = fdiv float %i.jg, %i.jm                 ; 3 uses
  %i.jo = fsub float 1.000000e+00, %i.jn          ; 2 uses
  %i.jp = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.jq = shufflevector <2 x float> %i.jp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jr = fmul <2 x float> %.sroa.018.0.i168.i.1, %i.jq
  %i.js = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = fmul <2 x float> %.sroa.018.0.i.i, %i.jt
  %i.jv = fadd <2 x float> %i.ju, %i.jr
  %i.jw = fmul float %.sroa.5.0.i169.i.1, %i.jo
  %i.jx = fmul float %.sroa.5.0.i.i, %i.jn
  %i.jy = fadd float %i.jx, %i.jw
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.jz = fadd float %i.gk, %i.jg
  %i.ka = fdiv float %i.jg, %i.jz                 ; 3 uses
  %i.kb = fsub float 1.000000e+00, %i.ka          ; 2 uses
  %i.kc = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = fmul <2 x float> %.sroa.018.0.i168.i.1, %i.kd
  %i.kf = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x float> %.sroa.018.0.i.i, %i.kg
  %i.ki = fsub <2 x float> %i.ke, %i.kh
  %i.kj = fmul float %.sroa.5.0.i169.i.1, %i.kb
  %i.kk = fmul float %.sroa.5.0.i.i, %i.ka
  %i.kl = fsub float %i.kj, %i.kk
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.013.4.vec.insert.i.pn.i.1 = phi <2 x float> [ %i.jv, %bb.y ], [ %i.ki, %bb.z ] ; 3 uses
  %.pn225.i.1 = phi float [ %i.jy, %bb.y ], [ %i.kl, %bb.z ] ; 3 uses
  %i.km = fmul <2 x float> %.sroa.013.4.vec.insert.i.pn.i.1, %.sroa.013.4.vec.insert.i.pn.i.1 ; 2 uses
  %shift326.1.a = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop327.1.a = fadd <2 x float> %i.km, %shift326.1.a
  %i.kn = extractelement <2 x float> %foldExtExtBinop327.1.a, i64 0
  %i.ko = fmul float %.pn225.i.1, %.pn225.i.1
  %i.kp = fadd float %i.ko, %i.kn                 ; 2 uses
  %i.kq = fcmp ogt float %i.kp, f0x057A0000
  br i1 %i.kq, label %bb.ab, label %b3Normalize.exit.i.1

bb.ab:                                            ; preds = %bb.aa
  %sqrt227.i.1 = call float @llvm.sqrt.f32(float %i.kp)
  %i.kr = fdiv float 1.000000e+00, %sqrt227.i.1   ; 2 uses
  %i.ks = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x float> %.sroa.013.4.vec.insert.i.pn.i.1, %i.kt
  %i.kv = fmul float %.pn225.i.1, %i.kr
  br label %b3Normalize.exit.i.1

b3Normalize.exit.i.1:                             ; preds = %bb.ab, %bb.aa
  %.sroa.018.0.i.i244.1 = phi <2 x float> [ %i.ku, %bb.ab ], [ zeroinitializer, %bb.aa ] ; 2 uses
  %.sroa.5.0.i.i245.1 = phi float [ %i.kv, %bb.ab ], [ 0.000000e+00, %bb.aa ] ; 2 uses
  %i.kw = fsub <2 x float> %.sroa.02.0.copyload.i, %.sroa.093.0.copyload.i
  %i.kx = fsub float %.sroa.23.0.copyload.i, %.sroa.696.0.copyload.i
  %i.ky = fmul <2 x float> %i.kw, %.sroa.018.0.i.i244.1 ; 2 uses
  %shift329.1 = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop330.1 = fadd <2 x float> %i.ky, %shift329.1
  %i.kz = extractelement <2 x float> %foldExtExtBinop330.1, i64 0
  %i.la = fmul float %i.kx, %.sroa.5.0.i.i245.1
  %i.lb = fadd float %i.la, %i.kz                 ; 2 uses
  %i.lc = fcmp ogt float %i.lb, %.2.i
  br i1 %i.lc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %b3Normalize.exit.i.1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %b3Normalize.exit.i.1, %b3Normalize.exit174.i.1
  %.2160.i.1 = phi i32 [ %.2160.i, %b3Normalize.exit174.i.1 ], [ 0, %bb.ac ], [ %.2160.i, %b3Normalize.exit.i.1 ] ; 2 uses
  %.2157.i.1 = phi i32 [ %.2157.i, %b3Normalize.exit174.i.1 ], [ 0, %bb.ac ], [ %.2157.i, %b3Normalize.exit.i.1 ] ; 2 uses
  %.2.i.1 = phi float [ %.2.i, %b3Normalize.exit174.i.1 ], [ %i.lb, %bb.ac ], [ %.2.i, %b3Normalize.exit.i.1 ] ; 3 uses
  %.sroa.0122.2.i.1 = phi <2 x float> [ %.sroa.0122.2.i, %b3Normalize.exit174.i.1 ], [ %.sroa.018.0.i.i244.1, %bb.ac ], [ %.sroa.0122.2.i, %b3Normalize.exit.i.1 ] ; 2 uses
  %.sroa.5.2.i.1 = phi float [ %.sroa.5.2.i, %b3Normalize.exit174.i.1 ], [ %.sroa.5.0.i.i245.1, %bb.ac ], [ %.sroa.5.2.i, %b3Normalize.exit.i.1 ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.093.0.copyload.i.2 = load <2 x float>, ptr %i.ld, align 4, !tbaa !15, !noalias !77
  %.sroa.696.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.696.0.copyload.i.2 = load float, ptr %.sroa.696.0..sroa_idx.i.2, align 4, !tbaa !15, !noalias !77
  %47 = fsub <2 x float> %.sroa.093.0.copyload.i.2, %.sroa.093.0.copyload.i.1 ; 3 uses
  %48 = fsub float %.sroa.696.0.copyload.i.2, %.sroa.696.0.copyload.i.1 ; 2 uses
  %49 = fmul float %.sroa.04.0.vec.extract.i.i, %48
  %50 = extractelement <2 x float> %47, i64 0
  %51 = fmul float %.sroa.5.0.i.i, %50
  %52 = fsub float %49, %51                       ; 3 uses
  %i.le = fmul <2 x float> %i.gr, %47
  %53 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %54 = insertelement <2 x float> %53, float %48, i64 1
  %55 = fmul <2 x float> %.sroa.018.0.i.i, %54
  %i.lf = fsub <2 x float> %i.le, %55             ; 4 uses
  %56 = fmul float %52, %52
  %57 = fmul <2 x float> %i.lf, %i.lf             ; 2 uses
  %58 = extractelement <2 x float> %57, i64 1
  %59 = fadd float %58, %56
  %60 = extractelement <2 x float> %57, i64 0
  %61 = fadd float %60, %59                       ; 2 uses
  %i.lg = fcmp ogt float %61, f0x057A0000
  br i1 %i.lg, label %bb.ae, label %b3Normalize.exit174.i.2

bb.ae:                                            ; preds = %bb.ad
  %sqrt.i250.2 = call float @llvm.sqrt.f32(float %61)
  %62 = fdiv float 1.000000e+00, %sqrt.i250.2     ; 3 uses
  %i.lh = extractelement <2 x float> %i.lf, i64 1
  %63 = fmul float %i.lh, %62
  %.sroa.018.0.vec.insert.i172.i.2 = insertelement <2 x float> poison, float %63, i64 0
  %64 = fmul float %52, %62
  %.sroa.018.4.vec.insert.i173.i.2 = insertelement <2 x float> %.sroa.018.0.vec.insert.i172.i.2, float %64, i64 1
  %65 = extractelement <2 x float> %i.lf, i64 0
  %i.li = fmul float %65, %62
  br label %b3Normalize.exit174.i.2

b3Normalize.exit174.i.2:                          ; preds = %bb.ae, %bb.ad
  %.sroa.018.0.i168.i.2 = phi <2 x float> [ %.sroa.018.4.vec.insert.i173.i.2, %bb.ae ], [ zeroinitializer, %bb.ad ] ; 3 uses
  %.sroa.5.0.i169.i.2 = phi float [ %i.li, %bb.ae ], [ 0.000000e+00, %bb.ad ] ; 3 uses
  %i.lj = fmul <2 x float> %i.gg, %.sroa.018.0.i168.i.2 ; 2 uses
  %shift323.2.a = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop324.2 = fadd <2 x float> %i.lj, %shift323.2.a
  %i.lk = extractelement <2 x float> %foldExtExtBinop324.2, i64 0
  %i.ll = fmul float %i.gh, %.sroa.5.0.i169.i.2
  %i.lm = fadd float %i.ll, %i.lk                 ; 7 uses
  %i.ln = fmul float %i.lm, %i.lm
  %i.lo = fadd float %i.gl, %i.ln
  %i.lp = fcmp olt float %i.lo, %i.gp
  br i1 %i.lp, label %b3QueryTriangleAndCapsuleEdges.exit, label %bb.af

bb.af:                                            ; preds = %b3Normalize.exit174.i.2
  %i.lq = fmul float %i.gk, %i.lm
  %i.lr = fcmp ugt float %i.lq, 0.000000e+00
  br i1 %i.lr, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ls = fsub float %i.lm, %i.gk
  %i.lt = fdiv float %i.lm, %i.ls                 ; 3 uses
  %i.lu = fsub float 1.000000e+00, %i.lt          ; 2 uses
  %i.lv = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = fmul <2 x float> %.sroa.018.0.i168.i.2, %i.lw
  %i.ly = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = fmul <2 x float> %.sroa.018.0.i.i, %i.lz
  %i.mb = fadd <2 x float> %i.ma, %i.lx
  %i.mc = fmul float %.sroa.5.0.i169.i.2, %i.lu
  %i.md = fmul float %.sroa.5.0.i.i, %i.lt
  %i.me = fadd float %i.md, %i.mc
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.mf = fadd float %i.gk, %i.lm
  %i.mg = fdiv float %i.lm, %i.mf                 ; 3 uses
  %i.mh = fsub float 1.000000e+00, %i.mg          ; 2 uses
  %i.mi = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mk = fmul <2 x float> %.sroa.018.0.i168.i.2, %i.mj
  %i.ml = insertelement <2 x float> poison, float %i.mg, i64 0
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = fmul <2 x float> %.sroa.018.0.i.i, %i.mm
  %i.mo = fsub <2 x float> %i.mk, %i.mn
  %i.mp = fmul float %.sroa.5.0.i169.i.2, %i.mh
  %i.mq = fmul float %.sroa.5.0.i.i, %i.mg
  %i.mr = fsub float %i.mp, %i.mq
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.013.4.vec.insert.i.pn.i.2 = phi <2 x float> [ %i.mb, %bb.ag ], [ %i.mo, %bb.ah ] ; 3 uses
  %.pn225.i.2 = phi float [ %i.me, %bb.ag ], [ %i.mr, %bb.ah ] ; 3 uses
  %i.ms = fmul <2 x float> %.sroa.013.4.vec.insert.i.pn.i.2, %.sroa.013.4.vec.insert.i.pn.i.2 ; 2 uses
  %shift326.2.a = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop327.2.a = fadd <2 x float> %i.ms, %shift326.2.a
  %i.mt = extractelement <2 x float> %foldExtExtBinop327.2.a, i64 0
  %i.mu = fmul float %.pn225.i.2, %.pn225.i.2
  %i.mv = fadd float %i.mu, %i.mt                 ; 2 uses
  %i.mw = fcmp ogt float %i.mv, f0x057A0000
  br i1 %i.mw, label %bb.aj, label %b3Normalize.exit.i.2

bb.aj:                                            ; preds = %bb.ai
  %sqrt227.i.2 = call float @llvm.sqrt.f32(float %i.mv)
  %i.mx = fdiv float 1.000000e+00, %sqrt227.i.2   ; 2 uses
  %i.my = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = fmul <2 x float> %.sroa.013.4.vec.insert.i.pn.i.2, %i.mz
  %i.nb = fmul float %.pn225.i.2, %i.mx
  br label %b3Normalize.exit.i.2

b3Normalize.exit.i.2:                             ; preds = %bb.aj, %bb.ai
  %.sroa.018.0.i.i244.2 = phi <2 x float> [ %i.na, %bb.aj ], [ zeroinitializer, %bb.ai ] ; 2 uses
  %.sroa.5.0.i.i245.2 = phi float [ %i.nb, %bb.aj ], [ 0.000000e+00, %bb.ai ] ; 2 uses
  %i.nc = fsub <2 x float> %.sroa.02.0.copyload.i, %.sroa.093.0.copyload.i.1
  %i.nd = fsub float %.sroa.23.0.copyload.i, %.sroa.696.0.copyload.i.1
  %i.ne = fmul <2 x float> %i.nc, %.sroa.018.0.i.i244.2 ; 2 uses
  %shift329.2 = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop330.2 = fadd <2 x float> %i.ne, %shift329.2
  %i.nf = extractelement <2 x float> %foldExtExtBinop330.2, i64 0
  %i.ng = fmul float %i.nd, %.sroa.5.0.i.i245.2
  %i.nh = fadd float %i.ng, %i.nf                 ; 2 uses
  %i.ni = fcmp ogt float %i.nh, %.2.i.1
  br i1 %i.ni, label %bb.ak, label %b3QueryTriangleAndCapsuleEdges.exit

bb.ak:                                            ; preds = %b3Normalize.exit.i.2
  br label %b3QueryTriangleAndCapsuleEdges.exit

b3QueryTriangleAndCapsuleEdges.exit:              ; preds = %bb.ak, %b3Normalize.exit.i.2, %b3Normalize.exit174.i.2
  %.2160.i.2 = phi i32 [ %.2160.i.1, %b3Normalize.exit174.i.2 ], [ 0, %bb.ak ], [ %.2160.i.1, %b3Normalize.exit.i.2 ]
  %.2157.i.2 = phi i32 [ %.2157.i.1, %b3Normalize.exit174.i.2 ], [ 1, %bb.ak ], [ %.2157.i.1, %b3Normalize.exit.i.2 ] ; 2 uses
  %.2.i.2 = phi float [ %.2.i.1, %b3Normalize.exit174.i.2 ], [ %i.nh, %bb.ak ], [ %.2.i.1, %b3Normalize.exit.i.2 ] ; 3 uses
  %.sroa.0122.2.i.2 = phi <2 x float> [ %.sroa.0122.2.i.1, %b3Normalize.exit174.i.2 ], [ %.sroa.018.0.i.i244.2, %bb.ak ], [ %.sroa.0122.2.i.1, %b3Normalize.exit.i.2 ]
  %.sroa.5.2.i.2 = phi float [ %.sroa.5.2.i.1, %b3Normalize.exit174.i.2 ], [ %.sroa.5.0.i.i245.2, %bb.ak ], [ %.sroa.5.2.i.1, %b3Normalize.exit.i.2 ]
  store <2 x float> %.sroa.0122.2.i.2, ptr %8, align 8, !tbaa !15, !alias.scope !77
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %.sroa.5.2.i.2, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !77
  %i.nj = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %.2.i.2, ptr %i.nj, align 4, !tbaa !39, !alias.scope !77
  %i.nk = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %.2157.i.2, ptr %i.nk, align 8, !tbaa !40, !alias.scope !77
  %i.nl = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %.2160.i.2, ptr %i.nl, align 4, !tbaa !41, !alias.scope !77
  %i.nm = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 0, ptr %i.nm, align 8, !tbaa !42, !alias.scope !77
  %i.nn = fcmp ogt float %.2.i.2, %i.ax
  br i1 %i.nn, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %b3QueryTriangleAndCapsuleEdges.exit
  %i.no = fsub float %.sink22.i, %i.ax
  call fastcc void @b3BuildTriangleAndCapsuleFaceContact(ptr noundef %0, ptr noundef nonnull %2, <2 x float> %.sroa.018.0.i.i, <2 x float> %.sroa.5.12.vec.insert.i, ptr noundef nonnull %3)
  %i.np = load i32, ptr %i.a, align 8, !tbaa !14
  %i.nq = icmp eq i32 %i.np, 2
  br i1 %i.nq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !17 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 12
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !20 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 36
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !20 ; 2 uses
  %i.nx = fcmp olt float %i.nu, %i.nw
  %i.ny = select i1 %i.nx, float %i.nu, float %i.nw
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0 = phi float [ %i.ny, %bb.am ], [ %i.no, %bb.al ]
  %i.nz = icmp eq i32 %.2157.i.2, -1
  br i1 %i.nz, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oa = call float @b3GetLengthUnitsPerMeter() #9
  %i.ob = load i32, ptr %i.a, align 8, !tbaa !14
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.od = fsub float %.2.i.2, %i.ax
  %i.oe = fmul float %i.oa, 5.000000e-03
  %i.of = fadd float %.0, %i.oe
  %i.og = fcmp ogt float %i.od, %i.of
  br i1 %i.og, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call fastcc void @b3BuildTriangleAndCapsuleEdgeContact(ptr noundef nonnull %0, ptr noundef nonnull %2, <2 x float> %.sroa.018.0.i.i, <2 x float> %.sroa.5.12.vec.insert.i, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %8)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq, %bb.ap, %b3QueryTriangleAndCapsuleEdges.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.m, %bb.i, %b3GetTriangleFeature.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %b3MakePlaneFromPoints.exit, %bb.a
  ret void
}

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @b3MakeFeaturePair(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext i1 @b3ClipSegmentToTriangleFace(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.083.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !15 ; 3 uses
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.685.0.copyload = load float, ptr %.sroa.685.0..sroa_idx, align 4, !tbaa !15 ; 2 uses
  %.sroa.295.8.vec.extract = extractelement <2 x float> %3, i64 0 ; 3 uses
  %.sroa.03.4.vec.extract.i106 = extractelement <2 x float> %2, i64 1 ; 6 uses
  %.sroa.03.0.vec.extract.i108 = extractelement <2 x float> %2, i64 0 ; 6 uses
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.073.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !15 ; 4 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.575.0.copyload = load float, ptr %.sroa.575.0..sroa_idx, align 4, !tbaa !15 ; 3 uses
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %.sroa.073.0.copyload, i64 0
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.083.0.copyload, i64 0
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %.sroa.073.0.copyload, i64 1
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.083.0.copyload, i64 1
  %i.c = fsub <2 x float> %.sroa.073.0.copyload, %.sroa.083.0.copyload ; 3 uses
  %i.d = fsub float %.sroa.575.0.copyload, %.sroa.685.0.copyload ; 3 uses
  %i.e = fmul <2 x float> %i.c, %i.c              ; 2 uses
  %shift = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.e, %shift
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.g = fmul float %i.d, %i.d
  %i.h = fadd float %i.g, %i.f                    ; 2 uses
  %i.i = fcmp ogt float %i.h, f0x057A0000
  br i1 %i.i, label %bb.n, label %b3Normalize.exit

bb.b:                                             ; preds = %bb.r
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.073.0.copyload.1 = load <2 x float>, ptr %i.j, align 4, !tbaa !15 ; 4 uses
end_hunk_0
