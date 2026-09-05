Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_fusion_qdq?download=true
inline.NumInlined: 1844
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
          cleanup
  br label %bb.awk

bb.ew:                                            ; preds = %bb.el
  %i.aim = landingpad { ptr, i32 }
          cleanup
  br label %bb.awk

bb.ex:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit2465
  %i.ain = landingpad { ptr, i32 }
          cleanup
  br label %bb.awk

bb.ey:                                            ; preds = %bb.en
  %i.aio = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

.preheader11419:                                  ; preds = %bb.eo, %.preheader11419
  %indvars.iv8653.a = phi i64 [ %indvars.iv.next8654.a, %.preheader11419 ], [ 0, %bb.eo ] ; 3 uses
  %i.aip = trunc i64 %indvars.iv8653.a to i32
  %i.aiq = sub i32 %i.aip, %i.ahp
  %i.air = sitofp i32 %i.aiq to float
  %i.ais = fmul float %i.ahe, %i.air              ; 2 uses
  %i.ait = fcmp ogt float %i.ais, 0.000000e+00
  %.sroa.speculated3379 = select i1 %i.ait, float %i.ais, float 0.000000e+00
  %i.aiu = fdiv float %.sroa.speculated3379, %i.ahs
  %i.aiv = insertelement <4 x float> poison, float %i.aiu, i64 0
  %i.aiw = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.aiv)
  %i.aix = add nsw i32 %i.aiw, %i.aib
  %i.aiy = call i32 @llvm.smax.i32(i32 %i.aix, i32 0)
  %i.aiz = call i32 @llvm.umin.i32(i32 %i.aiy, i32 255)
  %i.aja = trunc nuw i32 %i.aiz to i8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aie, i64 %indvars.iv8653.a
  store i8 %i.aja, ptr %i.ajb, align 1, !tbaa !74
  %indvars.iv.next8654.a = add nuw nsw i64 %indvars.iv8653.a, 1 ; 2 uses
  %exitcond8656.not.a = icmp eq i64 %indvars.iv.next8654.a, 256
  br i1 %exitcond8656.not.a, label %.loopexit3775, label %.preheader11419, !llvm.loop !181

.preheader11420:                                  ; preds = %bb.eo, %.preheader11420
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader11420 ], [ -128, %bb.eo ] ; 3 uses
  %i.ajc = trunc i64 %indvars.iv to i32
  %i.ajd = sub i32 %i.ajc, %i.ahp
  %i.aje = sitofp i32 %i.ajd to float
  %i.ajf = fmul float %i.ahe, %i.aje              ; 2 uses
  %i.ajg = fcmp ogt float %i.ajf, 0.000000e+00
  %.sroa.speculated3375 = select i1 %i.ajg, float %i.ajf, float 0.000000e+00
  %i.ajh = fdiv float %.sroa.speculated3375, %i.ahs
  %i.aji = insertelement <4 x float> poison, float %i.ajh, i64 0
  %i.ajj = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.aji)
  %i.ajk = add nsw i32 %i.ajj, %i.aib
  %i.ajl = call i32 @llvm.smax.i32(i32 %i.ajk, i32 -128)
  %i.ajm = call i32 @llvm.smin.i32(i32 %i.ajl, i32 127)
  %i.ajn = trunc nsw i32 %i.ajm to i8
  %i.ajo = getelementptr i8, ptr %i.aie, i64 %indvars.iv
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 128
  store i8 %i.ajn, ptr %i.ajp, align 1, !tbaa !74
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 128
  br i1 %exitcond.not, label %.loopexit3775, label %.preheader11420, !llvm.loop !182

.loopexit3775:                                    ; preds = %.preheader11420, %.preheader11419
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store ptr %i.cg, ptr %25, align 8, !tbaa !75
  store i64 0, ptr %i.ch, align 8, !tbaa !76
  store i8 0, ptr %i.cg, align 8, !tbaa !74
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !75
  store i64 0, ptr %i.ck, align 8, !tbaa !76
  store i8 0, ptr %i.cj, align 8, !tbaa !74
  store float 1.000000e+00, ptr %i.cl, align 8, !tbaa !292
  store i32 0, ptr %i.cm, align 4, !tbaa !293
  store float 1.000000e+00, ptr %i.cn, align 8, !tbaa !294
  store i32 0, ptr %i.co, align 4, !tbaa !295
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.cp) #23
  %i.ajq = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.ajr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2474 unwind label %bb.gg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2474: ; preds = %.loopexit3775
  %i.ajs = load i64, ptr %i.ck, align 8, !tbaa !76
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 noundef 0, i64 noundef %i.ajs, ptr noundef nonnull @.str.2, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2476 unwind label %bb.gg ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2476: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2474
  store float %i.ahe, ptr %i.cl, align 8, !tbaa !292
  store i32 %i.ahp, ptr %i.cm, align 4, !tbaa !293
  store float %i.ahs, ptr %i.cn, align 8, !tbaa !294
  store i32 %i.aib, ptr %i.co, align 4, !tbaa !295
  %i.aju = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.cp, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.ez unwind label %bb.gg     ; 0 uses

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2476
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  invoke void @_ZN2cv3dnn14dnn5_v2026060519ActivationLayerInt86createERKNS1_20ActivationInt8ParamsE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.131") align 8 %26, ptr noundef nonnull align 8 dereferenceable(288) %25)
          to label %bb.fa unwind label %bb.gh

bb.fa:                                            ; preds = %bb.ez
  %i.ajv = load ptr, ptr %0, align 8, !tbaa !20
  %i.ajw = load ptr, ptr %26, align 8, !tbaa !298 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 80
  store ptr %i.ajv, ptr %i.ajx, align 8, !tbaa !285
  %i.ajy = load i32, ptr %i.c, align 4, !tbaa !31 ; 2 uses
  %i.ajz = sext i32 %i.ajy to i64
  %i.aka = load ptr, ptr %12, align 8, !tbaa !30
  %i.akb = getelementptr inbounds nuw [16 x i8], ptr %i.aka, i64 %i.ajz ; 2 uses
  store ptr %i.ajw, ptr %i.akb, align 8, !tbaa !45
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 8 ; 3 uses
  %i.akd = load ptr, ptr %i.cq, align 8, !tbaa !94 ; 4 uses
  %i.ake = load ptr, ptr %i.akc, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i2477 = icmp eq ptr %i.akd, %i.ake
  br i1 %.not.i.i.i.i2477, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %.not7.i.i.i.i2478 = icmp eq ptr %i.akd, null
  br i1 %.not7.i.i.i.i2478, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2480, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 8 ; 3 uses
  %i.akg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i2479 = icmp eq i8 %i.akg, 0
  br i1 %.not.i.i.i.i.i2479, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.akh = load i32, ptr %i.akf, align 4, !tbaa !31
  %i.aki = add nsw i32 %i.akh, 1
  store i32 %i.aki, ptr %i.akf, align 4, !tbaa !31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2480

