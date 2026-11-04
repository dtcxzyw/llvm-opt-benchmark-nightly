Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4pbrt17VolPathIntegrator2LiENS_15RayDifferentialERNS_18SampledWavelengthsENS_7SamplerERNS_13ScratchBufferEPNS_14VisibleSurfaceE:bb.a
  %i.cpw = fdiv <2 x float> %.sroa.8.0.copyload.i557.c, zeroinitializer
  store <2 x float> %i.cpv, ptr %63, align 16
  store <2 x float> %i.cpw, ptr %i.w, align 8, !tbaa !47
  br label %bb.gy

bb.gy:                                            ; preds = %.critedge, %.thread1379, %.noexc554
  %i.cpx = load i32, ptr %i.cp, align 16, !tbaa !382 ; 3 uses
  %i.cpy = and i32 %i.cpx, 16                     ; 2 uses
  %.not979 = icmp eq i32 %i.cpy, 0
  %.lobit = lshr exact i32 %i.cpy, 4
  %i.cpz = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.cpz, ptr %i.k, align 1, !tbaa !363
  %i.cqa = load i8, ptr %i.l, align 1, !tbaa !363, !range !136, !noundef !137
  %i.cqb = zext i1 %.not979 to i8
  %i.cqc = or i8 %i.cqa, %i.cqb
  store i8 %i.cqc, ptr %i.l, align 1, !tbaa !363
  %i.cqd = and i32 %i.cpx, 2
  %.not980 = icmp eq i32 %i.cqd, 0
  %i.cqe = load float, ptr %i.cq, align 4         ; 3 uses
  %i.cqf = fmul float %i.cqe, %i.cqe
  %i.cqg = fmul float %.0, %i.cqf
  %.1 = select i1 %.not980, float %.0, float %i.cqg ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #38
  %.sroa.054.0.copyload = load <2 x float>, ptr %i.cj, align 16
  %.sroa.255.0.copyload = load float, ptr %.sroa.275.0..sroa_idx, align 8
  invoke void @_ZNK4pbrt18SurfaceInteraction8SpawnRayERKNS_15RayDifferentialERKNS_4BSDFENS_7Vector3IfEEif(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::RayDifferential") align 8 %76, ptr noundef nonnull align 8 dereferenceable(248) %65, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(44) %68, <2 x float> %.sroa.054.0.copyload, float %.sroa.255.0.copyload, i32 noundef %i.cpx, float noundef %i.cqe)
          to label %bb.gz unwind label %bb.hg

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(92) %76, i64 28, i1 false)
  %i.cqh = load i64, ptr %i.cr, align 8, !tbaa !264
  store i64 %i.cqh, ptr %i.z, align 8, !tbaa !264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.cs, ptr noundef nonnull align 8 dereferenceable(52) %i.ct, i64 52, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #38
  %i.cqi = load i64, ptr %i.br, align 8, !tbaa !51
  store i64 %i.cqi, ptr %78, align 8, !tbaa !51
  invoke void @_ZN4pbrt18SurfaceInteraction9GetBSSRDFERKNS_15RayDifferentialERNS_18SampledWavelengthsENS_6CameraERNS_13ScratchBufferE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::BSSRDF") align 8 %77, ptr noundef nonnull align 8 dereferenceable(248) %65, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %78, ptr noundef nonnull align 64 dereferenceable(40) %4)
          to label %bb.ha unwind label %.loopexit.split-lp1029.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ha:                                            ; preds = %bb.gz
  %i.cqj = load i64, ptr %77, align 8, !tbaa !1241
  %i.cqk = and i64 %i.cqj, 144115188075855871
  %.not981 = icmp eq i64 %i.cqk, 0
  br i1 %.not981, label %bb.ip, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.cql = load i8, ptr %i.ci, align 4, !tbaa !379, !range !136, !noundef !137
  %i.cqm = trunc nuw i8 %i.cql to i1
  br i1 %i.cqm, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit598, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
          to label %.noexc597 unwind label %.loopexit.split-lp1029.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc597:                                        ; preds = %bb.hc
  unreachable

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit598: ; preds = %bb.hb
  %i.cqn = load i32, ptr %i.cp, align 16, !tbaa !382
  %i.cqo = and i32 %i.cqn, 2
  %.not982 = icmp eq i32 %i.cqo, 0
  br i1 %.not982, label %bb.ip, label %bb.hd

