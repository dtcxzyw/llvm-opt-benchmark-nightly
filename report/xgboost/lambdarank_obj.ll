begin_hunk_0_@_ZN7xgboost6common7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNS3_13LambdaRankObjINS3_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS6_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSI_10TensorViewIST_Li1EEEfNSS_IKmLm18446744073709551615EEEjT1_NSV_ISM_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINS7_12RankingCacheEEjSW_SY_SP_EUlmE_EEfSt7greaterIvEEESt6vectorISP_SaISP_EES14_SQ_SQ_T2_:bb.a

bb.b:                                             ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.ad = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %.noexc15 unwind label %bb.d   ; 0 uses

.noexc15:                                         ; preds = %bb.b
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common7ArgSortImNSA_18IndexTransformIterIZNS9_3obj9MakePairsIZNSD_13LambdaRankObjINSD_13LambdaRankMAPENS9_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNSG_15GetGradientImplEjRKNS9_16HostDeviceVectorIfEERKNS9_8MetaInfoEPNS9_6linalg6TensorINS9_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNSA_4SpanIKfLm18446744073709551615EEENSS_10TensorViewIS13_Li1EEEfNS12_IKmLm18446744073709551615EEEjT1_NS15_ISW_Li1EEEEUlmmE_EEvPKNS9_7ContextEjSt10shared_ptrINSH_12RankingCacheEEjS16_S18_SZ_EUlmE_EEfSt7greaterIvEEES3_ISZ_SaISZ_EES1E_S10_S10_T2_EUlRS17_S1P_E_EEEvSZ_SZ_S10_(ptr %i.n, ptr %.0.i.i.i.i.i, ptr nonnull %7, ptr nonnull %2)
          to label %_ZN7xgboost6common10StableSortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERZNS0_7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNSB_13LambdaRankObjINSB_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNSE_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSQ_10TensorViewIS11_Li1EEEfNS10_IKmLm18446744073709551615EEEjT1_NS13_ISU_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINSF_12RankingCacheEEjS14_S16_SX_EUlmE_EEfSt7greaterIvEEES5_ISX_SaISX_EES1C_SY_SY_T2_EUlRS15_S1N_E_EEvS1C_SX_SX_OSY_.exit unwind label %bb.d

_ZN7xgboost6common10StableSortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERZNS0_7ArgSortImNS0_18IndexTransformIterIZNS_3obj9MakePairsIZNSB_13LambdaRankObjINSB_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNSE_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS0_4SpanIKfLm18446744073709551615EEENSQ_10TensorViewIS11_Li1EEEfNS10_IKmLm18446744073709551615EEEjT1_NS13_ISU_Li1EEEEUlmmE_EEvPKNS_7ContextEjSt10shared_ptrINSF_12RankingCacheEEjS14_S16_SX_EUlmE_EEfSt7greaterIvEEES5_ISX_SaISX_EES1C_SY_SY_T2_EUlRS15_S1N_E_EEvS1C_SX_SX_OSY_.exit: ; preds = %.noexc15
  ret void

bb.c:                                             ; preds = %.noexc13, %thread-pre-split
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.e

