Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/surfscatter?download=true
inline.NumInlined: 8253
inline.NumDeleted: 1421
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_21CoatedDiffuseMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemIS2_EENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_INS_22ThinDielectricMaterialEEENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlS7_E_clES7_:bb.a
  %i.akc = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 %i.ajz, ptr %i.akc, align 8, !tbaa !177
  %i.akd = getelementptr inbounds nuw i8, ptr %29, i64 40
  store float f0x3F7FF972, ptr %i.akd, align 8, !tbaa !282
  %i.ake = getelementptr inbounds nuw i8, ptr %29, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ake, ptr noundef nonnull align 16 dereferenceable(32) %17, i64 32, i1 false), !tbaa.struct !204
  %i.akf = getelementptr inbounds nuw i8, ptr %29, i64 76
  store <2 x float> %i.aje, ptr %i.akf, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 84
  store <2 x float> %i.ajg, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !71
  %i.akg = getelementptr inbounds nuw i8, ptr %29, i64 92
  store <2 x float> %i.aix, ptr %i.akg, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 100
  store <2 x float> %i.aiy, ptr %.sroa.519.0..sroa_idx, align 4, !tbaa !71
  %i.akh = getelementptr inbounds nuw i8, ptr %29, i64 108
  store <2 x float> %i.ajb, ptr %i.akh, align 4
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 116
  store <2 x float> %i.ajc, ptr %.sroa.517.0..sroa_idx, align 4, !tbaa !71
  %i.aki = getelementptr inbounds nuw i8, ptr %29, i64 124
  %i.akj = load i32, ptr %i.vg, align 4, !tbaa !180
  store i32 %i.akj, ptr %i.aki, align 4, !tbaa !283
  %i.akk = call noundef i32 @_ZN4pbrt9WorkQueueINS_17ShadowRayWorkItemEE4PushES1_(ptr noundef nonnull align 8 dereferenceable(228) %i.akb, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(128) %29) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ai, %_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit749
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %.sink.split