bb.hd:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit598
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.cqp = load i64, ptr %3, align 8, !tbaa !53   ; 2 uses
  %i.cqq = and i64 %i.cqp, 144115188075855871
  %i.cqr = inttoptr i64 %i.cqq to ptr
  %i.cqs = lshr i64 %i.cqp, 57
  %i.cqt = trunc nuw nsw i64 %i.cqs to i32
  %i.cqu = add nsw i32 %i.cqt, -1
  %i.cqv = invoke noundef float @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get1DEvEUlT_E_fNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef %i.cqr, i32 noundef %i.cqu)
          to label %bb.he unwind label %.loopexit.split-lp1029.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %i.cqw = load i64, ptr %3, align 8, !tbaa !53   ; 2 uses
  %i.cqx = and i64 %i.cqw, 144115188075855871
  %i.cqy = inttoptr i64 %i.cqx to ptr
  %i.cqz = lshr i64 %i.cqw, 57
  %i.cra = trunc nuw nsw i64 %i.cqz to i32
  %i.crb = add nsw i32 %i.cra, -1
  %i.crc = invoke <2 x float> @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get2DEvEUlT_E_NS_6Point2IfEENS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef %i.cqy, i32 noundef %i.crb)
          to label %bb.hf unwind label %.loopexit.split-lp1029.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #38
  %i.crd = load i64, ptr %77, align 8, !tbaa !1241, !noalias !1242
  %i.cre = and i64 %i.crd, 144115188075855871
  %i.crf = inttoptr i64 %i.cre to ptr
  invoke void @_ZNK4pbrt15TabulatedBSSRDF8SampleSpEfNS_6Point2IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.192") align 4 %79, ptr noundef nonnull align 8 dereferenceable(80) %i.crf, float noundef %i.cqv, <2 x float> %i.crc)
          to label %_ZNK4pbrt6BSSRDF8SampleSpEfNS_6Point2IfEE.exit unwind label %bb.hm

_ZNK4pbrt6BSSRDF8SampleSpEfNS_6Point2IfEE.exit:   ; preds = %bb.hf
  %i.crg = load i8, ptr %i.cu, align 8, !tbaa !464, !range !136, !noundef !137
  %i.crh = trunc nuw i8 %i.crg to i1
  br i1 %i.crh, label %bb.hh, label %.loopexit1387.sink.split

bb.hg:                                            ; preds = %bb.gy
  %i.cri = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #38
  br label %.loopexit.split-lp1024

bb.hh:                                            ; preds = %_ZNK4pbrt6BSSRDF8SampleSpEfNS_6Point2IfEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.crj = load i64, ptr %3, align 8, !tbaa !53   ; 2 uses
  %i.crk = and i64 %i.crj, 144115188075855871
  %i.crl = inttoptr i64 %i.crk to ptr
  %i.crm = lshr i64 %i.crj, 57
  %i.crn = trunc nuw nsw i64 %i.crm to i32
  %i.cro = add nsw i32 %i.crn, -1
  %i.crp = invoke noundef float @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get1DEvEUlT_E_fNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %i.crl, i32 noundef %i.cro)
          to label %bb.hi unwind label %bb.hm

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %i.crq = bitcast float %i.crp to i32
  %i.crr = zext i32 %i.crq to i64                 ; 2 uses
  %i.crs = lshr i64 %i.crr, 31
  %i.crt = xor i64 %i.crs, %i.crr
  %i.cru = mul i64 %i.crt, 9202493588570546565    ; 2 uses
  %i.crv = lshr i64 %i.cru, 27
  %i.crw = xor i64 %i.crv, %i.cru
  %i.crx = mul i64 %i.crw, -9089707755183418291   ; 3 uses
  %i.cry = lshr i64 %i.crx, 33
  %i.crz = xor i64 %i.cry, %i.crx                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %i.csa = shl i64 %i.crz, 1
  %i.csb = or disjoint i64 %i.csa, 1              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.15, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #38
  %i.csc = load i8, ptr %i.cu, align 8, !tbaa !464, !range !136, !noundef !137
  %i.csd = trunc nuw i8 %i.csc to i1
  br i1 %i.csd, label %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608.preheader, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
          to label %.noexc606 unwind label %bb.hn

.noexc606:                                        ; preds = %bb.hj
  unreachable