bb.d:                                             ; preds = %.noexc15, %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.af, %bb.d ], [ %i.ae, %bb.c ]
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !665
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.aj) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr <2 x float> @_ZN7xgboost3obj10LambdaGradILb1ELb1EZNS0_13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS3_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSF_10TensorViewISR_Li1EEEfNSQ_IKmLm18446744073709551615EEEjT1_NST_ISJ_Li1EEEEUlDpRKT_E_EESJ_SU_SS_SW_mmSX_NST_IKdLi1EEES15_Pd(ptr noundef byval(%"class.xgboost::linalg::TensorView.15") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 noundef %5, i64 noundef %6, ptr noundef byval(%class.anon.461) align 8 %7, ptr noundef byval(%"class.xgboost::linalg::TensorView") align 8 %8, ptr noundef byval(%"class.xgboost::linalg::TensorView") align 8 %9, ptr noundef %10) local_unnamed_addr #30 comdat {
bb.a:
  %i.a = icmp ult i64 %5, %3
  br i1 %i.a, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %5
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 5 uses
  %i.d = icmp ult i64 %6, %3
  br i1 %i.d, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit26, label %bb.c, !prof !57

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit26: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %6
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 5 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.h = mul i64 %i.g, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !676  ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h
  %i.l = load float, ptr %i.k, align 4, !tbaa !231 ; 3 uses
  %i.m = mul i64 %i.g, %i.f
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !231 ; 3 uses
  %i.p = fcmp oeq float %i.l, %i.o
  br i1 %i.p, label %bb.d, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit26
  store double 0.000000e+00, ptr %10, align 8, !tbaa !67
  br label %bb.q

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit26
  %i.q = load i64, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.r = icmp ult i64 %i.q, %1
  br i1 %i.r, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit, label %bb.e, !prof !57

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE5frontEv.exit
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q
  %i.t = load float, ptr %i.s, align 4, !tbaa !231
  %i.u = getelementptr [8 x i8], ptr %4, i64 %3
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22   ; 2 uses
  %i.x = icmp ult i64 %i.w, %1
  br i1 %i.x, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit28, label %bb.f, !prof !57

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit28: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE4backEv.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w
  %i.z = load float, ptr %i.y, align 4, !tbaa !231
  %i.aa = icmp ult i64 %i.c, %1
  br i1 %i.aa, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit29, label %bb.g, !prof !57

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit28
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit29: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit28
  %i.ab = icmp ult i64 %i.f, %1
  br i1 %i.ab, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit30, label %bb.h, !prof !57

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit29
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit30: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit29
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !231
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.af = load float, ptr %i.ae, align 4, !tbaa !231
  %i.ag = fsub float %i.ad, %i.af                 ; 2 uses
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.ag)
  %i.ai = fneg float %i.ag                        ; 2 uses
  %i.aj = fcmp ogt float %i.ai, f0x42B16666
  %.sroa.speculated.i = select i1 %i.aj, float f0x42B16666, float %i.ai
  %i.ak = tail call float @expf(float noundef %.sroa.speculated.i) #11
  %i.al = fadd float %i.ak, 1.000000e+00
  %i.am = fadd float %i.al, 1.000000e-16
  %i.an = fdiv float 1.000000e+00, %i.am
  %i.ao = fpext float %i.an to double             ; 3 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !2116, !nonnull !211, !align !212 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2118, !nonnull !211, !align !584
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !58 ; 2 uses
  %i.at = icmp ugt i64 %5, %6
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit30
  %.020.i.i = phi i64 [ %5, %bb.i ], [ %6, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit30 ]
  %.019.i.i = phi i64 [ %6, %bb.i ], [ %5, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit30 ]
  %.018.i.i = phi float [ %i.l, %bb.i ], [ %i.o, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit30 ]
  %.0.i.i = phi float [ %i.o, %bb.i ], [ %i.l, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit30 ]
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !2119, !nonnull !211, !align !212
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !518 ; 2 uses
  %i.aw = add i32 %i.as, 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !58 ; 2 uses
  %i.ba = zext i32 %i.as to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2121, !nonnull !211, !align !212
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !219 ; 2 uses
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = icmp eq i32 %i.az, %i.bc                ; 2 uses
  %i.bj = or i1 %i.bi, %i.bh
  br i1 %i.bj, label %_ZN7xgboost6common4SpanIKdLm18446744073709551615EEC2EPS2_m.exit.i.i, label %bb.k, !prof !57

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZN7xgboost6common4SpanIKdLm18446744073709551615EEC2EPS2_m.exit.i.i: ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2122, !nonnull !211, !align !212
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !219 ; 2 uses
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = or i1 %i.bi, %i.bo
  br i1 %i.bp, label %_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlDpRKT_E_clIJffmmEEEDaS11_.exit, label %bb.l, !prof !57

