Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4pbrt6Vertex14ConvertDensityEfRKS0_:bb.a
  %.sroa.28.0.copyload.pre = load float, ptr %.sroa.28.0..sroa_idx.phi.trans.insert, align 8 ; 3 uses
  %i.am = fcmp une float %.sroa.28.0.copyload.pre, 0.000000e+00
  %or.cond = select i1 %or.cond.i.i, i1 true, i1 %i.am
  br i1 %or.cond, label %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit.thread, label %bb.d

_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit.thread:      ; preds = %bb.c
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.ag, align 8 ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.af) ; 3 uses
  %i.an = fmul float %i.m, %sqrt
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.07.0.copyload, i64 0
  %i.ao = fmul float %i.y, %sqrt
  %i.ap = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.x, %i.aq
  %i.as = fmul float %i.ao, %.sroa.28.0.copyload.pre ; 2 uses
  %i.at = fneg float %i.as
  %i.au = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %.sroa.28.0.copyload.pre, i64 1
  %i.aw = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.at, i64 1
  %i.ay = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.av, <2 x float> %i.ar, <2 x float> %i.ax) ; 2 uses
  %shift = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop73 = fadd <2 x float> %i.ay, %shift
  %i.az = extractelement <2 x float> %foldExtExtBinop73, i64 0
  %i.ba = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.an, float %i.az)
  %i.bb = tail call noundef float @llvm.fabs.f32(float %i.ba)
  %i.bc = fmul float %1, %i.bb
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit.thread
  %.043 = phi float [ %i.bc, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit.thread ], [ %1, %bb.c ]
  %i.bd = fmul float %i.af, %.043
  br label %_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit.thread

_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit.thread:  ; preds = %bb.b, %bb.d, %_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit.thread68, %_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit
  %.1 = phi float [ 0.000000e+00, %_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit.thread68 ], [ %1, %_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit ], [ %i.bd, %bb.d ], [ %1, %bb.b ]
  ret float %.1
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN4pbrt1GERKNS_10IntegratorENS_7SamplerERKNS_6VertexES6_RKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree readnone align 8 captures(none) dead_on_return %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(332) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(332) %3, ptr noundef nonnull align 4 dereferenceable(32) %4) local_unnamed_addr #11 {
bb.a:
  %.0.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.sroa.0.0.copyload.i.i = load float, ptr %.0.i.i, align 8
  %.sroa.0.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0.sroa.2.0.copyload.i.i = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i, align 4
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.a = fadd float %.sroa.0.sroa.0.0.copyload.i.i, %.sroa.0.sroa.2.0.copyload.i.i
  %i.b = fmul float %i.a, 5.000000e-01
  %.0.i.i48 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.0.sroa.0.0.copyload.i.i49 = load float, ptr %.0.i.i48, align 8
  %.sroa.0.sroa.2.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.0.sroa.2.0.copyload.i.i51 = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i50, align 4
  %.sroa.0.sroa.3.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.0.sroa.4.0..sroa_idx.i.i54 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.c = fadd float %.sroa.0.sroa.0.0.copyload.i.i49, %.sroa.0.sroa.2.0.copyload.i.i51
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fsub float %i.b, %i.d                    ; 3 uses
  %i.f = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 4
  %i.g = load <4 x float>, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.i = fadd <2 x float> %i.f, %i.h
  %i.j = fmul <2 x float> %i.i, splat (float 5.000000e-01)
  %i.k = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i54, align 4
  %i.l = load <4 x float>, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i52, align 8
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.n = fadd <2 x float> %i.k, %i.m
  %i.o = fmul <2 x float> %i.n, splat (float 5.000000e-01)
  %i.p = fsub <2 x float> %i.j, %i.o              ; 3 uses
  %i.q = fmul float %i.e, %i.e
  %i.r = fmul <2 x float> %i.p, %i.p              ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fadd float %i.q, %i.s
  %i.u = extractelement <2 x float> %i.r, i64 1
  %i.v = fadd float %i.t, %i.u
  %i.w = fdiv float 1.000000e+00, %i.v            ; 3 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.w) ; 2 uses
  %i.x = fmul float %i.e, %sqrt                   ; 2 uses
  %i.y = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.p, %i.z             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !266
  %i.ad = fcmp une float %i.ac, 0.000000e+00
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fcmp une float %i.af, 0.000000e+00
  %or.cond.i.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond.i.i, label %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit.thread, label %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit

_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit:             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !467
  %i.aj = fcmp une float %i.ai, 0.000000e+00
  br i1 %i.aj, label %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit.thread, label %bb.b