_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608.preheader: ; preds = %bb.hi
  %.sroa.047.0.copyload = load <2 x float>, ptr %79, align 8 ; 2 uses
  %i.cse = load <1 x float>, ptr %.sroa.248.0..sroa_idx, align 8
  %i.csf = load float, ptr %.sroa.6905.0..sroa_idx, align 8, !tbaa !283
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.047.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.047.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.cse, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %80, align 16, !tbaa !189
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.cv, align 8, !tbaa !189
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.cw, align 16, !tbaa !189
  store float %i.csf, ptr %i.cx, align 8, !tbaa !279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cy, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #38
  %i.csg = lshr i64 %i.crx, 31
  %i.csh = xor i64 %i.crz, %i.csg
  %i.csi = mul i64 %i.csh, 9202493588570546565    ; 2 uses
  %i.csj = lshr i64 %i.csi, 27
  %i.csk = xor i64 %i.csj, %i.csi
  %i.csl = mul i64 %i.csk, -9089707755183418291   ; 2 uses
  %i.csm = lshr i64 %i.csl, 33
  %i.csn = xor i64 %i.csm, %i.csl
  %i.cso = add i64 %i.csn, %i.csb
  %i.csp = mul i64 %i.cso, 6364136223846793005
  %i.csq = add i64 %i.csp, %i.csb
  br label %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608

_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit._crit_edge: ; preds = %bb.hs
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
          to label %.noexc607 unwind label %.loopexit.split-lp993.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc607:                                        ; preds = %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit._crit_edge
  unreachable

_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608: ; preds = %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608.preheader, %bb.hs
  %storemerge.i.i1282 = phi i64 [ %i.ctu, %bb.hs ], [ 0, %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608.preheader ]
  %.sroa.0805.01133 = phi i64 [ %.sroa.0805.1, %bb.hs ], [ %i.csq, %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608.preheader ] ; 5 uses
  %.sroa.13810.01132 = phi float [ %.sroa.13810.1, %bb.hs ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608.preheader ] ; 3 uses
  %.sroa.8807.01131 = phi float [ %.sroa.8807.1, %bb.hs ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608.preheader ] ; 4 uses
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.db, align 4
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %.sroa.7933.0.copyload = load float, ptr %i.cw, align 16, !noalias !1243
  %.sroa.8934.0.copyload = load float, ptr %.sroa.8934.0..sroa_idx, align 4, !noalias !1243
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.dc, align 8, !noalias !1243 ; 3 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 16, !noalias !1243 ; 3 uses
  %i.csr = load float, ptr %i.cx, align 8, !tbaa !279, !noalias !1243
  %i.css = fadd float %.sroa.7933.0.copyload, %.sroa.8934.0.copyload
  %i.cst = fmul float %i.css, 5.000000e-01
  %i.csu = load <4 x float>, ptr %80, align 16, !noalias !1243 ; 2 uses
  %i.csv = shufflevector <4 x float> %i.csu, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.csw = shufflevector <4 x float> %i.csu, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.csx = fadd <2 x float> %i.csv, %i.csw
  %i.csy = fmul <2 x float> %i.csx, splat (float 5.000000e-01)
  %i.csz = fsub <2 x float> %.sroa.043.0.copyload, %i.csy ; 5 uses
  %i.cta = fsub float %.sroa.244.0.copyload, %i.cst ; 5 uses
  %i.ctb = invoke { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %80, <2 x float> %.sroa.09.0.copyload.i, float %.sroa.210.0.copyload.i, <2 x float> %i.csz, float %i.cta)
          to label %.noexc611 unwind label %.loopexit.split-lp993.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc611:                                        ; preds = %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608
  %.fca.0.extract.i.i.i = extractvalue { <2 x float>, float } %i.ctb, 0
  %.fca.1.extract.i.i.i = extractvalue { <2 x float>, float } %i.ctb, 1
  store <2 x float> %.fca.0.extract.i.i.i, ptr %81, align 8, !alias.scope !1244
  store float %.fca.1.extract.i.i.i, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1244
  store <2 x float> %i.csz, ptr %i.dd, align 4, !alias.scope !1244
  store float %i.cta, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 4, !alias.scope !1244
  store float %i.csr, ptr %i.de, align 8, !tbaa !283, !alias.scope !1244
  %i.ctc = load ptr, ptr %i.cz, align 16, !tbaa !284, !noalias !1245 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ctc, null
  br i1 %.not.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %.noexc611
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i, i64 1
  %i.ctd = fmul float %.sroa.210.0.copyload.i, %i.cta ; 2 uses
  %i.cte = extractelement <2 x float> %i.csz, i64 1
  %i.ctf = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %i.cte, float %i.ctd)
  %i.ctg = fneg float %i.ctd
  %i.cth = call noundef float @llvm.fma.f32(float %.sroa.210.0.copyload.i, float %i.cta, float %i.ctg)
  %i.cti = fadd float %i.ctf, %i.cth
  %i.ctj = extractelement <2 x float> %i.csz, i64 0
  %i.ctk = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i, float %i.ctj, float %i.cti)
  %i.ctl = fcmp ogt float %i.ctk, 0.000000e+00
  %spec.select.idx.i.i = select i1 %i.ctl, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.ctc, i64 %spec.select.idx.i.i
  %storemerge.i.i.pre = load i64, ptr %spec.select.i.i, align 8, !tbaa !264, !noalias !1245
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %.noexc611
  %storemerge.i.i = phi i64 [ %storemerge.i.i.pre, %bb.hk ], [ %storemerge.i.i1282, %.noexc611 ]
  store i64 %storemerge.i.i, ptr %i.df, align 8, !tbaa !264, !alias.scope !1243
  %90 = fcmp oeq <2 x float> %i.csz, zeroinitializer ; 2 uses
  %91 = extractelement <2 x i1> %90, i64 0
  %92 = extractelement <2 x i1> %90, i64 1
  %or.cond.i612 = select i1 %91, i1 %92, i1 false
  %i.ctm = fcmp oeq float %i.cta, 0.000000e+00
  %or.cond973 = select i1 %or.cond.i612, i1 %i.ctm, i1 false
  br i1 %or.cond973, label %.thread939, label %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread

bb.hm:                                            ; preds = %bb.hf, %bb.hh
  %i.ctn = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.hn:                                            ; preds = %bb.hj
  %i.cto = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

.loopexit.split-lp993.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608, %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit._crit_edge
  %lpad.loopexit.split-lp1765 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp993

_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread: ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #38
  %i.ctp = load i64, ptr %i.x, align 8, !tbaa !145, !noalias !1246
  %i.ctq = add nsw i64 %i.ctp, 1
  store i64 %i.ctq, ptr %i.x, align 8, !tbaa !145, !noalias !1246
  %i.ctr = load i64, ptr %i.y, align 8, !tbaa !55, !noalias !1246
  %i.cts = and i64 %i.ctr, 144115188075855871
  %.not.i613 = icmp eq i64 %i.cts, 0
  br i1 %.not.i613, label %.thread946, label %bb.ho

bb.ho:                                            ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread
  invoke void @_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.111") align 8 %82, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %81, float noundef 1.000000e+00)
          to label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit615 unwind label %bb.ht

_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit615: ; preds = %bb.ho
  %.pre1283 = load i8, ptr %i.dg, align 8, !tbaa !286, !range !136
  %i.ctt = trunc nuw i8 %.pre1283 to i1
  br i1 %i.ctt, label %bb.hp, label %.thread946

.thread946:                                       ; preds = %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit615, %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #38
  br label %.thread939

bb.hp:                                            ; preds = %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %80, ptr noundef nonnull align 8 dereferenceable(80) %82, i64 72, i1 false)
  %i.ctu = load i64, ptr %i.dh, align 8, !tbaa !264 ; 2 uses
  store i64 %i.ctu, ptr %i.da, align 8, !tbaa !264
  %i.ctv = load i64, ptr %i.di, align 8, !tbaa !288
  %i.ctw = load i64, ptr %i.dj, align 8, !tbaa !288
  %i.ctx = icmp eq i64 %i.ctv, %i.ctw
  br i1 %i.ctx, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %83)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %83, ptr noundef nonnull align 8 dereferenceable(248) %82, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dk, ptr noundef nonnull align 8 dereferenceable(12) %i.dl, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dm, ptr noundef nonnull align 8 dereferenceable(12) %i.dn, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.do, ptr noundef nonnull align 8 dereferenceable(12) %i.dp, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dq, ptr noundef nonnull align 4 dereferenceable(12) %i.dr, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ds, ptr noundef nonnull align 4 dereferenceable(12) %i.dt, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.du, ptr noundef nonnull align 8 dereferenceable(12) %i.dv, i64 12, i1 false)
  %i.cty = fadd float %.sroa.8807.01131, 1.000000e+00 ; 2 uses
  %i.ctz = fdiv float 1.000000e+00, %i.cty
  %i.cua = mul i64 %.sroa.0805.01133, 6364136223846793005
  %i.cub = add i64 %i.cua, %i.csb
  %i.cuc = lshr i64 %.sroa.0805.01133, 45
  %i.cud = lshr i64 %.sroa.0805.01133, 27
  %i.cue = xor i64 %i.cuc, %i.cud
  %i.cuf = trunc i64 %i.cue to i32                ; 2 uses
  %i.cug = lshr i64 %.sroa.0805.01133, 59
  %i.cuh = trunc nuw nsw i64 %i.cug to i32
  %i.cui = call noundef i32 @llvm.fshr.i32(i32 %i.cuf, i32 %i.cuf, i32 %i.cuh)
  %i.cuj = uitofp i32 %i.cui to float
  %i.cuk = fmul nnan float %i.cuj, f0x2F800000    ; 2 uses
  %i.cul = fcmp olt float %i.cuk, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.cul, float %i.cuk, float f0x3F7FFFFF
  %i.cum = fcmp olt float %.sroa.speculated.i.i, %i.ctz
  br i1 %i.cum, label %bb.hr, label %_ZN4pbrt24WeightedReservoirSamplerINS_21SubsurfaceInteractionEE3AddERKS1_f.exit

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.15, ptr noundef nonnull align 4 dereferenceable(96) %83, i64 96, i1 false)
  br label %_ZN4pbrt24WeightedReservoirSamplerINS_21SubsurfaceInteractionEE3AddERKS1_f.exit