bb.fe:                                            ; preds = %bb.fc
  %i.akj = atomicrmw volatile add ptr %i.akf, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i2486 = load ptr, ptr %i.akc, align 8, !tbaa !94
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2480

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2480: ; preds = %bb.fe, %bb.fd, %bb.fb
  %i.akk = phi ptr [ %i.ake, %bb.fb ], [ %i.ake, %bb.fd ], [ %.pr.pre.i.i.i.i2486, %bb.fe ] ; 8 uses
  %.not8.i.i.i.i2481 = icmp eq ptr %i.akk, null
  br i1 %.not8.i.i.i.i2481, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2485, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2480
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 8 ; 4 uses
  %i.akm = load atomic i64, ptr %i.akl acquire, align 8 ; 2 uses
  %i.akn = icmp eq i64 %i.akm, 4294967297
  %i.ako = trunc i64 %i.akm to i32                ; 2 uses
  br i1 %i.akn, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store i32 0, ptr %i.akl, align 8, !tbaa !96
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akk, i64 12
  store i32 0, ptr %i.akp, align 4, !tbaa !97
  %i.akq = load ptr, ptr %i.akk, align 8, !tbaa !26
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 16
  %i.aks = load ptr, ptr %i.akr, align 8
  call void %i.aks(ptr noundef nonnull align 8 dereferenceable(16) %i.akk) #23, !inline_history !183
  %i.akt = load ptr, ptr %i.akk, align 8, !tbaa !26
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 24
  %i.akv = load ptr, ptr %i.aku, align 8
  call void %i.akv(ptr noundef nonnull align 8 dereferenceable(16) %i.akk) #23, !inline_history !183
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2485

bb.fh:                                            ; preds = %bb.ff
  %i.akw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i.i.i.i2482 = icmp eq i8 %i.akw, 0
  br i1 %.not.i9.i.i.i.i2482, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.akx = add nsw i32 %i.ako, -1
  store i32 %i.akx, ptr %i.akl, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2483

bb.fj:                                            ; preds = %bb.fh
  %i.aky = atomicrmw volatile add ptr %i.akl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2483

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2483: ; preds = %bb.fj, %bb.fi
  %.0.i.i.i.i.i.i2484 = phi i32 [ %i.ako, %bb.fi ], [ %i.aky, %bb.fj ]
  %i.akz = icmp eq i32 %.0.i.i.i.i.i.i2484, 1
  br i1 %i.akz, label %bb.fk, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2485, !prof !98

bb.fk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2483
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akk) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2485

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2485: ; preds = %bb.fk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2483, %bb.fg, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2480
  store ptr %i.akd, ptr %i.akc, align 8, !tbaa !94
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit: ; preds = %bb.fa, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2485
  %i.ala = load ptr, ptr %i.afn, align 8, !tbaa !49 ; 2 uses
  %i.alb = load ptr, ptr %i.cb, align 8, !tbaa !99
  %i.alc = load ptr, ptr %13, align 8, !tbaa !49  ; 4 uses
  %i.ald = icmp eq ptr %i.alb, %i.alc
  br i1 %i.ald, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit
  %i.ale = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.noexc3215 unwind label %.loopexit3804 ; 3 uses

.noexc3215:                                       ; preds = %bb.fl
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.ala, align 4, !tbaa !31
  store i32 %.pre.i.i.i.i.i.i.i, ptr %i.ale, align 4, !tbaa !31
  %139 = getelementptr inbounds nuw i8, ptr %i.ale, i64 4 ; 2 uses
  %i.alf = load ptr, ptr %13, align 8, !tbaa !49  ; 3 uses
  %i.alg = load ptr, ptr %i.cb, align 8, !tbaa !99
  store ptr %i.ale, ptr %13, align 8, !tbaa !49
  store ptr %139, ptr %i.bg, align 8, !tbaa !48
  store ptr %139, ptr %i.cb, align 8, !tbaa !99
  %.not.i.i.i.i3214 = icmp eq ptr %i.alf, null
  br i1 %.not.i.i.i.i3214, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit, label %bb.fm

bb.fm:                                            ; preds = %.noexc3215
  %i.alh = ptrtoint ptr %i.alg to i64
  %i.ali = ptrtoint ptr %i.alf to i64
  %i.alj = sub i64 %i.alh, %i.ali
  call void @_ZdlPvm(ptr noundef nonnull %i.alf, i64 noundef %i.alj) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit

bb.fn:                                            ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit
  %i.alk = load ptr, ptr %i.bg, align 8, !tbaa !48 ; 4 uses
  %i.all = icmp eq ptr %i.alk, %i.alc
  %.pre.i.i.i.i13.i = load i32, ptr %i.ala, align 4, !tbaa !31 ; 2 uses
  br i1 %i.all, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.i, label %.lr.ph.i.i.i.i18.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.i: ; preds = %bb.fn
  store i32 %.pre.i.i.i.i13.i, ptr %i.alk, align 4, !tbaa !31
  %140 = getelementptr inbounds nuw i8, ptr %i.alk, i64 4
  store ptr %140, ptr %i.bg, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit

.lr.ph.i.i.i.i18.i:                               ; preds = %bb.fn
  store i32 %.pre.i.i.i.i13.i, ptr %i.alc, align 4, !tbaa !31
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alc, i64 4 ; 2 uses
  %.not.i.i3210 = icmp eq ptr %i.alk, %i.alm
  br i1 %.not.i.i3210, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit, label %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i3211

_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i3211: ; preds = %.lr.ph.i.i.i.i18.i
  store ptr %i.alm, ptr %i.bg, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit: ; preds = %.noexc3215, %bb.fm, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.i, %.lr.ph.i.i.i.i18.i, %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i3211
  %i.aln = load ptr, ptr %i.bf, align 8, !tbaa !48 ; 6 uses
  %i.alo = load ptr, ptr %i.cc, align 8, !tbaa !99 ; 2 uses
  %.not.i2488 = icmp eq ptr %i.aln, %i.alo
  br i1 %.not.i2488, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit
  %i.alp = load i32, ptr %17, align 4, !tbaa !31
  store i32 %i.alp, ptr %i.aln, align 4, !tbaa !31
  %i.alq = getelementptr inbounds nuw i8, ptr %i.aln, i64 4 ; 2 uses
  store ptr %i.alq, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2503