_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit.thread:      ; preds = %bb.a, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit
  %i.ak = load i32, ptr %2, align 8, !tbaa !491
  %i.al = icmp eq i32 %i.ak, 2
  %.0.v.i = select i1 %i.al, i64 152, i64 64
  %.0.i = getelementptr inbounds nuw i8, ptr %2, i64 %.0.v.i ; 2 uses
  %.sroa.013.0.copyload = load <2 x float>, ptr %.0.i, align 8 ; 2 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %.sroa.214.0.copyload = load float, ptr %.sroa.214.0..sroa_idx, align 8 ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.copyload, i64 1
  %i.am = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.an = fmul float %i.am, %.sroa.214.0.copyload ; 2 uses
  %i.ao = extractelement <2 x float> %i.aa, i64 0
  %i.ap = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.ao, float %i.an)
  %i.aq = fneg float %i.an
  %i.ar = tail call noundef float @llvm.fma.f32(float %.sroa.214.0.copyload, float %i.am, float %i.aq)
  %i.as = fadd float %i.ap, %i.ar
  %i.at = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.x, float %i.as)
  %i.au = tail call noundef float @llvm.fabs.f32(float %i.at)
  %i.av = fmul float %i.w, %i.au
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit.thread, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit
  %.0 = phi float [ %i.av, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit.thread ], [ %i.w, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !266
  %i.ay = fcmp une float %i.ax, 0.000000e+00
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fcmp une float %i.ba, 0.000000e+00
  %or.cond.i.i64 = select i1 %i.ay, i1 true, i1 %i.bb
  br i1 %or.cond.i.i64, label %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65.thread, label %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65

_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65:           ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !467
  %i.be = fcmp une float %i.bd, 0.000000e+00
  br i1 %i.be, label %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65.thread, label %bb.c

_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65.thread:    ; preds = %bb.b, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65
  %i.bf = load i32, ptr %3, align 8, !tbaa !491
  %i.bg = icmp eq i32 %i.bf, 2
  %.0.v.i66 = select i1 %i.bg, i64 152, i64 64
  %.0.i67 = getelementptr inbounds nuw i8, ptr %3, i64 %.0.v.i66 ; 2 uses
  %.sroa.05.0.copyload = load <2 x float>, ptr %.0.i67, align 8 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i67, i64 8
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 8 ; 2 uses
  %.sroa.04.0.vec.extract.i.i68 = extractelement <2 x float> %.sroa.05.0.copyload, i64 0
  %i.bh = extractelement <2 x float> %i.aa, i64 1
  %i.bi = fmul float %i.bh, %.sroa.26.0.copyload  ; 2 uses
  %i.bj = fneg float %i.bi
  %i.bk = shufflevector <2 x float> %.sroa.05.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bl = insertelement <2 x float> %i.bk, float %.sroa.26.0.copyload, i64 1
  %i.bm = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bj, i64 1
  %i.bo = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bl, <2 x float> %i.aa, <2 x float> %i.bn) ; 2 uses
  %shift = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bo, %shift
  %i.bp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bq = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i68, float %i.x, float %i.bp)
  %i.br = tail call noundef float @llvm.fabs.f32(float %i.bq)
  %i.bs = fmul float %.0, %i.br
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65.thread, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65
  %.1 = phi float [ %i.bs, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65.thread ], [ %.0, %_ZNK4pbrt6Vertex11IsOnSurfaceEv.exit65 ]
  %i.bt = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt10Integrator2TrERKNS_11InteractionES3_RKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i48, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.bu = extractvalue { <2 x float>, <2 x float> } %i.bt, 0
  %i.bv = extractvalue { <2 x float>, <2 x float> } %i.bt, 1
  %i.bw = insertelement <4 x float> poison, float %.1, i64 0
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = fmul <4 x float> %i.bx, %i.by           ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i74 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ca, 0
  %.fca.1.insert.i.i75 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i74, <2 x float> %i.cb, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i75
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN4pbrt9MISWeightERKNS_10IntegratorENS_6CameraEPNS_6VertexES5_RS4_iiNS_12LightSamplerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(332) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %7) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.8480 = alloca <{ i32, %"class.pbrt::SampledSpectrum", [4 x i8], %union.anon.214 }>, align 8 ; 9 uses
  %.sroa.49 = alloca [3 x i8], align 1            ; 7 uses
  %.sroa.7402 = alloca <{ i32, %"class.pbrt::SampledSpectrum", [4 x i8], %union.anon.214 }>, align 8 ; 6 uses
  %.sroa.23451 = alloca [3 x i8], align 1         ; 4 uses
  %.sroa.14388 = alloca [3 x i8], align 1         ; 2 uses
  %.sroa.7297 = alloca <{ i32, %"class.pbrt::SampledSpectrum", [4 x i8], %union.anon.214 }>, align 8 ; 6 uses
  %.sroa.23 = alloca [3 x i8], align 1            ; 4 uses
  %.sroa.14 = alloca [3 x i8], align 1            ; 2 uses
  %8 = alloca %"class.pbrt::LightSampler", align 8 ; 2 uses
  %i.a = add nsw i32 %6, %5
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %5, 0                       ; 4 uses
  %i.d = zext i32 %5 to i64                       ; 5 uses
  %i.e = getelementptr [336 x i8], ptr %2, i64 %i.d ; 10 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -336     ; 8 uses
  %i.g = select i1 %i.c, ptr %i.f, ptr null       ; 4 uses
  %i.h = icmp sgt i32 %6, 0
  %i.i = zext i32 %6 to i64                       ; 2 uses
  %i.j = getelementptr [336 x i8], ptr %3, i64 %i.i ; 10 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -336     ; 9 uses
  %i.l = select i1 %i.h, ptr %i.k, ptr null       ; 5 uses
  %i.m = icmp sgt i32 %5, 1
  %i.n = getelementptr i8, ptr %i.e, i64 -672     ; 2 uses
  %i.o = select i1 %i.m, ptr %i.n, ptr null       ; 3 uses
  %i.p = icmp sgt i32 %6, 1                       ; 2 uses
  %i.q = getelementptr i8, ptr %i.j, i64 -672     ; 4 uses
  %i.r = select i1 %i.p, ptr %i.q, ptr null       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8480)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49)
  %.sroa.8480.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8480, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8480.4..sroa_idx, i8 0, i64 16, i1 false), !tbaa !189
  %.sroa.8480.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8480, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8480.24..sroa_idx, i8 0, i64 88, i1 false)
  %i.s = icmp eq i32 %5, 1
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7402)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23451)
  %.sroa.3352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 272
  %.sroa.3352.0.copyload = load i64, ptr %.sroa.3352.0..sroa_idx, align 8
  %.sroa.4355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.t = load <8 x float>, ptr %.sroa.4355.0..sroa_idx, align 8
  %.sroa.12379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 312
  %.sroa.12379.0.copyload = load float, ptr %.sroa.12379.0..sroa_idx, align 8
  %.sroa.13382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 316
  %.sroa.13382.0.copyload = load i32, ptr %.sroa.13382.0..sroa_idx, align 4
  %.sroa.13385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 320
  %.sroa.13385.0.copyload = load i8, ptr %.sroa.13385.0..sroa_idx, align 8
  %.sroa.14388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14388, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14388.0..sroa_idx, i64 3, i1 false)
  %.sroa.14390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 324
  %i.u = load <2 x float>, ptr %.sroa.14390.0..sroa_idx, align 4
  %.sroa.16396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 332
  %.sroa.16396.0.copyload = load i32, ptr %.sroa.16396.0..sroa_idx, align 4
  %.sroa.7402.4..sroa_idx567 = getelementptr inbounds nuw i8, ptr %.sroa.7402, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7402.4..sroa_idx567, i8 0, i64 16, i1 false), !tbaa !189
  %.sroa.7402.24..sroa_idx568 = getelementptr inbounds nuw i8, ptr %.sroa.7402, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7402.24..sroa_idx568, i8 0, i64 88, i1 false)
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.7402, ptr noundef nonnull align 8 dereferenceable(272) %i.f, i64 272, i1 false)
  %.sroa.12403.8..sroa_idx = getelementptr i8, ptr %i.e, i64 -64 ; 2 uses
  %.sroa.12403.8.copyload = load i64, ptr %.sroa.12403.8..sroa_idx, align 8
  %.sroa.13407.8..sroa_idx = getelementptr i8, ptr %i.e, i64 -56 ; 2 uses
  %i.v = load <8 x float>, ptr %.sroa.13407.8..sroa_idx, align 8
  %.sroa.21439.8..sroa_idx = getelementptr i8, ptr %i.e, i64 -24 ; 2 uses
  %.sroa.21439.8.copyload = load float, ptr %.sroa.21439.8..sroa_idx, align 8
  %.sroa.22443.8..sroa_idx = getelementptr i8, ptr %i.e, i64 -20 ; 2 uses
  %.sroa.22443.8.copyload = load i32, ptr %.sroa.22443.8..sroa_idx, align 4
  %.sroa.22447.8..sroa_idx = getelementptr i8, ptr %i.e, i64 -16 ; 2 uses
  %.sroa.22447.8.copyload = load i8, ptr %.sroa.22447.8..sroa_idx, align 8
  %.sroa.23451.8..sroa_idx = getelementptr i8, ptr %i.e, i64 -15 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.23451, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.23451.8..sroa_idx, i64 3, i1 false)
  %.sroa.23453.8..sroa_idx = getelementptr i8, ptr %i.e, i64 -12 ; 2 uses
  %i.w = load <2 x float>, ptr %.sroa.23453.8..sroa_idx, align 4
  %.sroa.25461.8..sroa_idx = getelementptr i8, ptr %i.e, i64 -4 ; 2 uses
  %.sroa.25461.8.copyload = load i32, ptr %.sroa.25461.8..sroa_idx, align 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.f, ptr noundef nonnull align 8 dereferenceable(272) %4, i64 272, i1 false)
  store i64 %.sroa.3352.0.copyload, ptr %.sroa.12403.8..sroa_idx, align 8
  store <8 x float> %i.t, ptr %.sroa.13407.8..sroa_idx, align 8
  store float %.sroa.12379.0.copyload, ptr %.sroa.21439.8..sroa_idx, align 8
  store i32 %.sroa.13382.0.copyload, ptr %.sroa.22443.8..sroa_idx, align 4
  store i8 %.sroa.13385.0.copyload, ptr %.sroa.22447.8..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.23451.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14388, i64 3, i1 false)
  store <2 x float> %i.u, ptr %.sroa.23453.8..sroa_idx, align 4
  store i32 %.sroa.16396.0.copyload, ptr %.sroa.25461.8..sroa_idx, align 4
  br label %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit

_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit: ; preds = %bb.c, %bb.d
  %.sroa.25461.0 = phi i32 [ undef, %bb.c ], [ %.sroa.25461.8.copyload, %bb.d ]
  %.sroa.22447.0 = phi i8 [ 0, %bb.c ], [ %.sroa.22447.8.copyload, %bb.d ]
  %.sroa.22443.0 = phi i32 [ undef, %bb.c ], [ %.sroa.22443.8.copyload, %bb.d ]
  %.sroa.21439.0 = phi float [ 1.000000e+00, %bb.c ], [ %.sroa.21439.8.copyload, %bb.d ]
  %.sroa.12403.0 = phi i64 [ 0, %bb.c ], [ %.sroa.12403.8.copyload, %bb.d ]
  %i.x = phi <8 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.c ], [ %i.v, %bb.d ]
  %i.y = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.w, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8480, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.7402, i64 272, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.49, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.23451, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7402)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23451)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %6, 1
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7297)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 272
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.aa = load <8 x float>, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 312
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 316
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.13283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 320
  %.sroa.13283.0.copyload = load i8, ptr %.sroa.13283.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.0..sroa_idx, i64 3, i1 false)
  %.sroa.14287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 324
  %i.ab = load <2 x float>, ptr %.sroa.14287.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 332
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.7297.4..sroa_idx565 = getelementptr inbounds nuw i8, ptr %.sroa.7297, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7297.4..sroa_idx565, i8 0, i64 16, i1 false), !tbaa !189
  %.sroa.7297.24..sroa_idx566 = getelementptr inbounds nuw i8, ptr %.sroa.7297, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7297.24..sroa_idx566, i8 0, i64 88, i1 false)
  %.not.i146 = icmp eq ptr %i.k, null
  br i1 %.not.i146, label %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.7297, ptr noundef nonnull align 8 dereferenceable(272) %i.k, i64 272, i1 false)
  %.sroa.12298.8..sroa_idx = getelementptr i8, ptr %i.j, i64 -64 ; 2 uses
  %.sroa.12298.8.copyload = load i64, ptr %.sroa.12298.8..sroa_idx, align 8
  %.sroa.13302.8..sroa_idx = getelementptr i8, ptr %i.j, i64 -56 ; 2 uses
  %i.ac = load <8 x float>, ptr %.sroa.13302.8..sroa_idx, align 8
  %.sroa.21.8..sroa_idx = getelementptr i8, ptr %i.j, i64 -24 ; 2 uses
  %.sroa.21.8.copyload = load float, ptr %.sroa.21.8..sroa_idx, align 8
  %.sroa.22.8..sroa_idx = getelementptr i8, ptr %i.j, i64 -20 ; 2 uses
  %.sroa.22.8.copyload = load i32, ptr %.sroa.22.8..sroa_idx, align 4
  %.sroa.22336.8..sroa_idx = getelementptr i8, ptr %i.j, i64 -16 ; 2 uses
  %.sroa.22336.8.copyload = load i8, ptr %.sroa.22336.8..sroa_idx, align 8
  %.sroa.23.8..sroa_idx = getelementptr i8, ptr %i.j, i64 -15 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.23, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.23.8..sroa_idx, i64 3, i1 false)
  %.sroa.23341.8..sroa_idx = getelementptr i8, ptr %i.j, i64 -12 ; 2 uses
  %i.ad = load <2 x float>, ptr %.sroa.23341.8..sroa_idx, align 4
  %.sroa.25.8..sroa_idx = getelementptr i8, ptr %i.j, i64 -4 ; 2 uses
  %.sroa.25.8.copyload = load i32, ptr %.sroa.25.8..sroa_idx, align 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.k, ptr noundef nonnull align 8 dereferenceable(272) %4, i64 272, i1 false)
  store i64 %.sroa.3.0.copyload, ptr %.sroa.12298.8..sroa_idx, align 8
  store <8 x float> %i.aa, ptr %.sroa.13302.8..sroa_idx, align 8
  store float %.sroa.12.0.copyload, ptr %.sroa.21.8..sroa_idx, align 8
  store i32 %.sroa.13.0.copyload, ptr %.sroa.22.8..sroa_idx, align 4
  store i8 %.sroa.13283.0.copyload, ptr %.sroa.22336.8..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.23.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14, i64 3, i1 false)
  store <2 x float> %i.ab, ptr %.sroa.23341.8..sroa_idx, align 4
  store i32 %.sroa.16.0.copyload, ptr %.sroa.25.8..sroa_idx, align 4
  br label %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149