_ZN4pbrt24WeightedReservoirSamplerINS_21SubsurfaceInteractionEE3AddERKS1_f.exit: ; preds = %bb.hr, %bb.hq
  %.sroa.13810.3 = phi float [ 1.000000e+00, %bb.hr ], [ %.sroa.13810.01132, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83)
  br label %bb.hs

bb.hs:                                            ; preds = %_ZN4pbrt24WeightedReservoirSamplerINS_21SubsurfaceInteractionEE3AddERKS1_f.exit, %bb.hp
  %.sroa.8807.1 = phi float [ %i.cty, %_ZN4pbrt24WeightedReservoirSamplerINS_21SubsurfaceInteractionEE3AddERKS1_f.exit ], [ %.sroa.8807.01131, %bb.hp ]
  %.sroa.13810.1 = phi float [ %.sroa.13810.3, %_ZN4pbrt24WeightedReservoirSamplerINS_21SubsurfaceInteractionEE3AddERKS1_f.exit ], [ %.sroa.13810.01132, %bb.hp ]
  %.sroa.0805.1 = phi i64 [ %i.cub, %_ZN4pbrt24WeightedReservoirSamplerINS_21SubsurfaceInteractionEE3AddERKS1_f.exit ], [ %.sroa.0805.01133, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #38
  %i.cun = load i8, ptr %i.cu, align 8, !tbaa !464, !range !136, !noundef !137
  %i.cuo = trunc nuw i8 %i.cun to i1
  br i1 %i.cuo, label %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit608, label %_ZN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEptEv.exit._crit_edge

bb.ht:                                            ; preds = %bb.ho
  %i.cup = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #38
  br label %.loopexit.split-lp993

.loopexit.split-lp993:                            ; preds = %.loopexit.split-lp993.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ht
  %.pn232.pn.pn = phi { ptr, i32 } [ %i.cup, %bb.ht ], [ %lpad.loopexit.split-lp1765, %.loopexit.split-lp993.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #38
  br label %bb.in

.thread939:                                       ; preds = %bb.hl, %.thread946
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #38
  %i.cuq = fcmp ule float %.sroa.8807.01131, 0.000000e+00
  br i1 %i.cuq, label %.loopexit1387.sink.split.sink.split, label %bb.hu

bb.hu:                                            ; preds = %.thread939
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %84, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.15, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38, !noalias !1247
  store ptr %4, ptr %12, align 8, !tbaa !1248, !noalias !1247
  store ptr %84, ptr %i.dw, align 8, !tbaa !1249, !noalias !1247
  %i.cur = load i64, ptr %77, align 8, !tbaa !1241, !noalias !1250
  %i.cus = and i64 %i.cur, 144115188075855871
  %i.cut = inttoptr i64 %i.cus to ptr
  invoke void @_ZZNK4pbrt6BSSRDF25ProbeIntersectionToSampleERKNS_21SubsurfaceInteractionERNS_13ScratchBufferEENKUlT_E_clIPKNS_15TabulatedBSSRDFEEEDaS6_(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::BSSRDFSample") align 8 %85, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %i.cut)
          to label %bb.hv unwind label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38, !noalias !1247
  %i.cuu = load <4 x float>, ptr %85, align 16
  %.fr1743.a = freeze <4 x float> %i.cuu
  %i.cuv = fcmp une <4 x float> %.fr1743.a, zeroinitializer
  %i.cuw = bitcast <4 x i1> %i.cuv to i4
  %.not1744 = icmp eq i4 %i.cuw, 0
  br i1 %.not1744, label %.loopexit1387.sink.split.sink.split.sink.split, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.cux = load <4 x float>, ptr %i.dx, align 16
  %.fr1745 = freeze <4 x float> %i.cux            ; 3 uses
  %i.cuy = fcmp une <4 x float> %.fr1745, zeroinitializer
  %i.cuz = bitcast <4 x i1> %i.cuy to i4
  %.not1746 = icmp eq i4 %i.cuz, 0
  br i1 %.not1746, label %.loopexit1387.sink.split.sink.split.sink.split, label %bb.hy

bb.hx:                                            ; preds = %bb.hu
  %i.cva = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.hy:                                            ; preds = %bb.hw
  %i.cvb = fdiv float %.sroa.13810.01132, %.sroa.8807.01131
  %i.cvc = extractelement <4 x float> %.fr1745, i64 0
  %i.cvd = fmul float %i.cvb, %i.cvc
  %i.cve = load <4 x float>, ptr %85, align 16
  %i.cvf = insertelement <4 x float> poison, float %i.cvd, i64 0
  %i.cvg = shufflevector <4 x float> %i.cvf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cvh = fdiv <4 x float> %i.cve, %i.cvg
  %i.cvi = load <4 x float>, ptr %61, align 16, !tbaa !189
  %i.cvj = fmul <4 x float> %i.cvh, %i.cvi
  store <4 x float> %i.cvj, ptr %61, align 16, !tbaa !189
  %i.cvk = load <4 x float>, ptr %i.dx, align 16
  %i.cvl = shufflevector <4 x float> %.fr1745, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cvm = fdiv <4 x float> %i.cvk, %i.cvl
  %i.cvn = load <4 x float>, ptr %62, align 16, !tbaa !189
  %i.cvo = fmul <4 x float> %i.cvm, %i.cvn
  store <4 x float> %i.cvo, ptr %62, align 16, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.dy, i8 0, i64 184, i1 false), !alias.scope !1251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.dz, i8 0, i64 36, i1 false), !alias.scope !1251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %86, ptr noundef nonnull align 4 dereferenceable(96) %84, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.eb, ptr noundef nonnull align 4 dereferenceable(12) %i.ea, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ed, ptr noundef nonnull align 4 dereferenceable(12) %i.ec, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ef, ptr noundef nonnull align 4 dereferenceable(12) %i.ee, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.eh, ptr noundef nonnull align 4 dereferenceable(12) %i.eg, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ej, ptr noundef nonnull align 4 dereferenceable(12) %i.ei, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.el, ptr noundef nonnull align 4 dereferenceable(12) %i.ek, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.en, ptr noundef nonnull align 16 dereferenceable(12) %i.em, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %87)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %87, ptr noundef nonnull align 4 dereferenceable(24) %84, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eo, ptr noundef nonnull align 4 dereferenceable(12) %i.ea, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ep, ptr noundef nonnull align 4 dereferenceable(12) %i.eg, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %64, ptr noundef nonnull align 4 dereferenceable(48) %87, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %87)
  store i8 1, ptr %i.l, align 1, !tbaa !363
  %i.cvp = load i8, ptr %i.cc, align 8, !tbaa !462, !range !136, !noundef !137
  %i.cvq = trunc nuw i8 %i.cvp to i1
  br i1 %i.cvq, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.cvr = load i64, ptr %i.cd, align 8, !tbaa !145
  %i.cvs = add nsw i64 %i.cvr, 1
  store i64 %i.cvs, ptr %i.cd, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.cvt = load i64, ptr %i.eq, align 16, !tbaa !362 ; 2 uses
  %i.cvu = and i64 %i.cvt, 144115188075855871
  %i.cvv = inttoptr i64 %i.cvu to ptr
  %i.cvw = lshr i64 %i.cvt, 57
  %i.cvx = trunc nuw nsw i64 %i.cvw to i32
  %i.cvy = add nsw i32 %i.cvx, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNS_4BxDF10RegularizeEvEUlT_E_vNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %i.cvv, i32 noundef %i.cvy)
end_hunk_0