bb.fp:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit
  %i.alr = load ptr, ptr %10, align 8, !tbaa !49  ; 7 uses
  %i.als = ptrtoint ptr %i.aln to i64             ; 2 uses
  %i.alt = ptrtoint ptr %i.alr to i64             ; 4 uses
  %i.alu = sub i64 %i.als, %i.alt                 ; 3 uses
  %i.alv = icmp eq i64 %i.alu, 9223372036854775804
  br i1 %i.alv, label %.invoke, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2489

.invoke:                                          ; preds = %bb.fs, %bb.fp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.cont unwind label %.loopexit.split-lp3805

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2489: ; preds = %bb.fp
  %i.alw = ashr exact i64 %i.alu, 2               ; 3 uses
  %.sroa.speculated.i.i.i2490 = call i64 @llvm.umax.i64(i64 %i.alw, i64 1)
  %i.alx = add nsw i64 %.sroa.speculated.i.i.i2490, %i.alw ; 2 uses
  %i.aly = icmp ult i64 %i.alx, %i.alw
  %i.alz = call i64 @llvm.umin.i64(i64 %i.alx, i64 2305843009213693951)
  %i.ama = select i1 %i.aly, i64 2305843009213693951, i64 %i.alz ; 3 uses
  %.not.i.i.i2491 = icmp ne i64 %i.ama, 0
  call void @llvm.assume(i1 %.not.i.i.i2491)
  %i.amb = shl nuw nsw i64 %i.ama, 2
  %i.amc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amb) #26
          to label %.noexc2502 unwind label %.loopexit3804 ; 8 uses

.noexc2502:                                       ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2489
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.alu
  %i.ame = load i32, ptr %17, align 4, !tbaa !31
  store i32 %i.ame, ptr %i.amd, align 4, !tbaa !31
  %.not10.i.i.i.i.i2492 = icmp eq ptr %i.alr, %i.aln
  br i1 %.not10.i.i.i.i.i2492, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2497, label %.lr.ph.i.i.i.i.i2493.preheader

.lr.ph.i.i.i.i.i2493.preheader:                   ; preds = %.noexc2502
  %i.amf = ptrtoaddr ptr %i.amc to i64
  %i.amg = add i64 %i.als, -4
  %i.amh = sub i64 %i.amg, %i.alt                 ; 2 uses
  %i.ami = lshr i64 %i.amh, 2
  %i.amj = add nuw nsw i64 %i.ami, 1              ; 2 uses
  %min.iters.check13135 = icmp ult i64 %i.amh, 28
  %i.amk = sub i64 %i.alt, %i.amf
  %diff.check13133 = icmp ugt i64 %i.amk, -32
  %or.cond13219.a = or i1 %min.iters.check13135, %diff.check13133
  br i1 %or.cond13219.a, label %.lr.ph.i.i.i.i.i2493.preheader13270, label %vector.ph13136

vector.ph13136:                                   ; preds = %.lr.ph.i.i.i.i.i2493.preheader
  %n.vec13137 = and i64 %i.amj, 9223372036854775800 ; 3 uses
  %i.aml = shl i64 %n.vec13137, 2                 ; 2 uses
  %i.amm = getelementptr i8, ptr %i.amc, i64 %i.aml ; 2 uses
  %i.amn = getelementptr i8, ptr %i.alr, i64 %i.aml
  br label %vector.body13138

vector.body13138:                                 ; preds = %vector.body13138, %vector.ph13136
  %index13139 = phi i64 [ 0, %vector.ph13136 ], [ %index.next13144, %vector.body13138 ] ; 2 uses
  %i.amo = shl i64 %index13139, 2                 ; 2 uses
  %next.gep13140 = getelementptr i8, ptr %i.amc, i64 %i.amo ; 2 uses
  %next.gep13141 = getelementptr i8, ptr %i.alr, i64 %i.amo ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.amp = getelementptr i8, ptr %next.gep13141, i64 16
  %wide.load13142 = load <4 x i32>, ptr %next.gep13141, align 4, !tbaa !31, !alias.scope !300, !noalias !299
  %wide.load13143 = load <4 x i32>, ptr %i.amp, align 4, !tbaa !31, !alias.scope !300, !noalias !299
  %i.amq = getelementptr i8, ptr %next.gep13140, i64 16
  store <4 x i32> %wide.load13142, ptr %next.gep13140, align 4, !tbaa !31, !alias.scope !299, !noalias !300
  store <4 x i32> %wide.load13143, ptr %i.amq, align 4, !tbaa !31, !alias.scope !299, !noalias !300
  %index.next13144 = add nuw i64 %index13139, 8   ; 2 uses
  %i.amr = icmp eq i64 %index.next13144, %n.vec13137
  br i1 %i.amr, label %middle.block13145, label %vector.body13138, !llvm.loop !187

middle.block13145:                                ; preds = %vector.body13138
  %cmp.n13146 = icmp eq i64 %i.amj, %n.vec13137
  br i1 %cmp.n13146, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2497, label %.lr.ph.i.i.i.i.i2493.preheader13270

.lr.ph.i.i.i.i.i2493.preheader13270:              ; preds = %.lr.ph.i.i.i.i.i2493.preheader, %middle.block13145
  %.012.i.i.i.i.i2494.ph = phi ptr [ %i.amc, %.lr.ph.i.i.i.i.i2493.preheader ], [ %i.amm, %middle.block13145 ]
  %.0911.i.i.i.i.i2495.ph = phi ptr [ %i.alr, %.lr.ph.i.i.i.i.i2493.preheader ], [ %i.amn, %middle.block13145 ]
  br label %.lr.ph.i.i.i.i.i2493