_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149: ; preds = %bb.f, %bb.g
  %.sroa.25.0 = phi i32 [ undef, %bb.f ], [ %.sroa.25.8.copyload, %bb.g ]
  %.sroa.22336.0 = phi i8 [ 0, %bb.f ], [ %.sroa.22336.8.copyload, %bb.g ]
  %.sroa.22.0 = phi i32 [ undef, %bb.f ], [ %.sroa.22.8.copyload, %bb.g ]
  %.sroa.21.0 = phi float [ 1.000000e+00, %bb.f ], [ %.sroa.21.8.copyload, %bb.g ]
  %.sroa.12298.0 = phi i64 [ 0, %bb.f ], [ %.sroa.12298.8.copyload, %bb.g ]
  %i.ae = phi <8 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.f ], [ %i.ac, %bb.g ]
  %i.af = phi <2 x float> [ zeroinitializer, %bb.f ], [ %i.ad, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8480, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.7297, i64 272, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.49, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.23, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7297)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit
  %.sroa.0478.0 = phi ptr [ %i.g, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit ], [ %i.l, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149 ], [ null, %bb.e ] ; 20 uses
  %.sroa.14481.0 = phi i64 [ %.sroa.12403.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit ], [ %.sroa.12298.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149 ], [ 0, %bb.e ] ; 2 uses
  %.sroa.41.0 = phi float [ %.sroa.21439.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit ], [ %.sroa.21.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149 ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %.sroa.44.0 = phi i32 [ %.sroa.22443.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit ], [ %.sroa.22.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149 ], [ undef, %bb.e ] ; 2 uses
  %.sroa.46.0 = phi i8 [ %.sroa.22447.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit ], [ %.sroa.22336.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149 ], [ 0, %bb.e ] ; 2 uses
  %.sroa.57.0 = phi i32 [ %.sroa.25461.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit ], [ %.sroa.25.0, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149 ], [ undef, %bb.e ] ; 2 uses
  %i.ag = phi <8 x float> [ %i.x, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit ], [ %i.ae, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.e ] ; 2 uses
  %i.ah = phi <2 x float> [ %i.y, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit ], [ %i.af, %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit149 ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %i.l, null                  ; 2 uses
  br i1 %.not, label %bb.i, label %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit

_ZN4pbrt16ScopedAssignmentIbED2Ev.exit:           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 320 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !363, !range !136, !noundef !137
  store i8 0, ptr %i.ai, align 1, !tbaa !363
  br label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit, %bb.h
  %.sroa.7252.0 = phi i8 [ undef, %bb.h ], [ %i.aj, %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit ] ; 2 uses
  %.sroa.0250.0 = phi ptr [ null, %bb.h ], [ %i.ai, %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit ] ; 4 uses
  %.not128 = icmp eq ptr %i.g, null               ; 2 uses
  br i1 %.not128, label %bb.j, label %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit154

_ZN4pbrt16ScopedAssignmentIbED2Ev.exit154:        ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 320 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !363, !range !136, !noundef !137
  store i8 0, ptr %i.ak, align 1, !tbaa !363
  br label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit154, %bb.i
  %.sroa.7247.0 = phi i8 [ undef, %bb.i ], [ %i.al, %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit154 ] ; 2 uses
  %.sroa.0245.0 = phi ptr [ null, %bb.i ], [ %i.ak, %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit154 ] ; 4 uses
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 328 ; 3 uses
  br i1 %i.c, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = invoke noundef float @_ZNK4pbrt6Vertex3PDFERKNS_10IntegratorEPKS0_RS4_(ptr noundef nonnull align 8 dereferenceable(332) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.o, ptr noundef nonnull align 8 dereferenceable(332) %i.k)
          to label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit unwind label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187.thread

bb.m:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %7, align 8, !tbaa !433
  store i64 %i.ao, ptr %8, align 8, !tbaa !433
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = invoke noundef float @_ZN4pbrt6Vertex14PDFLightOriginERKSt6vectorINS_5LightESaIS2_EERKS0_NS_12LightSamplerE(ptr noundef nonnull align 8 dereferenceable(332) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(332) %i.q, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8)
          to label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit unwind label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187.thread

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit:           ; preds = %bb.l, %bb.m
  %i.ar = phi float [ %i.an, %bb.l ], [ %i.aq, %bb.m ]
  %i.as = load float, ptr %i.am, align 4, !tbaa !189
  store float %i.ar, ptr %i.am, align 4, !tbaa !189
  br label %bb.n

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187.thread: ; preds = %bb.l, %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit189

bb.n:                                             ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit, %bb.j
  %.sroa.7234.0 = phi float [ undef, %bb.j ], [ %i.as, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit ] ; 2 uses
  %.sroa.0232.0 = phi ptr [ null, %bb.j ], [ %i.am, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit ] ; 4 uses
  %.not129 = icmp eq ptr %i.r, null
  br i1 %.not129, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 328 ; 3 uses
  br i1 %i.c, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = invoke noundef float @_ZNK4pbrt6Vertex3PDFERKNS_10IntegratorEPKS0_RS4_(ptr noundef nonnull align 8 dereferenceable(332) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(332) %i.q)
          to label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit159 unwind label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185.thread

bb.q:                                             ; preds = %bb.o
  %i.aw = invoke noundef float @_ZNK4pbrt6Vertex8PDFLightERKNS_10IntegratorERKS0_(ptr noundef nonnull align 8 dereferenceable(332) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(332) %i.q)
          to label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit159 unwind label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185.thread

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit159:        ; preds = %bb.p, %bb.q
  %i.ax = phi float [ %i.av, %bb.p ], [ %i.aw, %bb.q ]
  %i.ay = load float, ptr %i.au, align 4, !tbaa !189
  store float %i.ax, ptr %i.au, align 4, !tbaa !189
  br label %bb.r

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185.thread: ; preds = %bb.p, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187

bb.r:                                             ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit159, %bb.n
  %.sroa.7224.0 = phi float [ undef, %bb.n ], [ %i.ay, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit159 ] ; 2 uses
  %.sroa.0222.0 = phi ptr [ null, %bb.n ], [ %i.au, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit159 ] ; 4 uses
  br i1 %.not128, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = invoke noundef float @_ZNK4pbrt6Vertex3PDFERKNS_10IntegratorEPKS0_RS4_(ptr noundef nonnull align 8 dereferenceable(332) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(332) %i.f)
          to label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit162 unwind label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit183.thread

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit162:        ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 328 ; 3 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !189
  store float %i.ba, ptr %i.bb, align 4, !tbaa !189
  br label %bb.t

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit183.thread: ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185

bb.t:                                             ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit162, %bb.r
  %.sroa.7214.0 = phi float [ undef, %bb.r ], [ %i.bc, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit162 ] ; 2 uses
  %.sroa.0212.0 = phi ptr [ null, %bb.r ], [ %i.bb, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit162 ] ; 4 uses
  %.not130 = icmp eq ptr %i.o, null
  br i1 %.not130, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = invoke noundef float @_ZNK4pbrt6Vertex3PDFERKNS_10IntegratorEPKS0_RS4_(ptr noundef nonnull align 8 dereferenceable(332) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(332) %i.n)
          to label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit165 unwind label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit183

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit165:        ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 328 ; 3 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !189
  store float %i.be, ptr %i.bf, align 4, !tbaa !189
  br label %bb.v

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit183:        ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i184 = icmp eq ptr %.sroa.0212.0, null
  br i1 %.not.i184, label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185, label %bb.ah

bb.v:                                             ; preds = %bb.t, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit165
  %.sroa.7204.0 = phi float [ undef, %bb.t ], [ %i.bg, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit165 ]
  %.sroa.0202.0 = phi ptr [ null, %bb.t ], [ %i.bf, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit165 ] ; 2 uses
  %i.bi = load i64, ptr %1, align 8, !tbaa !51, !noalias !1348
  %i.bj = and i64 %i.bi, 144115188075855871
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 832
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !103, !noalias !1349
  %i.bn = and i64 %i.bm, 144115188075855871
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %.sroa.0.0.copyload.i.i7.i.i.i = load i64, ptr %i.bo, align 8 ; 2 uses
  %.sroa.020.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i.i7.i.i.i to i32
  %i.bp = sitofp i32 %.sroa.020.0.extract.trunc to float
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i.i7.i.i.i, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.bq = sitofp i32 %.sroa.4.0.extract.trunc to float
  %i.br = fmul nnan float %i.bp, %i.bq
  %.sroa.2.0.copyload.i.i14.pn.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.2.0.copyload.i.i14.pn.i.i.i = load i64, ptr %.sroa.2.0.copyload.i.i14.pn.in.i.i.i, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i12.pn.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0.0.copyload.i.i12.pn.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i12.pn.in.i.i.i, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i.i12.pn.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i.i12.pn.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %.sroa.5.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i.i14.pn.i.i.i to i32
  %i.bs = sub nsw i32 %.sroa.5.8.extract.trunc, %.sroa.0.0.extract.trunc.i.i
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i.i14.pn.i.i.i, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %i.bt = sub nsw i32 %.sroa.5.12.extract.trunc, %.sroa.2.0.extract.trunc.i.i
  %i.bu = mul nsw i32 %i.bt, %i.bs
  %i.bv = sitofp i32 %i.bu to float
  %i.bw = fdiv float %i.br, %i.bv                 ; 2 uses
  br i1 %i.p, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.v
  %.0112.lcssa = phi float [ 0.000000e+00, %bb.v ], [ %.1113.a, %bb.x ] ; 5 uses
  br i1 %i.c, label %.lr.ph530, label %._crit_edge

.lr.ph530:                                        ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %indvars.iv.next534549 = add nsw i64 %i.d, -1   ; 6 uses
  %i.by = getelementptr inbounds nuw [336 x i8], ptr %2, i64 %indvars.iv.next534549
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 324
  %i.ca = load <2 x float>, ptr %i.bz, align 4, !tbaa !189 ; 2 uses
  %i.cb = fcmp une <2 x float> %i.ca, zeroinitializer
  %i.cc = select <2 x i1> %i.cb, <2 x float> %i.ca, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %shift = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv <2 x float> %shift, %i.cc
  %i.cd = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %.not133550 = icmp eq i32 %5, 1
  br i1 %.not133550, label %._crit_edge554, label %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader

_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader:  ; preds = %.lr.ph530
  %xtraiter = and i64 %indvars.iv.next534549, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit, label %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol

_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol:       ; preds = %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader
  %i.ce = getelementptr inbounds nuw [336 x i8], ptr %2, i64 %indvars.iv.next534549
  %i.cf = getelementptr [336 x i8], ptr %2, i64 %i.d
  %i.cg = getelementptr i8, ptr %i.cf, i64 -352
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !489, !range !136, !noundef !137
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 320
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !489, !range !136, !noundef !137
  %i.ck = or i8 %i.cj, %i.ch
  %or.cond.not.prol = icmp eq i8 %i.ck, 0
  %i.cl = fadd float %.0112.lcssa, %i.cd
  %spec.select144.prol = select i1 %or.cond.not.prol, float %i.cl, float %.0112.lcssa ; 2 uses
  %indvars.iv.next534.prol = add nsw i64 %i.d, -2 ; 3 uses
  %i.cm = getelementptr inbounds nuw [336 x i8], ptr %2, i64 %indvars.iv.next534.prol
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 324
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !189 ; 2 uses
  %i.cp = fcmp une <2 x float> %i.co, zeroinitializer
  %i.cq = select <2 x i1> %i.cp, <2 x float> %i.co, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %shift561.prol = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop562.prol = fdiv <2 x float> %shift561.prol, %i.cq
  %i.cr = extractelement <2 x float> %foldExtExtBinop562.prol, i64 0
  %i.cs = fmul float %i.cd, %i.cr                 ; 2 uses
  br label %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit

_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit: ; preds = %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader
  %spec.select144.lcssa.unr = phi float [ poison, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader ], [ %spec.select144.prol, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol ]
  %indvars.iv.next534.lcssa.unr = phi i64 [ poison, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader ], [ %indvars.iv.next534.prol, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol ]
  %.lcssa564.unr = phi float [ poison, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader ], [ %i.cs, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol ]
  %.unr = phi float [ %i.cd, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader ], [ %i.cs, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol ]
  %indvars.iv.next534553.unr = phi i64 [ %indvars.iv.next534549, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader ], [ %indvars.iv.next534.prol, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol ]
  %.2114526552.unr = phi float [ %.0112.lcssa, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader ], [ %spec.select144.prol, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol ]
  %indvars.iv533551.unr = phi i64 [ %i.d, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.preheader ], [ %indvars.iv.next534549, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol ]
  %i.ct = icmp eq i32 %5, 2
  br i1 %i.ct, label %._crit_edge554, label %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit

.lr.ph:                                           ; preds = %bb.v, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ %i.i, %bb.v ] ; 3 uses
  %.099522 = phi float [ %spec.select, %bb.x ], [ 1.000000e+00, %bb.v ]
  %.0112521 = phi float [ %.1113.a, %bb.x ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.cu = getelementptr inbounds nuw [336 x i8], ptr %3, i64 %indvars.iv.next ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 324
  %i.cw = load <2 x float>, ptr %i.cv, align 4, !tbaa !189 ; 2 uses
  %i.cx = fcmp une <2 x float> %i.cw, zeroinitializer
  %i.cy = select <2 x i1> %i.cx, <2 x float> %i.cw, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %shift558 = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop559 = fdiv <2 x float> %shift558, %i.cy
  %i.cz = extractelement <2 x float> %foldExtExtBinop559, i64 0
  %i.da = fmul float %.099522, %i.cz              ; 2 uses
  %i.db = icmp eq i64 %indvars.iv.next, 1
  %i.dc = fdiv float %i.da, %i.bw
  %spec.select = select i1 %i.db, float %i.dc, float %i.da ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 320
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !489, !range !136, !noundef !137
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.dg = getelementptr [336 x i8], ptr %3, i64 %indvars.iv
  %i.dh = getelementptr i8, ptr %i.dg, i64 -352
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !489, !range !136, !noundef !137
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = fadd float %.0112521, %spec.select
  %spec.select142.a = select i1 %i.dj, float %.0112521, float %i.dk
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph
  %.1113.a = phi float [ %.0112521, %.lr.ph ], [ %spec.select142.a, %bb.w ] ; 2 uses
  %9 = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %9, label %.lr.ph, label %.preheader, !llvm.loop !1346

._crit_edge:                                      ; preds = %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.thread, %.preheader
  %.2114.lcssa = phi float [ %.0112.lcssa, %.preheader ], [ %spec.select144546, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.thread ] ; 2 uses
  %i.dl = icmp eq i32 %6, 1
  %i.dm = fdiv float %.2114.lcssa, %i.bw
  %spec.select143 = select i1 %i.dl, float %i.dm, float %.2114.lcssa
  %i.dn = fadd float %spec.select143, 1.000000e+00
  %i.do = fdiv float 1.000000e+00, %i.dn
  %.not.i167 = icmp eq ptr %.sroa.0202.0, null
  br i1 %.not.i167, label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit168, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  store float %.sroa.7204.0, ptr %.sroa.0202.0, align 4, !tbaa !189
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit168

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit168:        ; preds = %._crit_edge, %bb.y
  %.not.i169 = icmp eq ptr %.sroa.0212.0, null
  br i1 %.not.i169, label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit170, label %bb.z

bb.z:                                             ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit168
  store float %.sroa.7214.0, ptr %.sroa.0212.0, align 4, !tbaa !189
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit170

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit170:        ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit168, %bb.z
  %.not.i171 = icmp eq ptr %.sroa.0222.0, null
  br i1 %.not.i171, label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit172, label %bb.aa

bb.aa:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit170
  store float %.sroa.7224.0, ptr %.sroa.0222.0, align 4, !tbaa !189
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit172

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit172:        ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit170, %bb.aa
  %.not.i173 = icmp eq ptr %.sroa.0232.0, null
  br i1 %.not.i173, label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit174, label %bb.ab

bb.ab:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit172
  store float %.sroa.7234.0, ptr %.sroa.0232.0, align 4, !tbaa !189
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit174

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit174:        ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit172, %bb.ab
  %.not.i175 = icmp eq ptr %.sroa.0245.0, null
  br i1 %.not.i175, label %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit176, label %bb.ac

bb.ac:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit174
  store i8 %.sroa.7247.0, ptr %.sroa.0245.0, align 1, !tbaa !363
  br label %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit176

_ZN4pbrt16ScopedAssignmentIbED2Ev.exit176:        ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit174, %bb.ac
  %.not.i177 = icmp eq ptr %.sroa.0250.0, null
  br i1 %.not.i177, label %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit178, label %bb.ad

bb.ad:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit176
  store i8 %.sroa.7252.0, ptr %.sroa.0250.0, align 1, !tbaa !363
  br label %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit178

_ZN4pbrt16ScopedAssignmentIbED2Ev.exit178:        ; preds = %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit176, %bb.ad
  %.not.i179 = icmp eq ptr %.sroa.0478.0, null
  br i1 %.not.i179, label %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit180, label %bb.ae

bb.ae:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.0478.0, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8480, i64 272, i1 false)
  %.sroa.14481.8..sroa.0478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0478.0, i64 272
  store i64 %.sroa.14481.0, ptr %.sroa.14481.8..sroa.0478.0..sroa_idx, align 8
  %.sroa.17483.8..sroa.0478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0478.0, i64 280
  store <8 x float> %i.ag, ptr %.sroa.17483.8..sroa.0478.0..sroa_idx, align 8
  %.sroa.41.8..sroa.0478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0478.0, i64 312
  store float %.sroa.41.0, ptr %.sroa.41.8..sroa.0478.0..sroa_idx, align 8
  %.sroa.44.8..sroa.0478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0478.0, i64 316
  store i32 %.sroa.44.0, ptr %.sroa.44.8..sroa.0478.0..sroa_idx, align 4
  %.sroa.46.8..sroa.0478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0478.0, i64 320
  store i8 %.sroa.46.0, ptr %.sroa.46.8..sroa.0478.0..sroa_idx, align 8
  %.sroa.49.8..sroa.0478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0478.0, i64 321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.49.8..sroa.0478.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.49, i64 3, i1 false)
  %.sroa.51.8..sroa.0478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0478.0, i64 324
  store <2 x float> %i.ah, ptr %.sroa.51.8..sroa.0478.0..sroa_idx, align 4
  %.sroa.57.8..sroa.0478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0478.0, i64 332
  store i32 %.sroa.57.0, ptr %.sroa.57.8..sroa.0478.0..sroa_idx, align 4
  br label %_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit180