bb.l:                                             ; preds = %_ZN7xgboost6common4SpanIKdLm18446744073709551615EEC2EPS2_m.exit.i.i
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlDpRKT_E_clIJffmmEEEDaS11_.exit: ; preds = %_ZN7xgboost6common4SpanIKdLm18446744073709551615EEC2EPS2_m.exit.i.i
  %i.bq = zext i32 %i.bc to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = sub i32 %i.az, %i.bc
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bq
  %i.bv = tail call noundef double @_ZN7xgboost3obj8DeltaMAPEffmmNS_6common4SpanIKdLm18446744073709551615EEES4_(float noundef %.0.i.i, float noundef %.018.i.i, i64 noundef %.019.i.i, i64 noundef %.020.i.i, i64 %i.bt, ptr %i.bu, i64 %i.bt, ptr %i.br)
  %i.bw = tail call noundef double @llvm.fabs.f64(double %i.bv) ; 2 uses
  %i.bx = fcmp une float %i.t, %i.z
  %i.by = fpext float %i.ah to double
  %11 = fadd double %i.by, 1.000000e-02
  %12 = fdiv double %i.bw, %11
  %.023 = select i1 %i.bx, double %12, double %i.bw ; 3 uses
  %13 = fsub double 1.000000e+00, %i.ao           ; 2 uses
  %14 = fdiv double 1.000000e+00, %13
  %i.bz = tail call double @log(double noundef %14) #11
  %i.ca = fmul double %i.bz, %.023
  store double %i.ca, ptr %10, align 8, !tbaa !67
  %i.cb = fmul double %13, %i.ao                  ; 2 uses
  %i.cc = fcmp olt double %i.cb, f0x3C9CD2B297D889BC
  %.sroa.speculated = select i1 %i.cc, double f0x3C9CD2B297D889BC, double %i.cb
  %i.cd = fmul double %.sroa.speculated, %.023
  %i.ce = fadd double %i.ao, -1.000000e+00
  %i.cf = insertelement <2 x double> <double poison, double 2.000000e+00>, double %.023, i64 0
  %i.cg = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.cd, i64 1
  %i.ci = fmul <2 x double> %i.ch, %i.cf          ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !503 ; 2 uses
  %i.cl = icmp ult i64 %i.c, %i.ck
  %i.cm = icmp ult i64 %i.f, %i.ck
  %or.cond = and i1 %i.cl, %i.cm
  br i1 %or.cond, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlDpRKT_E_clIJffmmEEEDaS11_.exit
  %i.cn = load i64, ptr %9, align 8, !tbaa !22
  %i.co = mul i64 %i.cn, %i.f
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !500
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !67 ; 2 uses
  %i.ct = fcmp ult double %i.cs, f0x3C9CD2B297D889BC
  br i1 %i.ct, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = load i64, ptr %8, align 8, !tbaa !22
  %i.cv = mul i64 %i.cu, %i.c
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !500
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !67 ; 2 uses
  %i.da = fcmp ult double %i.cz, f0x3C9CD2B297D889BC
  br i1 %i.da, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = fmul nnan double %i.cs, %i.cz
  %i.dc = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x double> %i.ci, %i.dd
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlDpRKT_E_clIJffmmEEEDaS11_.exit
  %i.df = phi <2 x double> [ %i.de, %bb.o ], [ %i.ci, %bb.n ], [ %i.ci, %bb.m ], [ %i.ci, %_ZZN7xgboost3obj13LambdaRankObjINS0_13LambdaRankMAPENS_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNS2_15GetGradientImplEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNS_6common4SpanIKfLm18446744073709551615EEENSE_10TensorViewISQ_Li1EEEfNSP_IKmLm18446744073709551615EEEjT1_NSS_ISI_Li1EEEENKUlDpRKT_E_clIJffmmEEEDaS11_.exit ]
  %i.dg = fptrunc <2 x double> %i.df to <2 x float>
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %.sroa.063.0 = phi <2 x float> [ zeroinitializer, %bb.d ], [ %i.dg, %bb.p ]
  ret <2 x float> %.sroa.063.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN7xgboost3obj8DeltaMAPEffmmNS_6common4SpanIKdLm18446744073709551615EEES4_(float noundef %0, float noundef %1, i64 noundef %2, i64 noundef %3, i64 %4, ptr %5, i64 %6, ptr %7) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.b = insertelement <2 x i64> %i.a, i64 %2, i64 1
  %i.c = uitofp <2 x i64> %i.b to <2 x double>
  %i.d = fadd <2 x double> %i.c, splat (double 1.000000e+00) ; 2 uses
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %bb.b, label %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EE4backEv.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKdLm18446744073709551615EE4backEv.exit: ; preds = %bb.a
  %i.e = getelementptr [8 x i8], ptr %5, i64 %4
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load double, ptr %i.f, align 8, !tbaa !67
  %i.h = icmp ult i64 %3, %4
  br i1 %i.h, label %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit, label %bb.c, !prof !57

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EE4backEv.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit: ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EE4backEv.exit
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %3
  %i.j = load double, ptr %i.i, align 8, !tbaa !67 ; 2 uses
  %i.k = icmp ult i64 %2, %4
  br i1 %i.k, label %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit24, label %bb.d, !prof !57

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit24: ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %2
  %i.m = load double, ptr %i.l, align 8, !tbaa !67 ; 2 uses
  %i.n = fcmp olt float %0, %1
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit24
  %i.o = fadd double %i.m, 1.000000e+00
  %i.p = insertelement <2 x double> poison, double %i.j, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.o, i64 1
  %i.r = fdiv <2 x double> %i.q, %i.d             ; 2 uses
  %shift = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.r, %shift
  %i.s = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.t = add i64 %3, -1                           ; 2 uses
  %i.u = icmp ult i64 %i.t, %6
  br i1 %i.u, label %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit25, label %bb.f, !prof !57

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit25: ; preds = %bb.e
  %i.v = icmp ult i64 %2, %6
  br i1 %i.v, label %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit26, label %bb.g, !prof !57

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit25
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit26: ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit25
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.t
  %i.x = load double, ptr %i.w, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %2
  %i.z = load double, ptr %i.y, align 8, !tbaa !67
  %i.aa = fsub double %i.x, %i.z
  %i.ab = fsub double %i.s, %i.aa
  br label %bb.k

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit24
  %i.ac = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.m, i64 1
  %i.ae = fdiv <2 x double> %i.ad, %i.d           ; 2 uses
  %shift47 = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop48 = fsub <2 x double> %shift47, %i.ae
  %i.af = extractelement <2 x double> %foldExtExtBinop48, i64 0
  %i.ag = add i64 %3, -1                          ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %6
  br i1 %i.ah, label %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit27, label %bb.i, !prof !57

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit27: ; preds = %bb.h
  %i.ai = icmp ult i64 %2, %6
  br i1 %i.ai, label %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit28, label %bb.j, !prof !57

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit27
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit28: ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit27
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ag
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %2
  %i.am = load double, ptr %i.al, align 8, !tbaa !67
  %i.an = fsub double %i.ak, %i.am
  %i.ao = fadd double %i.af, %i.an
  br label %bb.k

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit28, %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit26
  %.pn = phi double [ %i.ab, %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit26 ], [ %i.ao, %_ZNK7xgboost6common4SpanIKdLm18446744073709551615EEixEm.exit28 ]
  %.0 = fdiv double %.pn, %i.g
  ret double %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common7ArgSortImNSA_18IndexTransformIterIZNS9_3obj9MakePairsIZNSD_13LambdaRankObjINSD_13LambdaRankMAPENS9_3ltr8MAPCacheEE18CalcLambdaForGroupILb1ELb1EZNSG_15GetGradientImplEjRKNS9_16HostDeviceVectorIfEERKNS9_8MetaInfoEPNS9_6linalg6TensorINS9_6detail20GradientPairInternalIfEELi2EEEEUlT_T0_mmjE_EEvjNSA_4SpanIKfLm18446744073709551615EEENSS_10TensorViewIS13_Li1EEEfNS12_IKmLm18446744073709551615EEEjT1_NS15_ISW_Li1EEEEUlmmE_EEvPKNS9_7ContextEjSt10shared_ptrINSH_12RankingCacheEEjS16_S18_SZ_EUlmE_EEfSt7greaterIvEEES3_ISZ_SaISZ_EES1E_S10_S10_T2_EUlRS17_S1P_E_EEEvSZ_SZ_S10_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.470", align 8 ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 3
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #42 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !720

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !57

end_hunk_0