.lr.ph.i.i.i.i.i2493:                             ; preds = %.lr.ph.i.i.i.i.i2493.preheader13270, %.lr.ph.i.i.i.i.i2493
  %.012.i.i.i.i.i2494 = phi ptr [ %i.amu, %.lr.ph.i.i.i.i.i2493 ], [ %.012.i.i.i.i.i2494.ph, %.lr.ph.i.i.i.i.i2493.preheader13270 ] ; 2 uses
  %.0911.i.i.i.i.i2495 = phi ptr [ %i.amt, %.lr.ph.i.i.i.i.i2493 ], [ %.0911.i.i.i.i.i2495.ph, %.lr.ph.i.i.i.i.i2493.preheader13270 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ams = load i32, ptr %.0911.i.i.i.i.i2495, align 4, !tbaa !31, !alias.scope !300, !noalias !299
  store i32 %i.ams, ptr %.012.i.i.i.i.i2494, align 4, !tbaa !31, !alias.scope !299, !noalias !300
  %i.amt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i2495, i64 4 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i2494, i64 4 ; 2 uses
  %.not.i.i.i.i.i2496 = icmp eq ptr %i.amt, %i.aln
  br i1 %.not.i.i.i.i.i2496, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2497, label %.lr.ph.i.i.i.i.i2493, !llvm.loop !188

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2497: ; preds = %.lr.ph.i.i.i.i.i2493, %middle.block13145, %.noexc2502
  %.0.lcssa.i.i.i.i.i2498 = phi ptr [ %i.amc, %.noexc2502 ], [ %i.amm, %middle.block13145 ], [ %i.amu, %.lr.ph.i.i.i.i.i2493 ]
  %i.amv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i2498, i64 4 ; 2 uses
  %.not.i23.i.i2499 = icmp eq ptr %i.alr, null
  br i1 %.not.i23.i.i2499, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2500, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2497
  %i.amw = load ptr, ptr %i.cc, align 8, !tbaa !99
  %i.amx = ptrtoint ptr %i.amw to i64
  %i.amy = sub i64 %i.amx, %i.alt
  call void @_ZdlPvm(ptr noundef nonnull %i.alr, i64 noundef %i.amy) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2500

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2500: ; preds = %bb.fq, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2497
  store ptr %i.amc, ptr %10, align 8, !tbaa !49
  store ptr %i.amv, ptr %i.bf, align 8, !tbaa !48
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %i.ama ; 2 uses
  store ptr %i.amz, ptr %i.cc, align 8, !tbaa !99
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2503

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2503: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2500, %bb.fo
  %i.ana = phi ptr [ %i.amz, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2500 ], [ %i.alo, %bb.fo ] ; 4 uses
  %i.anb = phi ptr [ %i.amv, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2500 ], [ %i.alq, %bb.fo ] ; 3 uses
  %.not.i2504 = icmp eq ptr %i.anb, %i.ana
  br i1 %.not.i2504, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2503
  store i32 %i.aeg, ptr %i.anb, align 4, !tbaa !31
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 4
  store ptr %i.anc, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2519

bb.fs:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2503
  %i.and = load ptr, ptr %10, align 8, !tbaa !49  ; 7 uses
  %i.ane = ptrtoint ptr %i.ana to i64             ; 2 uses
  %i.anf = ptrtoint ptr %i.and to i64             ; 4 uses
  %i.ang = sub i64 %i.ane, %i.anf                 ; 3 uses
  %i.anh = icmp eq i64 %i.ang, 9223372036854775804
  br i1 %i.anh, label %.invoke, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2505

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2505: ; preds = %bb.fs
  %i.ani = ashr exact i64 %i.ang, 2               ; 3 uses
  %.sroa.speculated.i.i.i2506 = call i64 @llvm.umax.i64(i64 %i.ani, i64 1)
  %i.anj = add nsw i64 %.sroa.speculated.i.i.i2506, %i.ani ; 2 uses
  %i.ank = icmp ult i64 %i.anj, %i.ani
  %i.anl = call i64 @llvm.umin.i64(i64 %i.anj, i64 2305843009213693951)
  %i.anm = select i1 %i.ank, i64 2305843009213693951, i64 %i.anl ; 3 uses
  %.not.i.i.i2507 = icmp ne i64 %i.anm, 0
  call void @llvm.assume(i1 %.not.i.i.i2507)
  %i.ann = shl nuw nsw i64 %i.anm, 2
  %i.ano = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ann) #26
          to label %.noexc2518 unwind label %.loopexit3804 ; 8 uses

.noexc2518:                                       ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2505
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.ang
  store i32 %i.aeg, ptr %i.anp, align 4, !tbaa !31
  %.not10.i.i.i.i.i2508 = icmp eq ptr %i.and, %i.ana
  br i1 %.not10.i.i.i.i.i2508, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2513, label %.lr.ph.i.i.i.i.i2509.preheader

.lr.ph.i.i.i.i.i2509.preheader:                   ; preds = %.noexc2518
  %i.anq = ptrtoaddr ptr %i.ano to i64
  %i.anr = add i64 %i.ane, -4
  %i.ans = sub i64 %i.anr, %i.anf                 ; 2 uses
  %i.ant = lshr i64 %i.ans, 2
  %i.anu = add nuw nsw i64 %i.ant, 1              ; 2 uses
  %min.iters.check13118 = icmp ult i64 %i.ans, 28
  %i.anv = sub i64 %i.anf, %i.anq
  %diff.check13116 = icmp ugt i64 %i.anv, -32
  %or.cond13220.a = or i1 %min.iters.check13118, %diff.check13116
  br i1 %or.cond13220.a, label %.lr.ph.i.i.i.i.i2509.preheader13269, label %vector.ph13119

vector.ph13119:                                   ; preds = %.lr.ph.i.i.i.i.i2509.preheader
  %n.vec13120 = and i64 %i.anu, 9223372036854775800 ; 3 uses
  %i.anw = shl i64 %n.vec13120, 2                 ; 2 uses
  %i.anx = getelementptr i8, ptr %i.ano, i64 %i.anw ; 2 uses
  %i.any = getelementptr i8, ptr %i.and, i64 %i.anw
  br label %vector.body13121

vector.body13121:                                 ; preds = %vector.body13121, %vector.ph13119
  %index13122 = phi i64 [ 0, %vector.ph13119 ], [ %index.next13127, %vector.body13121 ] ; 2 uses
  %i.anz = shl i64 %index13122, 2                 ; 2 uses
  %next.gep13123 = getelementptr i8, ptr %i.ano, i64 %i.anz ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
  %i.aux = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.hu:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit2571
  %i.auy = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.hv:                                            ; preds = %bb.hk
  %i.auz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