_ZN4pbrt16ScopedAssignmentINS_6VertexEED2Ev.exit180: ; preds = %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit178, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8480)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49)
  br label %bb.an

._crit_edge554:                                   ; preds = %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit, %.lr.ph530
  %.2114526.lcssa = phi float [ %.0112.lcssa, %.lr.ph530 ], [ %spec.select144.lcssa.unr, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit ], [ %spec.select144.1, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit ] ; 2 uses
  %i.dp = phi i64 [ %indvars.iv.next534549, %.lr.ph530 ], [ %indvars.iv.next534.lcssa.unr, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit ], [ %indvars.iv.next534.1, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit ]
  %.lcssa = phi float [ %i.cd, %.lr.ph530 ], [ %.lcssa564.unr, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit ], [ %i.fg, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit ]
  %i.dq = load i32, ptr %2, align 8, !tbaa !491
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.af, label %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.thread

bb.af:                                            ; preds = %._crit_edge554
  %i.ds = load i64, ptr %i.bx, align 8, !tbaa !64
  %i.dt = and i64 %i.ds, 144115188075855871       ; 2 uses
  %.not.i181 = icmp eq i64 %i.dt, 0
  br i1 %.not.i181, label %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !425
  %i.dw = icmp ult i32 %i.dv, 2
  br label %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.thread