.sink.split:                                      ; preds = %.thread1058, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt9NormalMapERKNS_5ImageERKNS_21NormalBumpEvalContextEPNS_7Vector3IfEES8_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 4 dereferenceable(136) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !155 ; 3 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load float, ptr %.in.i, align 4, !tbaa !155
  %i.d = fsub float 1.000000e+00, %i.c            ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !285
  %i.g = sitofp i32 %i.f to float
  %i.h = fmul float %i.b, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !286
  %i.k = sitofp i32 %i.j to float
  %i.l = fmul float %i.d, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = fadd float %i.h, -5.000000e-01           ; 2 uses
  %i.q = fadd float %i.l, -5.000000e-01           ; 2 uses
  %i.r = tail call noundef float @llvm.floor.f32(float %i.p)
  %i.s = fptosi float %i.r to i32                 ; 3 uses
  %i.t = tail call noundef float @llvm.floor.f32(float %i.q)
  %i.u = fptosi float %i.t to i32                 ; 3 uses
  %.sroa.239.0.insert.ext.i = zext i32 %i.u to i64
  %.sroa.239.0.insert.shift.i = shl nuw i64 %.sroa.239.0.insert.ext.i, 32 ; 2 uses
  %.sroa.038.0.insert.ext.i = zext i32 %i.s to i64 ; 2 uses
  %.sroa.038.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.v = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.038.0.insert.insert.i, i32 noundef 0, i64 8589934594)
  %i.w = add nsw i32 %i.s, 1
  %.sroa.036.0.insert.ext.i = zext i32 %i.w to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.x = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.036.0.insert.insert.i, i32 noundef 0, i64 8589934594)
  %i.y = add nsw i32 %i.u, 1
  %.sroa.235.0.insert.ext.i = zext i32 %i.y to i64
  %.sroa.235.0.insert.shift.i = shl nuw i64 %.sroa.235.0.insert.ext.i, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.z = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.034.0.insert.insert.i, i32 noundef 0, i64 8589934594)
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.aa = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 8589934594)
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !285
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fmul float %i.b, %i.ac
  %i.ae = fadd float %i.ad, -5.000000e-01         ; 2 uses
  %i.af = load i32, ptr %i.i, align 8, !tbaa !286
  %i.ag = sitofp i32 %i.af to float
  %i.ah = fmul float %i.d, %i.ag
  %i.ai = fadd float %i.ah, -5.000000e-01         ; 2 uses
  %i.aj = tail call noundef float @llvm.floor.f32(float %i.ae)
  %i.ak = fptosi float %i.aj to i32               ; 3 uses
  %i.al = tail call noundef float @llvm.floor.f32(float %i.ai)
  %i.am = fptosi float %i.al to i32               ; 3 uses
  %.sroa.239.0.insert.ext.i116 = zext i32 %i.am to i64
  %.sroa.239.0.insert.shift.i117 = shl nuw i64 %.sroa.239.0.insert.ext.i116, 32 ; 2 uses
  %.sroa.038.0.insert.ext.i118 = zext i32 %i.ak to i64 ; 2 uses
  %.sroa.038.0.insert.insert.i119 = or disjoint i64 %.sroa.239.0.insert.shift.i117, %.sroa.038.0.insert.ext.i118
  %i.an = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.038.0.insert.insert.i119, i32 noundef 1, i64 8589934594)
  %i.ao = add nsw i32 %i.ak, 1
  %.sroa.036.0.insert.ext.i120 = zext i32 %i.ao to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i121 = or disjoint i64 %.sroa.239.0.insert.shift.i117, %.sroa.036.0.insert.ext.i120
  %i.ap = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.036.0.insert.insert.i121, i32 noundef 1, i64 8589934594)
  %i.aq = add nsw i32 %i.am, 1
  %.sroa.235.0.insert.ext.i122 = zext i32 %i.aq to i64
  %.sroa.235.0.insert.shift.i123 = shl nuw i64 %.sroa.235.0.insert.ext.i122, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i124 = or disjoint i64 %.sroa.235.0.insert.shift.i123, %.sroa.038.0.insert.ext.i118
  %i.ar = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.034.0.insert.insert.i124, i32 noundef 1, i64 8589934594)
  %.sroa.0.0.insert.insert.i125 = or disjoint i64 %.sroa.235.0.insert.shift.i123, %.sroa.036.0.insert.ext.i120
  %i.as = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.0.0.insert.insert.i125, i32 noundef 1, i64 8589934594)
  %i.at = load <2 x i32>, ptr %i.e, align 4, !tbaa !166
  %i.au = sitofp <2 x i32> %i.at to <2 x float>
  %i.av = insertelement <2 x float> poison, float %i.b, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.d, i64 1
  %i.ax = fmul <2 x float> %i.aw, %i.au
  %i.ay = fadd <2 x float> %i.ax, splat (float -5.000000e-01) ; 3 uses
  %i.az = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ay) ; 2 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0
  %i.bb = fptosi float %i.ba to i32               ; 3 uses
  %i.bc = extractelement <2 x float> %i.az, i64 1
  %i.bd = fptosi float %i.bc to i32               ; 3 uses
  %.sroa.239.0.insert.ext.i128 = zext i32 %i.bd to i64
  %.sroa.239.0.insert.shift.i129 = shl nuw i64 %.sroa.239.0.insert.ext.i128, 32 ; 2 uses
  %.sroa.038.0.insert.ext.i130 = zext i32 %i.bb to i64 ; 2 uses
  %.sroa.038.0.insert.insert.i131 = or disjoint i64 %.sroa.239.0.insert.shift.i129, %.sroa.038.0.insert.ext.i130
  %i.be = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.038.0.insert.insert.i131, i32 noundef 2, i64 8589934594)
  %i.bf = add nsw i32 %i.bb, 1
  %.sroa.036.0.insert.ext.i132 = zext i32 %i.bf to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i133 = or disjoint i64 %.sroa.239.0.insert.shift.i129, %.sroa.036.0.insert.ext.i132
  %i.bg = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.036.0.insert.insert.i133, i32 noundef 2, i64 8589934594)
  %i.bh = add nsw i32 %i.bd, 1
  %.sroa.235.0.insert.ext.i134 = zext i32 %i.bh to i64
  %.sroa.235.0.insert.shift.i135 = shl nuw i64 %.sroa.235.0.insert.ext.i134, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i136 = or disjoint i64 %.sroa.235.0.insert.shift.i135, %.sroa.038.0.insert.ext.i130
  %i.bi = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.034.0.insert.insert.i136, i32 noundef 2, i64 8589934594)
  %.sroa.0.0.insert.insert.i137 = or disjoint i64 %.sroa.235.0.insert.shift.i135, %.sroa.036.0.insert.ext.i132
  %i.bj = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.0.0.insert.insert.i137, i32 noundef 2, i64 8589934594)
  %i.bk = insertelement <3 x i32> poison, i32 %i.bd, i64 0
  %i.bl = insertelement <3 x i32> %i.bk, i32 %i.u, i64 1
  %i.bm = insertelement <3 x i32> %i.bl, i32 %i.am, i64 2
  %i.bn = sitofp <3 x i32> %i.bm to <3 x float>
  %i.bo = shufflevector <2 x float> %i.ay, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.bp = insertelement <3 x float> %i.bo, float %i.q, i64 1
  %i.bq = insertelement <3 x float> %i.bp, float %i.ai, i64 2
  %i.br = fsub <3 x float> %i.bq, %i.bn           ; 3 uses
  %i.bs = insertelement <3 x i32> poison, i32 %i.bb, i64 0
  %i.bt = insertelement <3 x i32> %i.bs, i32 %i.s, i64 1
  %i.bu = insertelement <3 x i32> %i.bt, i32 %i.ak, i64 2
  %i.bv = sitofp <3 x i32> %i.bu to <3 x float>
  %i.bw = shufflevector <2 x float> %i.ay, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bx = insertelement <3 x float> %i.bw, float %i.p, i64 1
  %i.by = insertelement <3 x float> %i.bx, float %i.ae, i64 2
  %i.bz = fsub <3 x float> %i.by, %i.bv           ; 3 uses
  %i.ca = fsub <3 x float> splat (float 1.000000e+00), %i.bz ; 2 uses
  %i.cb = fsub <3 x float> splat (float 1.000000e+00), %i.br ; 2 uses
  %i.cc = fmul <3 x float> %i.ca, %i.cb
  %i.cd = insertelement <3 x float> poison, float %i.be, i64 0
  %i.ce = insertelement <3 x float> %i.cd, float %i.v, i64 1
  %i.cf = insertelement <3 x float> %i.ce, float %i.an, i64 2
  %i.cg = fmul <3 x float> %i.cf, %i.cc
  %i.ch = fmul <3 x float> %i.bz, %i.cb
  %i.ci = insertelement <3 x float> poison, float %i.bg, i64 0
  %i.cj = insertelement <3 x float> %i.ci, float %i.x, i64 1
  %i.ck = insertelement <3 x float> %i.cj, float %i.ap, i64 2
  %i.cl = fmul <3 x float> %i.ck, %i.ch
  %i.cm = fadd <3 x float> %i.cg, %i.cl
  %i.cn = fmul <3 x float> %i.ca, %i.br
  %i.co = insertelement <3 x float> poison, float %i.bi, i64 0
  %i.cp = insertelement <3 x float> %i.co, float %i.z, i64 1
  %i.cq = insertelement <3 x float> %i.cp, float %i.ar, i64 2
  %i.cr = fmul <3 x float> %i.cq, %i.cn
  %i.cs = fadd <3 x float> %i.cr, %i.cm
  %i.ct = fmul <3 x float> %i.bz, %i.br
  %i.cu = insertelement <3 x float> poison, float %i.bj, i64 0
  %i.cv = insertelement <3 x float> %i.cu, float %i.aa, i64 1
  %i.cw = insertelement <3 x float> %i.cv, float %i.as, i64 2
  %i.cx = fmul <3 x float> %i.cw, %i.ct
  %i.cy = fadd <3 x float> %i.cx, %i.cs
  %i.cz = fmul <3 x float> %i.cy, splat (float 2.000000e+00)
  %i.da = fadd <3 x float> %i.cz, splat (float -1.000000e+00) ; 4 uses
  %foldExtExtBinop = fmul <3 x float> %i.da, %i.da
  %i.db = extractelement <3 x float> %foldExtExtBinop, i64 2
  %i.dc = shufflevector <3 x float> %i.da, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.dd = fmul <2 x float> %i.dc, %i.dc           ; 2 uses
  %i.de = extractelement <2 x float> %i.dd, i64 1
  %i.df = fadd float %i.de, %i.db
  %i.dg = extractelement <2 x float> %i.dd, i64 0
  %i.dh = fadd float %i.df, %i.dg
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.dh)
  %i.di = insertelement <3 x float> poison, float %sqrt.i.i, i64 0
  %i.dj = shufflevector <3 x float> %i.di, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dk = fdiv <3 x float> %i.da, %i.dj           ; 6 uses
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.n, align 4 ; 9 uses
  %.sroa.282.0.copyload = load float, ptr %.sroa.282.0..sroa_idx, align 4 ; 6 uses
  %foldExtExtBinop210 = fmul <2 x float> %.sroa.081.0.copyload, %.sroa.081.0.copyload
  %foldExtExtBinop224 = fmul <2 x float> %.sroa.081.0.copyload, %.sroa.081.0.copyload
  %shift226 = shufflevector <2 x float> %foldExtExtBinop224, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop227 = fadd <2 x float> %foldExtExtBinop210, %shift226
  %i.dl = extractelement <2 x float> %foldExtExtBinop227, i64 0
  %i.dm = fmul float %.sroa.282.0.copyload, %.sroa.282.0.copyload
  %i.dn = fadd float %i.dm, %i.dl
  %4 = shufflevector <2 x float> %.sroa.081.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %5 = insertelement <2 x float> %4, float %.sroa.282.0.copyload, i64 0
  %6 = insertelement <2 x float> %4, float %.sroa.282.0.copyload, i64 1
  %.sroa.073.0.copyload = load <2 x float>, ptr %i.m, align 4 ; 4 uses
  %.sroa.274.0.copyload = load float, ptr %.sroa.274.0..sroa_idx, align 4 ; 3 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.073.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.073.0.copyload, i64 1 ; 2 uses
  %7 = shufflevector <2 x float> %.sroa.073.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %8 = insertelement <2 x float> %7, float %.sroa.274.0.copyload, i64 0 ; 2 uses
  %i.do = insertelement <2 x float> %7, float %.sroa.274.0.copyload, i64 1
  %i.dp = fneg <2 x float> %8
  %i.dq = fneg float %.sroa.01.4.vec.extract.i
  %i.dr = shufflevector <3 x float> %i.dk, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = extractelement <3 x float> %i.dk, i64 1
  %i.dt = shufflevector <3 x float> %i.dk, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.du = extractelement <3 x float> %i.dk, i64 2
  %i.dv = shufflevector <3 x float> %i.dk, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %.sroa.073.0.copyload, %i.dv
  %i.dx = extractelement <3 x float> %i.dk, i64 0
  %i.dy = fmul float %.sroa.274.0.copyload, %i.dx
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 2 uses
  %.sroa.251.0.copyload = load float, ptr %.sroa.251.0..sroa_idx, align 4 ; 2 uses
  %i.dz = fmul <2 x float> %.sroa.050.0.copyload, %.sroa.050.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop212 = fadd <2 x float> %i.dz, %shift
  %i.ea = extractelement <2 x float> %foldExtExtBinop212, i64 0
  %i.eb = fmul float %.sroa.251.0.copyload, %.sroa.251.0.copyload
  %i.ec = fadd float %i.eb, %i.ea
  %sqrt.i149 = tail call noundef float @llvm.sqrt.f32(float %i.ec) ; 3 uses
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %sqrt.i.i140 = tail call noundef float @llvm.sqrt.f32(float %i.dn)
  %i.ed = insertelement <2 x float> poison, float %sqrt.i.i140, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ef = fdiv <2 x float> %.sroa.081.0.copyload, %i.ee ; 4 uses
  %9 = fdiv <2 x float> %5, %i.ee                 ; 3 uses
  %10 = fdiv <2 x float> %6, %i.ee
  %i.eg = fmul <2 x float> %8, %10                ; 2 uses
  %i.eh = fneg <2 x float> %i.eg
  %11 = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.do, <2 x float> %9, <2 x float> %i.eh)
  %12 = shufflevector <2 x float> %i.ef, <2 x float> %9, <2 x i32> <i32 1, i32 2>
  %i.ei = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dp, <2 x float> %12, <2 x float> %i.eg)
  %13 = fadd <2 x float> %11, %i.ei
  %14 = extractelement <2 x float> %i.ef, i64 0   ; 2 uses
  %15 = fmul float %.sroa.01.4.vec.extract.i, %14 ; 2 uses
  %16 = fneg float %15
  %17 = extractelement <2 x float> %i.ef, i64 1
  %i.ej = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i, float %17, float %16)
  %i.ek = tail call noundef float @llvm.fma.f32(float %i.dq, float %14, float %15)
  %i.el = fadd float %i.ej, %i.ek
  %i.em = fmul <2 x float> %i.ef, %i.dr
  %18 = extractelement <2 x float> %9, i64 0
  %i.en = fmul float %18, %i.ds
  %i.eo = fmul <2 x float> %13, %i.dt
  %i.ep = fmul float %i.el, %i.du
  %i.eq = fadd <2 x float> %i.em, %i.eo
  %i.er = fadd float %i.en, %i.ep
  %i.es = fadd <2 x float> %i.dw, %i.eq           ; 6 uses
  %i.et = fadd float %i.dy, %i.er                 ; 4 uses
  %i.eu = extractelement <2 x float> %i.es, i64 0 ; 2 uses
  %foldExtExtBinop214 = fmul <2 x float> %.sroa.081.0.copyload, %i.es
  %foldExtExtBinop216 = fmul <2 x float> %.sroa.081.0.copyload, %i.es
  %shift218 = shufflevector <2 x float> %foldExtExtBinop216, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop219 = fadd <2 x float> %foldExtExtBinop214, %shift218
  %i.ev = extractelement <2 x float> %foldExtExtBinop219, i64 0
  %i.ew = fmul float %.sroa.282.0.copyload, %i.et
  %i.ex = fadd float %i.ew, %i.ev                 ; 2 uses
  %i.ey = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.es, %i.ez
  %i.fb = fmul float %i.et, %i.ex
  %i.fc = fsub <2 x float> %.sroa.081.0.copyload, %i.fa ; 4 uses
  %i.fd = fsub float %.sroa.282.0.copyload, %i.fb ; 3 uses
  %i.fe = fmul <2 x float> %i.fc, %i.fc           ; 2 uses
  %shift221 = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop222 = fadd <2 x float> %i.fe, %shift221
  %i.ff = extractelement <2 x float> %foldExtExtBinop222, i64 0
  %i.fg = fmul float %i.fd, %i.fd
  %i.fh = fadd float %i.fg, %i.ff
  %sqrt.i.i158 = tail call noundef float @llvm.sqrt.f32(float %i.fh)
  %i.fi = insertelement <2 x float> poison, float %sqrt.i.i158, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fk = fdiv <2 x float> %i.fc, %i.fj
  %i.fl = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fm = insertelement <2 x float> %i.fl, float %i.fd, i64 1
  %i.fn = fdiv <2 x float> %i.fm, %i.fj
  %i.fo = fmul <2 x float> %i.ee, %i.fk           ; 4 uses
  %i.fp = fmul <2 x float> %i.ee, %i.fn           ; 3 uses
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> %i.fo, <2 x i32> <i32 2, i32 0>
  store <2 x float> %i.fq, ptr %2, align 4
  %i.fr = extractelement <2 x float> %i.fp, i64 1 ; 3 uses
  store float %i.fr, ptr %.sroa.447.0..sroa_idx, align 4
  %i.fs = fmul float %i.eu, %i.fr                 ; 2 uses
  %i.ft = fneg float %i.fs
  %i.fu = extractelement <2 x float> %i.fo, i64 0
  %i.fv = tail call noundef float @llvm.fma.f32(float %i.et, float %i.fu, float %i.ft)
  %i.fw = fneg float %i.eu
  %i.fx = tail call noundef float @llvm.fma.f32(float %i.fw, float %i.fr, float %i.fs)
  %i.fy = fadd float %i.fv, %i.fx                 ; 3 uses
  %i.fz = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ga = insertelement <2 x float> %i.fz, float %i.et, i64 1 ; 2 uses
  %i.gb = fmul <2 x float> %i.ga, %i.fo           ; 2 uses
  %i.gc = fneg <2 x float> %i.gb
  %i.gd = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.es, <2 x float> %i.fp, <2 x float> %i.gc)
  %i.ge = fneg <2 x float> %i.ga
  %i.gf = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ge, <2 x float> %i.fo, <2 x float> %i.gb)
  %i.gg = fadd <2 x float> %i.gd, %i.gf           ; 4 uses
  %i.gh = fmul float %i.fy, %i.fy
  %i.gi = fmul <2 x float> %i.gg, %i.gg           ; 2 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 1
  %i.gk = fadd float %i.gj, %i.gh
  %i.gl = extractelement <2 x float> %i.gi, i64 0
  %i.gm = fadd float %i.gl, %i.gk
  %sqrt.i.i169 = tail call noundef float @llvm.sqrt.f32(float %i.gm) ; 3 uses
  %i.gn = extractelement <2 x float> %i.gg, i64 1
  %i.go = fdiv float %i.gn, %sqrt.i.i169
  %i.gp = fdiv float %i.fy, %sqrt.i.i169
  %i.gq = extractelement <2 x float> %i.gg, i64 0
  %i.gr = fdiv float %i.gq, %sqrt.i.i169
  %i.gs = fmul float %sqrt.i149, %i.go
  %i.gt = fmul float %sqrt.i149, %i.gp
  %i.gu = fmul float %sqrt.i149, %i.gr
  %.sroa.0.0.vec.insert.i174 = insertelement <2 x float> poison, float %i.gs, i64 0
  %.sroa.0.4.vec.insert.i175 = insertelement <2 x float> %.sroa.0.0.vec.insert.i174, float %i.gt, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i175, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.gu, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt7BumpMapINS_21BasicTextureEvaluatorEEEvT_NS_12FloatTextureERKNS_21NormalBumpEvalContextEPNS_7Vector3IfEES9_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(136) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 comdat {
bb.a:
  %4 = alloca %"class.pbrt::BasicTextureEvaluator", align 1 ; 3 uses
  %5 = alloca %"class.pbrt::FloatTexture", align 8 ; 2 uses
  %6 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 12 uses
  %7 = alloca %"class.pbrt::FloatTexture", align 8 ; 2 uses
  %8 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 12 uses
  %9 = alloca %"class.pbrt::FloatTexture", align 8 ; 2 uses
  %10 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 12 uses
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %.sroa.011.0.copyload.i = load <2 x float>, ptr %i.a, align 4, !noalias !737 ; 2 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %.sroa.212.0.copyload.i = load float, ptr %.sroa.212.0..sroa_idx.i, align 4, !noalias !737 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.b, align 4, !noalias !737 ; 2 uses
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 4, !noalias !737 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %i.c, align 4, !noalias !737 ; 2 uses
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !noalias !737 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !203, !noalias !737 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %.sroa.0122.0.copyload = load <2 x float>, ptr %i.j, align 4
  %.sroa.2123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %.sroa.2123.0.copyload = load float, ptr %.sroa.2123.0..sroa_idx, align 4, !tbaa !155
  %i.k = load float, ptr %.sroa.214.0..sroa_idx.i, align 4, !tbaa !225
  %i.l = load i64, ptr %0, align 8, !tbaa !186
  store i64 %i.l, ptr %5, align 8, !tbaa !186
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store <2 x float> %.sroa.011.0.copyload.i, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %.sroa.212.0.copyload.i, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store <2 x float> %.sroa.09.0.copyload.i, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %.sroa.210.0.copyload.i, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 36
  store <2 x float> %.sroa.07.0.copyload.i, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 44
  store float %.sroa.28.0.copyload.i, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.m = load <4 x float>, ptr %i.e, align 4, !tbaa !155, !noalias !737 ; 3 uses
  %i.n = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.m) ; 2 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %shift = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.o, %shift
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = fmul float %i.p, 5.000000e-01            ; 2 uses
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  %spec.store.select1 = select i1 %i.r, float 5.000000e-04, float %i.q ; 4 uses
  %i.s = fmul float %spec.store.select1, %.sroa.2123.0.copyload
  %i.t = load <2 x float>, ptr %1, align 4, !tbaa !155
  %i.u = insertelement <2 x float> poison, float %spec.store.select1, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.v, %.sroa.0122.0.copyload
  %i.x = fadd <2 x float> %i.w, %i.t
  %i.y = fadd float %i.s, %i.k
  %i.z = load <2 x float>, ptr %i.d, align 4, !tbaa !155
  %i.aa = insertelement <2 x float> <float poison, float 0.000000e+00>, float %spec.store.select1, i64 0
  %i.ab = fadd <2 x float> %i.aa, %i.z
  store <2 x float> %i.x, ptr %6, align 8
  store float %i.y, ptr %.sroa.7.0..sroa_idx, align 8
  store <2 x float> %i.ab, ptr %.sroa.16.0..sroa_idx, align 8
  store <4 x float> %i.m, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 %i.h, ptr %.sroa.23.0..sroa_idx, align 8
  %i.ac = call noundef float @_ZN4pbrt21BasicTextureEvaluatorclENS_12FloatTextureENS_18TextureEvalContextE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %6)
  %i.ad = load <2 x float>, ptr %i.f, align 4, !tbaa !155
  %i.ae = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ad) ; 2 uses
  %shift289 = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop290 = fadd <2 x float> %i.ae, %shift289
  %i.af = extractelement <2 x float> %foldExtExtBinop290, i64 0
  %i.ag = fmul float %i.af, 5.000000e-01          ; 2 uses
  %i.ah = fcmp oeq float %i.ag, 0.000000e+00
  %spec.store.select = select i1 %i.ah, float 5.000000e-04, float %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.098.0.copyload = load <2 x float>, ptr %i.ai, align 4
  %.sroa.299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.299.0.copyload = load float, ptr %.sroa.299.0..sroa_idx, align 4, !tbaa !155
  %i.aj = fmul float %.sroa.299.0.copyload, %spec.store.select
  %i.ak = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %.sroa.098.0.copyload, %i.al
  %i.an = load <2 x float>, ptr %1, align 4, !tbaa !155
  %i.ao = fadd <2 x float> %i.an, %i.am
  %i.ap = load float, ptr %.sroa.214.0..sroa_idx.i, align 4, !tbaa !225
  %i.aq = fadd float %i.ap, %i.aj
  %i.ar = load <2 x float>, ptr %i.d, align 4, !tbaa !155
  %i.as = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.store.select, i64 1
  %i.at = fadd <2 x float> %i.as, %i.ar
  %i.au = load i64, ptr %0, align 8, !tbaa !186
  store i64 %i.au, ptr %7, align 8, !tbaa !186
  store <2 x float> %i.ao, ptr %8, align 8
  %.sroa.7.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.aq, ptr %.sroa.7.0..sroa_idx262, align 8
  %.sroa.10.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store <2 x float> %.sroa.011.0.copyload.i, ptr %.sroa.10.0..sroa_idx264, align 4
  %.sroa.11.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store float %.sroa.212.0.copyload.i, ptr %.sroa.11.0..sroa_idx266, align 4
  %.sroa.12.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store <2 x float> %.sroa.09.0.copyload.i, ptr %.sroa.12.0..sroa_idx268, align 8
  %.sroa.13.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store float %.sroa.210.0.copyload.i, ptr %.sroa.13.0..sroa_idx270, align 8
  %.sroa.14.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %8, i64 36
  store <2 x float> %.sroa.07.0.copyload.i, ptr %.sroa.14.0..sroa_idx272, align 4
  %.sroa.15.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %8, i64 44
  store float %.sroa.28.0.copyload.i, ptr %.sroa.15.0..sroa_idx274, align 4
  %.sroa.16.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <2 x float> %i.at, ptr %.sroa.16.0..sroa_idx276, align 8
  %.sroa.19.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %8, i64 56
  store <4 x float> %i.m, ptr %.sroa.19.0..sroa_idx278, align 8
  %.sroa.23.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 %i.h, ptr %.sroa.23.0..sroa_idx286, align 8
  %i.av = call noundef float @_ZN4pbrt21BasicTextureEvaluatorclENS_12FloatTextureENS_18TextureEvalContextE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %8)
end_hunk_0