.preheader11416:                                  ; preds = %bb.hl, %.preheader11416
  %indvars.iv8661 = phi i64 [ %indvars.iv.next8662, %.preheader11416 ], [ 0, %bb.hl ] ; 3 uses
  %i.ava = trunc i64 %indvars.iv8661 to i32
  %i.avb = sub i32 %i.ava, %i.aua
  %i.avc = sitofp i32 %i.avb to float
  %i.avd = fneg float %i.avc
  %i.ave = fmul float %i.atp, %i.avd
  %i.avf = call noundef float @expf(float noundef %i.ave) #23
  %i.avg = fadd float %i.avf, 1.000000e+00
  %i.avh = fdiv float 1.000000e+00, %i.avg
  %i.avi = fdiv float %i.avh, %i.aud
  %i.avj = insertelement <4 x float> poison, float %i.avi, i64 0
  %i.avk = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.avj)
  %i.avl = add nsw i32 %i.avk, %i.aum
  %i.avm = call i32 @llvm.smax.i32(i32 %i.avl, i32 0)
  %i.avn = call i32 @llvm.umin.i32(i32 %i.avm, i32 255)
  %i.avo = trunc nuw i32 %i.avn to i8
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aup, i64 %indvars.iv8661
  store i8 %i.avo, ptr %i.avp, align 1, !tbaa !74
  %indvars.iv.next8662 = add nuw nsw i64 %indvars.iv8661, 1 ; 2 uses
  %exitcond8664.not.a = icmp eq i64 %indvars.iv.next8662, 256
  br i1 %exitcond8664.not.a, label %.loopexit3773, label %.preheader11416, !llvm.loop !195

.preheader11417:                                  ; preds = %bb.hl, %.preheader11417
  %indvars.iv8657 = phi i64 [ %indvars.iv.next8658, %.preheader11417 ], [ -128, %bb.hl ] ; 3 uses
  %i.avq = trunc i64 %indvars.iv8657 to i32
  %i.avr = sub i32 %i.avq, %i.aua
  %i.avs = sitofp i32 %i.avr to float
  %i.avt = fneg float %i.avs
  %i.avu = fmul float %i.atp, %i.avt
  %i.avv = call noundef float @expf(float noundef %i.avu) #23
  %i.avw = fadd float %i.avv, 1.000000e+00
  %i.avx = fdiv float 1.000000e+00, %i.avw
  %i.avy = fdiv float %i.avx, %i.aud
  %i.avz = insertelement <4 x float> poison, float %i.avy, i64 0
  %i.awa = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.avz)
  %i.awb = add nsw i32 %i.awa, %i.aum
  %i.awc = call i32 @llvm.smax.i32(i32 %i.awb, i32 -128)
  %i.awd = call i32 @llvm.smin.i32(i32 %i.awc, i32 127)
  %i.awe = trunc nsw i32 %i.awd to i8
  %i.awf = getelementptr i8, ptr %i.aup, i64 %indvars.iv8657
  %i.awg = getelementptr i8, ptr %i.awf, i64 128
  store i8 %i.awe, ptr %i.awg, align 1, !tbaa !74
  %indvars.iv.next8658 = add nsw i64 %indvars.iv8657, 1 ; 2 uses
  %exitcond8660.not = icmp eq i64 %indvars.iv.next8658, 128
  br i1 %exitcond8660.not, label %.loopexit3773, label %.preheader11417, !llvm.loop !196

.loopexit3773:                                    ; preds = %.preheader11417, %.preheader11416
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  store ptr %i.cs, ptr %28, align 8, !tbaa !75
  store i64 0, ptr %i.ct, align 8, !tbaa !76
  store i8 0, ptr %i.cs, align 8, !tbaa !74
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !75
  store i64 0, ptr %i.cw, align 8, !tbaa !76
  store i8 0, ptr %i.cv, align 8, !tbaa !74
  store float 1.000000e+00, ptr %i.cx, align 8, !tbaa !292
  store i32 0, ptr %i.cy, align 4, !tbaa !293
  store float 1.000000e+00, ptr %i.cz, align 8, !tbaa !294
  store i32 0, ptr %i.da, align 4, !tbaa !295
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.db) #23
  %i.awh = load ptr, ptr %i.f, align 8, !tbaa !104
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %i.awi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2579 unwind label %bb.jd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2579: ; preds = %.loopexit3773
  %i.awj = load i64, ptr %i.cw, align 8, !tbaa !76
  %i.awk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 noundef 0, i64 noundef %i.awj, ptr noundef nonnull @.str.3, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2581 unwind label %bb.jd ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2581: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2579
  store float %i.atp, ptr %i.cx, align 8, !tbaa !292
  store i32 %i.aua, ptr %i.cy, align 4, !tbaa !293
  store float %i.aud, ptr %i.cz, align 8, !tbaa !294
  store i32 %i.aum, ptr %i.da, align 4, !tbaa !295
  %i.awl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.db, ptr noundef nonnull align 8 dereferenceable(208) %27)
          to label %bb.hw unwind label %bb.jd     ; 0 uses

bb.hw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2581
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  invoke void @_ZN2cv3dnn14dnn5_v2026060519ActivationLayerInt86createERKNS1_20ActivationInt8ParamsE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.131") align 8 %29, ptr noundef nonnull align 8 dereferenceable(288) %28)
          to label %bb.hx unwind label %bb.je

bb.hx:                                            ; preds = %bb.hw
  %i.awm = load ptr, ptr %0, align 8, !tbaa !20
  %i.awn = load ptr, ptr %29, align 8, !tbaa !298 ; 2 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 80
  store ptr %i.awm, ptr %i.awo, align 8, !tbaa !285
  %i.awp = load i32, ptr %i.e, align 4, !tbaa !31 ; 2 uses
  %i.awq = sext i32 %i.awp to i64
  %i.awr = load ptr, ptr %12, align 8, !tbaa !30
  %i.aws = getelementptr inbounds nuw [16 x i8], ptr %i.awr, i64 %i.awq ; 2 uses
  store ptr %i.awn, ptr %i.aws, align 8, !tbaa !45
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 8 ; 3 uses
  %i.awu = load ptr, ptr %i.dc, align 8, !tbaa !94 ; 4 uses
  %i.awv = load ptr, ptr %i.awt, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i2582 = icmp eq ptr %i.awu, %i.awv
  br i1 %.not.i.i.i.i2582, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit2592, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %.not7.i.i.i.i2583 = icmp eq ptr %i.awu, null
  br i1 %.not7.i.i.i.i2583, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2585, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awu, i64 8 ; 3 uses
  %i.awx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i2584 = icmp eq i8 %i.awx, 0
  br i1 %.not.i.i.i.i.i2584, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.awy = load i32, ptr %i.aww, align 4, !tbaa !31
  %i.awz = add nsw i32 %i.awy, 1
  store i32 %i.awz, ptr %i.aww, align 4, !tbaa !31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2585