_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.thread:     ; preds = %bb.ag, %bb.af, %._crit_edge554
  %.ph = phi i1 [ %i.dw, %bb.ag ], [ false, %._crit_edge554 ], [ false, %bb.af ]
  %i.dx = getelementptr inbounds nuw [336 x i8], ptr %2, i64 %i.dp
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 320
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !489, !range !136, !noundef !137
  %i.ea = trunc nuw i8 %i.dz to i1
  %or.cond545 = select i1 %i.ea, i1 true, i1 %.ph
  %i.eb = fadd float %.2114526.lcssa, %.lcssa
  %spec.select144546 = select i1 %or.cond545, float %.2114526.lcssa, float %i.eb
  br label %._crit_edge

_ZNK4pbrt6Vertex12IsDeltaLightEv.exit:            ; preds = %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit
  %i.ec = phi float [ %i.fg, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit ], [ %.unr, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit ] ; 2 uses
  %indvars.iv.next534553 = phi i64 [ %indvars.iv.next534.1, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit ], [ %indvars.iv.next534553.unr, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit ] ; 4 uses
  %.2114526552 = phi float [ %spec.select144.1, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit ], [ %.2114526552.unr, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit ] ; 2 uses
  %indvars.iv533551 = phi i64 [ %indvars.iv.next534, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit ], [ %indvars.iv533551.unr, %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit.prol.loopexit ]
  %i.ed = getelementptr inbounds nuw [336 x i8], ptr %2, i64 %indvars.iv.next534553
  %i.ee = getelementptr [336 x i8], ptr %2, i64 %indvars.iv533551
  %i.ef = getelementptr i8, ptr %i.ee, i64 -352
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !489, !range !136, !noundef !137
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 320
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !489, !range !136, !noundef !137
  %i.ej = or i8 %i.ei, %i.eg
  %or.cond.not = icmp eq i8 %i.ej, 0
  %i.ek = fadd float %.2114526552, %i.ec
  %spec.select144 = select i1 %or.cond.not, float %i.ek, float %.2114526552 ; 2 uses
  %indvars.iv.next534 = add nsw i64 %indvars.iv.next534553, -1 ; 4 uses
  %i.el = getelementptr inbounds nuw [336 x i8], ptr %2, i64 %indvars.iv.next534
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 324
  %i.en = load <2 x float>, ptr %i.em, align 4, !tbaa !189 ; 2 uses
  %i.eo = fcmp une <2 x float> %i.en, zeroinitializer
  %i.ep = select <2 x i1> %i.eo, <2 x float> %i.en, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %shift561 = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop562 = fdiv <2 x float> %shift561, %i.ep
  %i.eq = extractelement <2 x float> %foldExtExtBinop562, i64 0
  %i.er = fmul float %i.ec, %i.eq                 ; 2 uses
  %i.es = getelementptr inbounds nuw [336 x i8], ptr %2, i64 %indvars.iv.next534
  %i.et = getelementptr [336 x i8], ptr %2, i64 %indvars.iv.next534553
  %i.eu = getelementptr i8, ptr %i.et, i64 -352
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !489, !range !136, !noundef !137
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 320
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !489, !range !136, !noundef !137
  %i.ey = or i8 %i.ex, %i.ev
  %or.cond.not.1 = icmp eq i8 %i.ey, 0
  %i.ez = fadd float %spec.select144, %i.er
  %spec.select144.1 = select i1 %or.cond.not.1, float %i.ez, float %spec.select144 ; 2 uses
  %indvars.iv.next534.1 = add nsw i64 %indvars.iv.next534553, -2 ; 3 uses
  %i.fa = getelementptr inbounds nuw [336 x i8], ptr %2, i64 %indvars.iv.next534.1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 324
  %i.fc = load <2 x float>, ptr %i.fb, align 4, !tbaa !189 ; 2 uses
  %i.fd = fcmp une <2 x float> %i.fc, zeroinitializer
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.fc, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %shift561.1 = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop562.1 = fdiv <2 x float> %shift561.1, %i.fe
  %i.ff = extractelement <2 x float> %foldExtExtBinop562.1, i64 0
  %i.fg = fmul float %i.er, %i.ff                 ; 2 uses
  %.not133.1 = icmp eq i64 %indvars.iv.next534, 1
  br i1 %.not133.1, label %._crit_edge554, label %_ZNK4pbrt6Vertex12IsDeltaLightEv.exit, !llvm.loop !1347