bb.ib:                                            ; preds = %bb.hz
  %i.axa = atomicrmw volatile add ptr %i.aww, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i2591 = load ptr, ptr %i.awt, align 8, !tbaa !94
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2585

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2585: ; preds = %bb.ib, %bb.ia, %bb.hy
  %i.axb = phi ptr [ %i.awv, %bb.hy ], [ %i.awv, %bb.ia ], [ %.pr.pre.i.i.i.i2591, %bb.ib ] ; 8 uses
  %.not8.i.i.i.i2586 = icmp eq ptr %i.axb, null
  br i1 %.not8.i.i.i.i2586, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2590, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2585
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 8 ; 4 uses
  %i.axd = load atomic i64, ptr %i.axc acquire, align 8 ; 2 uses
  %i.axe = icmp eq i64 %i.axd, 4294967297
  %i.axf = trunc i64 %i.axd to i32                ; 2 uses
  br i1 %i.axe, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  store i32 0, ptr %i.axc, align 8, !tbaa !96
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axb, i64 12
  store i32 0, ptr %i.axg, align 4, !tbaa !97
  %i.axh = load ptr, ptr %i.axb, align 8, !tbaa !26
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 16
  %i.axj = load ptr, ptr %i.axi, align 8
  call void %i.axj(ptr noundef nonnull align 8 dereferenceable(16) %i.axb) #23, !inline_history !183
  %i.axk = load ptr, ptr %i.axb, align 8, !tbaa !26
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 24
  %i.axm = load ptr, ptr %i.axl, align 8
  call void %i.axm(ptr noundef nonnull align 8 dereferenceable(16) %i.axb) #23, !inline_history !183
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2590

bb.ie:                                            ; preds = %bb.ic
  %i.axn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i.i.i.i2587 = icmp eq i8 %i.axn, 0
  br i1 %.not.i9.i.i.i.i2587, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.axo = add nsw i32 %i.axf, -1
  store i32 %i.axo, ptr %i.axc, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2588

bb.ig:                                            ; preds = %bb.ie
  %i.axp = atomicrmw volatile add ptr %i.axc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2588

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2588: ; preds = %bb.ig, %bb.if
  %.0.i.i.i.i.i.i2589 = phi i32 [ %i.axf, %bb.if ], [ %i.axp, %bb.ig ]
  %i.axq = icmp eq i32 %.0.i.i.i.i.i.i2589, 1
  br i1 %i.axq, label %bb.ih, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2590, !prof !98

bb.ih:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2588
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.axb) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2590

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2590: ; preds = %bb.ih, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2588, %bb.id, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2585
  store ptr %i.awu, ptr %i.awt, align 8, !tbaa !94
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit2592

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit2592: ; preds = %bb.hx, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2590
  %i.axr = load ptr, ptr %i.arr, align 8, !tbaa !49 ; 2 uses
  %i.axs = load ptr, ptr %i.cb, align 8, !tbaa !99
  %i.axt = load ptr, ptr %13, align 8, !tbaa !49  ; 4 uses
  %i.axu = icmp eq ptr %i.axs, %i.axt
  br i1 %i.axu, label %bb.ii, label %bb.ik

bb.ii:                                            ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit2592
  %i.axv = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.noexc3243 unwind label %.loopexit3814 ; 3 uses

.noexc3243:                                       ; preds = %bb.ii
  %.pre.i.i.i.i.i.i.i3236 = load i32, ptr %i.axr, align 4, !tbaa !31
  store i32 %.pre.i.i.i.i.i.i.i3236, ptr %i.axv, align 4, !tbaa !31
  %141 = getelementptr inbounds nuw i8, ptr %i.axv, i64 4 ; 2 uses
  %i.axw = load ptr, ptr %13, align 8, !tbaa !49  ; 3 uses
  %i.axx = load ptr, ptr %i.cb, align 8, !tbaa !99
  store ptr %i.axv, ptr %13, align 8, !tbaa !49
  store ptr %141, ptr %i.bg, align 8, !tbaa !48
  store ptr %141, ptr %i.cb, align 8, !tbaa !99
  %.not.i.i.i.i3242 = icmp eq ptr %i.axw, null
  br i1 %.not.i.i.i.i3242, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit2594, label %bb.ij

bb.ij:                                            ; preds = %.noexc3243
  %i.axy = ptrtoint ptr %i.axx to i64
  %i.axz = ptrtoint ptr %i.axw to i64
  %i.aya = sub i64 %i.axy, %i.axz
  call void @_ZdlPvm(ptr noundef nonnull %i.axw, i64 noundef %i.aya) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit2594

bb.ik:                                            ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_19ActivationLayerInt8EEERS4_RKNS0_IT_EE.exit2592
  %i.ayb = load ptr, ptr %i.bg, align 8, !tbaa !48 ; 4 uses
  %i.ayc = icmp eq ptr %i.ayb, %i.axt
  %.pre.i.i.i.i13.i3230 = load i32, ptr %i.axr, align 4, !tbaa !31 ; 2 uses
  br i1 %i.ayc, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.i3229, label %.lr.ph.i.i.i.i18.i3217

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.i3229: ; preds = %bb.ik
  store i32 %.pre.i.i.i.i13.i3230, ptr %i.ayb, align 4, !tbaa !31
  %142 = getelementptr inbounds nuw i8, ptr %i.ayb, i64 4
  store ptr %142, ptr %i.bg, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit2594

.lr.ph.i.i.i.i18.i3217:                           ; preds = %bb.ik
  store i32 %.pre.i.i.i.i13.i3230, ptr %i.axt, align 4, !tbaa !31
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axt, i64 4 ; 2 uses
  %.not.i.i3221 = icmp eq ptr %i.ayb, %i.ayd
  br i1 %.not.i.i3221, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit2594, label %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i3222

_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i3222: ; preds = %.lr.ph.i.i.i.i18.i3217
  store ptr %i.ayd, ptr %i.bg, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit2594

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit2594: ; preds = %.noexc3243, %bb.ij, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.i3229, %.lr.ph.i.i.i.i18.i3217, %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i3222
  %i.aye = load ptr, ptr %i.bf, align 8, !tbaa !48 ; 6 uses
  %i.ayf = load ptr, ptr %i.cc, align 8, !tbaa !99 ; 2 uses
  %.not.i2595 = icmp eq ptr %i.aye, %i.ayf
  br i1 %.not.i2595, label %bb.im, label %bb.il