bb.ah:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit183
  store float %.sroa.7214.0, ptr %.sroa.0212.0, align 4, !tbaa !189
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185:        ; preds = %bb.ah, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit183, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit183.thread
  %.pn134.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.ah ], [ %i.bd, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit183.thread ], [ %i.bh, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit183 ] ; 2 uses
  %.not.i186 = icmp eq ptr %.sroa.0222.0, null
  br i1 %.not.i186, label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187, label %bb.ai

bb.ai:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185
  store float %.sroa.7224.0, ptr %.sroa.0222.0, align 4, !tbaa !189
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187:        ; preds = %bb.ai, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185.thread
  %.pn134.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn.pn.pn, %bb.ai ], [ %i.az, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185.thread ], [ %.pn134.pn.pn.pn.pn, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit185 ] ; 2 uses
  %.not.i188 = icmp eq ptr %.sroa.0232.0, null
  br i1 %.not.i188, label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit189, label %bb.aj

bb.aj:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187
  store float %.sroa.7234.0, ptr %.sroa.0232.0, align 4, !tbaa !189
  br label %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit189

_ZN4pbrt16ScopedAssignmentIfED2Ev.exit189:        ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187.thread, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187, %bb.aj
  %.pn134.pn.pn.pn.pn.pn519 = phi { ptr, i32 } [ %i.at, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187.thread ], [ %.pn134.pn.pn.pn.pn.pn, %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit187 ], [ %.pn134.pn.pn.pn.pn.pn, %bb.aj ]
  %.not.i190 = icmp eq ptr %.sroa.0245.0, null
  br i1 %.not.i190, label %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit191, label %bb.ak

bb.ak:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit189
  store i8 %.sroa.7247.0, ptr %.sroa.0245.0, align 1, !tbaa !363
  br label %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit191

_ZN4pbrt16ScopedAssignmentIbED2Ev.exit191:        ; preds = %_ZN4pbrt16ScopedAssignmentIfED2Ev.exit189, %bb.ak
  %.not.i192 = icmp eq ptr %.sroa.0250.0, null
  br i1 %.not.i192, label %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit193, label %bb.al

bb.al:                                            ; preds = %_ZN4pbrt16ScopedAssignmentIbED2Ev.exit191
  store i8 %.sroa.7252.0, ptr %.sroa.0250.0, align 1, !tbaa !363
end_hunk_0