bb.il:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit2594
  %i.ayg = load i32, ptr %17, align 4, !tbaa !31
  store i32 %i.ayg, ptr %i.aye, align 4, !tbaa !31
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.aye, i64 4 ; 2 uses
  store ptr %i.ayh, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2610

bb.im:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE6assignEmRKS3_.exit2594
  %i.ayi = load ptr, ptr %10, align 8, !tbaa !49  ; 7 uses
  %i.ayj = ptrtoint ptr %i.aye to i64             ; 2 uses
  %i.ayk = ptrtoint ptr %i.ayi to i64             ; 4 uses
  %i.ayl = sub i64 %i.ayj, %i.ayk                 ; 3 uses
  %i.aym = icmp eq i64 %i.ayl, 9223372036854775804
  br i1 %i.aym, label %.invoke11395.a, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2596

.invoke11395.a:                                   ; preds = %bb.ip, %bb.im
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.cont11396.a unwind label %.loopexit.split-lp3815

.cont11396.a:                                     ; preds = %.invoke11395.a
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2596: ; preds = %bb.im
  %i.ayn = ashr exact i64 %i.ayl, 2               ; 3 uses
  %.sroa.speculated.i.i.i2597 = call i64 @llvm.umax.i64(i64 %i.ayn, i64 1)
  %i.ayo = add nsw i64 %.sroa.speculated.i.i.i2597, %i.ayn ; 2 uses
  %i.ayp = icmp ult i64 %i.ayo, %i.ayn
  %i.ayq = call i64 @llvm.umin.i64(i64 %i.ayo, i64 2305843009213693951)
  %i.ayr = select i1 %i.ayp, i64 2305843009213693951, i64 %i.ayq ; 3 uses
  %.not.i.i.i2598 = icmp ne i64 %i.ayr, 0
  call void @llvm.assume(i1 %.not.i.i.i2598)
  %i.ays = shl nuw nsw i64 %i.ayr, 2
  %i.ayt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ays) #26
          to label %.noexc2609 unwind label %.loopexit3814 ; 8 uses

.noexc2609:                                       ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2596
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 %i.ayl
  %i.ayv = load i32, ptr %17, align 4, !tbaa !31
  store i32 %i.ayv, ptr %i.ayu, align 4, !tbaa !31
  %.not10.i.i.i.i.i2599 = icmp eq ptr %i.ayi, %i.aye
  br i1 %.not10.i.i.i.i.i2599, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2604, label %.lr.ph.i.i.i.i.i2600.preheader

.lr.ph.i.i.i.i.i2600.preheader:                   ; preds = %.noexc2609
  %i.ayw = ptrtoaddr ptr %i.ayt to i64
  %i.ayx = add i64 %i.ayj, -4
  %i.ayy = sub i64 %i.ayx, %i.ayk                 ; 2 uses
  %i.ayz = lshr i64 %i.ayy, 2
  %i.aza = add nuw nsw i64 %i.ayz, 1              ; 2 uses
  %min.iters.check13101 = icmp ult i64 %i.ayy, 28
  %i.azb = sub i64 %i.ayk, %i.ayw
  %diff.check13099 = icmp ugt i64 %i.azb, -32
  %or.cond13221.a = or i1 %min.iters.check13101, %diff.check13099
  br i1 %or.cond13221.a, label %.lr.ph.i.i.i.i.i2600.preheader13267, label %vector.ph13102

vector.ph13102:                                   ; preds = %.lr.ph.i.i.i.i.i2600.preheader
  %n.vec13103 = and i64 %i.aza, 9223372036854775800 ; 3 uses
  %i.azc = shl i64 %n.vec13103, 2                 ; 2 uses
  %i.azd = getelementptr i8, ptr %i.ayt, i64 %i.azc ; 2 uses
  %i.aze = getelementptr i8, ptr %i.ayi, i64 %i.azc
  br label %vector.body13104

vector.body13104:                                 ; preds = %vector.body13104, %vector.ph13102
  %index13105 = phi i64 [ 0, %vector.ph13102 ], [ %index.next13110, %vector.body13104 ] ; 2 uses
  %i.azf = shl i64 %index13105, 2                 ; 2 uses
  %next.gep13106 = getelementptr i8, ptr %i.ayt, i64 %i.azf ; 2 uses
  %next.gep13107 = getelementptr i8, ptr %i.ayi, i64 %i.azf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.azg = getelementptr i8, ptr %next.gep13107, i64 16
  %wide.load13108 = load <4 x i32>, ptr %next.gep13107, align 4, !tbaa !31, !alias.scope !304, !noalias !303
  %wide.load13109 = load <4 x i32>, ptr %i.azg, align 4, !tbaa !31, !alias.scope !304, !noalias !303
  %i.azh = getelementptr i8, ptr %next.gep13106, i64 16
  store <4 x i32> %wide.load13108, ptr %next.gep13106, align 4, !tbaa !31, !alias.scope !303, !noalias !304
  store <4 x i32> %wide.load13109, ptr %i.azh, align 4, !tbaa !31, !alias.scope !303, !noalias !304
  %index.next13110 = add nuw i64 %index13105, 8   ; 2 uses
  %i.azi = icmp eq i64 %index.next13110, %n.vec13103
  br i1 %i.azi, label %middle.block13111, label %vector.body13104, !llvm.loop !200

middle.block13111:                                ; preds = %vector.body13104
  %cmp.n13112 = icmp eq i64 %i.aza, %n.vec13103
  br i1 %cmp.n13112, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2604, label %.lr.ph.i.i.i.i.i2600.preheader13267

.lr.ph.i.i.i.i.i2600.preheader13267:              ; preds = %.lr.ph.i.i.i.i.i2600.preheader, %middle.block13111
  %.012.i.i.i.i.i2601.ph = phi ptr [ %i.ayt, %.lr.ph.i.i.i.i.i2600.preheader ], [ %i.azd, %middle.block13111 ]
  %.0911.i.i.i.i.i2602.ph = phi ptr [ %i.ayi, %.lr.ph.i.i.i.i.i2600.preheader ], [ %i.aze, %middle.block13111 ]
  br label %.lr.ph.i.i.i.i.i2600

.lr.ph.i.i.i.i.i2600:                             ; preds = %.lr.ph.i.i.i.i.i2600.preheader13267, %.lr.ph.i.i.i.i.i2600
  %.012.i.i.i.i.i2601 = phi ptr [ %i.azl, %.lr.ph.i.i.i.i.i2600 ], [ %.012.i.i.i.i.i2601.ph, %.lr.ph.i.i.i.i.i2600.preheader13267 ] ; 2 uses
  %.0911.i.i.i.i.i2602 = phi ptr [ %i.azk, %.lr.ph.i.i.i.i.i2600 ], [ %.0911.i.i.i.i.i2602.ph, %.lr.ph.i.i.i.i.i2600.preheader13267 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.azj = load i32, ptr %.0911.i.i.i.i.i2602, align 4, !tbaa !31, !alias.scope !304, !noalias !303
  store i32 %i.azj, ptr %.012.i.i.i.i.i2601, align 4, !tbaa !31, !alias.scope !303, !noalias !304
  %i.azk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i2602, i64 4 ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i2601, i64 4 ; 2 uses
  %.not.i.i.i.i.i2603 = icmp eq ptr %i.azk, %i.aye
  br i1 %.not.i.i.i.i.i2603, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2604, label %.lr.ph.i.i.i.i.i2600, !llvm.loop !201

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2604: ; preds = %.lr.ph.i.i.i.i.i2600, %middle.block13111, %.noexc2609
  %.0.lcssa.i.i.i.i.i2605 = phi ptr [ %i.ayt, %.noexc2609 ], [ %i.azd, %middle.block13111 ], [ %i.azl, %.lr.ph.i.i.i.i.i2600 ]
  %i.azm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i2605, i64 4 ; 2 uses
  %.not.i23.i.i2606 = icmp eq ptr %i.ayi, null
  br i1 %.not.i23.i.i2606, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2607, label %bb.in

bb.in:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2604
  %i.azn = load ptr, ptr %i.cc, align 8, !tbaa !99
  %i.azo = ptrtoint ptr %i.azn to i64
  %i.azp = sub i64 %i.azo, %i.ayk
  call void @_ZdlPvm(ptr noundef nonnull %i.ayi, i64 noundef %i.azp) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2607

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2607: ; preds = %bb.in, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2604
  store ptr %i.ayt, ptr %10, align 8, !tbaa !49
  store ptr %i.azm, ptr %i.bf, align 8, !tbaa !48
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.ayt, i64 %i.ayr ; 2 uses
  store ptr %i.azq, ptr %i.cc, align 8, !tbaa !99
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2610

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2610: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2607, %bb.il
  %i.azr = phi ptr [ %i.azq, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2607 ], [ %i.ayf, %bb.il ] ; 4 uses
  %i.azs = phi ptr [ %i.azm, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2607 ], [ %i.ayh, %bb.il ] ; 3 uses
  %.not.i2611 = icmp eq ptr %i.azs, %i.azr
  br i1 %.not.i2611, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2610
  store i32 %i.aqp, ptr %i.azs, align 4, !tbaa !31
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 4
  store ptr %i.azt, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2626

bb.ip:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2610
  %i.azu = load ptr, ptr %10, align 8, !tbaa !49  ; 7 uses
  %i.azv = ptrtoint ptr %i.azr to i64             ; 2 uses
  %i.azw = ptrtoint ptr %i.azu to i64             ; 4 uses
  %i.azx = sub i64 %i.azv, %i.azw                 ; 3 uses
  %i.azy = icmp eq i64 %i.azx, 9223372036854775804
  br i1 %i.azy, label %.invoke11395.a, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2612

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2612: ; preds = %bb.ip
  %i.azz = ashr exact i64 %i.azx, 2               ; 3 uses
  %.sroa.speculated.i.i.i2613 = call i64 @llvm.umax.i64(i64 %i.azz, i64 1)
  %i.baa = add nsw i64 %.sroa.speculated.i.i.i2613, %i.azz ; 2 uses
  %i.bab = icmp ult i64 %i.baa, %i.azz
  %i.bac = call i64 @llvm.umin.i64(i64 %i.baa, i64 2305843009213693951)
  %i.bad = select i1 %i.bab, i64 2305843009213693951, i64 %i.bac ; 3 uses
  %.not.i.i.i2614 = icmp ne i64 %i.bad, 0
  call void @llvm.assume(i1 %.not.i.i.i2614)
  %i.bae = shl nuw nsw i64 %i.bad, 2
  %i.baf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bae) #26
          to label %.noexc2625 unwind label %.loopexit3814 ; 8 uses

.noexc2625:                                       ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2612
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 %i.azx
  store i32 %i.aqp, ptr %i.bag, align 4, !tbaa !31
  %.not10.i.i.i.i.i2615 = icmp eq ptr %i.azu, %i.azr
  br i1 %.not10.i.i.i.i.i2615, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2620, label %.lr.ph.i.i.i.i.i2616.preheader

.lr.ph.i.i.i.i.i2616.preheader:                   ; preds = %.noexc2625
  %i.bah = ptrtoaddr ptr %i.baf to i64
  %i.bai = add i64 %i.azv, -4
  %i.baj = sub i64 %i.bai, %i.azw                 ; 2 uses
  %i.bak = lshr i64 %i.baj, 2
  %i.bal = add nuw nsw i64 %i.bak, 1              ; 2 uses
  %min.iters.check13084 = icmp ult i64 %i.baj, 28
  %i.bam = sub i64 %i.azw, %i.bah
  %diff.check13082 = icmp ugt i64 %i.bam, -32
  %or.cond13222 = or i1 %min.iters.check13084, %diff.check13082
  br i1 %or.cond13222, label %.lr.ph.i.i.i.i.i2616.preheader13266, label %vector.ph13085

vector.ph13085:                                   ; preds = %.lr.ph.i.i.i.i.i2616.preheader
  %n.vec13086 = and i64 %i.bal, 9223372036854775800 ; 3 uses
  %i.ban = shl i64 %n.vec13086, 2                 ; 2 uses
  %i.bao = getelementptr i8, ptr %i.baf, i64 %i.ban ; 2 uses
  %i.bap = getelementptr i8, ptr %i.azu, i64 %i.ban
  br label %vector.body13087

vector.body13087:                                 ; preds = %vector.body13087, %vector.ph13085
  %index13088 = phi i64 [ 0, %vector.ph13085 ], [ %index.next13093, %vector.body13087 ] ; 2 uses
  %i.baq = shl i64 %index13088, 2                 ; 2 uses
  %next.gep13089 = getelementptr i8, ptr %i.baf, i64 %i.baq ; 2 uses
end_hunk_1
