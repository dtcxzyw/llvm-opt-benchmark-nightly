Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/regression_obj?download=true
inline.NumInlined: 7707
inline.NumDeleted: 2228
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK7xgboost3obj10RegLossObjINS0_18LogisticRegressionEE10SaveConfigEPNS_4JsonE:_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn11.pn = phi { ptr, i32 } [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj10RegLossObjINS0_18LogisticRegressionEE9ConfigureERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.96", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !79, !noalias !451, !noundef !80
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !457
  %i.d = invoke noundef ptr @_ZN7xgboost3obj12RegLossParam11__MANAGER__Ev()
          to label %bb.c unwind label %bb.d, !noalias !457 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !226, !noalias !457
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226, !noalias !457
  invoke void @_ZNK4dmlc9parameter12ParamManager9RunUpdateIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_NS0_15ParamInitOptionEPSH_PSt3setIPNS0_16FieldAccessEntryESt4lessISP_ESaISP_EE(ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj12RegLossParam11__MANAGER__EvE4inst, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %i.e, ptr %i.g, i32 noundef 0, ptr noundef nonnull align 8 %2, ptr noundef null)
          to label %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit unwind label %bb.d

common.resume.i:                                  ; preds = %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.m, %bb.g ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  resume { ptr, i32 } %common.resume.op.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !461
  %i.i = invoke noundef ptr @_ZN7xgboost3obj12RegLossParam11__MANAGER__Ev()
          to label %bb.f unwind label %bb.g, !noalias !461 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !226, !noalias !461
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !226, !noalias !461
  invoke void @_ZNK4dmlc9parameter12ParamManager7RunInitIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_PSH_NS0_15ParamInitOptionE(ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj12RegLossParam11__MANAGER__EvE4inst, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %i.j, ptr %i.l, ptr noundef nonnull align 8 %2, i32 noundef 0)
          to label %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i: ; preds = %bb.f
  store i8 1, ptr %i.a, align 8, !tbaa !28, !noalias !451
  br label %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit

_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit: ; preds = %bb.c, %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.n, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !15
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj10RegLossObjINS0_18LogisticRegressionEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 24 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"struct.xgboost::common::Transform<>::Evaluator.236", align 8 ; 12 uses
  tail call fastcc void @_ZN7xgboost3obj12_GLOBAL__N_114CheckRegInputsERKNS_8MetaInfoERKNS_16HostDeviceVectorIfEE(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i32 %.sroa.0.0.copyload.i.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i to i16
  %.off.i.i.i = add i16 %.sroa.0.0.extract.trunc.i.i, -2
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.g = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str.117, i32 noundef 205)
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.d

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.118, i64 noundef 47)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_18LogisticRegressionEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %bb.f

common.resume.i:                                  ; preds = %bb.ba, %bb.ap, %bb.ai, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ba ], [ %i.j, %bb.e ], [ %i.hi, %bb.ai ], [ %.pn.i.i.i, %bb.ap ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_18LogisticRegressionEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.g:                                             ; preds = %bb.b
  %sext.i.i.i = shl i32 %.sroa.0.0.copyload.i.i.i, 16
  %i.m = ashr exact i32 %sext.i.i.i, 16
  switch i32 %i.m, label %bb.ak [
    i32 0, label %bb.h
    i32 1, label %bb.ag
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381  ; 4 uses
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.r = load i64, ptr %8, align 8, !tbaa !17     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !378  ; 4 uses
  %13 = and i64 %i.o, -4
  %i.w = load i64, ptr %i.q, align 8              ; 15 uses
  %i.x = trunc i64 %i.w to i32                    ; 14 uses
  %i.y = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.y, 2 ; 4 uses
  %i.z = add i32 %i.x, -1                         ; 5 uses
  %i.aa = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z) ; 4 uses
  %i.ab = add i64 %i.w, -1                        ; 4 uses
  %i.ac = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %i.ad = shufflevector <2 x i64> %i.ac, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ae = add <2 x i64> %i.ad, <i64 0, i64 -1>
  %i.af = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x i64> %i.af, i64 1   ; 4 uses
  %i.ah = extractelement <2 x i64> %i.af, i64 0
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.ah, 2 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i
  %.0155.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.dd, %bb.u ] ; 2 uses
  %.sroa.0130.0154.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.dc, %bb.u ] ; 11 uses
  %i.ai = icmp ugt i64 %.sroa.0130.0154.i.i.i.i.i.i, 4294967295 ; 4 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.j
  %i.aj = lshr i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.ag
  %i.ak = and i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.j
  %i.al = udiv i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.w ; 2 uses
  %i.am = mul i64 %i.al, %i.w                     ; 0 uses
  %.recomposed = urem i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.an = trunc nuw i64 %.sroa.0130.0154.i.i.i.i.i.i to i32 ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i.i.i.i.i.i.i, label %.split.i8.i.i.i.i.i.i.i.i.i.i

.split.us.i11.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.k
  %i.ao = lshr i32 %i.an, %i.aa
  %i.ap = and i32 %i.z, %i.an
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i

.split.i8.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.k
  %i.aq = udiv i32 %i.an, %i.x                    ; 2 uses
  %i.ar = mul i32 %i.aq, %i.x                     ; 0 uses
  %.recomposed51 = urem i32 %i.an, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i.i.i.i.i.i.i, %.split.us.i11.i.i.i.i.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.recomposed51, %.split.i8.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %.split.us.i11.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aq, %.split.i8.i.i.i.i.i.i.i.i.i.i ], [ %i.ao, %.split.us.i11.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i.i.i.i.i.i.i to i64
  %i.as = zext i32 %.us-phi23.i10.i.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i ], [ %.recomposed, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.al, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %i.at = mul i64 %.sink.i.i.i.i.i.i.i.i.i.i, %i.r
  %i.au = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.i.i, %i.t
  %i.av = getelementptr [4 x i8], ptr %i.v, i64 %i.at
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.au
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !81 ; 2 uses
  %i.ay = fcmp ult float %i.ax, 0.000000e+00
  %i.az = fcmp ugt float %i.ax, 1.000000e+00
  %.not2.i.i.i.i.i.i.i = or i1 %i.ay, %i.az
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i
  %i.ba = or disjoint i64 %.sroa.0130.0154.i.i.i.i.i.i, 1 ; 6 uses
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i48.i.i.i.i.i.i, label %.split.i.i.i.i.i47.i.i.i.i.i.i

.split.us.i.i.i.i.i48.i.i.i.i.i.i:                ; preds = %bb.m
  %i.bb = lshr i64 %i.ba, %i.ag
  %i.bc = and i64 %i.ba, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i

.split.i.i.i.i.i47.i.i.i.i.i.i:                   ; preds = %bb.m
  %i.bd = udiv i64 %i.ba, %i.w                    ; 2 uses
  %i.be = mul i64 %i.bd, %i.w                     ; 0 uses
  %.recomposed52 = urem i64 %i.ba, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bf = trunc nuw i64 %i.ba to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i45.i.i.i.i.i.i, label %.split.i8.i.i.i.i37.i.i.i.i.i.i

.split.us.i11.i.i.i.i45.i.i.i.i.i.i:              ; preds = %bb.n
  %i.bg = lshr i32 %i.bf, %i.aa
  %i.bh = and i32 %i.z, %i.bf
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i

.split.i8.i.i.i.i37.i.i.i.i.i.i:                  ; preds = %bb.n
  %i.bi = udiv i32 %i.bf, %i.x                    ; 2 uses
  %i.bj = mul i32 %i.bi, %i.x                     ; 0 uses
  %.recomposed53 = urem i32 %i.bf, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i37.i.i.i.i.i.i, %.split.us.i11.i.i.i.i45.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i39.i.i.i.i.i.i = phi i32 [ %.recomposed53, %.split.i8.i.i.i.i37.i.i.i.i.i.i ], [ %i.bh, %.split.us.i11.i.i.i.i45.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i40.i.i.i.i.i.i = phi i32 [ %i.bi, %.split.i8.i.i.i.i37.i.i.i.i.i.i ], [ %i.bg, %.split.us.i11.i.i.i.i45.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i39.i.i.i.i.i.i to i64
  %i.bk = zext i32 %.us-phi23.i10.i.i.i.i40.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i, %.split.i.i.i.i.i47.i.i.i.i.i.i, %.split.us.i.i.i.i.i48.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i42.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i ], [ %.recomposed52, %.split.i.i.i.i.i47.i.i.i.i.i.i ], [ %i.bc, %.split.us.i.i.i.i.i48.i.i.i.i.i.i ]
  %.sink.i.i.i.i43.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i ], [ %i.bd, %.split.i.i.i.i.i47.i.i.i.i.i.i ], [ %i.bb, %.split.us.i.i.i.i.i48.i.i.i.i.i.i ]
  %i.bl = mul i64 %.sink.i.i.i.i43.i.i.i.i.i.i, %i.r
  %i.bm = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i42.i.i.i.i.i.i, %i.t
  %i.bn = getelementptr [4 x i8], ptr %i.v, i64 %i.bl
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !81 ; 2 uses
  %i.bq = fcmp ult float %i.bp, 0.000000e+00
  %i.br = fcmp ugt float %i.bp, 1.000000e+00
  %.not2.i44.i.i.i.i.i.i = or i1 %i.bq, %i.br
  br i1 %.not2.i44.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i
  %i.bs = or disjoint i64 %.sroa.0130.0154.i.i.i.i.i.i, 2 ; 6 uses
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i62.i.i.i.i.i.i, label %.split.i.i.i.i.i61.i.i.i.i.i.i

.split.us.i.i.i.i.i62.i.i.i.i.i.i:                ; preds = %bb.p
  %i.bt = lshr i64 %i.bs, %i.ag
  %i.bu = and i64 %i.bs, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i

.split.i.i.i.i.i61.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.bv = udiv i64 %i.bs, %i.w                    ; 2 uses
  %i.bw = mul i64 %i.bv, %i.w                     ; 0 uses
  %.recomposed54 = urem i64 %i.bs, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bx = trunc nuw i64 %i.bs to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i59.i.i.i.i.i.i, label %.split.i8.i.i.i.i51.i.i.i.i.i.i

.split.us.i11.i.i.i.i59.i.i.i.i.i.i:              ; preds = %bb.q
  %i.by = lshr i32 %i.bx, %i.aa
  %i.bz = and i32 %i.z, %i.bx
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i

.split.i8.i.i.i.i51.i.i.i.i.i.i:                  ; preds = %bb.q
  %i.ca = udiv i32 %i.bx, %i.x                    ; 2 uses
  %i.cb = mul i32 %i.ca, %i.x                     ; 0 uses
  %.recomposed55 = urem i32 %i.bx, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i51.i.i.i.i.i.i, %.split.us.i11.i.i.i.i59.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i53.i.i.i.i.i.i = phi i32 [ %.recomposed55, %.split.i8.i.i.i.i51.i.i.i.i.i.i ], [ %i.bz, %.split.us.i11.i.i.i.i59.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i54.i.i.i.i.i.i = phi i32 [ %i.ca, %.split.i8.i.i.i.i51.i.i.i.i.i.i ], [ %i.by, %.split.us.i11.i.i.i.i59.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i55.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i53.i.i.i.i.i.i to i64
  %i.cc = zext i32 %.us-phi23.i10.i.i.i.i54.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i, %.split.i.i.i.i.i61.i.i.i.i.i.i, %.split.us.i.i.i.i.i62.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i56.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i55.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i ], [ %.recomposed54, %.split.i.i.i.i.i61.i.i.i.i.i.i ], [ %i.bu, %.split.us.i.i.i.i.i62.i.i.i.i.i.i ]
  %.sink.i.i.i.i57.i.i.i.i.i.i = phi i64 [ %i.cc, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i ], [ %i.bv, %.split.i.i.i.i.i61.i.i.i.i.i.i ], [ %i.bt, %.split.us.i.i.i.i.i62.i.i.i.i.i.i ]
  %i.cd = mul i64 %.sink.i.i.i.i57.i.i.i.i.i.i, %i.r
  %i.ce = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i56.i.i.i.i.i.i, %i.t
  %i.cf = getelementptr [4 x i8], ptr %i.v, i64 %i.cd
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !81 ; 2 uses
  %i.ci = fcmp ult float %i.ch, 0.000000e+00
  %i.cj = fcmp ugt float %i.ch, 1.000000e+00
  %.not2.i58.i.i.i.i.i.i = or i1 %i.ci, %i.cj
  br i1 %.not2.i58.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i
  %i.ck = or disjoint i64 %.sroa.0130.0154.i.i.i.i.i.i, 3 ; 6 uses
  br i1 %i.ai, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i76.i.i.i.i.i.i, label %.split.i.i.i.i.i75.i.i.i.i.i.i

.split.us.i.i.i.i.i76.i.i.i.i.i.i:                ; preds = %bb.s
  %i.cl = lshr i64 %i.ck, %i.ag
  %i.cm = and i64 %i.ck, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i

.split.i.i.i.i.i75.i.i.i.i.i.i:                   ; preds = %bb.s
  %i.cn = udiv i64 %i.ck, %i.w                    ; 2 uses
  %i.co = mul i64 %i.cn, %i.w                     ; 0 uses
  %.recomposed56 = urem i64 %i.ck, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cp = trunc nuw i64 %i.ck to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i73.i.i.i.i.i.i, label %.split.i8.i.i.i.i65.i.i.i.i.i.i

.split.us.i11.i.i.i.i73.i.i.i.i.i.i:              ; preds = %bb.t
  %i.cq = lshr i32 %i.cp, %i.aa
  %i.cr = and i32 %i.z, %i.cp
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i

.split.i8.i.i.i.i65.i.i.i.i.i.i:                  ; preds = %bb.t
  %i.cs = udiv i32 %i.cp, %i.x                    ; 2 uses
  %i.ct = mul i32 %i.cs, %i.x                     ; 0 uses
  %.recomposed57 = urem i32 %i.cp, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i65.i.i.i.i.i.i, %.split.us.i11.i.i.i.i73.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i67.i.i.i.i.i.i = phi i32 [ %.recomposed57, %.split.i8.i.i.i.i65.i.i.i.i.i.i ], [ %i.cr, %.split.us.i11.i.i.i.i73.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i68.i.i.i.i.i.i = phi i32 [ %i.cs, %.split.i8.i.i.i.i65.i.i.i.i.i.i ], [ %i.cq, %.split.us.i11.i.i.i.i73.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i69.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i67.i.i.i.i.i.i to i64
  %i.cu = zext i32 %.us-phi23.i10.i.i.i.i68.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i, %.split.i.i.i.i.i75.i.i.i.i.i.i, %.split.us.i.i.i.i.i76.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i70.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i69.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i ], [ %.recomposed56, %.split.i.i.i.i.i75.i.i.i.i.i.i ], [ %i.cm, %.split.us.i.i.i.i.i76.i.i.i.i.i.i ]
  %.sink.i.i.i.i71.i.i.i.i.i.i = phi i64 [ %i.cu, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i ], [ %i.cn, %.split.i.i.i.i.i75.i.i.i.i.i.i ], [ %i.cl, %.split.us.i.i.i.i.i76.i.i.i.i.i.i ]
  %i.cv = mul i64 %.sink.i.i.i.i71.i.i.i.i.i.i, %i.r
  %i.cw = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i70.i.i.i.i.i.i, %i.t
  %i.cx = getelementptr [4 x i8], ptr %i.v, i64 %i.cv
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !81 ; 2 uses
  %i.da = fcmp ult float %i.cz, 0.000000e+00
  %i.db = fcmp ugt float %i.cz, 1.000000e+00
  %.not2.i72.i.i.i.i.i.i = or i1 %i.da, %i.db
  br i1 %.not2.i72.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i
  %i.dc = add nuw i64 %.sroa.0130.0154.i.i.i.i.i.i, 4
  %i.dd = add nsw i64 %.0155.i.i.i.i.i.i, -1
  %i.de = icmp sgt i64 %.0155.i.i.i.i.i.i, 1
  br i1 %i.de, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !462

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.u, %bb.h
  %.sroa.0130.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %13, %bb.u ] ; 11 uses
  %i.df = sub i64 %i.o, %.sroa.0130.0.lcssa.i.i.i.i.i.i
  switch i64 %i.df, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i [
    i64 3, label %bb.v
    i64 2, label %bb.z
    i64 1, label %bb.ad
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dg = icmp ugt i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, 4294967295
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !17, !noalias !463 ; 5 uses
  %i.dj = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.di)
  %.not.i.i.i.i.i88.i.i.i.i.i.i = icmp samesign ult i64 %i.dj, 2
  br i1 %.not.i.i.i.i.i88.i.i.i.i.i.i, label %.split.us.i.i.i.i.i90.i.i.i.i.i.i, label %.split.i.i.i.i.i89.i.i.i.i.i.i

.split.us.i.i.i.i.i90.i.i.i.i.i.i:                ; preds = %bb.w
  %i.dk = add i64 %i.di, -1                       ; 2 uses
  %i.dl = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dk)
  %i.dm = lshr i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, %i.dl
  %i.dn = and i64 %i.dk, %.sroa.0130.0.lcssa.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i

.split.i.i.i.i.i89.i.i.i.i.i.i:                   ; preds = %bb.w
  %i.do = udiv i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, %i.di ; 2 uses
  %i.dp = mul i64 %i.do, %i.di                    ; 0 uses
  %.recomposed58 = urem i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, %i.di
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dq = trunc nuw i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i to i32 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !17, !noalias !468
  %i.dt = trunc i64 %i.ds to i32                  ; 5 uses
  %i.du = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dt)
  %.not.i7.i.i.i.i78.i.i.i.i.i.i = icmp samesign ult i32 %i.du, 2
  br i1 %.not.i7.i.i.i.i78.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i87.i.i.i.i.i.i, label %.split.i8.i.i.i.i79.i.i.i.i.i.i

.split.us.i11.i.i.i.i87.i.i.i.i.i.i:              ; preds = %bb.x
  %i.dv = add i32 %i.dt, -1                       ; 2 uses
  %i.dw = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dv)
  %i.dx = lshr i32 %i.dq, %i.dw
  %i.dy = and i32 %i.dv, %i.dq
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i

.split.i8.i.i.i.i79.i.i.i.i.i.i:                  ; preds = %bb.x
  %i.dz = udiv i32 %i.dq, %i.dt                   ; 2 uses
  %i.ea = mul i32 %i.dz, %i.dt                    ; 0 uses
  %.recomposed59 = urem i32 %i.dq, %i.dt
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i79.i.i.i.i.i.i, %.split.us.i11.i.i.i.i87.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i81.i.i.i.i.i.i = phi i32 [ %.recomposed59, %.split.i8.i.i.i.i79.i.i.i.i.i.i ], [ %i.dy, %.split.us.i11.i.i.i.i87.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i82.i.i.i.i.i.i = phi i32 [ %i.dz, %.split.i8.i.i.i.i79.i.i.i.i.i.i ], [ %i.dx, %.split.us.i11.i.i.i.i87.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i83.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i81.i.i.i.i.i.i to i64
  %i.eb = zext i32 %.us-phi23.i10.i.i.i.i82.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i, %.split.i.i.i.i.i89.i.i.i.i.i.i, %.split.us.i.i.i.i.i90.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i84.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i83.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i ], [ %.recomposed58, %.split.i.i.i.i.i89.i.i.i.i.i.i ], [ %i.dn, %.split.us.i.i.i.i.i90.i.i.i.i.i.i ]
  %.sink.i.i.i.i85.i.i.i.i.i.i = phi i64 [ %i.eb, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i ], [ %i.do, %.split.i.i.i.i.i89.i.i.i.i.i.i ], [ %i.dm, %.split.us.i.i.i.i.i90.i.i.i.i.i.i ]
  %i.ec = load i64, ptr %8, align 8, !tbaa !17
  %i.ed = mul i64 %i.ec, %.sink.i.i.i.i85.i.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !17
  %i.eg = mul i64 %i.ef, %.sroa.5.1.le.i.sink.i.i.i.i84.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !378
  %i.ej = getelementptr [4 x i8], ptr %i.ei, i64 %i.ed
  %i.ek = getelementptr [4 x i8], ptr %i.ej, i64 %i.eg
  %i.el = load float, ptr %i.ek, align 4, !tbaa !81 ; 2 uses
  %i.em = fcmp ult float %i.el, 0.000000e+00
  %i.en = fcmp ugt float %i.el, 1.000000e+00
  %.not2.i86.i.i.i.i.i.i = or i1 %i.em, %i.en
  br i1 %.not2.i86.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i
  %14 = or disjoint i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i.i.i
  %.sroa.0130.1.i.i.i.i.i.i = phi i64 [ %14, %bb.y ], [ %.sroa.0130.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 8 uses
  %i.eo = icmp ugt i64 %.sroa.0130.1.i.i.i.i.i.i, 4294967295
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !17, !noalias !471 ; 5 uses
  %i.er = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eq)
  %.not.i.i.i.i.i102.i.i.i.i.i.i = icmp samesign ult i64 %i.er, 2
  br i1 %.not.i.i.i.i.i102.i.i.i.i.i.i, label %.split.us.i.i.i.i.i104.i.i.i.i.i.i, label %.split.i.i.i.i.i103.i.i.i.i.i.i

.split.us.i.i.i.i.i104.i.i.i.i.i.i:               ; preds = %bb.aa
  %i.es = add i64 %i.eq, -1                       ; 2 uses
  %i.et = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.es)
  %i.eu = lshr i64 %.sroa.0130.1.i.i.i.i.i.i, %i.et
  %i.ev = and i64 %i.es, %.sroa.0130.1.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i

.split.i.i.i.i.i103.i.i.i.i.i.i:                  ; preds = %bb.aa
  %i.ew = udiv i64 %.sroa.0130.1.i.i.i.i.i.i, %i.eq ; 2 uses
  %i.ex = mul i64 %i.ew, %i.eq                    ; 0 uses
  %.recomposed60 = urem i64 %.sroa.0130.1.i.i.i.i.i.i, %i.eq
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ey = trunc nuw i64 %.sroa.0130.1.i.i.i.i.i.i to i32 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !17, !noalias !476
  %i.fb = trunc i64 %i.fa to i32                  ; 5 uses
  %i.fc = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fb)
  %.not.i7.i.i.i.i92.i.i.i.i.i.i = icmp samesign ult i32 %i.fc, 2
  br i1 %.not.i7.i.i.i.i92.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i101.i.i.i.i.i.i, label %.split.i8.i.i.i.i93.i.i.i.i.i.i

.split.us.i11.i.i.i.i101.i.i.i.i.i.i:             ; preds = %bb.ab
  %i.fd = add i32 %i.fb, -1                       ; 2 uses
  %i.fe = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fd)
  %i.ff = lshr i32 %i.ey, %i.fe
  %i.fg = and i32 %i.fd, %i.ey
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i

.split.i8.i.i.i.i93.i.i.i.i.i.i:                  ; preds = %bb.ab
  %i.fh = udiv i32 %i.ey, %i.fb                   ; 2 uses
  %i.fi = mul i32 %i.fh, %i.fb                    ; 0 uses
  %.recomposed61 = urem i32 %i.ey, %i.fb
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i93.i.i.i.i.i.i, %.split.us.i11.i.i.i.i101.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i95.i.i.i.i.i.i = phi i32 [ %.recomposed61, %.split.i8.i.i.i.i93.i.i.i.i.i.i ], [ %i.fg, %.split.us.i11.i.i.i.i101.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i96.i.i.i.i.i.i = phi i32 [ %i.fh, %.split.i8.i.i.i.i93.i.i.i.i.i.i ], [ %i.ff, %.split.us.i11.i.i.i.i101.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i97.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i95.i.i.i.i.i.i to i64
  %i.fj = zext i32 %.us-phi23.i10.i.i.i.i96.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i, %.split.i.i.i.i.i103.i.i.i.i.i.i, %.split.us.i.i.i.i.i104.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i98.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i97.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i ], [ %.recomposed60, %.split.i.i.i.i.i103.i.i.i.i.i.i ], [ %i.ev, %.split.us.i.i.i.i.i104.i.i.i.i.i.i ]
  %.sink.i.i.i.i99.i.i.i.i.i.i = phi i64 [ %i.fj, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i ], [ %i.ew, %.split.i.i.i.i.i103.i.i.i.i.i.i ], [ %i.eu, %.split.us.i.i.i.i.i104.i.i.i.i.i.i ]
  %i.fk = load i64, ptr %8, align 8, !tbaa !17
  %i.fl = mul i64 %i.fk, %.sink.i.i.i.i99.i.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !17
  %i.fo = mul i64 %i.fn, %.sroa.5.1.le.i.sink.i.i.i.i98.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !378
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %i.fl
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.fo
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !81 ; 2 uses
  %i.fu = fcmp ult float %i.ft, 0.000000e+00
  %i.fv = fcmp ugt float %i.ft, 1.000000e+00
  %.not2.i100.i.i.i.i.i.i = or i1 %i.fu, %i.fv
  br i1 %.not2.i100.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i
  %i.fw = add nuw i64 %.sroa.0130.1.i.i.i.i.i.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i
  %.sroa.0130.2.i.i.i.i.i.i = phi i64 [ %i.fw, %bb.ac ], [ %.sroa.0130.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 7 uses
  %i.fx = icmp ugt i64 %.sroa.0130.2.i.i.i.i.i.i, 4294967295
  br i1 %i.fx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !17, !noalias !479 ; 5 uses
  %i.ga = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fz)
  %.not.i.i.i.i.i116.i.i.i.i.i.i = icmp samesign ult i64 %i.ga, 2
  br i1 %.not.i.i.i.i.i116.i.i.i.i.i.i, label %.split.us.i.i.i.i.i118.i.i.i.i.i.i, label %.split.i.i.i.i.i117.i.i.i.i.i.i

.split.us.i.i.i.i.i118.i.i.i.i.i.i:               ; preds = %bb.ae
  %i.gb = add i64 %i.fz, -1                       ; 2 uses
  %i.gc = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gb)
  %i.gd = lshr i64 %.sroa.0130.2.i.i.i.i.i.i, %i.gc
  %i.ge = and i64 %i.gb, %.sroa.0130.2.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i

.split.i.i.i.i.i117.i.i.i.i.i.i:                  ; preds = %bb.ae
  %i.gf = udiv i64 %.sroa.0130.2.i.i.i.i.i.i, %i.fz ; 2 uses
  %i.gg = mul i64 %i.gf, %i.fz                    ; 0 uses
  %.recomposed62 = urem i64 %.sroa.0130.2.i.i.i.i.i.i, %i.fz
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.gh = trunc nuw i64 %.sroa.0130.2.i.i.i.i.i.i to i32 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !17, !noalias !484
  %i.gk = trunc i64 %i.gj to i32                  ; 5 uses
  %i.gl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gk)
  %.not.i7.i.i.i.i106.i.i.i.i.i.i = icmp samesign ult i32 %i.gl, 2
  br i1 %.not.i7.i.i.i.i106.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i115.i.i.i.i.i.i, label %.split.i8.i.i.i.i107.i.i.i.i.i.i

.split.us.i11.i.i.i.i115.i.i.i.i.i.i:             ; preds = %bb.af
  %i.gm = add i32 %i.gk, -1                       ; 2 uses
  %i.gn = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gm)
  %i.go = lshr i32 %i.gh, %i.gn
  %i.gp = and i32 %i.gm, %i.gh
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i

.split.i8.i.i.i.i107.i.i.i.i.i.i:                 ; preds = %bb.af
  %i.gq = udiv i32 %i.gh, %i.gk                   ; 2 uses
  %i.gr = mul i32 %i.gq, %i.gk                    ; 0 uses
  %.recomposed63 = urem i32 %i.gh, %i.gk
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i107.i.i.i.i.i.i, %.split.us.i11.i.i.i.i115.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i109.i.i.i.i.i.i = phi i32 [ %.recomposed63, %.split.i8.i.i.i.i107.i.i.i.i.i.i ], [ %i.gp, %.split.us.i11.i.i.i.i115.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i110.i.i.i.i.i.i = phi i32 [ %i.gq, %.split.i8.i.i.i.i107.i.i.i.i.i.i ], [ %i.go, %.split.us.i11.i.i.i.i115.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i111.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i109.i.i.i.i.i.i to i64
  %i.gs = zext i32 %.us-phi23.i10.i.i.i.i110.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i, %.split.i.i.i.i.i117.i.i.i.i.i.i, %.split.us.i.i.i.i.i118.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i112.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i111.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i ], [ %.recomposed62, %.split.i.i.i.i.i117.i.i.i.i.i.i ], [ %i.ge, %.split.us.i.i.i.i.i118.i.i.i.i.i.i ]
  %.sink.i.i.i.i113.i.i.i.i.i.i = phi i64 [ %i.gs, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i ], [ %i.gf, %.split.i.i.i.i.i117.i.i.i.i.i.i ], [ %i.gd, %.split.us.i.i.i.i.i118.i.i.i.i.i.i ]
  %i.gt = load i64, ptr %8, align 8, !tbaa !17
  %i.gu = mul i64 %i.gt, %.sink.i.i.i.i113.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !17
  %i.gx = mul i64 %i.gw, %.sroa.5.1.le.i.sink.i.i.i.i112.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !378
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gu
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %i.gx
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !81 ; 2 uses
  %i.hd = fcmp ult float %i.hc, 0.000000e+00
  %i.he = fcmp ugt float %i.hc, 1.000000e+00
  %.not2.i114.i.i.i.i.i.i = or i1 %i.hd, %i.he
  br i1 %.not2.i114.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i

bb.ag:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.hf = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hf, ptr noundef nonnull @.str.117, i32 noundef 187)
  %i.hg = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i unwind label %bb.ah

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.123, i64 noundef 46)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_18LogisticRegressionEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i, %bb.ag
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume.i

bb.aj:                                            ; preds = %bb.ah
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_18LogisticRegressionEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.ak:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.hl = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hl, ptr noundef nonnull @.str.119, i32 noundef 271)
  %i.hm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i unwind label %bb.am ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i: ; preds = %bb.ak
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull @.str.122, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i
  %.sroa.0.0.copyload.i28.i.i.i = load i32, ptr %i.f, align 8
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i28.i.i.i to i16
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, i16 noundef signext %.sroa.0.0.extract.trunc.i.i.i)
          to label %bb.al unwind label %bb.an     ; 0 uses

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.am:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i, %bb.ak
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i.i.i = phi { ptr, i32 } [ %i.hq, %bb.an ], [ %i.hp, %bb.am ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume.i

bb.aq:                                            ; preds = %bb.ao
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #39
  unreachable

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i
  %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i = phi i64 [ %.sroa.0130.1.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i ], [ %.sroa.0130.0.lcssa.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i ], [ %.sroa.0130.2.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i ], [ %.sroa.0130.0154.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i ], [ %i.ck, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i ], [ %i.ba, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i ]
  %i.ht = icmp eq i64 %i.o, %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %i.ht, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %bb.al, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_18LogisticRegressionEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_18LogisticRegressionEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.hu = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hu, ptr noundef nonnull @.str.109, i32 noundef 85)
  %i.hv = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.ar

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull @.str.134, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i

bb.ar:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.as unwind label %bb.bb

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ba

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_18LogisticRegressionEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.hz = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hy)
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_18LogisticRegressionEEEvPKNS_7ContextERKNS_8MetaInfoE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_18LogisticRegressionEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ib = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hy) ; 2 uses
  store i64 %i.ib, ptr %i.a, align 8, !tbaa !17
  %i.ic = load i64, ptr %2, align 8, !tbaa !17, !noalias !487
  %i.id = icmp eq i64 %i.ib, %i.ic
  br i1 %i.id, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
end_hunk_0
begin_hunk_1_@_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj10RegLossObjINS7_18LogisticRegressionEE13PredTransformEPNS2_16HostDeviceVectorIfEEEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSC_EEEvSG_DpPT_EUlmE_JmEEEvT_DpT0_:bb.a
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !540, !nonnull !80, !align !289
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !359  ; 2 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !268  ; 2 uses
  %i.f = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc8 unwind label %bb.d    ; 2 uses

.noexc8:                                          ; preds = %.noexc
  %i.g = icmp ne ptr %i.e, null
  %i.h = icmp eq i64 %i.f, 0
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_18LogisticRegressionEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENSB_IT_Lm18446744073709551615EEEPNS8_ISG_EE.exit.i, label %bb.b, !prof !271

bb.b:                                             ; preds = %.noexc8
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_18LogisticRegressionEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENSB_IT_Lm18446744073709551615EEEPNS8_ISG_EE.exit.i: ; preds = %.noexc8
  %i.j = icmp ult i64 %2, %i.f
  br i1 %i.j, label %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_18LogisticRegressionEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS9_EEEvSD_DpPT_ENKUlmE_clEm.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_18LogisticRegressionEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENSB_IT_Lm18446744073709551615EEEPNS8_ISG_EE.exit.i
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_18LogisticRegressionEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS9_EEEvSD_DpPT_ENKUlmE_clEm.exit: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_18LogisticRegressionEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENSB_IT_Lm18446744073709551615EEEPNS8_ISG_EE.exit.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !81
  %i.m = fneg float %i.l                          ; 2 uses
  %i.n = fcmp ogt float %i.m, f0x42B16666
  %.sroa.speculated.i.i.i.i = select i1 %i.n, float f0x42B16666, float %i.m
  %i.o = tail call float @expf(float noundef %.sroa.speculated.i.i.i.i) #21
  %i.p = fadd float %i.o, 1.000000e+00
  %i.q = fadd float %i.p, 1.000000e-16
  %i.r = fdiv float 1.000000e+00, %i.q
  store float %i.r, ptr %i.k, align 4, !tbaa !81
  br label %bb.r

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 2 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #21
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #21 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.z) #37
          to label %.noexc9 unwind label %bb.p

.noexc9:                                          ; preds = %bb.f
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.e
  %i.aa = load ptr, ptr %0, align 8, !tbaa !392
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ab = load ptr, ptr %6, align 8, !tbaa !392
  store ptr null, ptr %6, align 8, !tbaa !392
  %i.ac = load ptr, ptr %0, align 8, !tbaa !392   ; 2 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !392
  store ptr %i.ab, ptr %0, align 8, !tbaa !392
  %.not.i.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i10, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr = load ptr, ptr %6, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.ad = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ae = icmp eq i32 %i.u, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.t) #21 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #21 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i11, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ah) #37
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %bb.k
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13:        ; preds = %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !392
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.aj = load ptr, ptr %5, align 8, !tbaa !392
  store ptr null, ptr %5, align 8, !tbaa !392
  %i.ak = load ptr, ptr %0, align 8, !tbaa !392   ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !392
  store ptr %i.aj, ptr %0, align 8, !tbaa !392
  %.not.i.i14 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i14, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15: ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %.pr20 = load ptr, ptr %5, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i16 = icmp eq ptr %.pr20, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.am = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.r

bb.p:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.r

bb.r:                                             ; preds = %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_18LogisticRegressionEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS9_EEEvSD_DpPT_ENKUlmE_clEm.exit, %bb.q, %bb.o
  ret void

bb.s:                                             ; preds = %bb.p, %bb.n, %bb.i
  %.merged = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.s, %bb.i ], [ %i.an, %bb.p ]
  resume { ptr, i32 } %.merged

bb.t:                                             ; preds = %bb.p, %bb.n
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZSt9__find_ifIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIfLi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEN9__gnu_cxx5__ops12_Iter_negateIZNKS0_3obj10RegLossObjINSF_18LogisticRegressionEE12ProbToMarginEPNS3_6TensorIfLi1EEEEUlfE0_EEES6_S6_S6_T0_St26random_access_iterator_tag(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %0                           ; 2 uses
  %i.b = lshr i64 %i.a, 2                         ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !17     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !507  ; 4 uses
  %4 = and i64 %i.a, -4
  %5 = add i64 %0, %4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.077 = phi i64 [ %i.b, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %.sroa.052.076 = phi i64 [ %0, %.lr.ph ], [ %i.ac, %bb.f ] ; 6 uses
  %i.f = mul i64 %i.c, %.sroa.052.076
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !81 ; 2 uses
  %i.i = fcmp ult float %i.h, 0.000000e+00
  %i.j = fcmp ugt float %i.h, 1.000000e+00
  %.not2.i = or i1 %i.i, %i.j
  br i1 %.not2.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %.sroa.052.076, 1                ; 2 uses
  %i.l = mul i64 %i.c, %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !81 ; 2 uses
  %i.o = fcmp ult float %i.n, 0.000000e+00
  %i.p = fcmp ugt float %i.n, 1.000000e+00
  %.not2.i36 = or i1 %i.o, %i.p
  br i1 %.not2.i36, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %.sroa.052.076, 2                ; 2 uses
  %i.r = mul i64 %i.c, %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !81 ; 2 uses
  %i.u = fcmp ult float %i.t, 0.000000e+00
  %i.v = fcmp ugt float %i.t, 1.000000e+00
  %.not2.i37 = or i1 %i.u, %i.v
  br i1 %.not2.i37, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %.sroa.052.076, 3                ; 2 uses
  %i.x = mul i64 %i.c, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !81 ; 2 uses
  %i.aa = fcmp ult float %i.z, 0.000000e+00
  %i.ab = fcmp ugt float %i.z, 1.000000e+00
  %.not2.i38 = or i1 %i.aa, %i.ab
  br i1 %.not2.i38, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add i64 %.sroa.052.076, 4
  %i.ad = add nsw i64 %.077, -1
  %i.ae = icmp sgt i64 %.077, 1
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !551

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.052.0.lcssa = phi i64 [ %0, %bb.a ], [ %5, %bb.f ] ; 6 uses
  %i.af = sub i64 %2, %.sroa.052.0.lcssa
  switch i64 %i.af, label %bb.l [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge79
  ]

._crit_edge._crit_edge79:                         ; preds = %._crit_edge
  %.pre80 = load i64, ptr %1, align 8, !tbaa !17
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre82 = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !507
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %1, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre78 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !507
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ag = load i64, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.ah = mul i64 %i.ag, %.sroa.052.0.lcssa
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !507 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load float, ptr %i.ak, align 4, !tbaa !81 ; 2 uses
  %i.am = fcmp ult float %i.al, 0.000000e+00
  %i.an = fcmp ugt float %i.al, 1.000000e+00
  %.not2.i39 = or i1 %i.am, %i.an
  br i1 %.not2.i39, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add i64 %.sroa.052.0.lcssa, 1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.ap = phi ptr [ %i.aj, %bb.h ], [ %.pre78, %._crit_edge._crit_edge ] ; 2 uses
  %i.aq = phi i64 [ %i.ag, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.052.1 = phi i64 [ %i.ao, %bb.h ], [ %.sroa.052.0.lcssa, %._crit_edge._crit_edge ] ; 3 uses
  %i.ar = mul i64 %i.aq, %.sroa.052.1
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !81 ; 2 uses
  %i.au = fcmp ult float %i.at, 0.000000e+00
  %i.av = fcmp ugt float %i.at, 1.000000e+00
  %.not2.i40 = or i1 %i.au, %i.av
  br i1 %.not2.i40, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add i64 %.sroa.052.1, 1
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge79, %bb.j
  %i.ax = phi ptr [ %i.ap, %bb.j ], [ %.pre82, %._crit_edge._crit_edge79 ]
  %i.ay = phi i64 [ %i.aq, %bb.j ], [ %.pre80, %._crit_edge._crit_edge79 ]
  %.sroa.052.2 = phi i64 [ %i.aw, %bb.j ], [ %.sroa.052.0.lcssa, %._crit_edge._crit_edge79 ] ; 2 uses
  %i.az = mul i64 %i.ay, %.sroa.052.2
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !81 ; 2 uses
  %i.bc = fcmp ult float %i.bb, 0.000000e+00
  %i.bd = fcmp ugt float %i.bb, 1.000000e+00
  %.not2.i41 = or i1 %i.bc, %i.bd
  br i1 %.not2.i41, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.k, %bb.i, %bb.g, %bb.l
  %.sroa.014.0.in.sroa.speculated = phi i64 [ %.sroa.052.1, %bb.i ], [ %2, %bb.l ], [ %.sroa.052.2, %bb.k ], [ %.sroa.052.0.lcssa, %bb.g ], [ %i.w, %bb.e ], [ %i.q, %bb.d ], [ %i.k, %bb.c ], [ %.sroa.052.076, %bb.b ]
  %.sroa.9.0 = phi ptr [ %1, %bb.i ], [ %3, %bb.l ], [ %1, %bb.k ], [ %1, %bb.g ], [ %1, %bb.b ], [ %1, %bb.c ], [ %1, %bb.d ], [ %1, %bb.e ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.014.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.9.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6linalg17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_18LogisticRegressionEE12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESA_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESA_OT_T0_T1_EUlmE_TnDaLi2EEEvSI_NS0_10TensorViewISJ_XT0_EEEOSM_ENKUlvE_clEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %3 = alloca %"class.xgboost::common::Range1d", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %7 = alloca %"class.xgboost::common::Range1d", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !552, !nonnull !80, !align !289
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.1.0.copyload = load i64, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !554, !nonnull !80, !align !289
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !270
  %i.g = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !555, !nonnull !80, !align !289 ; 4 uses
  %i.j = uitofp i64 %.sroa.1.0.copyload to double
  %i.k = fmul nnan double %i.j, f0x3F40000000000000
  %i.l = tail call double @llvm.ceil.f64(double %i.k)
  %i.m = fptoui double %i.l to i64                ; 4 uses
  %i.n = icmp eq i32 %i.g, 1
  br i1 %i.n, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %bb.a
  %.not115.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_10RegLossObjINS3_18LogisticRegressionEE12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_ZNKS8_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISK_XT0_EEEiOSN_.exit, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_18LogisticRegressionEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i, %.lr.ph108.i.i.i.i
  %.0107.i.i.i.i = phi i64 [ 0, %.lr.ph108.i.i.i.i ], [ %i.ag, %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_18LogisticRegressionEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i ] ; 2 uses
  %i.q = shl i64 %.0107.i.i.i.i, 11               ; 3 uses
  %i.r = sub i64 %.sroa.1.0.copyload, %i.q
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.r, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = add i64 %.sroa.speculated.i.i.i.i.i, %i.q
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.q, i64 noundef %i.s)
  %.val5.i.i.i.i.i = load i64, ptr %7, align 8, !tbaa !447 ; 2 uses
  %.val6.i.i.i.i.i = load i64, ptr %i.o, align 8  ; 2 uses
  %i.t = icmp ult i64 %.val5.i.i.i.i.i, %.val6.i.i.i.i.i
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_18LogisticRegressionEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %.val.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !17
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !507
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i64 [ %.val5.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.u = mul i64 %.03.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val5.i.i.i.i.i.i, i64 %i.u ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !81 ; 2 uses
  %i.x = fcmp olt float %i.w, f0x358637BD
  %i.y = select i1 %i.x, float f0x358637BD, float %i.w ; 2 uses
  %i.z = fcmp ogt float %i.y, f0x3F7FFFEF
  %i.aa = select i1 %i.z, float f0x3F7FFFEF, float %i.y
  %i.ab = fdiv float 1.000000e+00, %i.aa
  %i.ac = fadd float %i.ab, -1.000000e+00
  %i.ad = call float @logf(float noundef %i.ac) #21
  %i.ae = fneg float %i.ad
  store float %i.ae, ptr %i.v, align 4, !tbaa !81
  %i.af = add nuw i64 %.03.i.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.af, %.val6.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_18LogisticRegressionEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i, label %bb.c, !llvm.loop !556

_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_18LogisticRegressionEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ag = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_10RegLossObjINS3_18LogisticRegressionEE12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_ZNKS8_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISK_XT0_EEEiOSN_.exit, label %bb.b, !llvm.loop !557

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.g, ptr %i.a, align 4, !tbaa !118, !noalias !558
  store i32 1, ptr %i.b, align 4, !tbaa !118, !noalias !558
  %.not.i.i.i.i.i = icmp slt i32 %i.g, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ah = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc.i.i.i.i unwind label %bb.f

.noexc.i.i.i.i:                                   ; preds = %bb.e
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ah, ptr noundef nonnull @.str.126, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.f

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.g ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.57, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.127, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZNK7xgboost3obj10RegLossObjINS0_22LogisticClassificationEE10SaveConfigEPNS_4JsonE:_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn11.pn = phi { ptr, i32 } [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj10RegLossObjINS0_22LogisticClassificationEE9ConfigureERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.96", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !79, !noalias !563, !noundef !80
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !569
  %i.d = invoke noundef ptr @_ZN7xgboost3obj12RegLossParam11__MANAGER__Ev()
          to label %bb.c unwind label %bb.d, !noalias !569 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !226, !noalias !569
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226, !noalias !569
  invoke void @_ZNK4dmlc9parameter12ParamManager9RunUpdateIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_NS0_15ParamInitOptionEPSH_PSt3setIPNS0_16FieldAccessEntryESt4lessISP_ESaISP_EE(ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj12RegLossParam11__MANAGER__EvE4inst, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %i.e, ptr %i.g, i32 noundef 0, ptr noundef nonnull align 8 %2, ptr noundef null)
          to label %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit unwind label %bb.d

common.resume.i:                                  ; preds = %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.m, %bb.g ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  resume { ptr, i32 } %common.resume.op.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !573
  %i.i = invoke noundef ptr @_ZN7xgboost3obj12RegLossParam11__MANAGER__Ev()
          to label %bb.f unwind label %bb.g, !noalias !573 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !226, !noalias !573
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !226, !noalias !573
  invoke void @_ZNK4dmlc9parameter12ParamManager7RunInitIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_PSH_NS0_15ParamInitOptionE(ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj12RegLossParam11__MANAGER__EvE4inst, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %i.j, ptr %i.l, ptr noundef nonnull align 8 %2, i32 noundef 0)
          to label %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i: ; preds = %bb.f
  store i8 1, ptr %i.a, align 8, !tbaa !28, !noalias !563
  br label %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit

_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit: ; preds = %bb.c, %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.n, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !15
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj10RegLossObjINS0_22LogisticClassificationEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 24 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"struct.xgboost::common::Transform<>::Evaluator.272", align 8 ; 12 uses
  tail call fastcc void @_ZN7xgboost3obj12_GLOBAL__N_114CheckRegInputsERKNS_8MetaInfoERKNS_16HostDeviceVectorIfEE(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i32 %.sroa.0.0.copyload.i.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i to i16
  %.off.i.i.i = add i16 %.sroa.0.0.extract.trunc.i.i, -2
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.g = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str.117, i32 noundef 205)
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.d

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.118, i64 noundef 47)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_22LogisticClassificationEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %bb.f

common.resume.i:                                  ; preds = %bb.ba, %bb.ap, %bb.ai, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ba ], [ %i.j, %bb.e ], [ %i.hi, %bb.ai ], [ %.pn.i.i.i, %bb.ap ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_22LogisticClassificationEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.g:                                             ; preds = %bb.b
  %sext.i.i.i = shl i32 %.sroa.0.0.copyload.i.i.i, 16
  %i.m = ashr exact i32 %sext.i.i.i, 16
  switch i32 %i.m, label %bb.ak [
    i32 0, label %bb.h
    i32 1, label %bb.ag
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381  ; 4 uses
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.r = load i64, ptr %8, align 8, !tbaa !17     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !378  ; 4 uses
  %13 = and i64 %i.o, -4
  %i.w = load i64, ptr %i.q, align 8              ; 15 uses
  %i.x = trunc i64 %i.w to i32                    ; 14 uses
  %i.y = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.y, 2 ; 4 uses
  %i.z = add i32 %i.x, -1                         ; 5 uses
  %i.aa = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z) ; 4 uses
  %i.ab = add i64 %i.w, -1                        ; 4 uses
  %i.ac = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %i.ad = shufflevector <2 x i64> %i.ac, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ae = add <2 x i64> %i.ad, <i64 0, i64 -1>
  %i.af = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x i64> %i.af, i64 1   ; 4 uses
  %i.ah = extractelement <2 x i64> %i.af, i64 0
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.ah, 2 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i
  %.0155.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.dd, %bb.u ] ; 2 uses
  %.sroa.0130.0154.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.dc, %bb.u ] ; 11 uses
  %i.ai = icmp ugt i64 %.sroa.0130.0154.i.i.i.i.i.i, 4294967295 ; 4 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.j
  %i.aj = lshr i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.ag
  %i.ak = and i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.j
  %i.al = udiv i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.w ; 2 uses
  %i.am = mul i64 %i.al, %i.w                     ; 0 uses
  %.recomposed = urem i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.an = trunc nuw i64 %.sroa.0130.0154.i.i.i.i.i.i to i32 ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i.i.i.i.i.i.i, label %.split.i8.i.i.i.i.i.i.i.i.i.i

.split.us.i11.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.k
  %i.ao = lshr i32 %i.an, %i.aa
  %i.ap = and i32 %i.z, %i.an
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i

.split.i8.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.k
  %i.aq = udiv i32 %i.an, %i.x                    ; 2 uses
  %i.ar = mul i32 %i.aq, %i.x                     ; 0 uses
  %.recomposed51 = urem i32 %i.an, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i.i.i.i.i.i.i, %.split.us.i11.i.i.i.i.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.recomposed51, %.split.i8.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %.split.us.i11.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aq, %.split.i8.i.i.i.i.i.i.i.i.i.i ], [ %i.ao, %.split.us.i11.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i.i.i.i.i.i.i to i64
  %i.as = zext i32 %.us-phi23.i10.i.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i ], [ %.recomposed, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.al, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %i.at = mul i64 %.sink.i.i.i.i.i.i.i.i.i.i, %i.r
  %i.au = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.i.i, %i.t
  %i.av = getelementptr [4 x i8], ptr %i.v, i64 %i.at
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.au
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !81 ; 2 uses
  %i.ay = fcmp ult float %i.ax, 0.000000e+00
  %i.az = fcmp ugt float %i.ax, 1.000000e+00
  %.not2.i.i.i.i.i.i.i = or i1 %i.ay, %i.az
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i
  %i.ba = or disjoint i64 %.sroa.0130.0154.i.i.i.i.i.i, 1 ; 6 uses
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i48.i.i.i.i.i.i, label %.split.i.i.i.i.i47.i.i.i.i.i.i

.split.us.i.i.i.i.i48.i.i.i.i.i.i:                ; preds = %bb.m
  %i.bb = lshr i64 %i.ba, %i.ag
  %i.bc = and i64 %i.ba, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i

.split.i.i.i.i.i47.i.i.i.i.i.i:                   ; preds = %bb.m
  %i.bd = udiv i64 %i.ba, %i.w                    ; 2 uses
  %i.be = mul i64 %i.bd, %i.w                     ; 0 uses
  %.recomposed52 = urem i64 %i.ba, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bf = trunc nuw i64 %i.ba to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i45.i.i.i.i.i.i, label %.split.i8.i.i.i.i37.i.i.i.i.i.i

.split.us.i11.i.i.i.i45.i.i.i.i.i.i:              ; preds = %bb.n
  %i.bg = lshr i32 %i.bf, %i.aa
  %i.bh = and i32 %i.z, %i.bf
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i

.split.i8.i.i.i.i37.i.i.i.i.i.i:                  ; preds = %bb.n
  %i.bi = udiv i32 %i.bf, %i.x                    ; 2 uses
  %i.bj = mul i32 %i.bi, %i.x                     ; 0 uses
  %.recomposed53 = urem i32 %i.bf, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i37.i.i.i.i.i.i, %.split.us.i11.i.i.i.i45.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i39.i.i.i.i.i.i = phi i32 [ %.recomposed53, %.split.i8.i.i.i.i37.i.i.i.i.i.i ], [ %i.bh, %.split.us.i11.i.i.i.i45.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i40.i.i.i.i.i.i = phi i32 [ %i.bi, %.split.i8.i.i.i.i37.i.i.i.i.i.i ], [ %i.bg, %.split.us.i11.i.i.i.i45.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i39.i.i.i.i.i.i to i64
  %i.bk = zext i32 %.us-phi23.i10.i.i.i.i40.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i, %.split.i.i.i.i.i47.i.i.i.i.i.i, %.split.us.i.i.i.i.i48.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i42.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i ], [ %.recomposed52, %.split.i.i.i.i.i47.i.i.i.i.i.i ], [ %i.bc, %.split.us.i.i.i.i.i48.i.i.i.i.i.i ]
  %.sink.i.i.i.i43.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i ], [ %i.bd, %.split.i.i.i.i.i47.i.i.i.i.i.i ], [ %i.bb, %.split.us.i.i.i.i.i48.i.i.i.i.i.i ]
  %i.bl = mul i64 %.sink.i.i.i.i43.i.i.i.i.i.i, %i.r
  %i.bm = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i42.i.i.i.i.i.i, %i.t
  %i.bn = getelementptr [4 x i8], ptr %i.v, i64 %i.bl
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !81 ; 2 uses
  %i.bq = fcmp ult float %i.bp, 0.000000e+00
  %i.br = fcmp ugt float %i.bp, 1.000000e+00
  %.not2.i44.i.i.i.i.i.i = or i1 %i.bq, %i.br
  br i1 %.not2.i44.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i
  %i.bs = or disjoint i64 %.sroa.0130.0154.i.i.i.i.i.i, 2 ; 6 uses
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i62.i.i.i.i.i.i, label %.split.i.i.i.i.i61.i.i.i.i.i.i

.split.us.i.i.i.i.i62.i.i.i.i.i.i:                ; preds = %bb.p
  %i.bt = lshr i64 %i.bs, %i.ag
  %i.bu = and i64 %i.bs, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i

.split.i.i.i.i.i61.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.bv = udiv i64 %i.bs, %i.w                    ; 2 uses
  %i.bw = mul i64 %i.bv, %i.w                     ; 0 uses
  %.recomposed54 = urem i64 %i.bs, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bx = trunc nuw i64 %i.bs to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i59.i.i.i.i.i.i, label %.split.i8.i.i.i.i51.i.i.i.i.i.i

.split.us.i11.i.i.i.i59.i.i.i.i.i.i:              ; preds = %bb.q
  %i.by = lshr i32 %i.bx, %i.aa
  %i.bz = and i32 %i.z, %i.bx
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i

.split.i8.i.i.i.i51.i.i.i.i.i.i:                  ; preds = %bb.q
  %i.ca = udiv i32 %i.bx, %i.x                    ; 2 uses
  %i.cb = mul i32 %i.ca, %i.x                     ; 0 uses
  %.recomposed55 = urem i32 %i.bx, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i51.i.i.i.i.i.i, %.split.us.i11.i.i.i.i59.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i53.i.i.i.i.i.i = phi i32 [ %.recomposed55, %.split.i8.i.i.i.i51.i.i.i.i.i.i ], [ %i.bz, %.split.us.i11.i.i.i.i59.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i54.i.i.i.i.i.i = phi i32 [ %i.ca, %.split.i8.i.i.i.i51.i.i.i.i.i.i ], [ %i.by, %.split.us.i11.i.i.i.i59.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i55.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i53.i.i.i.i.i.i to i64
  %i.cc = zext i32 %.us-phi23.i10.i.i.i.i54.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i, %.split.i.i.i.i.i61.i.i.i.i.i.i, %.split.us.i.i.i.i.i62.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i56.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i55.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i ], [ %.recomposed54, %.split.i.i.i.i.i61.i.i.i.i.i.i ], [ %i.bu, %.split.us.i.i.i.i.i62.i.i.i.i.i.i ]
  %.sink.i.i.i.i57.i.i.i.i.i.i = phi i64 [ %i.cc, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i ], [ %i.bv, %.split.i.i.i.i.i61.i.i.i.i.i.i ], [ %i.bt, %.split.us.i.i.i.i.i62.i.i.i.i.i.i ]
  %i.cd = mul i64 %.sink.i.i.i.i57.i.i.i.i.i.i, %i.r
  %i.ce = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i56.i.i.i.i.i.i, %i.t
  %i.cf = getelementptr [4 x i8], ptr %i.v, i64 %i.cd
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !81 ; 2 uses
  %i.ci = fcmp ult float %i.ch, 0.000000e+00
  %i.cj = fcmp ugt float %i.ch, 1.000000e+00
  %.not2.i58.i.i.i.i.i.i = or i1 %i.ci, %i.cj
  br i1 %.not2.i58.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i
  %i.ck = or disjoint i64 %.sroa.0130.0154.i.i.i.i.i.i, 3 ; 6 uses
  br i1 %i.ai, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i76.i.i.i.i.i.i, label %.split.i.i.i.i.i75.i.i.i.i.i.i

.split.us.i.i.i.i.i76.i.i.i.i.i.i:                ; preds = %bb.s
  %i.cl = lshr i64 %i.ck, %i.ag
  %i.cm = and i64 %i.ck, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i

.split.i.i.i.i.i75.i.i.i.i.i.i:                   ; preds = %bb.s
  %i.cn = udiv i64 %i.ck, %i.w                    ; 2 uses
  %i.co = mul i64 %i.cn, %i.w                     ; 0 uses
  %.recomposed56 = urem i64 %i.ck, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cp = trunc nuw i64 %i.ck to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i73.i.i.i.i.i.i, label %.split.i8.i.i.i.i65.i.i.i.i.i.i

.split.us.i11.i.i.i.i73.i.i.i.i.i.i:              ; preds = %bb.t
  %i.cq = lshr i32 %i.cp, %i.aa
  %i.cr = and i32 %i.z, %i.cp
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i

.split.i8.i.i.i.i65.i.i.i.i.i.i:                  ; preds = %bb.t
  %i.cs = udiv i32 %i.cp, %i.x                    ; 2 uses
  %i.ct = mul i32 %i.cs, %i.x                     ; 0 uses
  %.recomposed57 = urem i32 %i.cp, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i65.i.i.i.i.i.i, %.split.us.i11.i.i.i.i73.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i67.i.i.i.i.i.i = phi i32 [ %.recomposed57, %.split.i8.i.i.i.i65.i.i.i.i.i.i ], [ %i.cr, %.split.us.i11.i.i.i.i73.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i68.i.i.i.i.i.i = phi i32 [ %i.cs, %.split.i8.i.i.i.i65.i.i.i.i.i.i ], [ %i.cq, %.split.us.i11.i.i.i.i73.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i69.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i67.i.i.i.i.i.i to i64
  %i.cu = zext i32 %.us-phi23.i10.i.i.i.i68.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i, %.split.i.i.i.i.i75.i.i.i.i.i.i, %.split.us.i.i.i.i.i76.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i70.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i69.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i ], [ %.recomposed56, %.split.i.i.i.i.i75.i.i.i.i.i.i ], [ %i.cm, %.split.us.i.i.i.i.i76.i.i.i.i.i.i ]
  %.sink.i.i.i.i71.i.i.i.i.i.i = phi i64 [ %i.cu, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i ], [ %i.cn, %.split.i.i.i.i.i75.i.i.i.i.i.i ], [ %i.cl, %.split.us.i.i.i.i.i76.i.i.i.i.i.i ]
  %i.cv = mul i64 %.sink.i.i.i.i71.i.i.i.i.i.i, %i.r
  %i.cw = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i70.i.i.i.i.i.i, %i.t
  %i.cx = getelementptr [4 x i8], ptr %i.v, i64 %i.cv
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !81 ; 2 uses
  %i.da = fcmp ult float %i.cz, 0.000000e+00
  %i.db = fcmp ugt float %i.cz, 1.000000e+00
  %.not2.i72.i.i.i.i.i.i = or i1 %i.da, %i.db
  br i1 %.not2.i72.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i
  %i.dc = add nuw i64 %.sroa.0130.0154.i.i.i.i.i.i, 4
  %i.dd = add nsw i64 %.0155.i.i.i.i.i.i, -1
  %i.de = icmp sgt i64 %.0155.i.i.i.i.i.i, 1
  br i1 %i.de, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !574

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.u, %bb.h
  %.sroa.0130.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %13, %bb.u ] ; 11 uses
  %i.df = sub i64 %i.o, %.sroa.0130.0.lcssa.i.i.i.i.i.i
  switch i64 %i.df, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i [
    i64 3, label %bb.v
    i64 2, label %bb.z
    i64 1, label %bb.ad
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dg = icmp ugt i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, 4294967295
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !17, !noalias !575 ; 5 uses
  %i.dj = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.di)
  %.not.i.i.i.i.i88.i.i.i.i.i.i = icmp samesign ult i64 %i.dj, 2
  br i1 %.not.i.i.i.i.i88.i.i.i.i.i.i, label %.split.us.i.i.i.i.i90.i.i.i.i.i.i, label %.split.i.i.i.i.i89.i.i.i.i.i.i

.split.us.i.i.i.i.i90.i.i.i.i.i.i:                ; preds = %bb.w
  %i.dk = add i64 %i.di, -1                       ; 2 uses
  %i.dl = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dk)
  %i.dm = lshr i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, %i.dl
  %i.dn = and i64 %i.dk, %.sroa.0130.0.lcssa.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i

.split.i.i.i.i.i89.i.i.i.i.i.i:                   ; preds = %bb.w
  %i.do = udiv i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, %i.di ; 2 uses
  %i.dp = mul i64 %i.do, %i.di                    ; 0 uses
  %.recomposed58 = urem i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, %i.di
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dq = trunc nuw i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i to i32 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !17, !noalias !580
  %i.dt = trunc i64 %i.ds to i32                  ; 5 uses
  %i.du = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dt)
  %.not.i7.i.i.i.i78.i.i.i.i.i.i = icmp samesign ult i32 %i.du, 2
  br i1 %.not.i7.i.i.i.i78.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i87.i.i.i.i.i.i, label %.split.i8.i.i.i.i79.i.i.i.i.i.i

.split.us.i11.i.i.i.i87.i.i.i.i.i.i:              ; preds = %bb.x
  %i.dv = add i32 %i.dt, -1                       ; 2 uses
  %i.dw = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dv)
  %i.dx = lshr i32 %i.dq, %i.dw
  %i.dy = and i32 %i.dv, %i.dq
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i

.split.i8.i.i.i.i79.i.i.i.i.i.i:                  ; preds = %bb.x
  %i.dz = udiv i32 %i.dq, %i.dt                   ; 2 uses
  %i.ea = mul i32 %i.dz, %i.dt                    ; 0 uses
  %.recomposed59 = urem i32 %i.dq, %i.dt
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i79.i.i.i.i.i.i, %.split.us.i11.i.i.i.i87.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i81.i.i.i.i.i.i = phi i32 [ %.recomposed59, %.split.i8.i.i.i.i79.i.i.i.i.i.i ], [ %i.dy, %.split.us.i11.i.i.i.i87.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i82.i.i.i.i.i.i = phi i32 [ %i.dz, %.split.i8.i.i.i.i79.i.i.i.i.i.i ], [ %i.dx, %.split.us.i11.i.i.i.i87.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i83.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i81.i.i.i.i.i.i to i64
  %i.eb = zext i32 %.us-phi23.i10.i.i.i.i82.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i, %.split.i.i.i.i.i89.i.i.i.i.i.i, %.split.us.i.i.i.i.i90.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i84.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i83.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i ], [ %.recomposed58, %.split.i.i.i.i.i89.i.i.i.i.i.i ], [ %i.dn, %.split.us.i.i.i.i.i90.i.i.i.i.i.i ]
  %.sink.i.i.i.i85.i.i.i.i.i.i = phi i64 [ %i.eb, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i ], [ %i.do, %.split.i.i.i.i.i89.i.i.i.i.i.i ], [ %i.dm, %.split.us.i.i.i.i.i90.i.i.i.i.i.i ]
  %i.ec = load i64, ptr %8, align 8, !tbaa !17
  %i.ed = mul i64 %i.ec, %.sink.i.i.i.i85.i.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !17
  %i.eg = mul i64 %i.ef, %.sroa.5.1.le.i.sink.i.i.i.i84.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !378
  %i.ej = getelementptr [4 x i8], ptr %i.ei, i64 %i.ed
  %i.ek = getelementptr [4 x i8], ptr %i.ej, i64 %i.eg
  %i.el = load float, ptr %i.ek, align 4, !tbaa !81 ; 2 uses
  %i.em = fcmp ult float %i.el, 0.000000e+00
  %i.en = fcmp ugt float %i.el, 1.000000e+00
  %.not2.i86.i.i.i.i.i.i = or i1 %i.em, %i.en
  br i1 %.not2.i86.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i
  %14 = or disjoint i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i.i.i
  %.sroa.0130.1.i.i.i.i.i.i = phi i64 [ %14, %bb.y ], [ %.sroa.0130.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 8 uses
  %i.eo = icmp ugt i64 %.sroa.0130.1.i.i.i.i.i.i, 4294967295
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !17, !noalias !583 ; 5 uses
  %i.er = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eq)
  %.not.i.i.i.i.i102.i.i.i.i.i.i = icmp samesign ult i64 %i.er, 2
  br i1 %.not.i.i.i.i.i102.i.i.i.i.i.i, label %.split.us.i.i.i.i.i104.i.i.i.i.i.i, label %.split.i.i.i.i.i103.i.i.i.i.i.i

.split.us.i.i.i.i.i104.i.i.i.i.i.i:               ; preds = %bb.aa
  %i.es = add i64 %i.eq, -1                       ; 2 uses
  %i.et = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.es)
  %i.eu = lshr i64 %.sroa.0130.1.i.i.i.i.i.i, %i.et
  %i.ev = and i64 %i.es, %.sroa.0130.1.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i

.split.i.i.i.i.i103.i.i.i.i.i.i:                  ; preds = %bb.aa
  %i.ew = udiv i64 %.sroa.0130.1.i.i.i.i.i.i, %i.eq ; 2 uses
  %i.ex = mul i64 %i.ew, %i.eq                    ; 0 uses
  %.recomposed60 = urem i64 %.sroa.0130.1.i.i.i.i.i.i, %i.eq
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ey = trunc nuw i64 %.sroa.0130.1.i.i.i.i.i.i to i32 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !17, !noalias !588
  %i.fb = trunc i64 %i.fa to i32                  ; 5 uses
  %i.fc = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fb)
  %.not.i7.i.i.i.i92.i.i.i.i.i.i = icmp samesign ult i32 %i.fc, 2
  br i1 %.not.i7.i.i.i.i92.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i101.i.i.i.i.i.i, label %.split.i8.i.i.i.i93.i.i.i.i.i.i

.split.us.i11.i.i.i.i101.i.i.i.i.i.i:             ; preds = %bb.ab
  %i.fd = add i32 %i.fb, -1                       ; 2 uses
  %i.fe = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fd)
  %i.ff = lshr i32 %i.ey, %i.fe
  %i.fg = and i32 %i.fd, %i.ey
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i

.split.i8.i.i.i.i93.i.i.i.i.i.i:                  ; preds = %bb.ab
  %i.fh = udiv i32 %i.ey, %i.fb                   ; 2 uses
  %i.fi = mul i32 %i.fh, %i.fb                    ; 0 uses
  %.recomposed61 = urem i32 %i.ey, %i.fb
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i93.i.i.i.i.i.i, %.split.us.i11.i.i.i.i101.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i95.i.i.i.i.i.i = phi i32 [ %.recomposed61, %.split.i8.i.i.i.i93.i.i.i.i.i.i ], [ %i.fg, %.split.us.i11.i.i.i.i101.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i96.i.i.i.i.i.i = phi i32 [ %i.fh, %.split.i8.i.i.i.i93.i.i.i.i.i.i ], [ %i.ff, %.split.us.i11.i.i.i.i101.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i97.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i95.i.i.i.i.i.i to i64
  %i.fj = zext i32 %.us-phi23.i10.i.i.i.i96.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i, %.split.i.i.i.i.i103.i.i.i.i.i.i, %.split.us.i.i.i.i.i104.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i98.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i97.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i ], [ %.recomposed60, %.split.i.i.i.i.i103.i.i.i.i.i.i ], [ %i.ev, %.split.us.i.i.i.i.i104.i.i.i.i.i.i ]
  %.sink.i.i.i.i99.i.i.i.i.i.i = phi i64 [ %i.fj, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i ], [ %i.ew, %.split.i.i.i.i.i103.i.i.i.i.i.i ], [ %i.eu, %.split.us.i.i.i.i.i104.i.i.i.i.i.i ]
  %i.fk = load i64, ptr %8, align 8, !tbaa !17
  %i.fl = mul i64 %i.fk, %.sink.i.i.i.i99.i.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !17
  %i.fo = mul i64 %i.fn, %.sroa.5.1.le.i.sink.i.i.i.i98.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !378
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %i.fl
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.fo
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !81 ; 2 uses
  %i.fu = fcmp ult float %i.ft, 0.000000e+00
  %i.fv = fcmp ugt float %i.ft, 1.000000e+00
  %.not2.i100.i.i.i.i.i.i = or i1 %i.fu, %i.fv
  br i1 %.not2.i100.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i
  %i.fw = add nuw i64 %.sroa.0130.1.i.i.i.i.i.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i
  %.sroa.0130.2.i.i.i.i.i.i = phi i64 [ %i.fw, %bb.ac ], [ %.sroa.0130.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 7 uses
  %i.fx = icmp ugt i64 %.sroa.0130.2.i.i.i.i.i.i, 4294967295
  br i1 %i.fx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !17, !noalias !591 ; 5 uses
  %i.ga = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fz)
  %.not.i.i.i.i.i116.i.i.i.i.i.i = icmp samesign ult i64 %i.ga, 2
  br i1 %.not.i.i.i.i.i116.i.i.i.i.i.i, label %.split.us.i.i.i.i.i118.i.i.i.i.i.i, label %.split.i.i.i.i.i117.i.i.i.i.i.i

.split.us.i.i.i.i.i118.i.i.i.i.i.i:               ; preds = %bb.ae
  %i.gb = add i64 %i.fz, -1                       ; 2 uses
  %i.gc = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gb)
  %i.gd = lshr i64 %.sroa.0130.2.i.i.i.i.i.i, %i.gc
  %i.ge = and i64 %i.gb, %.sroa.0130.2.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i

.split.i.i.i.i.i117.i.i.i.i.i.i:                  ; preds = %bb.ae
  %i.gf = udiv i64 %.sroa.0130.2.i.i.i.i.i.i, %i.fz ; 2 uses
  %i.gg = mul i64 %i.gf, %i.fz                    ; 0 uses
  %.recomposed62 = urem i64 %.sroa.0130.2.i.i.i.i.i.i, %i.fz
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.gh = trunc nuw i64 %.sroa.0130.2.i.i.i.i.i.i to i32 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !17, !noalias !596
  %i.gk = trunc i64 %i.gj to i32                  ; 5 uses
  %i.gl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gk)
  %.not.i7.i.i.i.i106.i.i.i.i.i.i = icmp samesign ult i32 %i.gl, 2
  br i1 %.not.i7.i.i.i.i106.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i115.i.i.i.i.i.i, label %.split.i8.i.i.i.i107.i.i.i.i.i.i

.split.us.i11.i.i.i.i115.i.i.i.i.i.i:             ; preds = %bb.af
  %i.gm = add i32 %i.gk, -1                       ; 2 uses
  %i.gn = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gm)
  %i.go = lshr i32 %i.gh, %i.gn
  %i.gp = and i32 %i.gm, %i.gh
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i

.split.i8.i.i.i.i107.i.i.i.i.i.i:                 ; preds = %bb.af
  %i.gq = udiv i32 %i.gh, %i.gk                   ; 2 uses
  %i.gr = mul i32 %i.gq, %i.gk                    ; 0 uses
  %.recomposed63 = urem i32 %i.gh, %i.gk
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i107.i.i.i.i.i.i, %.split.us.i11.i.i.i.i115.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i109.i.i.i.i.i.i = phi i32 [ %.recomposed63, %.split.i8.i.i.i.i107.i.i.i.i.i.i ], [ %i.gp, %.split.us.i11.i.i.i.i115.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i110.i.i.i.i.i.i = phi i32 [ %i.gq, %.split.i8.i.i.i.i107.i.i.i.i.i.i ], [ %i.go, %.split.us.i11.i.i.i.i115.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i111.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i109.i.i.i.i.i.i to i64
  %i.gs = zext i32 %.us-phi23.i10.i.i.i.i110.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i, %.split.i.i.i.i.i117.i.i.i.i.i.i, %.split.us.i.i.i.i.i118.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i112.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i111.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i ], [ %.recomposed62, %.split.i.i.i.i.i117.i.i.i.i.i.i ], [ %i.ge, %.split.us.i.i.i.i.i118.i.i.i.i.i.i ]
  %.sink.i.i.i.i113.i.i.i.i.i.i = phi i64 [ %i.gs, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i ], [ %i.gf, %.split.i.i.i.i.i117.i.i.i.i.i.i ], [ %i.gd, %.split.us.i.i.i.i.i118.i.i.i.i.i.i ]
  %i.gt = load i64, ptr %8, align 8, !tbaa !17
  %i.gu = mul i64 %i.gt, %.sink.i.i.i.i113.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !17
  %i.gx = mul i64 %i.gw, %.sroa.5.1.le.i.sink.i.i.i.i112.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !378
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gu
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %i.gx
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !81 ; 2 uses
  %i.hd = fcmp ult float %i.hc, 0.000000e+00
  %i.he = fcmp ugt float %i.hc, 1.000000e+00
  %.not2.i114.i.i.i.i.i.i = or i1 %i.hd, %i.he
  br i1 %.not2.i114.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i

bb.ag:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.hf = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hf, ptr noundef nonnull @.str.117, i32 noundef 187)
  %i.hg = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i unwind label %bb.ah

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.123, i64 noundef 46)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_22LogisticClassificationEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i, %bb.ag
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume.i

bb.aj:                                            ; preds = %bb.ah
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_22LogisticClassificationEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.ak:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.hl = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hl, ptr noundef nonnull @.str.119, i32 noundef 271)
  %i.hm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i unwind label %bb.am ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i: ; preds = %bb.ak
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull @.str.122, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i
  %.sroa.0.0.copyload.i28.i.i.i = load i32, ptr %i.f, align 8
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i28.i.i.i to i16
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, i16 noundef signext %.sroa.0.0.extract.trunc.i.i.i)
          to label %bb.al unwind label %bb.an     ; 0 uses

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.am:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i, %bb.ak
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i.i.i = phi { ptr, i32 } [ %i.hq, %bb.an ], [ %i.hp, %bb.am ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume.i

bb.aq:                                            ; preds = %bb.ao
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #39
  unreachable

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i
  %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i = phi i64 [ %.sroa.0130.1.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i ], [ %.sroa.0130.0.lcssa.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i ], [ %.sroa.0130.2.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i ], [ %.sroa.0130.0154.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i ], [ %i.ck, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i ], [ %i.ba, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i ]
  %i.ht = icmp eq i64 %i.o, %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %i.ht, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %bb.al, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_22LogisticClassificationEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_22LogisticClassificationEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.hu = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hu, ptr noundef nonnull @.str.109, i32 noundef 85)
  %i.hv = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.ar

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull @.str.134, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i

bb.ar:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.as unwind label %bb.bb

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ba

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_22LogisticClassificationEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.hz = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hy)
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_22LogisticClassificationEEEvPKNS_7ContextERKNS_8MetaInfoE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_22LogisticClassificationEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ib = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hy) ; 2 uses
  store i64 %i.ib, ptr %i.a, align 8, !tbaa !17
  %i.ic = load i64, ptr %2, align 8, !tbaa !17, !noalias !599
  %i.id = icmp eq i64 %i.ib, %i.ic
  br i1 %i.id, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
end_hunk_2
begin_hunk_3_@_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj10RegLossObjINS7_22LogisticClassificationEE13PredTransformEPNS2_16HostDeviceVectorIfEEEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSC_EEEvSG_DpPT_EUlmE_JmEEEvT_DpT0_:bb.a
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !644, !nonnull !80, !align !289
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !359  ; 2 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !268  ; 2 uses
  %i.f = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc8 unwind label %bb.d    ; 2 uses

.noexc8:                                          ; preds = %.noexc
  %i.g = icmp ne ptr %i.e, null
  %i.h = icmp eq i64 %i.f, 0
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_22LogisticClassificationEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENSB_IT_Lm18446744073709551615EEEPNS8_ISG_EE.exit.i, label %bb.b, !prof !271

bb.b:                                             ; preds = %.noexc8
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_22LogisticClassificationEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENSB_IT_Lm18446744073709551615EEEPNS8_ISG_EE.exit.i: ; preds = %.noexc8
  %i.j = icmp ult i64 %2, %i.f
  br i1 %i.j, label %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_22LogisticClassificationEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS9_EEEvSD_DpPT_ENKUlmE_clEm.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_22LogisticClassificationEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENSB_IT_Lm18446744073709551615EEEPNS8_ISG_EE.exit.i
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_22LogisticClassificationEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS9_EEEvSD_DpPT_ENKUlmE_clEm.exit: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_22LogisticClassificationEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENSB_IT_Lm18446744073709551615EEEPNS8_ISG_EE.exit.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !81
  %i.m = fneg float %i.l                          ; 2 uses
  %i.n = fcmp ogt float %i.m, f0x42B16666
  %.sroa.speculated.i.i.i.i = select i1 %i.n, float f0x42B16666, float %i.m
  %i.o = tail call float @expf(float noundef %.sroa.speculated.i.i.i.i) #21
  %i.p = fadd float %i.o, 1.000000e+00
  %i.q = fadd float %i.p, 1.000000e-16
  %i.r = fdiv float 1.000000e+00, %i.q
  store float %i.r, ptr %i.k, align 4, !tbaa !81
  br label %bb.r

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 2 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #21
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #21 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.z) #37
          to label %.noexc9 unwind label %bb.p

.noexc9:                                          ; preds = %bb.f
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.e
  %i.aa = load ptr, ptr %0, align 8, !tbaa !392
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ab = load ptr, ptr %6, align 8, !tbaa !392
  store ptr null, ptr %6, align 8, !tbaa !392
  %i.ac = load ptr, ptr %0, align 8, !tbaa !392   ; 2 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !392
  store ptr %i.ab, ptr %0, align 8, !tbaa !392
  %.not.i.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i10, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr = load ptr, ptr %6, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.ad = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ae = icmp eq i32 %i.u, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.t) #21 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #21 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i11, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ah) #37
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %bb.k
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13:        ; preds = %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !392
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.aj = load ptr, ptr %5, align 8, !tbaa !392
  store ptr null, ptr %5, align 8, !tbaa !392
  %i.ak = load ptr, ptr %0, align 8, !tbaa !392   ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !392
  store ptr %i.aj, ptr %0, align 8, !tbaa !392
  %.not.i.i14 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i14, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15: ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %.pr20 = load ptr, ptr %5, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i16 = icmp eq ptr %.pr20, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.am = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.r

bb.p:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.r

bb.r:                                             ; preds = %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_22LogisticClassificationEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS9_EEEvSD_DpPT_ENKUlmE_clEm.exit, %bb.q, %bb.o
  ret void

bb.s:                                             ; preds = %bb.p, %bb.n, %bb.i
  %.merged = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.s, %bb.i ], [ %i.an, %bb.p ]
  resume { ptr, i32 } %.merged

bb.t:                                             ; preds = %bb.p, %bb.n
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZSt9__find_ifIN7xgboost6common18IndexTransformIterIZNS0_6linalg6cbeginIfLi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EEN9__gnu_cxx5__ops12_Iter_negateIZNKS0_3obj10RegLossObjINSF_22LogisticClassificationEE12ProbToMarginEPNS3_6TensorIfLi1EEEEUlfE0_EEES6_S6_S6_T0_St26random_access_iterator_tag(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %0                           ; 2 uses
  %i.b = lshr i64 %i.a, 2                         ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !17     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !507  ; 4 uses
  %4 = and i64 %i.a, -4
  %5 = add i64 %0, %4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.077 = phi i64 [ %i.b, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %.sroa.052.076 = phi i64 [ %0, %.lr.ph ], [ %i.ac, %bb.f ] ; 6 uses
  %i.f = mul i64 %i.c, %.sroa.052.076
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !81 ; 2 uses
  %i.i = fcmp ult float %i.h, 0.000000e+00
  %i.j = fcmp ugt float %i.h, 1.000000e+00
  %.not2.i = or i1 %i.i, %i.j
  br i1 %.not2.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %.sroa.052.076, 1                ; 2 uses
  %i.l = mul i64 %i.c, %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !81 ; 2 uses
  %i.o = fcmp ult float %i.n, 0.000000e+00
  %i.p = fcmp ugt float %i.n, 1.000000e+00
  %.not2.i36 = or i1 %i.o, %i.p
  br i1 %.not2.i36, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %.sroa.052.076, 2                ; 2 uses
  %i.r = mul i64 %i.c, %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !81 ; 2 uses
  %i.u = fcmp ult float %i.t, 0.000000e+00
  %i.v = fcmp ugt float %i.t, 1.000000e+00
  %.not2.i37 = or i1 %i.u, %i.v
  br i1 %.not2.i37, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %.sroa.052.076, 3                ; 2 uses
  %i.x = mul i64 %i.c, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !81 ; 2 uses
  %i.aa = fcmp ult float %i.z, 0.000000e+00
  %i.ab = fcmp ugt float %i.z, 1.000000e+00
  %.not2.i38 = or i1 %i.aa, %i.ab
  br i1 %.not2.i38, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add i64 %.sroa.052.076, 4
  %i.ad = add nsw i64 %.077, -1
  %i.ae = icmp sgt i64 %.077, 1
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !655

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.052.0.lcssa = phi i64 [ %0, %bb.a ], [ %5, %bb.f ] ; 6 uses
  %i.af = sub i64 %2, %.sroa.052.0.lcssa
  switch i64 %i.af, label %bb.l [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge79
  ]

._crit_edge._crit_edge79:                         ; preds = %._crit_edge
  %.pre80 = load i64, ptr %1, align 8, !tbaa !17
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre82 = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !507
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %1, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre78 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !507
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ag = load i64, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.ah = mul i64 %i.ag, %.sroa.052.0.lcssa
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !507 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load float, ptr %i.ak, align 4, !tbaa !81 ; 2 uses
  %i.am = fcmp ult float %i.al, 0.000000e+00
  %i.an = fcmp ugt float %i.al, 1.000000e+00
  %.not2.i39 = or i1 %i.am, %i.an
  br i1 %.not2.i39, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add i64 %.sroa.052.0.lcssa, 1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.ap = phi ptr [ %i.aj, %bb.h ], [ %.pre78, %._crit_edge._crit_edge ] ; 2 uses
  %i.aq = phi i64 [ %i.ag, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.052.1 = phi i64 [ %i.ao, %bb.h ], [ %.sroa.052.0.lcssa, %._crit_edge._crit_edge ] ; 3 uses
  %i.ar = mul i64 %i.aq, %.sroa.052.1
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !81 ; 2 uses
  %i.au = fcmp ult float %i.at, 0.000000e+00
  %i.av = fcmp ugt float %i.at, 1.000000e+00
  %.not2.i40 = or i1 %i.au, %i.av
  br i1 %.not2.i40, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add i64 %.sroa.052.1, 1
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge79, %bb.j
  %i.ax = phi ptr [ %i.ap, %bb.j ], [ %.pre82, %._crit_edge._crit_edge79 ]
  %i.ay = phi i64 [ %i.aq, %bb.j ], [ %.pre80, %._crit_edge._crit_edge79 ]
  %.sroa.052.2 = phi i64 [ %i.aw, %bb.j ], [ %.sroa.052.0.lcssa, %._crit_edge._crit_edge79 ] ; 2 uses
  %i.az = mul i64 %i.ay, %.sroa.052.2
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !81 ; 2 uses
  %i.bc = fcmp ult float %i.bb, 0.000000e+00
  %i.bd = fcmp ugt float %i.bb, 1.000000e+00
  %.not2.i41 = or i1 %i.bc, %i.bd
  br i1 %.not2.i41, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.k, %bb.i, %bb.g, %bb.l
  %.sroa.014.0.in.sroa.speculated = phi i64 [ %.sroa.052.1, %bb.i ], [ %2, %bb.l ], [ %.sroa.052.2, %bb.k ], [ %.sroa.052.0.lcssa, %bb.g ], [ %i.w, %bb.e ], [ %i.q, %bb.d ], [ %i.k, %bb.c ], [ %.sroa.052.076, %bb.b ]
  %.sroa.9.0 = phi ptr [ %1, %bb.i ], [ %3, %bb.l ], [ %1, %bb.k ], [ %1, %bb.g ], [ %1, %bb.b ], [ %1, %bb.c ], [ %1, %bb.d ], [ %1, %bb.e ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.014.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.9.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6linalg17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_22LogisticClassificationEE12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESA_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESA_OT_T0_T1_EUlmE_TnDaLi2EEEvSI_NS0_10TensorViewISJ_XT0_EEEOSM_ENKUlvE_clEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %3 = alloca %"class.xgboost::common::Range1d", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %7 = alloca %"class.xgboost::common::Range1d", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !656, !nonnull !80, !align !289
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.1.0.copyload = load i64, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !658, !nonnull !80, !align !289
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !270
  %i.g = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !659, !nonnull !80, !align !289 ; 4 uses
  %i.j = uitofp i64 %.sroa.1.0.copyload to double
  %i.k = fmul nnan double %i.j, f0x3F40000000000000
  %i.l = tail call double @llvm.ceil.f64(double %i.k)
  %i.m = fptoui double %i.l to i64                ; 4 uses
  %i.n = icmp eq i32 %i.g, 1
  br i1 %i.n, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %bb.a
  %.not115.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_10RegLossObjINS3_22LogisticClassificationEE12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_ZNKS8_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISK_XT0_EEEiOSN_.exit, label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_22LogisticClassificationEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i, %.lr.ph108.i.i.i.i
  %.0107.i.i.i.i = phi i64 [ 0, %.lr.ph108.i.i.i.i ], [ %i.ag, %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_22LogisticClassificationEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i ] ; 2 uses
  %i.q = shl i64 %.0107.i.i.i.i, 11               ; 3 uses
  %i.r = sub i64 %.sroa.1.0.copyload, %i.q
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.r, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = add i64 %.sroa.speculated.i.i.i.i.i, %i.q
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.q, i64 noundef %i.s)
  %.val5.i.i.i.i.i = load i64, ptr %7, align 8, !tbaa !447 ; 2 uses
  %.val6.i.i.i.i.i = load i64, ptr %i.o, align 8  ; 2 uses
  %i.t = icmp ult i64 %.val5.i.i.i.i.i, %.val6.i.i.i.i.i
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_22LogisticClassificationEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %.val.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !17
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !507
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i64 [ %.val5.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.u = mul i64 %.03.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val5.i.i.i.i.i.i, i64 %i.u ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !81 ; 2 uses
  %i.x = fcmp olt float %i.w, f0x358637BD
  %i.y = select i1 %i.x, float f0x358637BD, float %i.w ; 2 uses
  %i.z = fcmp ogt float %i.y, f0x3F7FFFEF
  %i.aa = select i1 %i.z, float f0x3F7FFFEF, float %i.y
  %i.ab = fdiv float 1.000000e+00, %i.aa
  %i.ac = fadd float %i.ab, -1.000000e+00
  %i.ad = call float @logf(float noundef %i.ac) #21
  %i.ae = fneg float %i.ad
  store float %i.ae, ptr %i.v, align 4, !tbaa !81
  %i.af = add nuw i64 %.03.i.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.af, %.val6.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_22LogisticClassificationEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i, label %bb.c, !llvm.loop !660

_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS5_10RegLossObjINS5_22LogisticClassificationEE12ProbToMarginEPNS2_6TensorIfLi1EEEEUlfE_ZNKSA_12ProbToMarginESD_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESD_OT_T0_T1_EUlmE_EEvNS2_10TensorViewISM_XT0_EEEiOSP_EUlSN_E_EEvSO_iST_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ag = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6linalg8cpu_impl17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS3_10RegLossObjINS3_22LogisticClassificationEE12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_ZNKS8_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextESB_OT_T0_T1_EUlmE_EEvNS0_10TensorViewISK_XT0_EEEiOSN_.exit, label %bb.b, !llvm.loop !661

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.g, ptr %i.a, align 4, !tbaa !118, !noalias !662
  store i32 1, ptr %i.b, align 4, !tbaa !118, !noalias !662
  %.not.i.i.i.i.i = icmp slt i32 %i.g, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ah = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc.i.i.i.i unwind label %bb.f

.noexc.i.i.i.i:                                   ; preds = %bb.e
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ah, ptr noundef nonnull @.str.126, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.f

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.g ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.57, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.127, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZNK7xgboost3obj10RegLossObjINS0_11LogisticRawEE10SaveConfigEPNS_4JsonE:_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn11.pn = phi { ptr, i32 } [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj10RegLossObjINS0_11LogisticRawEE9ConfigureERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.96", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !79, !noalias !667, !noundef !80
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !673
  %i.d = invoke noundef ptr @_ZN7xgboost3obj12RegLossParam11__MANAGER__Ev()
          to label %bb.c unwind label %bb.d, !noalias !673 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !226, !noalias !673
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226, !noalias !673
  invoke void @_ZNK4dmlc9parameter12ParamManager9RunUpdateIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_NS0_15ParamInitOptionEPSH_PSt3setIPNS0_16FieldAccessEntryESt4lessISP_ESaISP_EE(ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj12RegLossParam11__MANAGER__EvE4inst, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %i.e, ptr %i.g, i32 noundef 0, ptr noundef nonnull align 8 %2, ptr noundef null)
          to label %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit unwind label %bb.d

common.resume.i:                                  ; preds = %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.m, %bb.g ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  resume { ptr, i32 } %common.resume.op.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !677
  %i.i = invoke noundef ptr @_ZN7xgboost3obj12RegLossParam11__MANAGER__Ev()
          to label %bb.f unwind label %bb.g, !noalias !677 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !226, !noalias !677
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !226, !noalias !677
  invoke void @_ZNK4dmlc9parameter12ParamManager7RunInitIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_PSH_NS0_15ParamInitOptionE(ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj12RegLossParam11__MANAGER__EvE4inst, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %i.j, ptr %i.l, ptr noundef nonnull align 8 %2, i32 noundef 0)
          to label %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i: ; preds = %bb.f
  store i8 1, ptr %i.a, align 8, !tbaa !28, !noalias !667
  br label %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit

_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit: ; preds = %bb.c, %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.n, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !15
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj10RegLossObjINS0_11LogisticRawEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 24 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"struct.xgboost::common::Transform<>::Evaluator.308", align 8 ; 12 uses
  tail call fastcc void @_ZN7xgboost3obj12_GLOBAL__N_114CheckRegInputsERKNS_8MetaInfoERKNS_16HostDeviceVectorIfEE(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i32 %.sroa.0.0.copyload.i.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i to i16
  %.off.i.i.i = add i16 %.sroa.0.0.extract.trunc.i.i, -2
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.g = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str.117, i32 noundef 205)
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.d

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.118, i64 noundef 47)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_11LogisticRawEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %bb.f

common.resume.i:                                  ; preds = %bb.ba, %bb.ap, %bb.ai, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ba ], [ %i.j, %bb.e ], [ %i.hi, %bb.ai ], [ %.pn.i.i.i, %bb.ap ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_11LogisticRawEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.g:                                             ; preds = %bb.b
  %sext.i.i.i = shl i32 %.sroa.0.0.copyload.i.i.i, 16
  %i.m = ashr exact i32 %sext.i.i.i, 16
  switch i32 %i.m, label %bb.ak [
    i32 0, label %bb.h
    i32 1, label %bb.ag
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381  ; 4 uses
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.r = load i64, ptr %8, align 8, !tbaa !17     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !378  ; 4 uses
  %13 = and i64 %i.o, -4
  %i.w = load i64, ptr %i.q, align 8              ; 15 uses
  %i.x = trunc i64 %i.w to i32                    ; 14 uses
  %i.y = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.y, 2 ; 4 uses
  %i.z = add i32 %i.x, -1                         ; 5 uses
  %i.aa = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z) ; 4 uses
  %i.ab = add i64 %i.w, -1                        ; 4 uses
  %i.ac = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %i.ad = shufflevector <2 x i64> %i.ac, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ae = add <2 x i64> %i.ad, <i64 0, i64 -1>
  %i.af = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x i64> %i.af, i64 1   ; 4 uses
  %i.ah = extractelement <2 x i64> %i.af, i64 0
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.ah, 2 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i
  %.0155.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.dd, %bb.u ] ; 2 uses
  %.sroa.0130.0154.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.dc, %bb.u ] ; 11 uses
  %i.ai = icmp ugt i64 %.sroa.0130.0154.i.i.i.i.i.i, 4294967295 ; 4 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.j
  %i.aj = lshr i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.ag
  %i.ak = and i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.j
  %i.al = udiv i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.w ; 2 uses
  %i.am = mul i64 %i.al, %i.w                     ; 0 uses
  %.recomposed = urem i64 %.sroa.0130.0154.i.i.i.i.i.i, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.an = trunc nuw i64 %.sroa.0130.0154.i.i.i.i.i.i to i32 ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i.i.i.i.i.i.i, label %.split.i8.i.i.i.i.i.i.i.i.i.i

.split.us.i11.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.k
  %i.ao = lshr i32 %i.an, %i.aa
  %i.ap = and i32 %i.z, %i.an
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i

.split.i8.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.k
  %i.aq = udiv i32 %i.an, %i.x                    ; 2 uses
  %i.ar = mul i32 %i.aq, %i.x                     ; 0 uses
  %.recomposed51 = urem i32 %i.an, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i.i.i.i.i.i.i, %.split.us.i11.i.i.i.i.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.recomposed51, %.split.i8.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %.split.us.i11.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aq, %.split.i8.i.i.i.i.i.i.i.i.i.i ], [ %i.ao, %.split.us.i11.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i.i.i.i.i.i.i to i64
  %i.as = zext i32 %.us-phi23.i10.i.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i ], [ %.recomposed, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.al, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %i.at = mul i64 %.sink.i.i.i.i.i.i.i.i.i.i, %i.r
  %i.au = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.i.i, %i.t
  %i.av = getelementptr [4 x i8], ptr %i.v, i64 %i.at
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.au
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !81 ; 2 uses
  %i.ay = fcmp ult float %i.ax, 0.000000e+00
  %i.az = fcmp ugt float %i.ax, 1.000000e+00
  %.not2.i.i.i.i.i.i.i = or i1 %i.ay, %i.az
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i
  %i.ba = or disjoint i64 %.sroa.0130.0154.i.i.i.i.i.i, 1 ; 6 uses
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i48.i.i.i.i.i.i, label %.split.i.i.i.i.i47.i.i.i.i.i.i

.split.us.i.i.i.i.i48.i.i.i.i.i.i:                ; preds = %bb.m
  %i.bb = lshr i64 %i.ba, %i.ag
  %i.bc = and i64 %i.ba, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i

.split.i.i.i.i.i47.i.i.i.i.i.i:                   ; preds = %bb.m
  %i.bd = udiv i64 %i.ba, %i.w                    ; 2 uses
  %i.be = mul i64 %i.bd, %i.w                     ; 0 uses
  %.recomposed52 = urem i64 %i.ba, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bf = trunc nuw i64 %i.ba to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i45.i.i.i.i.i.i, label %.split.i8.i.i.i.i37.i.i.i.i.i.i

.split.us.i11.i.i.i.i45.i.i.i.i.i.i:              ; preds = %bb.n
  %i.bg = lshr i32 %i.bf, %i.aa
  %i.bh = and i32 %i.z, %i.bf
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i

.split.i8.i.i.i.i37.i.i.i.i.i.i:                  ; preds = %bb.n
  %i.bi = udiv i32 %i.bf, %i.x                    ; 2 uses
  %i.bj = mul i32 %i.bi, %i.x                     ; 0 uses
  %.recomposed53 = urem i32 %i.bf, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i37.i.i.i.i.i.i, %.split.us.i11.i.i.i.i45.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i39.i.i.i.i.i.i = phi i32 [ %.recomposed53, %.split.i8.i.i.i.i37.i.i.i.i.i.i ], [ %i.bh, %.split.us.i11.i.i.i.i45.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i40.i.i.i.i.i.i = phi i32 [ %i.bi, %.split.i8.i.i.i.i37.i.i.i.i.i.i ], [ %i.bg, %.split.us.i11.i.i.i.i45.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i39.i.i.i.i.i.i to i64
  %i.bk = zext i32 %.us-phi23.i10.i.i.i.i40.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i, %.split.i.i.i.i.i47.i.i.i.i.i.i, %.split.us.i.i.i.i.i48.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i42.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i ], [ %.recomposed52, %.split.i.i.i.i.i47.i.i.i.i.i.i ], [ %i.bc, %.split.us.i.i.i.i.i48.i.i.i.i.i.i ]
  %.sink.i.i.i.i43.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i38.i.i.i.i.i.i ], [ %i.bd, %.split.i.i.i.i.i47.i.i.i.i.i.i ], [ %i.bb, %.split.us.i.i.i.i.i48.i.i.i.i.i.i ]
  %i.bl = mul i64 %.sink.i.i.i.i43.i.i.i.i.i.i, %i.r
  %i.bm = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i42.i.i.i.i.i.i, %i.t
  %i.bn = getelementptr [4 x i8], ptr %i.v, i64 %i.bl
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !81 ; 2 uses
  %i.bq = fcmp ult float %i.bp, 0.000000e+00
  %i.br = fcmp ugt float %i.bp, 1.000000e+00
  %.not2.i44.i.i.i.i.i.i = or i1 %i.bq, %i.br
  br i1 %.not2.i44.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i
  %i.bs = or disjoint i64 %.sroa.0130.0154.i.i.i.i.i.i, 2 ; 6 uses
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i62.i.i.i.i.i.i, label %.split.i.i.i.i.i61.i.i.i.i.i.i

.split.us.i.i.i.i.i62.i.i.i.i.i.i:                ; preds = %bb.p
  %i.bt = lshr i64 %i.bs, %i.ag
  %i.bu = and i64 %i.bs, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i

.split.i.i.i.i.i61.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.bv = udiv i64 %i.bs, %i.w                    ; 2 uses
  %i.bw = mul i64 %i.bv, %i.w                     ; 0 uses
  %.recomposed54 = urem i64 %i.bs, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bx = trunc nuw i64 %i.bs to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i59.i.i.i.i.i.i, label %.split.i8.i.i.i.i51.i.i.i.i.i.i

.split.us.i11.i.i.i.i59.i.i.i.i.i.i:              ; preds = %bb.q
  %i.by = lshr i32 %i.bx, %i.aa
  %i.bz = and i32 %i.z, %i.bx
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i

.split.i8.i.i.i.i51.i.i.i.i.i.i:                  ; preds = %bb.q
  %i.ca = udiv i32 %i.bx, %i.x                    ; 2 uses
  %i.cb = mul i32 %i.ca, %i.x                     ; 0 uses
  %.recomposed55 = urem i32 %i.bx, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i51.i.i.i.i.i.i, %.split.us.i11.i.i.i.i59.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i53.i.i.i.i.i.i = phi i32 [ %.recomposed55, %.split.i8.i.i.i.i51.i.i.i.i.i.i ], [ %i.bz, %.split.us.i11.i.i.i.i59.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i54.i.i.i.i.i.i = phi i32 [ %i.ca, %.split.i8.i.i.i.i51.i.i.i.i.i.i ], [ %i.by, %.split.us.i11.i.i.i.i59.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i55.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i53.i.i.i.i.i.i to i64
  %i.cc = zext i32 %.us-phi23.i10.i.i.i.i54.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i, %.split.i.i.i.i.i61.i.i.i.i.i.i, %.split.us.i.i.i.i.i62.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i56.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i55.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i ], [ %.recomposed54, %.split.i.i.i.i.i61.i.i.i.i.i.i ], [ %i.bu, %.split.us.i.i.i.i.i62.i.i.i.i.i.i ]
  %.sink.i.i.i.i57.i.i.i.i.i.i = phi i64 [ %i.cc, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i52.i.i.i.i.i.i ], [ %i.bv, %.split.i.i.i.i.i61.i.i.i.i.i.i ], [ %i.bt, %.split.us.i.i.i.i.i62.i.i.i.i.i.i ]
  %i.cd = mul i64 %.sink.i.i.i.i57.i.i.i.i.i.i, %i.r
  %i.ce = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i56.i.i.i.i.i.i, %i.t
  %i.cf = getelementptr [4 x i8], ptr %i.v, i64 %i.cd
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !81 ; 2 uses
  %i.ci = fcmp ult float %i.ch, 0.000000e+00
  %i.cj = fcmp ugt float %i.ch, 1.000000e+00
  %.not2.i58.i.i.i.i.i.i = or i1 %i.ci, %i.cj
  br i1 %.not2.i58.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i
  %i.ck = or disjoint i64 %.sroa.0130.0154.i.i.i.i.i.i, 3 ; 6 uses
  br i1 %i.ai, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i76.i.i.i.i.i.i, label %.split.i.i.i.i.i75.i.i.i.i.i.i

.split.us.i.i.i.i.i76.i.i.i.i.i.i:                ; preds = %bb.s
  %i.cl = lshr i64 %i.ck, %i.ag
  %i.cm = and i64 %i.ck, %i.ab
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i

.split.i.i.i.i.i75.i.i.i.i.i.i:                   ; preds = %bb.s
  %i.cn = udiv i64 %i.ck, %i.w                    ; 2 uses
  %i.co = mul i64 %i.cn, %i.w                     ; 0 uses
  %.recomposed56 = urem i64 %i.ck, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cp = trunc nuw i64 %i.ck to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i73.i.i.i.i.i.i, label %.split.i8.i.i.i.i65.i.i.i.i.i.i

.split.us.i11.i.i.i.i73.i.i.i.i.i.i:              ; preds = %bb.t
  %i.cq = lshr i32 %i.cp, %i.aa
  %i.cr = and i32 %i.z, %i.cp
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i

.split.i8.i.i.i.i65.i.i.i.i.i.i:                  ; preds = %bb.t
  %i.cs = udiv i32 %i.cp, %i.x                    ; 2 uses
  %i.ct = mul i32 %i.cs, %i.x                     ; 0 uses
  %.recomposed57 = urem i32 %i.cp, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i65.i.i.i.i.i.i, %.split.us.i11.i.i.i.i73.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i67.i.i.i.i.i.i = phi i32 [ %.recomposed57, %.split.i8.i.i.i.i65.i.i.i.i.i.i ], [ %i.cr, %.split.us.i11.i.i.i.i73.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i68.i.i.i.i.i.i = phi i32 [ %i.cs, %.split.i8.i.i.i.i65.i.i.i.i.i.i ], [ %i.cq, %.split.us.i11.i.i.i.i73.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i69.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i67.i.i.i.i.i.i to i64
  %i.cu = zext i32 %.us-phi23.i10.i.i.i.i68.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i, %.split.i.i.i.i.i75.i.i.i.i.i.i, %.split.us.i.i.i.i.i76.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i70.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i69.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i ], [ %.recomposed56, %.split.i.i.i.i.i75.i.i.i.i.i.i ], [ %i.cm, %.split.us.i.i.i.i.i76.i.i.i.i.i.i ]
  %.sink.i.i.i.i71.i.i.i.i.i.i = phi i64 [ %i.cu, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i66.i.i.i.i.i.i ], [ %i.cn, %.split.i.i.i.i.i75.i.i.i.i.i.i ], [ %i.cl, %.split.us.i.i.i.i.i76.i.i.i.i.i.i ]
  %i.cv = mul i64 %.sink.i.i.i.i71.i.i.i.i.i.i, %i.r
  %i.cw = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i70.i.i.i.i.i.i, %i.t
  %i.cx = getelementptr [4 x i8], ptr %i.v, i64 %i.cv
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !81 ; 2 uses
  %i.da = fcmp ult float %i.cz, 0.000000e+00
  %i.db = fcmp ugt float %i.cz, 1.000000e+00
  %.not2.i72.i.i.i.i.i.i = or i1 %i.da, %i.db
  br i1 %.not2.i72.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i
  %i.dc = add nuw i64 %.sroa.0130.0154.i.i.i.i.i.i, 4
  %i.dd = add nsw i64 %.0155.i.i.i.i.i.i, -1
  %i.de = icmp sgt i64 %.0155.i.i.i.i.i.i, 1
  br i1 %i.de, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !678

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.u, %bb.h
  %.sroa.0130.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %13, %bb.u ] ; 11 uses
  %i.df = sub i64 %i.o, %.sroa.0130.0.lcssa.i.i.i.i.i.i
  switch i64 %i.df, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i [
    i64 3, label %bb.v
    i64 2, label %bb.z
    i64 1, label %bb.ad
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dg = icmp ugt i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, 4294967295
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !17, !noalias !679 ; 5 uses
  %i.dj = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.di)
  %.not.i.i.i.i.i88.i.i.i.i.i.i = icmp samesign ult i64 %i.dj, 2
  br i1 %.not.i.i.i.i.i88.i.i.i.i.i.i, label %.split.us.i.i.i.i.i90.i.i.i.i.i.i, label %.split.i.i.i.i.i89.i.i.i.i.i.i

.split.us.i.i.i.i.i90.i.i.i.i.i.i:                ; preds = %bb.w
  %i.dk = add i64 %i.di, -1                       ; 2 uses
  %i.dl = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dk)
  %i.dm = lshr i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, %i.dl
  %i.dn = and i64 %i.dk, %.sroa.0130.0.lcssa.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i

.split.i.i.i.i.i89.i.i.i.i.i.i:                   ; preds = %bb.w
  %i.do = udiv i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, %i.di ; 2 uses
  %i.dp = mul i64 %i.do, %i.di                    ; 0 uses
  %.recomposed58 = urem i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, %i.di
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dq = trunc nuw i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i to i32 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !17, !noalias !684
  %i.dt = trunc i64 %i.ds to i32                  ; 5 uses
  %i.du = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dt)
  %.not.i7.i.i.i.i78.i.i.i.i.i.i = icmp samesign ult i32 %i.du, 2
  br i1 %.not.i7.i.i.i.i78.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i87.i.i.i.i.i.i, label %.split.i8.i.i.i.i79.i.i.i.i.i.i

.split.us.i11.i.i.i.i87.i.i.i.i.i.i:              ; preds = %bb.x
  %i.dv = add i32 %i.dt, -1                       ; 2 uses
  %i.dw = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dv)
  %i.dx = lshr i32 %i.dq, %i.dw
  %i.dy = and i32 %i.dv, %i.dq
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i

.split.i8.i.i.i.i79.i.i.i.i.i.i:                  ; preds = %bb.x
  %i.dz = udiv i32 %i.dq, %i.dt                   ; 2 uses
  %i.ea = mul i32 %i.dz, %i.dt                    ; 0 uses
  %.recomposed59 = urem i32 %i.dq, %i.dt
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i79.i.i.i.i.i.i, %.split.us.i11.i.i.i.i87.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i81.i.i.i.i.i.i = phi i32 [ %.recomposed59, %.split.i8.i.i.i.i79.i.i.i.i.i.i ], [ %i.dy, %.split.us.i11.i.i.i.i87.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i82.i.i.i.i.i.i = phi i32 [ %i.dz, %.split.i8.i.i.i.i79.i.i.i.i.i.i ], [ %i.dx, %.split.us.i11.i.i.i.i87.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i83.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i81.i.i.i.i.i.i to i64
  %i.eb = zext i32 %.us-phi23.i10.i.i.i.i82.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i, %.split.i.i.i.i.i89.i.i.i.i.i.i, %.split.us.i.i.i.i.i90.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i84.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i83.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i ], [ %.recomposed58, %.split.i.i.i.i.i89.i.i.i.i.i.i ], [ %i.dn, %.split.us.i.i.i.i.i90.i.i.i.i.i.i ]
  %.sink.i.i.i.i85.i.i.i.i.i.i = phi i64 [ %i.eb, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i80.i.i.i.i.i.i ], [ %i.do, %.split.i.i.i.i.i89.i.i.i.i.i.i ], [ %i.dm, %.split.us.i.i.i.i.i90.i.i.i.i.i.i ]
  %i.ec = load i64, ptr %8, align 8, !tbaa !17
  %i.ed = mul i64 %i.ec, %.sink.i.i.i.i85.i.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !17
  %i.eg = mul i64 %i.ef, %.sroa.5.1.le.i.sink.i.i.i.i84.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !378
  %i.ej = getelementptr [4 x i8], ptr %i.ei, i64 %i.ed
  %i.ek = getelementptr [4 x i8], ptr %i.ej, i64 %i.eg
  %i.el = load float, ptr %i.ek, align 4, !tbaa !81 ; 2 uses
  %i.em = fcmp ult float %i.el, 0.000000e+00
  %i.en = fcmp ugt float %i.el, 1.000000e+00
  %.not2.i86.i.i.i.i.i.i = or i1 %i.em, %i.en
  br i1 %.not2.i86.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i
  %14 = or disjoint i64 %.sroa.0130.0.lcssa.i.i.i.i.i.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i.i.i
  %.sroa.0130.1.i.i.i.i.i.i = phi i64 [ %14, %bb.y ], [ %.sroa.0130.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 8 uses
  %i.eo = icmp ugt i64 %.sroa.0130.1.i.i.i.i.i.i, 4294967295
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !17, !noalias !687 ; 5 uses
  %i.er = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eq)
  %.not.i.i.i.i.i102.i.i.i.i.i.i = icmp samesign ult i64 %i.er, 2
  br i1 %.not.i.i.i.i.i102.i.i.i.i.i.i, label %.split.us.i.i.i.i.i104.i.i.i.i.i.i, label %.split.i.i.i.i.i103.i.i.i.i.i.i

.split.us.i.i.i.i.i104.i.i.i.i.i.i:               ; preds = %bb.aa
  %i.es = add i64 %i.eq, -1                       ; 2 uses
  %i.et = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.es)
  %i.eu = lshr i64 %.sroa.0130.1.i.i.i.i.i.i, %i.et
  %i.ev = and i64 %i.es, %.sroa.0130.1.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i

.split.i.i.i.i.i103.i.i.i.i.i.i:                  ; preds = %bb.aa
  %i.ew = udiv i64 %.sroa.0130.1.i.i.i.i.i.i, %i.eq ; 2 uses
  %i.ex = mul i64 %i.ew, %i.eq                    ; 0 uses
  %.recomposed60 = urem i64 %.sroa.0130.1.i.i.i.i.i.i, %i.eq
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ey = trunc nuw i64 %.sroa.0130.1.i.i.i.i.i.i to i32 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !17, !noalias !692
  %i.fb = trunc i64 %i.fa to i32                  ; 5 uses
  %i.fc = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fb)
  %.not.i7.i.i.i.i92.i.i.i.i.i.i = icmp samesign ult i32 %i.fc, 2
  br i1 %.not.i7.i.i.i.i92.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i101.i.i.i.i.i.i, label %.split.i8.i.i.i.i93.i.i.i.i.i.i

.split.us.i11.i.i.i.i101.i.i.i.i.i.i:             ; preds = %bb.ab
  %i.fd = add i32 %i.fb, -1                       ; 2 uses
  %i.fe = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fd)
  %i.ff = lshr i32 %i.ey, %i.fe
  %i.fg = and i32 %i.fd, %i.ey
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i

.split.i8.i.i.i.i93.i.i.i.i.i.i:                  ; preds = %bb.ab
  %i.fh = udiv i32 %i.ey, %i.fb                   ; 2 uses
  %i.fi = mul i32 %i.fh, %i.fb                    ; 0 uses
  %.recomposed61 = urem i32 %i.ey, %i.fb
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i93.i.i.i.i.i.i, %.split.us.i11.i.i.i.i101.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i95.i.i.i.i.i.i = phi i32 [ %.recomposed61, %.split.i8.i.i.i.i93.i.i.i.i.i.i ], [ %i.fg, %.split.us.i11.i.i.i.i101.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i96.i.i.i.i.i.i = phi i32 [ %i.fh, %.split.i8.i.i.i.i93.i.i.i.i.i.i ], [ %i.ff, %.split.us.i11.i.i.i.i101.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i97.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i95.i.i.i.i.i.i to i64
  %i.fj = zext i32 %.us-phi23.i10.i.i.i.i96.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i, %.split.i.i.i.i.i103.i.i.i.i.i.i, %.split.us.i.i.i.i.i104.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i98.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i97.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i ], [ %.recomposed60, %.split.i.i.i.i.i103.i.i.i.i.i.i ], [ %i.ev, %.split.us.i.i.i.i.i104.i.i.i.i.i.i ]
  %.sink.i.i.i.i99.i.i.i.i.i.i = phi i64 [ %i.fj, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i94.i.i.i.i.i.i ], [ %i.ew, %.split.i.i.i.i.i103.i.i.i.i.i.i ], [ %i.eu, %.split.us.i.i.i.i.i104.i.i.i.i.i.i ]
  %i.fk = load i64, ptr %8, align 8, !tbaa !17
  %i.fl = mul i64 %i.fk, %.sink.i.i.i.i99.i.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !17
  %i.fo = mul i64 %i.fn, %.sroa.5.1.le.i.sink.i.i.i.i98.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !378
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %i.fl
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.fo
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !81 ; 2 uses
  %i.fu = fcmp ult float %i.ft, 0.000000e+00
  %i.fv = fcmp ugt float %i.ft, 1.000000e+00
  %.not2.i100.i.i.i.i.i.i = or i1 %i.fu, %i.fv
  br i1 %.not2.i100.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i
  %i.fw = add nuw i64 %.sroa.0130.1.i.i.i.i.i.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i
  %.sroa.0130.2.i.i.i.i.i.i = phi i64 [ %i.fw, %bb.ac ], [ %.sroa.0130.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 7 uses
  %i.fx = icmp ugt i64 %.sroa.0130.2.i.i.i.i.i.i, 4294967295
  br i1 %i.fx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !17, !noalias !695 ; 5 uses
  %i.ga = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fz)
  %.not.i.i.i.i.i116.i.i.i.i.i.i = icmp samesign ult i64 %i.ga, 2
  br i1 %.not.i.i.i.i.i116.i.i.i.i.i.i, label %.split.us.i.i.i.i.i118.i.i.i.i.i.i, label %.split.i.i.i.i.i117.i.i.i.i.i.i

.split.us.i.i.i.i.i118.i.i.i.i.i.i:               ; preds = %bb.ae
  %i.gb = add i64 %i.fz, -1                       ; 2 uses
  %i.gc = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gb)
  %i.gd = lshr i64 %.sroa.0130.2.i.i.i.i.i.i, %i.gc
  %i.ge = and i64 %i.gb, %.sroa.0130.2.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i

.split.i.i.i.i.i117.i.i.i.i.i.i:                  ; preds = %bb.ae
  %i.gf = udiv i64 %.sroa.0130.2.i.i.i.i.i.i, %i.fz ; 2 uses
  %i.gg = mul i64 %i.gf, %i.fz                    ; 0 uses
  %.recomposed62 = urem i64 %.sroa.0130.2.i.i.i.i.i.i, %i.fz
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.gh = trunc nuw i64 %.sroa.0130.2.i.i.i.i.i.i to i32 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !17, !noalias !700
  %i.gk = trunc i64 %i.gj to i32                  ; 5 uses
  %i.gl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gk)
  %.not.i7.i.i.i.i106.i.i.i.i.i.i = icmp samesign ult i32 %i.gl, 2
  br i1 %.not.i7.i.i.i.i106.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i115.i.i.i.i.i.i, label %.split.i8.i.i.i.i107.i.i.i.i.i.i

.split.us.i11.i.i.i.i115.i.i.i.i.i.i:             ; preds = %bb.af
  %i.gm = add i32 %i.gk, -1                       ; 2 uses
  %i.gn = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gm)
  %i.go = lshr i32 %i.gh, %i.gn
  %i.gp = and i32 %i.gm, %i.gh
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i

.split.i8.i.i.i.i107.i.i.i.i.i.i:                 ; preds = %bb.af
  %i.gq = udiv i32 %i.gh, %i.gk                   ; 2 uses
  %i.gr = mul i32 %i.gq, %i.gk                    ; 0 uses
  %.recomposed63 = urem i32 %i.gh, %i.gk
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i107.i.i.i.i.i.i, %.split.us.i11.i.i.i.i115.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i109.i.i.i.i.i.i = phi i32 [ %.recomposed63, %.split.i8.i.i.i.i107.i.i.i.i.i.i ], [ %i.gp, %.split.us.i11.i.i.i.i115.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i110.i.i.i.i.i.i = phi i32 [ %i.gq, %.split.i8.i.i.i.i107.i.i.i.i.i.i ], [ %i.go, %.split.us.i11.i.i.i.i115.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i111.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i109.i.i.i.i.i.i to i64
  %i.gs = zext i32 %.us-phi23.i10.i.i.i.i110.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i, %.split.i.i.i.i.i117.i.i.i.i.i.i, %.split.us.i.i.i.i.i118.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i112.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i111.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i ], [ %.recomposed62, %.split.i.i.i.i.i117.i.i.i.i.i.i ], [ %i.ge, %.split.us.i.i.i.i.i118.i.i.i.i.i.i ]
  %.sink.i.i.i.i113.i.i.i.i.i.i = phi i64 [ %i.gs, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i108.i.i.i.i.i.i ], [ %i.gf, %.split.i.i.i.i.i117.i.i.i.i.i.i ], [ %i.gd, %.split.us.i.i.i.i.i118.i.i.i.i.i.i ]
  %i.gt = load i64, ptr %8, align 8, !tbaa !17
  %i.gu = mul i64 %i.gt, %.sink.i.i.i.i113.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !17
  %i.gx = mul i64 %i.gw, %.sroa.5.1.le.i.sink.i.i.i.i112.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !378
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gu
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %i.gx
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !81 ; 2 uses
  %i.hd = fcmp ult float %i.hc, 0.000000e+00
  %i.he = fcmp ugt float %i.hc, 1.000000e+00
  %.not2.i114.i.i.i.i.i.i = or i1 %i.hd, %i.he
  br i1 %.not2.i114.i.i.i.i.i.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i

bb.ag:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.hf = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hf, ptr noundef nonnull @.str.117, i32 noundef 187)
  %i.hg = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i unwind label %bb.ah

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.123, i64 noundef 46)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_11LogisticRawEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i, %bb.ag
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume.i

bb.aj:                                            ; preds = %bb.ah
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_11LogisticRawEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.ak:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.hl = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hl, ptr noundef nonnull @.str.119, i32 noundef 271)
  %i.hm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i unwind label %bb.am ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i: ; preds = %bb.ak
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull @.str.122, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i
  %.sroa.0.0.copyload.i28.i.i.i = load i32, ptr %i.f, align 8
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i28.i.i.i to i16
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, i16 noundef signext %.sroa.0.0.extract.trunc.i.i.i)
          to label %bb.al unwind label %bb.an     ; 0 uses

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.am:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i, %bb.ak
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i.i.i = phi { ptr, i32 } [ %i.hq, %bb.an ], [ %i.hp, %bb.am ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume.i

bb.aq:                                            ; preds = %bb.ao
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #39
  unreachable

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i
  %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i = phi i64 [ %.sroa.0130.1.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit105.i.i.i.i.i.i ], [ %.sroa.0130.0.lcssa.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit91.i.i.i.i.i.i ], [ %.sroa.0130.2.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i ], [ %.sroa.0130.0154.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i ], [ %i.ck, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit77.i.i.i.i.i.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit63.i.i.i.i.i.i ], [ %i.ba, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit49.i.i.i.i.i.i ]
  %i.ht = icmp eq i64 %i.o, %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %i.ht, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %bb.al, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_11LogisticRawEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_11LogisticRawEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.hu = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hu, ptr noundef nonnull @.str.109, i32 noundef 85)
  %i.hv = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.ar

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull @.str.134, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i

bb.ar:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.as unwind label %bb.bb

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ba

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_11LogisticRawEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit119.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.hz = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hy)
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_11LogisticRawEEEvPKNS_7ContextERKNS_8MetaInfoE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_11LogisticRawEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ib = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hy) ; 2 uses
  store i64 %i.ib, ptr %i.a, align 8, !tbaa !17
  %i.ic = load i64, ptr %2, align 8, !tbaa !17, !noalias !703
  %i.id = icmp eq i64 %i.ib, %i.ic
  br i1 %i.id, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
end_hunk_4
begin_hunk_5_@_ZNK7xgboost3obj10RegLossObjINS0_13GammaDevianceEE10SaveConfigEPNS_4JsonE:_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn11.pn = phi { ptr, i32 } [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj10RegLossObjINS0_13GammaDevianceEE9ConfigureERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.96", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !79, !noalias !768, !noundef !80
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !774
  %i.d = invoke noundef ptr @_ZN7xgboost3obj12RegLossParam11__MANAGER__Ev()
          to label %bb.c unwind label %bb.d, !noalias !774 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !226, !noalias !774
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226, !noalias !774
  invoke void @_ZNK4dmlc9parameter12ParamManager9RunUpdateIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_NS0_15ParamInitOptionEPSH_PSt3setIPNS0_16FieldAccessEntryESt4lessISP_ESaISP_EE(ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj12RegLossParam11__MANAGER__EvE4inst, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %i.e, ptr %i.g, i32 noundef 0, ptr noundef nonnull align 8 %2, ptr noundef null)
          to label %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit unwind label %bb.d

common.resume.i:                                  ; preds = %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.m, %bb.g ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  resume { ptr, i32 } %common.resume.op.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !778
  %i.i = invoke noundef ptr @_ZN7xgboost3obj12RegLossParam11__MANAGER__Ev()
          to label %bb.f unwind label %bb.g, !noalias !778 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !226, !noalias !778
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !226, !noalias !778
  invoke void @_ZNK4dmlc9parameter12ParamManager7RunInitIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_PSH_NS0_15ParamInitOptionE(ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj12RegLossParam11__MANAGER__EvE4inst, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr %i.j, ptr %i.l, ptr noundef nonnull align 8 %2, i32 noundef 0)
          to label %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i: ; preds = %bb.f
  store i8 1, ptr %i.a, align 8, !tbaa !28, !noalias !768
  br label %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit

_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit: ; preds = %bb.c, %_ZN4dmlc9ParameterIN7xgboost3obj12RegLossParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_.exit.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !202    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.n, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !15
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %_ZN7xgboost16XGBoostParameterINS_3obj12RegLossParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj10RegLossObjINS0_13GammaDevianceEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 24 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"struct.xgboost::common::Transform<>::Evaluator.344", align 8 ; 12 uses
  tail call fastcc void @_ZN7xgboost3obj12_GLOBAL__N_114CheckRegInputsERKNS_8MetaInfoERKNS_16HostDeviceVectorIfEE(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i32 %.sroa.0.0.copyload.i.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i to i16
  %.off.i.i.i = add i16 %.sroa.0.0.extract.trunc.i.i, -2
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.g = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str.117, i32 noundef 205)
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.d

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.118, i64 noundef 47)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %bb.f

common.resume.i:                                  ; preds = %bb.ar, %bb.ag, %bb.z, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ar ], [ %i.j, %bb.e ], [ %i.js, %bb.z ], [ %.pn.i.i.i, %bb.ag ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.g:                                             ; preds = %bb.b
  %sext.i.i.i = shl i32 %.sroa.0.0.copyload.i.i.i, 16
  %i.m = ashr exact i32 %sext.i.i.i, 16
  switch i32 %i.m, label %bb.ab [
    i32 0, label %bb.h
    i32 1, label %bb.x
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381  ; 4 uses
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.r = load i64, ptr %8, align 8, !tbaa !17     ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17   ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !378  ; 13 uses
  %13 = and i64 %i.o, -4
  %i.w = load i64, ptr %i.q, align 8              ; 15 uses
  %i.x = trunc i64 %i.w to i32                    ; 14 uses
  %i.y = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.y, 2
  %i.z = add i32 %i.x, -1                         ; 3 uses
  %i.aa = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z) ; 4 uses
  %i.ab = zext i32 %i.z to i64                    ; 3 uses
  %i.ac = add i64 %i.w, -1                        ; 4 uses
  %i.ad = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %i.ae = shufflevector <2 x i64> %i.ad, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.af = add <2 x i64> %i.ae, <i64 0, i64 -1>
  %i.ag = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.af) ; 2 uses
  %i.ah = extractelement <2 x i64> %i.ag, i64 1   ; 4 uses
  %i.ai = extractelement <2 x i64> %i.ag, i64 0
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.ai, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i
  %.0149.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.fq, %bb.l ] ; 2 uses
  %.sroa.0124.0148.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.fp, %bb.l ] ; 24 uses
  %i.aj = icmp ugt i64 %.sroa.0124.0148.i.i.i.i.i.i, 4294967295
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i

bb.k:                                             ; preds = %bb.i
  %i.ak = trunc nuw i64 %.sroa.0124.0148.i.i.i.i.i.i to i32 ; 3 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.al = lshr i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.ah
  %i.am = and i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.ac
  %i.an = mul i64 %i.al, %i.r
  %i.ao = mul i64 %i.am, %i.t
  %i.ap = getelementptr [4 x i8], ptr %i.v, i64 %i.an
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !81
  %i.as = fcmp ule float %i.ar, 0.000000e+00
  br i1 %i.as, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i: ; preds = %bb.j
  %i.at = udiv i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.w ; 2 uses
  %i.au = mul i64 %i.at, %i.w                     ; 0 uses
  %.recomposed = urem i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.w
  %i.av = mul i64 %i.at, %i.r
  %i.aw = mul i64 %.recomposed, %i.t
  %i.ax = getelementptr [4 x i8], ptr %i.v, i64 %i.av
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load float, ptr %i.ay, align 4, !tbaa !81
  %i.ba = fcmp ule float %i.az, 0.000000e+00
  br i1 %i.ba, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i: ; preds = %bb.k
  %i.bb = lshr i32 %i.ak, %i.aa
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i = and i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.ab
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul i64 %i.r, %i.bc
  %i.be = mul i64 %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i, %i.t
  %i.bf = getelementptr [4 x i8], ptr %i.v, i64 %i.bd
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !81
  %i.bi = fcmp ule float %i.bh, 0.000000e+00
  br i1 %i.bi, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i: ; preds = %bb.k
  %i.bj = udiv i32 %i.ak, %i.x                    ; 2 uses
  %i.bk = mul i32 %i.bj, %i.x                     ; 0 uses
  %.recomposed51 = urem i32 %i.ak, %i.x
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i28.i = zext i32 %.recomposed51 to i64
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = mul i64 %i.r, %i.bl
  %i.bn = mul i64 %i.t, %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i28.i
  %i.bo = getelementptr [4 x i8], ptr %i.v, i64 %i.bm
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !81
  %i.br = fcmp ule float %i.bq, 0.000000e+00
  br i1 %i.br, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i
  %i.bs = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 1 ; 3 uses
  %i.bt = lshr i64 %i.bs, %i.ah
  %i.bu = and i64 %i.bs, %i.ac
  %i.bv = mul i64 %i.bt, %i.r
  %i.bw = mul i64 %i.bu, %i.t
  %i.bx = getelementptr [4 x i8], ptr %i.v, i64 %i.bv
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load float, ptr %i.by, align 4, !tbaa !81
  %i.ca = fcmp ule float %i.bz, 0.000000e+00
  br i1 %i.ca, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i
  %i.cb = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 1 ; 3 uses
  %i.cc = udiv i64 %i.cb, %i.w                    ; 2 uses
  %i.cd = mul i64 %i.cc, %i.w                     ; 0 uses
  %.recomposed52 = urem i64 %i.cb, %i.w
  %i.ce = mul i64 %i.cc, %i.r
  %i.cf = mul i64 %.recomposed52, %i.t
  %i.cg = getelementptr [4 x i8], ptr %i.v, i64 %i.ce
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !81
  %i.cj = fcmp ule float %i.ci, 0.000000e+00
  br i1 %i.cj, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i
  %i.ck = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 1 ; 3 uses
  %i.cl = trunc nuw i64 %i.ck to i32
  %i.cm = lshr i32 %i.cl, %i.aa
  %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i = and i64 %i.ck, %i.ab
  %i.cn = zext i32 %i.cm to i64
  %i.co = mul i64 %i.r, %i.cn
  %i.cp = mul i64 %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i, %i.t
  %i.cq = getelementptr [4 x i8], ptr %i.v, i64 %i.co
  %i.cr = getelementptr [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !81
  %i.ct = fcmp ule float %i.cs, 0.000000e+00
  br i1 %i.ct, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i
  %i.cu = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 1 ; 2 uses
  %i.cv = trunc nuw i64 %i.cu to i32              ; 2 uses
  %i.cw = udiv i32 %i.cv, %i.x                    ; 2 uses
  %i.cx = mul i32 %i.cw, %i.x                     ; 0 uses
  %.recomposed53 = urem i32 %i.cv, %i.x
  %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i33.i = zext i32 %.recomposed53 to i64
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = mul i64 %i.r, %i.cy
  %i.da = mul i64 %i.t, %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i33.i
  %i.db = getelementptr [4 x i8], ptr %i.v, i64 %i.cz
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !81
  %i.de = fcmp ule float %i.dd, 0.000000e+00
  br i1 %i.de, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i
  %i.df = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 2 ; 3 uses
  %i.dg = lshr i64 %i.df, %i.ah
  %i.dh = and i64 %i.df, %i.ac
  %i.di = mul i64 %i.dg, %i.r
  %i.dj = mul i64 %i.dh, %i.t
  %i.dk = getelementptr [4 x i8], ptr %i.v, i64 %i.di
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !81
  %i.dn = fcmp ule float %i.dm, 0.000000e+00
  br i1 %i.dn, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %.split.us.i.i.i.i.i73.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i
  %i.do = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 2 ; 3 uses
  %i.dp = udiv i64 %i.do, %i.w                    ; 2 uses
  %i.dq = mul i64 %i.dp, %i.w                     ; 0 uses
  %.recomposed54 = urem i64 %i.do, %i.w
  %i.dr = mul i64 %i.dp, %i.r
  %i.ds = mul i64 %.recomposed54, %i.t
  %i.dt = getelementptr [4 x i8], ptr %i.v, i64 %i.dr
  %i.du = getelementptr [4 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load float, ptr %i.du, align 4, !tbaa !81
  %i.dw = fcmp ule float %i.dv, 0.000000e+00
  br i1 %i.dw, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %.thread42.i

.thread42.i:                                      ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i
  %i.dx = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 3 ; 3 uses
  %i.dy = udiv i64 %i.dx, %i.w                    ; 2 uses
  %i.dz = mul i64 %i.dy, %i.w                     ; 0 uses
  %.recomposed55 = urem i64 %i.dx, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i
  %i.ea = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 2 ; 3 uses
  %i.eb = trunc nuw i64 %i.ea to i32
  %i.ec = lshr i32 %i.eb, %i.aa
  %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i.i = and i64 %i.ea, %i.ab
  %i.ed = zext i32 %i.ec to i64
  %i.ee = mul i64 %i.r, %i.ed
  %i.ef = mul i64 %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i.i, %i.t
  %i.eg = getelementptr [4 x i8], ptr %i.v, i64 %i.ee
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !81
  %i.ej = fcmp ule float %i.ei, 0.000000e+00
  br i1 %i.ej, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %.split.us.i11.i.i.i.i70.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i
  %i.ek = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 2 ; 2 uses
  %i.el = trunc nuw i64 %i.ek to i32              ; 2 uses
  %i.em = udiv i32 %i.el, %i.x                    ; 2 uses
  %i.en = mul i32 %i.em, %i.x                     ; 0 uses
  %.recomposed56 = urem i32 %i.el, %i.x
  %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i39.i = zext i32 %.recomposed56 to i64
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = mul i64 %i.r, %i.eo
  %i.eq = mul i64 %i.t, %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i39.i
  %i.er = getelementptr [4 x i8], ptr %i.v, i64 %i.ep
  %i.es = getelementptr [4 x i8], ptr %i.er, i64 %i.eq
  %i.et = load float, ptr %i.es, align 4, !tbaa !81
  %i.eu = fcmp ule float %i.et, 0.000000e+00
  br i1 %i.eu, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %.thread8.i.thread.i

.thread8.i.thread.i:                              ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i
  %i.ev = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 3 ; 2 uses
  %i.ew = trunc nuw i64 %i.ev to i32              ; 2 uses
  %i.ex = udiv i32 %i.ew, %i.x                    ; 2 uses
  %i.ey = mul i32 %i.ex, %i.x                     ; 0 uses
  %.recomposed57 = urem i32 %i.ew, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i

.split.us.i.i.i.i.i73.i.i.i.i.i.i:                ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i
  %i.ez = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 3 ; 3 uses
  %i.fa = lshr i64 %i.ez, %i.ah
  %i.fb = and i64 %i.ez, %i.ac
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i

.split.us.i11.i.i.i.i70.i.i.i.i.i.i:              ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i
  %i.fc = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 3 ; 2 uses
  %i.fd = trunc nuw i64 %i.fc to i32              ; 2 uses
  %i.fe = lshr i32 %i.fd, %i.aa
  %i.ff = and i32 %i.z, %i.fd
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i: ; preds = %.split.us.i11.i.i.i.i70.i.i.i.i.i.i, %.thread8.i.thread.i
  %i.fg = phi i64 [ %i.ev, %.thread8.i.thread.i ], [ %i.fc, %.split.us.i11.i.i.i.i70.i.i.i.i.i.i ]
  %.us-phi.i9.i.i.i.i65.i.i.i.i.i.i = phi i32 [ %.recomposed57, %.thread8.i.thread.i ], [ %i.ff, %.split.us.i11.i.i.i.i70.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i66.i.i.i.i.i.i = phi i32 [ %i.ex, %.thread8.i.thread.i ], [ %i.fe, %.split.us.i11.i.i.i.i70.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i67.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i65.i.i.i.i.i.i to i64
  %i.fh = zext i32 %.us-phi23.i10.i.i.i.i66.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i, %.split.us.i.i.i.i.i73.i.i.i.i.i.i, %.thread42.i
  %i.fi = phi i64 [ %i.fg, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i ], [ %i.dx, %.thread42.i ], [ %i.ez, %.split.us.i.i.i.i.i73.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.sink.i.i.i.i68.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i67.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i ], [ %.recomposed55, %.thread42.i ], [ %i.fb, %.split.us.i.i.i.i.i73.i.i.i.i.i.i ]
  %.sink.i.i.i.i69.i.i.i.i.i.i = phi i64 [ %i.fh, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i ], [ %i.dy, %.thread42.i ], [ %i.fa, %.split.us.i.i.i.i.i73.i.i.i.i.i.i ]
  %i.fj = mul i64 %.sink.i.i.i.i69.i.i.i.i.i.i, %i.r
  %i.fk = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i68.i.i.i.i.i.i, %i.t
  %i.fl = getelementptr [4 x i8], ptr %i.v, i64 %i.fj
  %i.fm = getelementptr [4 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !81
  %i.fo = fcmp ule float %i.fn, 0.000000e+00
  br i1 %i.fo, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i
  %i.fp = add nuw i64 %.sroa.0124.0148.i.i.i.i.i.i, 4
  %i.fq = add nsw i64 %.0149.i.i.i.i.i.i, -1
  %i.fr = icmp sgt i64 %.0149.i.i.i.i.i.i, 1
  br i1 %i.fr, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !779

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.l, %bb.h
  %.sroa.0124.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %13, %bb.l ] ; 11 uses
  %i.fs = sub i64 %i.o, %.sroa.0124.0.lcssa.i.i.i.i.i.i
  switch i64 %i.fs, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i [
    i64 3, label %bb.m
    i64 2, label %bb.q
    i64 1, label %bb.u
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ft = icmp ugt i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, 4294967295
  br i1 %i.ft, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !17, !noalias !780 ; 5 uses
  %i.fw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fv)
  %.not.i.i.i.i.i84.i.i.i.i.i.i = icmp samesign ult i64 %i.fw, 2
  br i1 %.not.i.i.i.i.i84.i.i.i.i.i.i, label %.split.us.i.i.i.i.i86.i.i.i.i.i.i, label %.split.i.i.i.i.i85.i.i.i.i.i.i

.split.us.i.i.i.i.i86.i.i.i.i.i.i:                ; preds = %bb.n
  %i.fx = add i64 %i.fv, -1                       ; 2 uses
  %i.fy = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fx)
  %i.fz = lshr i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, %i.fy
  %i.ga = and i64 %i.fx, %.sroa.0124.0.lcssa.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i

.split.i.i.i.i.i85.i.i.i.i.i.i:                   ; preds = %bb.n
  %i.gb = udiv i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, %i.fv ; 2 uses
  %i.gc = mul i64 %i.gb, %i.fv                    ; 0 uses
  %.recomposed58 = urem i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, %i.fv
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.gd = trunc nuw i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i to i32 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !17, !noalias !785
  %i.gg = trunc i64 %i.gf to i32                  ; 5 uses
  %i.gh = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gg)
  %.not.i7.i.i.i.i75.i.i.i.i.i.i = icmp samesign ult i32 %i.gh, 2
  br i1 %.not.i7.i.i.i.i75.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i83.i.i.i.i.i.i, label %.split.i8.i.i.i.i76.i.i.i.i.i.i

.split.us.i11.i.i.i.i83.i.i.i.i.i.i:              ; preds = %bb.o
  %i.gi = add i32 %i.gg, -1                       ; 2 uses
  %i.gj = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gi)
  %i.gk = lshr i32 %i.gd, %i.gj
  %i.gl = and i32 %i.gi, %i.gd
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i

.split.i8.i.i.i.i76.i.i.i.i.i.i:                  ; preds = %bb.o
  %i.gm = udiv i32 %i.gd, %i.gg                   ; 2 uses
  %i.gn = mul i32 %i.gm, %i.gg                    ; 0 uses
  %.recomposed59 = urem i32 %i.gd, %i.gg
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i76.i.i.i.i.i.i, %.split.us.i11.i.i.i.i83.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i78.i.i.i.i.i.i = phi i32 [ %.recomposed59, %.split.i8.i.i.i.i76.i.i.i.i.i.i ], [ %i.gl, %.split.us.i11.i.i.i.i83.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i79.i.i.i.i.i.i = phi i32 [ %i.gm, %.split.i8.i.i.i.i76.i.i.i.i.i.i ], [ %i.gk, %.split.us.i11.i.i.i.i83.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i80.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i78.i.i.i.i.i.i to i64
  %i.go = zext i32 %.us-phi23.i10.i.i.i.i79.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i, %.split.i.i.i.i.i85.i.i.i.i.i.i, %.split.us.i.i.i.i.i86.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i81.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i80.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i ], [ %.recomposed58, %.split.i.i.i.i.i85.i.i.i.i.i.i ], [ %i.ga, %.split.us.i.i.i.i.i86.i.i.i.i.i.i ]
  %.sink.i.i.i.i82.i.i.i.i.i.i = phi i64 [ %i.go, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i ], [ %i.gb, %.split.i.i.i.i.i85.i.i.i.i.i.i ], [ %i.fz, %.split.us.i.i.i.i.i86.i.i.i.i.i.i ]
  %i.gp = load i64, ptr %8, align 8, !tbaa !17
  %i.gq = mul i64 %i.gp, %.sink.i.i.i.i82.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !17
  %i.gt = mul i64 %i.gs, %.sroa.5.1.le.i.sink.i.i.i.i81.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !378
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %i.gq
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.gt
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !81
  %i.gz = fcmp ule float %i.gy, 0.000000e+00
  br i1 %i.gz, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i
  %14 = or disjoint i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i
  %.sroa.0124.1.i.i.i.i.i.i = phi i64 [ %14, %bb.p ], [ %.sroa.0124.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 8 uses
  %i.ha = icmp ugt i64 %.sroa.0124.1.i.i.i.i.i.i, 4294967295
  br i1 %i.ha, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !17, !noalias !788 ; 5 uses
  %i.hd = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hc)
  %.not.i.i.i.i.i97.i.i.i.i.i.i = icmp samesign ult i64 %i.hd, 2
  br i1 %.not.i.i.i.i.i97.i.i.i.i.i.i, label %.split.us.i.i.i.i.i99.i.i.i.i.i.i, label %.split.i.i.i.i.i98.i.i.i.i.i.i

.split.us.i.i.i.i.i99.i.i.i.i.i.i:                ; preds = %bb.r
  %i.he = add i64 %i.hc, -1                       ; 2 uses
  %i.hf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.he)
  %i.hg = lshr i64 %.sroa.0124.1.i.i.i.i.i.i, %i.hf
  %i.hh = and i64 %i.he, %.sroa.0124.1.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i

.split.i.i.i.i.i98.i.i.i.i.i.i:                   ; preds = %bb.r
  %i.hi = udiv i64 %.sroa.0124.1.i.i.i.i.i.i, %i.hc ; 2 uses
  %i.hj = mul i64 %i.hi, %i.hc                    ; 0 uses
  %.recomposed60 = urem i64 %.sroa.0124.1.i.i.i.i.i.i, %i.hc
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.hk = trunc nuw i64 %.sroa.0124.1.i.i.i.i.i.i to i32 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !17, !noalias !793
  %i.hn = trunc i64 %i.hm to i32                  ; 5 uses
  %i.ho = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hn)
  %.not.i7.i.i.i.i88.i.i.i.i.i.i = icmp samesign ult i32 %i.ho, 2
  br i1 %.not.i7.i.i.i.i88.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i96.i.i.i.i.i.i, label %.split.i8.i.i.i.i89.i.i.i.i.i.i

.split.us.i11.i.i.i.i96.i.i.i.i.i.i:              ; preds = %bb.s
  %i.hp = add i32 %i.hn, -1                       ; 2 uses
  %i.hq = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hp)
  %i.hr = lshr i32 %i.hk, %i.hq
  %i.hs = and i32 %i.hp, %i.hk
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i

.split.i8.i.i.i.i89.i.i.i.i.i.i:                  ; preds = %bb.s
  %i.ht = udiv i32 %i.hk, %i.hn                   ; 2 uses
  %i.hu = mul i32 %i.ht, %i.hn                    ; 0 uses
  %.recomposed61 = urem i32 %i.hk, %i.hn
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i89.i.i.i.i.i.i, %.split.us.i11.i.i.i.i96.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i91.i.i.i.i.i.i = phi i32 [ %.recomposed61, %.split.i8.i.i.i.i89.i.i.i.i.i.i ], [ %i.hs, %.split.us.i11.i.i.i.i96.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i92.i.i.i.i.i.i = phi i32 [ %i.ht, %.split.i8.i.i.i.i89.i.i.i.i.i.i ], [ %i.hr, %.split.us.i11.i.i.i.i96.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i93.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i91.i.i.i.i.i.i to i64
  %i.hv = zext i32 %.us-phi23.i10.i.i.i.i92.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i, %.split.i.i.i.i.i98.i.i.i.i.i.i, %.split.us.i.i.i.i.i99.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i94.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i93.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i ], [ %.recomposed60, %.split.i.i.i.i.i98.i.i.i.i.i.i ], [ %i.hh, %.split.us.i.i.i.i.i99.i.i.i.i.i.i ]
  %.sink.i.i.i.i95.i.i.i.i.i.i = phi i64 [ %i.hv, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i ], [ %i.hi, %.split.i.i.i.i.i98.i.i.i.i.i.i ], [ %i.hg, %.split.us.i.i.i.i.i99.i.i.i.i.i.i ]
  %i.hw = load i64, ptr %8, align 8, !tbaa !17
  %i.hx = mul i64 %i.hw, %.sink.i.i.i.i95.i.i.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !17
  %i.ia = mul i64 %i.hz, %.sroa.5.1.le.i.sink.i.i.i.i94.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !378
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %i.hx
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %i.ia
  %i.if = load float, ptr %i.ie, align 4, !tbaa !81
  %i.ig = fcmp ule float %i.if, 0.000000e+00
  br i1 %i.ig, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i
  %i.ih = add nuw i64 %.sroa.0124.1.i.i.i.i.i.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i
  %.sroa.0124.2.i.i.i.i.i.i = phi i64 [ %i.ih, %bb.t ], [ %.sroa.0124.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 7 uses
  %i.ii = icmp ugt i64 %.sroa.0124.2.i.i.i.i.i.i, 4294967295
  br i1 %i.ii, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ij = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !17, !noalias !796 ; 5 uses
  %i.il = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ik)
  %.not.i.i.i.i.i110.i.i.i.i.i.i = icmp samesign ult i64 %i.il, 2
  br i1 %.not.i.i.i.i.i110.i.i.i.i.i.i, label %.split.us.i.i.i.i.i112.i.i.i.i.i.i, label %.split.i.i.i.i.i111.i.i.i.i.i.i

.split.us.i.i.i.i.i112.i.i.i.i.i.i:               ; preds = %bb.v
  %i.im = add i64 %i.ik, -1                       ; 2 uses
  %i.in = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.im)
  %i.io = lshr i64 %.sroa.0124.2.i.i.i.i.i.i, %i.in
  %i.ip = and i64 %i.im, %.sroa.0124.2.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i

.split.i.i.i.i.i111.i.i.i.i.i.i:                  ; preds = %bb.v
  %i.iq = udiv i64 %.sroa.0124.2.i.i.i.i.i.i, %i.ik ; 2 uses
  %i.ir = mul i64 %i.iq, %i.ik                    ; 0 uses
  %.recomposed62 = urem i64 %.sroa.0124.2.i.i.i.i.i.i, %i.ik
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.is = trunc nuw i64 %.sroa.0124.2.i.i.i.i.i.i to i32 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !17, !noalias !801
  %i.iv = trunc i64 %i.iu to i32                  ; 5 uses
  %i.iw = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.iv)
  %.not.i7.i.i.i.i101.i.i.i.i.i.i = icmp samesign ult i32 %i.iw, 2
  br i1 %.not.i7.i.i.i.i101.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i109.i.i.i.i.i.i, label %.split.i8.i.i.i.i102.i.i.i.i.i.i

.split.us.i11.i.i.i.i109.i.i.i.i.i.i:             ; preds = %bb.w
  %i.ix = add i32 %i.iv, -1                       ; 2 uses
  %i.iy = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ix)
  %i.iz = lshr i32 %i.is, %i.iy
  %i.ja = and i32 %i.ix, %i.is
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i

.split.i8.i.i.i.i102.i.i.i.i.i.i:                 ; preds = %bb.w
  %i.jb = udiv i32 %i.is, %i.iv                   ; 2 uses
  %i.jc = mul i32 %i.jb, %i.iv                    ; 0 uses
  %.recomposed63 = urem i32 %i.is, %i.iv
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i102.i.i.i.i.i.i, %.split.us.i11.i.i.i.i109.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i104.i.i.i.i.i.i = phi i32 [ %.recomposed63, %.split.i8.i.i.i.i102.i.i.i.i.i.i ], [ %i.ja, %.split.us.i11.i.i.i.i109.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i105.i.i.i.i.i.i = phi i32 [ %i.jb, %.split.i8.i.i.i.i102.i.i.i.i.i.i ], [ %i.iz, %.split.us.i11.i.i.i.i109.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i106.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i104.i.i.i.i.i.i to i64
  %i.jd = zext i32 %.us-phi23.i10.i.i.i.i105.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i, %.split.i.i.i.i.i111.i.i.i.i.i.i, %.split.us.i.i.i.i.i112.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i107.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i106.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i ], [ %.recomposed62, %.split.i.i.i.i.i111.i.i.i.i.i.i ], [ %i.ip, %.split.us.i.i.i.i.i112.i.i.i.i.i.i ]
  %.sink.i.i.i.i108.i.i.i.i.i.i = phi i64 [ %i.jd, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i ], [ %i.iq, %.split.i.i.i.i.i111.i.i.i.i.i.i ], [ %i.io, %.split.us.i.i.i.i.i112.i.i.i.i.i.i ]
  %i.je = load i64, ptr %8, align 8, !tbaa !17
  %i.jf = mul i64 %i.je, %.sink.i.i.i.i108.i.i.i.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !17
  %i.ji = mul i64 %i.jh, %.sroa.5.1.le.i.sink.i.i.i.i107.i.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !378
  %i.jl = getelementptr [4 x i8], ptr %i.jk, i64 %i.jf
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %i.ji
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !81
  %i.jo = fcmp ule float %i.jn, 0.000000e+00
  br i1 %i.jo, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i

bb.x:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.jp = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jp, ptr noundef nonnull @.str.117, i32 noundef 187)
  %i.jq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i unwind label %bb.y

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i: ; preds = %bb.x
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull @.str.123, i64 noundef 46)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i, %bb.x
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume.i

bb.aa:                                            ; preds = %bb.y
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  %i.ju = extractvalue { ptr, i32 } %i.jt, 0
  call void @__clang_call_terminate(ptr %i.ju) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.ab:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.jv = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jv, ptr noundef nonnull @.str.119, i32 noundef 271)
  %i.jw = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i unwind label %bb.ad ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i: ; preds = %bb.ab
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull @.str.122, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i
  %.sroa.0.0.copyload.i28.i.i.i = load i32, ptr %i.f, align 8
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i28.i.i.i to i16
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, i16 noundef signext %.sroa.0.0.extract.trunc.i.i.i)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.ad:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i, %bb.ab
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ka, %bb.ae ], [ %i.jz, %bb.ad ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume.i

bb.ah:                                            ; preds = %bb.af
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #39
  unreachable

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i
  %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i = phi i64 [ %.sroa.0124.1.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i ], [ %.sroa.0124.0.lcssa.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i ], [ %.sroa.0124.2.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i ], [ %i.do, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i ], [ %i.ea, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i ], [ %i.ck, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i ], [ %.sroa.0124.0148.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i ], [ %i.fi, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i ], [ %i.df, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i ], [ %.sroa.0124.0148.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i ], [ %.sroa.0124.0148.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i ], [ %.sroa.0124.0148.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i ], [ %i.cu, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i ], [ %i.cb, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i ], [ %i.ek, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i ]
  %i.kd = icmp eq i64 %i.o, %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %i.kd, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %bb.ac, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ke = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ke, ptr noundef nonnull @.str.109, i32 noundef 85)
  %i.kf = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.ai

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull @.str.137, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i

bb.ai:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aj unwind label %bb.as

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ar

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_13GammaDevianceEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.kj = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ki)
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.kl = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ki) ; 2 uses
  store i64 %i.kl, ptr %i.a, align 8, !tbaa !17
  %i.km = load i64, ptr %2, align 8, !tbaa !17, !noalias !804
  %i.kn = icmp eq i64 %i.kl, %i.km
  br i1 %i.kn, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.ak
end_hunk_5
begin_hunk_6_@_ZN7xgboost3obj10RegLossObjINS0_13GammaDevianceEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %.pr46.i, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.ap, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoE.exit

bb.ar:                                            ; preds = %bb.ao, %bb.aj
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.ao ], [ %i.kh, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %common.resume.i

bb.as:                                            ; preds = %bb.an, %bb.ai
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #39
  unreachable

_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoE.exit: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_13GammaDevianceEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.at

bb.at:                                            ; preds = %_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_13GammaDevianceEEEvPKNS_7ContextERKNS_8MetaInfoE.exit, %bb.a
  %i.li = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !190
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.ll, align 8
  call void @_ZNK7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(25) %4, i32 %.sroa.0.0.copyload.i)
  %i.lm = load ptr, ptr %i.lj, align 8, !tbaa !190
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.ln, align 8 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.lp = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lo)
  %i.lq = icmp eq i64 %i.lp, 0
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !807
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.lu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lt)
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !241
  store float %i.ls, ptr %i.lv, align 4, !tbaa !81
  %i.lw = uitofp i1 %i.lq to float
  %i.lx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lt)
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !241
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store float %i.lw, ptr %i.lz, align 4, !tbaa !81
  %i.ma = load ptr, ptr %i.lj, align 8, !tbaa !190
  %i.mb = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.ma) ; 2 uses
  %i.mc = sext i32 %i.mb to i64
  %i.md = and i32 %.sroa.0.0.copyload.i22, 65535
  %i.me = icmp eq i32 %i.md, 0
  %.sroa.speculated31 = select i1 %i.me, i64 %i.mc, i64 %i.li
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.sroa.speculated31, i64 1) ; 3 uses
  %i.mf = udiv i64 %i.li, %.sroa.speculated
  %i.mg = urem i64 %i.li, %.sroa.speculated
  %i.mh = icmp ne i64 %i.mg, 0
  %i.mi = zext i1 %i.mh to i64
  %i.mj = add i64 %i.mf, %i.mi
  %i.mk = load ptr, ptr %0, align 8, !tbaa !57
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 104
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = call noundef i32 %i.mm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(248) %2) ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mp = load i64, ptr %2, align 8, !tbaa !17    ; 2 uses
  store i64 %i.mp, ptr %i.mo, align 8, !tbaa !17
  %i.mq = zext i32 %i.mn to i64                   ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.mq, ptr %i.mr, align 8, !tbaa !17
  %i.ms = mul i64 %i.mp, %i.mq
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(25) %4, i64 noundef %i.ms)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i64 %i.mj, ptr %12, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.li, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %i.mn, ptr %.sroa.544.0..sroa_idx, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 0, ptr %i.mt, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 1, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 %.sroa.speculated, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 1, ptr %.sroa.648.0..sroa_idx, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 %i.mb, ptr %i.mu, align 8, !tbaa !809, !alias.scope !812
  %i.mv = getelementptr inbounds nuw i8, ptr %12, i64 60
  store i32 %.sroa.0.0.copyload.i22, ptr %i.mv, align 4, !alias.scope !812
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_13GammaDevianceEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E4EvalIJPS9_PNS8_ISJ_EEPSA_SX_SX_EEEvDpT_(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.lt, ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %i.mw, ptr noundef nonnull %i.lo)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK7xgboost3obj10RegLossObjINS0_13GammaDevianceEE17DefaultEvalMetricEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @.str.138
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj10RegLossObjINS0_13GammaDevianceEE13PredTransformEPNS_16HostDeviceVectorIfEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.xgboost::common::Transform<>::Evaluator.357", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.d = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.c)
  %i.e = tail call i32 @_ZNK7xgboost16HostDeviceVectorIfE6DeviceEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.a, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.d, ptr %i.g, align 8, !tbaa !815, !alias.scope !818
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.e, ptr %i.h, align 4, !alias.scope !818
  call void @_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj10RegLossObjINS4_13GammaDevianceEE13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E4EvalIJSA_EEEvDpT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj10RegLossObjINS0_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %3 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %class.anon.374, align 8            ; 7 uses
  %8 = alloca %"class.xgboost::linalg::TensorView.210", align 8 ; 10 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %13 = alloca %class.anon.370, align 8           ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 8 ; 4 uses
  %i.f = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(17) %1), !noalias !821 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !263, !noalias !821
  %switch.i.i.i = icmp ult i8 %i.j, 2
  br i1 %switch.i.i.i, label %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #39, !noalias !821
  unreachable

_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17, !noalias !821 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !266, !noalias !821 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !268, !noalias !821 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.o, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp eq ptr %i.n, %i.p
  %.sink.i.i.i.i = select i1 %i.t, i64 0, i64 %i.l
  br label %_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit.i

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(17) %1, i32 %.sroa.0.0.copyload.i.i), !noalias !821
  %i.u = tail call { i64, ptr } @_ZN7xgboost16HostDeviceVectorIfE10DeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(17) %1), !noalias !821 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !263, !noalias !821
  %switch.i10.i.i = icmp ult i8 %i.w, 2
  br i1 %switch.i10.i.i, label %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit12.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #39, !noalias !821
  unreachable

_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit12.i.i: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17, !noalias !821 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.u, 1
  %i.aa = extractvalue { i64, ptr } %i.u, 0       ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %.sink.i.i11.i.i = select i1 %i.ab, i64 0, i64 %i.y
  br label %_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit.i

_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit.i: ; preds = %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit12.i.i, %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i.i
  %.sroa.23.0.i = phi i64 [ %.sink.i.i.i.i, %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i.i ], [ %.sink.i.i11.i.i, %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit12.i.i ] ; 7 uses
  %.sroa.17.0.i = phi ptr [ %i.p, %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i.i ], [ %i.z, %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit12.i.i ] ; 11 uses
  %.sroa.13.0.i = phi i64 [ %i.s, %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i.i ], [ %i.aa, %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit12.i.i ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ %i.l, %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit.i.i ], [ %i.y, %_ZN7xgboost6linalg10TensorViewIfLi1EEC2ImLi1EEENS_6common4SpanIfLm18446744073709551615EEERAT0__KT_NS_9DeviceOrdENS0_5OrderE.exit12.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.e, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i to i16
  %.off.i.i.i = add i16 %.sroa.0.0.extract.trunc.i.i, -2
  %switch.i.i8.i = icmp ult i16 %.off.i.i.i, 3
  br i1 %switch.i.i8.i, label %bb.f, label %bb.j, !prof !269

bb.f:                                             ; preds = %_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ac = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ac, ptr noundef nonnull @.str.117, i32 noundef 205)
  %i.ad = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.g

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.118, i64 noundef 47)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_116ProbToMarginImplIZNKS0_10RegLossObjINS0_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS5_12ProbToMarginES9_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextES9_OT_T0_T1_ENKUlvE1_clEv.exit.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.h unwind label %bb.i

common.resume.i:                                  ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, %bb.ap, %bb.ak, %bb.ag, %bb.ad, %bb.w, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.ad ], [ %lpad.phi.i, %bb.ag ], [ %i.af, %bb.h ], [ %i.bq, %bb.w ], [ %i.eq, %bb.ak ], [ %i.ez, %bb.ap ], [ %.pn11.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i ], [ %.pn.i.i14.i, %bb.be ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %common.resume.i

bb.i:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_116ProbToMarginImplIZNKS0_10RegLossObjINS0_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS5_12ProbToMarginES9_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextES9_OT_T0_T1_ENKUlvE1_clEv.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.thread.i

bb.j:                                             ; preds = %_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE.exit.i
  %sext.i.i.i = shl i32 %.sroa.0.0.copyload.i.i.i, 16
  %i.ai = ashr exact i32 %sext.i.i.i, 16
  switch i32 %i.ai, label %bb.y [
    i32 0, label %bb.k
    i32 1, label %bb.u
  ]

bb.k:                                             ; preds = %bb.j
  %i.aj = lshr i64 %.sroa.23.0.i, 2               ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k
  %14 = and i64 %.sroa.23.0.i, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i
  %.071.i.i.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ba, %bb.p ] ; 2 uses
  %.sroa.046.070.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.az, %bb.p ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0.i, i64 %.sroa.046.070.i.i.i.i.i.i.i.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !81
  %i.am = fcmp ule float %i.al, 0.000000e+00
  br i1 %i.am, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = or disjoint i64 %.sroa.046.070.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0.i, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !81
  %i.aq = fcmp ule float %i.ap, 0.000000e+00
  br i1 %i.aq, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = or disjoint i64 %.sroa.046.070.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0.i, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !81
  %i.au = fcmp ule float %i.at, 0.000000e+00
  br i1 %i.au, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = or disjoint i64 %.sroa.046.070.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0.i, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !81
  %i.ay = fcmp ule float %i.ax, 0.000000e+00
  br i1 %i.ay, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = add nuw i64 %.sroa.046.070.i.i.i.i.i.i.i.i, 4
  %i.ba = add nsw i64 %.071.i.i.i.i.i.i.i.i, -1
  %i.bb = icmp sgt i64 %.071.i.i.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.l, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !824

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.p, %bb.k
  %.sroa.046.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ %14, %bb.p ] ; 6 uses
  %i.bc = sub i64 %.sroa.23.0.i, %.sroa.046.0.lcssa.i.i.i.i.i.i.i.i
  switch i64 %i.bc, label %bb.t [
    i64 3, label %bb.q
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge73.i.i.i.i.i.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0.i, i64 %.sroa.046.0.lcssa.i.i.i.i.i.i.i.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !81
  %i.bf = fcmp ule float %i.be, 0.000000e+00
  br i1 %i.bf, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %15 = or disjoint i64 %.sroa.046.0.lcssa.i.i.i.i.i.i.i.i, 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i:           ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.046.1.i.i.i.i.i.i.i.i = phi i64 [ %15, %bb.r ], [ %.sroa.046.0.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0.i, i64 %.sroa.046.1.i.i.i.i.i.i.i.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !81
  %i.bi = fcmp ule float %i.bh, 0.000000e+00
  br i1 %i.bi, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i
  %i.bj = add nuw i64 %.sroa.046.1.i.i.i.i.i.i.i.i, 1
  br label %._crit_edge._crit_edge73.i.i.i.i.i.i.i.i

._crit_edge._crit_edge73.i.i.i.i.i.i.i.i:         ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.046.2.i.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.s ], [ %.sroa.046.0.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.0.i, i64 %.sroa.046.2.i.i.i.i.i.i.i.i
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !81
  %i.bm = fcmp ule float %i.bl, 0.000000e+00
  br i1 %i.bm, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge._crit_edge73.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i

bb.u:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bn = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bn, ptr noundef nonnull @.str.117, i32 noundef 187)
  %i.bo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i unwind label %bb.v

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i: ; preds = %bb.u
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.123, i64 noundef 46)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_116ProbToMarginImplIZNKS0_10RegLossObjINS0_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS5_12ProbToMarginES9_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextES9_OT_T0_T1_ENKUlvE0_clEv.exit.i.i.i unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i, %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %common.resume.i

bb.x:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_116ProbToMarginImplIZNKS0_10RegLossObjINS0_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS5_12ProbToMarginES9_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextES9_OT_T0_T1_ENKUlvE0_clEv.exit.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.thread.i

bb.y:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bt = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bt, ptr noundef nonnull @.str.119, i32 noundef 271)
  %i.bu = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i unwind label %bb.aa ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i: ; preds = %bb.y
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.122, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.i.i.i unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i
  %.sroa.0.0.copyload.i46.i.i.i = load i32, ptr %i.e, align 8
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i46.i.i.i to i16
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i16 noundef signext %.sroa.0.0.extract.trunc.i.i.i)
          to label %bb.z unwind label %bb.ab      ; 0 uses

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.thread.i

bb.aa:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i, %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i.i.i = phi { ptr, i32 } [ %i.by, %bb.ab ], [ %i.bx, %bb.aa ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %common.resume.i

bb.ae:                                            ; preds = %bb.ac
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #39
  unreachable

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.t, %._crit_edge._crit_edge73.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i, %bb.q
  %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.046.1.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.23.0.i, %bb.t ], [ %.sroa.046.2.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge73.i.i.i.i.i.i.i.i ], [ %.sroa.046.0.lcssa.i.i.i.i.i.i.i.i, %bb.q ], [ %i.av, %bb.o ], [ %i.ar, %bb.n ], [ %i.an, %bb.m ], [ %.sroa.046.070.i.i.i.i.i.i.i.i, %bb.l ]
  %i.cb = icmp eq i64 %.sroa.23.0.i, %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i.i.i
  br i1 %i.cb, label %bb.ah, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.thread.i, !prof !511

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.thread.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.i, %bb.z, %_ZZN7xgboost3obj12_GLOBAL__N_116ProbToMarginImplIZNKS0_10RegLossObjINS0_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS5_12ProbToMarginES9_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextES9_OT_T0_T1_ENKUlvE0_clEv.exit.i.i.i, %_ZZN7xgboost3obj12_GLOBAL__N_116ProbToMarginImplIZNKS0_10RegLossObjINS0_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS5_12ProbToMarginES9_EUlfE0_PFNS_10StringViewEvEEEvPKNS_7ContextES9_OT_T0_T1_ENKUlvE1_clEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.cc = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cc, ptr noundef nonnull @.str.109, i32 noundef 116)
  %i.cd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %.loopexit.split-lp.i ; 58 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_10RegLossObjINS2_13GammaDevianceEE12ProbToMarginEPNS_6linalg6TensorIfLi1EEEEUlfE_ZNKS7_12ProbToMarginESB_EUlfE0_PFNS_10StringViewEvEEEvPKS0_SB_OT_T0_T1_EUlvE_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE0_ZNS4_ISC_SD_SG_EEvSI_SB_SK_SL_SM_EUlvE1_EEDcSK_OSL_OSM_.exit.thread.i
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.129, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.split-lp.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %.lr.ph.i.preheader.i unwind label %.loopexit.split-lp.i ; 0 uses

.lr.ph.i.preheader.i:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 96)
          to label %.noexc.i unwind label %.loopexit.i ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.preheader.i
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 98)
          to label %.noexc.1.i unwind label %.loopexit.i ; 0 uses

.noexc.1.i:                                       ; preds = %.noexc.i
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 97)
          to label %.noexc.2.i unwind label %.loopexit.i ; 0 uses

.noexc.2.i:                                       ; preds = %.noexc.1.i
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 115)
          to label %.noexc.3.i unwind label %.loopexit.i ; 0 uses

.noexc.3.i:                                       ; preds = %.noexc.2.i
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 101)
          to label %.noexc.4.i unwind label %.loopexit.i ; 0 uses

.noexc.4.i:                                       ; preds = %.noexc.3.i
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 95)
          to label %.noexc.5.i unwind label %.loopexit.i ; 0 uses

.noexc.5.i:                                       ; preds = %.noexc.4.i
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 115)
          to label %.noexc.6.i unwind label %.loopexit.i ; 0 uses

.noexc.6.i:                                       ; preds = %.noexc.5.i
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 99)
          to label %.noexc.7.i unwind label %.loopexit.i ; 0 uses

.noexc.7.i:                                       ; preds = %.noexc.6.i
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 111)
          to label %.noexc.8.i unwind label %.loopexit.i ; 0 uses

.noexc.8.i:                                       ; preds = %.noexc.7.i
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 114)
          to label %.noexc.9.i unwind label %.loopexit.i ; 0 uses

.noexc.9.i:                                       ; preds = %.noexc.8.i
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 101)
          to label %.noexc.10.i unwind label %.loopexit.i ; 0 uses

.noexc.10.i:                                      ; preds = %.noexc.9.i
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 96)
          to label %.noexc.11.i unwind label %.loopexit.i ; 0 uses

.noexc.11.i:                                      ; preds = %.noexc.10.i
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 32)
          to label %.noexc.12.i unwind label %.loopexit.i ; 0 uses

.noexc.12.i:                                      ; preds = %.noexc.11.i
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 109)
          to label %.noexc.13.i unwind label %.loopexit.i ; 0 uses

.noexc.13.i:                                      ; preds = %.noexc.12.i
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 117)
          to label %.noexc.14.i unwind label %.loopexit.i ; 0 uses

.noexc.14.i:                                      ; preds = %.noexc.13.i
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 115)
          to label %.noexc.15.i unwind label %.loopexit.i ; 0 uses

.noexc.15.i:                                      ; preds = %.noexc.14.i
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 116)
          to label %.noexc.16.i unwind label %.loopexit.i ; 0 uses

.noexc.16.i:                                      ; preds = %.noexc.15.i
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 32)
          to label %.noexc.17.i unwind label %.loopexit.i ; 0 uses

.noexc.17.i:                                      ; preds = %.noexc.16.i
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 98)
          to label %.noexc.18.i unwind label %.loopexit.i ; 0 uses

.noexc.18.i:                                      ; preds = %.noexc.17.i
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 101)
          to label %.noexc.19.i unwind label %.loopexit.i ; 0 uses

.noexc.19.i:                                      ; preds = %.noexc.18.i
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 32)
          to label %.noexc.20.i unwind label %.loopexit.i ; 0 uses

.noexc.20.i:                                      ; preds = %.noexc.19.i
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext 103)
          to label %.noexc.21.i unwind label %.loopexit.i ; 0 uses
end_hunk_6
begin_hunk_7_@_ZNK7xgboost3obj25SquaredLogErrorRegression10SaveConfigEPNS_4JsonE:.noexc.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.ad, align 8, !tbaa !210
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %i.ab, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 0, ptr %i.ag, align 8, !tbaa !18
  store i8 0, ptr %i.af, align 8, !tbaa !15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #21
  %i.ah = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !216 ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !216
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, label %bb.b

bb.b:                                             ; preds = %.noexc12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw sub ptr %i.aj, i32 1 release, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.c, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #21, !inline_history !217
  br label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

_ZN7xgboost4JsonaSEONS_10JsonStringE.exit:        ; preds = %bb.c, %bb.b, %.noexc12
  %i.ap = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.t
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit
  %i.ar = load i64, ptr %i.t, align 8, !tbaa !15
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.k
  br i1 %i.au, label %_ZN7xgboost10JsonStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.k, align 8, !tbaa !15
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #36
  br label %_ZN7xgboost10JsonStringD2Ev.exit

_ZN7xgboost10JsonStringD2Ev.exit:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ax = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.b
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit
  %i.az = load i64, ptr %i.b, align 8, !tbaa !15
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.d:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.t
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.d
  %i.be = load i64, ptr %i.t, align 8, !tbaa !15
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.k
  br i1 %i.bh, label %_ZN7xgboost10JsonStringD2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #36
  br label %_ZN7xgboost10JsonStringD2Ev.exit22

_ZN7xgboost10JsonStringD2Ev.exit22:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  %i.bk = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.b
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit22
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj25SquaredLogErrorRegression9ConfigureERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj25SquaredLogErrorRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 24 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 5 uses
  %13 = alloca %"class.xgboost::linalg::TensorView.379", align 8 ; 4 uses
  %14 = alloca %class.anon.381, align 8           ; 17 uses
  tail call fastcc void @_ZN7xgboost3obj12_GLOBAL__N_114CheckRegInputsERKNS_8MetaInfoERKNS_16HostDeviceVectorIfEE(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i32 %.sroa.0.0.copyload.i.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i to i16
  %.off.i.i.i = add i16 %.sroa.0.0.extract.trunc.i.i, -2
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.g = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str.117, i32 noundef 205)
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.d

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.118, i64 noundef 47)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_15SquaredLogErrorEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %bb.f

common.resume.i:                                  ; preds = %bb.ar, %bb.ag, %bb.z, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ar ], [ %i.j, %bb.e ], [ %i.js, %bb.z ], [ %.pn.i.i.i, %bb.ag ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_15SquaredLogErrorEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.g:                                             ; preds = %bb.b
  %sext.i.i.i = shl i32 %.sroa.0.0.copyload.i.i.i, 16
  %i.m = ashr exact i32 %sext.i.i.i, 16
  switch i32 %i.m, label %bb.ab [
    i32 0, label %bb.h
    i32 1, label %bb.x
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !381  ; 4 uses
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.r = load i64, ptr %8, align 8, !tbaa !17     ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17   ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !378  ; 13 uses
  %15 = and i64 %i.o, -4
  %i.w = load i64, ptr %i.q, align 8              ; 15 uses
  %i.x = trunc i64 %i.w to i32                    ; 14 uses
  %i.y = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.y, 2
  %i.z = add i32 %i.x, -1                         ; 3 uses
  %i.aa = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z) ; 4 uses
  %i.ab = zext i32 %i.z to i64                    ; 3 uses
  %i.ac = add i64 %i.w, -1                        ; 4 uses
  %i.ad = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %i.ae = shufflevector <2 x i64> %i.ad, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.af = add <2 x i64> %i.ae, <i64 0, i64 -1>
  %i.ag = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.af) ; 2 uses
  %i.ah = extractelement <2 x i64> %i.ag, i64 1   ; 4 uses
  %i.ai = extractelement <2 x i64> %i.ag, i64 0
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.ai, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i
  %.0149.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.fq, %bb.l ] ; 2 uses
  %.sroa.0124.0148.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.fp, %bb.l ] ; 24 uses
  %i.aj = icmp ugt i64 %.sroa.0124.0148.i.i.i.i.i.i, 4294967295
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i

bb.k:                                             ; preds = %bb.i
  %i.ak = trunc nuw i64 %.sroa.0124.0148.i.i.i.i.i.i to i32 ; 3 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.al = lshr i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.ah
  %i.am = and i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.ac
  %i.an = mul i64 %i.al, %i.r
  %i.ao = mul i64 %i.am, %i.t
  %i.ap = getelementptr [4 x i8], ptr %i.v, i64 %i.an
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !81
  %i.as = fcmp ule float %i.ar, -1.000000e+00
  br i1 %i.as, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i: ; preds = %bb.j
  %i.at = udiv i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.w ; 2 uses
  %i.au = mul i64 %i.at, %i.w                     ; 0 uses
  %.recomposed = urem i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.w
  %i.av = mul i64 %i.at, %i.r
  %i.aw = mul i64 %.recomposed, %i.t
  %i.ax = getelementptr [4 x i8], ptr %i.v, i64 %i.av
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load float, ptr %i.ay, align 4, !tbaa !81
  %i.ba = fcmp ule float %i.az, -1.000000e+00
  br i1 %i.ba, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i: ; preds = %bb.k
  %i.bb = lshr i32 %i.ak, %i.aa
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i = and i64 %.sroa.0124.0148.i.i.i.i.i.i, %i.ab
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul i64 %i.r, %i.bc
  %i.be = mul i64 %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i.i, %i.t
  %i.bf = getelementptr [4 x i8], ptr %i.v, i64 %i.bd
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !81
  %i.bi = fcmp ule float %i.bh, -1.000000e+00
  br i1 %i.bi, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i: ; preds = %bb.k
  %i.bj = udiv i32 %i.ak, %i.x                    ; 2 uses
  %i.bk = mul i32 %i.bj, %i.x                     ; 0 uses
  %.recomposed36 = urem i32 %i.ak, %i.x
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i28.i = zext i32 %.recomposed36 to i64
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = mul i64 %i.r, %i.bl
  %i.bn = mul i64 %i.t, %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i28.i
  %i.bo = getelementptr [4 x i8], ptr %i.v, i64 %i.bm
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !81
  %i.br = fcmp ule float %i.bq, -1.000000e+00
  br i1 %i.br, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i
  %i.bs = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 1 ; 3 uses
  %i.bt = lshr i64 %i.bs, %i.ah
  %i.bu = and i64 %i.bs, %i.ac
  %i.bv = mul i64 %i.bt, %i.r
  %i.bw = mul i64 %i.bu, %i.t
  %i.bx = getelementptr [4 x i8], ptr %i.v, i64 %i.bv
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load float, ptr %i.by, align 4, !tbaa !81
  %i.ca = fcmp ule float %i.bz, -1.000000e+00
  br i1 %i.ca, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i
  %i.cb = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 1 ; 3 uses
  %i.cc = udiv i64 %i.cb, %i.w                    ; 2 uses
  %i.cd = mul i64 %i.cc, %i.w                     ; 0 uses
  %.recomposed37 = urem i64 %i.cb, %i.w
  %i.ce = mul i64 %i.cc, %i.r
  %i.cf = mul i64 %.recomposed37, %i.t
  %i.cg = getelementptr [4 x i8], ptr %i.v, i64 %i.ce
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !81
  %i.cj = fcmp ule float %i.ci, -1.000000e+00
  br i1 %i.cj, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i
  %i.ck = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 1 ; 3 uses
  %i.cl = trunc nuw i64 %i.ck to i32
  %i.cm = lshr i32 %i.cl, %i.aa
  %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i = and i64 %i.ck, %i.ab
  %i.cn = zext i32 %i.cm to i64
  %i.co = mul i64 %i.r, %i.cn
  %i.cp = mul i64 %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i.i, %i.t
  %i.cq = getelementptr [4 x i8], ptr %i.v, i64 %i.co
  %i.cr = getelementptr [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !81
  %i.ct = fcmp ule float %i.cs, -1.000000e+00
  br i1 %i.ct, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i
  %i.cu = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 1 ; 2 uses
  %i.cv = trunc nuw i64 %i.cu to i32              ; 2 uses
  %i.cw = udiv i32 %i.cv, %i.x                    ; 2 uses
  %i.cx = mul i32 %i.cw, %i.x                     ; 0 uses
  %.recomposed38 = urem i32 %i.cv, %i.x
  %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i33.i = zext i32 %.recomposed38 to i64
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = mul i64 %i.r, %i.cy
  %i.da = mul i64 %i.t, %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i33.i
  %i.db = getelementptr [4 x i8], ptr %i.v, i64 %i.cz
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !81
  %i.de = fcmp ule float %i.dd, -1.000000e+00
  br i1 %i.de, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i
  %i.df = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 2 ; 3 uses
  %i.dg = lshr i64 %i.df, %i.ah
  %i.dh = and i64 %i.df, %i.ac
  %i.di = mul i64 %i.dg, %i.r
  %i.dj = mul i64 %i.dh, %i.t
  %i.dk = getelementptr [4 x i8], ptr %i.v, i64 %i.di
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !81
  %i.dn = fcmp ule float %i.dm, -1.000000e+00
  br i1 %i.dn, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %.split.us.i.i.i.i.i73.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i
  %i.do = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 2 ; 3 uses
  %i.dp = udiv i64 %i.do, %i.w                    ; 2 uses
  %i.dq = mul i64 %i.dp, %i.w                     ; 0 uses
  %.recomposed39 = urem i64 %i.do, %i.w
  %i.dr = mul i64 %i.dp, %i.r
  %i.ds = mul i64 %.recomposed39, %i.t
  %i.dt = getelementptr [4 x i8], ptr %i.v, i64 %i.dr
  %i.du = getelementptr [4 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load float, ptr %i.du, align 4, !tbaa !81
  %i.dw = fcmp ule float %i.dv, -1.000000e+00
  br i1 %i.dw, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %.thread42.i

.thread42.i:                                      ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i
  %i.dx = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 3 ; 3 uses
  %i.dy = udiv i64 %i.dx, %i.w                    ; 2 uses
  %i.dz = mul i64 %i.dy, %i.w                     ; 0 uses
  %.recomposed40 = urem i64 %i.dx, %i.w
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i
  %i.ea = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 2 ; 3 uses
  %i.eb = trunc nuw i64 %i.ea to i32
  %i.ec = lshr i32 %i.eb, %i.aa
  %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i.i = and i64 %i.ea, %i.ab
  %i.ed = zext i32 %i.ec to i64
  %i.ee = mul i64 %i.r, %i.ed
  %i.ef = mul i64 %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i.i, %i.t
  %i.eg = getelementptr [4 x i8], ptr %i.v, i64 %i.ee
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !81
  %i.ej = fcmp ule float %i.ei, -1.000000e+00
  br i1 %i.ej, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %.split.us.i11.i.i.i.i70.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i
  %i.ek = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 2 ; 2 uses
  %i.el = trunc nuw i64 %i.ek to i32              ; 2 uses
  %i.em = udiv i32 %i.el, %i.x                    ; 2 uses
  %i.en = mul i32 %i.em, %i.x                     ; 0 uses
  %.recomposed41 = urem i32 %i.el, %i.x
  %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i39.i = zext i32 %.recomposed41 to i64
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = mul i64 %i.r, %i.eo
  %i.eq = mul i64 %i.t, %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i39.i
  %i.er = getelementptr [4 x i8], ptr %i.v, i64 %i.ep
  %i.es = getelementptr [4 x i8], ptr %i.er, i64 %i.eq
  %i.et = load float, ptr %i.es, align 4, !tbaa !81
  %i.eu = fcmp ule float %i.et, -1.000000e+00
  br i1 %i.eu, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %.thread8.i.thread.i

.thread8.i.thread.i:                              ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i
  %i.ev = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 3 ; 2 uses
  %i.ew = trunc nuw i64 %i.ev to i32              ; 2 uses
  %i.ex = udiv i32 %i.ew, %i.x                    ; 2 uses
  %i.ey = mul i32 %i.ex, %i.x                     ; 0 uses
  %.recomposed42 = urem i32 %i.ew, %i.x
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i

.split.us.i.i.i.i.i73.i.i.i.i.i.i:                ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i
  %i.ez = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 3 ; 3 uses
  %i.fa = lshr i64 %i.ez, %i.ah
  %i.fb = and i64 %i.ez, %i.ac
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i

.split.us.i11.i.i.i.i70.i.i.i.i.i.i:              ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i
  %i.fc = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i.i, 3 ; 2 uses
  %i.fd = trunc nuw i64 %i.fc to i32              ; 2 uses
  %i.fe = lshr i32 %i.fd, %i.aa
  %i.ff = and i32 %i.z, %i.fd
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i: ; preds = %.split.us.i11.i.i.i.i70.i.i.i.i.i.i, %.thread8.i.thread.i
  %i.fg = phi i64 [ %i.ev, %.thread8.i.thread.i ], [ %i.fc, %.split.us.i11.i.i.i.i70.i.i.i.i.i.i ]
  %.us-phi.i9.i.i.i.i65.i.i.i.i.i.i = phi i32 [ %.recomposed42, %.thread8.i.thread.i ], [ %i.ff, %.split.us.i11.i.i.i.i70.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i66.i.i.i.i.i.i = phi i32 [ %i.ex, %.thread8.i.thread.i ], [ %i.fe, %.split.us.i11.i.i.i.i70.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i67.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i65.i.i.i.i.i.i to i64
  %i.fh = zext i32 %.us-phi23.i10.i.i.i.i66.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i, %.split.us.i.i.i.i.i73.i.i.i.i.i.i, %.thread42.i
  %i.fi = phi i64 [ %i.fg, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i ], [ %i.dx, %.thread42.i ], [ %i.ez, %.split.us.i.i.i.i.i73.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.sink.i.i.i.i68.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i67.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i ], [ %.recomposed40, %.thread42.i ], [ %i.fb, %.split.us.i.i.i.i.i73.i.i.i.i.i.i ]
  %.sink.i.i.i.i69.i.i.i.i.i.i = phi i64 [ %i.fh, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i.i ], [ %i.dy, %.thread42.i ], [ %i.fa, %.split.us.i.i.i.i.i73.i.i.i.i.i.i ]
  %i.fj = mul i64 %.sink.i.i.i.i69.i.i.i.i.i.i, %i.r
  %i.fk = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i68.i.i.i.i.i.i, %i.t
  %i.fl = getelementptr [4 x i8], ptr %i.v, i64 %i.fj
  %i.fm = getelementptr [4 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !81
  %i.fo = fcmp ule float %i.fn, -1.000000e+00
  br i1 %i.fo, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i
  %i.fp = add nuw i64 %.sroa.0124.0148.i.i.i.i.i.i, 4
  %i.fq = add nsw i64 %.0149.i.i.i.i.i.i, -1
  %i.fr = icmp sgt i64 %.0149.i.i.i.i.i.i, 1
  br i1 %i.fr, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !871

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.l, %bb.h
  %.sroa.0124.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %15, %bb.l ] ; 11 uses
  %i.fs = sub i64 %i.o, %.sroa.0124.0.lcssa.i.i.i.i.i.i
  switch i64 %i.fs, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i [
    i64 3, label %bb.m
    i64 2, label %bb.q
    i64 1, label %bb.u
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ft = icmp ugt i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, 4294967295
  br i1 %i.ft, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !17, !noalias !872 ; 5 uses
  %i.fw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fv)
  %.not.i.i.i.i.i84.i.i.i.i.i.i = icmp samesign ult i64 %i.fw, 2
  br i1 %.not.i.i.i.i.i84.i.i.i.i.i.i, label %.split.us.i.i.i.i.i86.i.i.i.i.i.i, label %.split.i.i.i.i.i85.i.i.i.i.i.i

.split.us.i.i.i.i.i86.i.i.i.i.i.i:                ; preds = %bb.n
  %i.fx = add i64 %i.fv, -1                       ; 2 uses
  %i.fy = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fx)
  %i.fz = lshr i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, %i.fy
  %i.ga = and i64 %i.fx, %.sroa.0124.0.lcssa.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i

.split.i.i.i.i.i85.i.i.i.i.i.i:                   ; preds = %bb.n
  %i.gb = udiv i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, %i.fv ; 2 uses
  %i.gc = mul i64 %i.gb, %i.fv                    ; 0 uses
  %.recomposed43 = urem i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, %i.fv
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.gd = trunc nuw i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i to i32 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !17, !noalias !877
  %i.gg = trunc i64 %i.gf to i32                  ; 5 uses
  %i.gh = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gg)
  %.not.i7.i.i.i.i75.i.i.i.i.i.i = icmp samesign ult i32 %i.gh, 2
  br i1 %.not.i7.i.i.i.i75.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i83.i.i.i.i.i.i, label %.split.i8.i.i.i.i76.i.i.i.i.i.i

.split.us.i11.i.i.i.i83.i.i.i.i.i.i:              ; preds = %bb.o
  %i.gi = add i32 %i.gg, -1                       ; 2 uses
  %i.gj = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gi)
  %i.gk = lshr i32 %i.gd, %i.gj
  %i.gl = and i32 %i.gi, %i.gd
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i

.split.i8.i.i.i.i76.i.i.i.i.i.i:                  ; preds = %bb.o
  %i.gm = udiv i32 %i.gd, %i.gg                   ; 2 uses
  %i.gn = mul i32 %i.gm, %i.gg                    ; 0 uses
  %.recomposed44 = urem i32 %i.gd, %i.gg
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i76.i.i.i.i.i.i, %.split.us.i11.i.i.i.i83.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i78.i.i.i.i.i.i = phi i32 [ %.recomposed44, %.split.i8.i.i.i.i76.i.i.i.i.i.i ], [ %i.gl, %.split.us.i11.i.i.i.i83.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i79.i.i.i.i.i.i = phi i32 [ %i.gm, %.split.i8.i.i.i.i76.i.i.i.i.i.i ], [ %i.gk, %.split.us.i11.i.i.i.i83.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i80.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i78.i.i.i.i.i.i to i64
  %i.go = zext i32 %.us-phi23.i10.i.i.i.i79.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i, %.split.i.i.i.i.i85.i.i.i.i.i.i, %.split.us.i.i.i.i.i86.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i81.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i80.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i ], [ %.recomposed43, %.split.i.i.i.i.i85.i.i.i.i.i.i ], [ %i.ga, %.split.us.i.i.i.i.i86.i.i.i.i.i.i ]
  %.sink.i.i.i.i82.i.i.i.i.i.i = phi i64 [ %i.go, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i.i ], [ %i.gb, %.split.i.i.i.i.i85.i.i.i.i.i.i ], [ %i.fz, %.split.us.i.i.i.i.i86.i.i.i.i.i.i ]
  %i.gp = load i64, ptr %8, align 8, !tbaa !17
  %i.gq = mul i64 %i.gp, %.sink.i.i.i.i82.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !17
  %i.gt = mul i64 %i.gs, %.sroa.5.1.le.i.sink.i.i.i.i81.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !378
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %i.gq
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.gt
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !81
  %i.gz = fcmp ule float %i.gy, -1.000000e+00
  br i1 %i.gz, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i
  %16 = or disjoint i64 %.sroa.0124.0.lcssa.i.i.i.i.i.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i
  %.sroa.0124.1.i.i.i.i.i.i = phi i64 [ %16, %bb.p ], [ %.sroa.0124.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 8 uses
  %i.ha = icmp ugt i64 %.sroa.0124.1.i.i.i.i.i.i, 4294967295
  br i1 %i.ha, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !17, !noalias !880 ; 5 uses
  %i.hd = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hc)
  %.not.i.i.i.i.i97.i.i.i.i.i.i = icmp samesign ult i64 %i.hd, 2
  br i1 %.not.i.i.i.i.i97.i.i.i.i.i.i, label %.split.us.i.i.i.i.i99.i.i.i.i.i.i, label %.split.i.i.i.i.i98.i.i.i.i.i.i

.split.us.i.i.i.i.i99.i.i.i.i.i.i:                ; preds = %bb.r
  %i.he = add i64 %i.hc, -1                       ; 2 uses
  %i.hf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.he)
  %i.hg = lshr i64 %.sroa.0124.1.i.i.i.i.i.i, %i.hf
  %i.hh = and i64 %i.he, %.sroa.0124.1.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i

.split.i.i.i.i.i98.i.i.i.i.i.i:                   ; preds = %bb.r
  %i.hi = udiv i64 %.sroa.0124.1.i.i.i.i.i.i, %i.hc ; 2 uses
  %i.hj = mul i64 %i.hi, %i.hc                    ; 0 uses
  %.recomposed45 = urem i64 %.sroa.0124.1.i.i.i.i.i.i, %i.hc
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.hk = trunc nuw i64 %.sroa.0124.1.i.i.i.i.i.i to i32 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !17, !noalias !885
  %i.hn = trunc i64 %i.hm to i32                  ; 5 uses
  %i.ho = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hn)
  %.not.i7.i.i.i.i88.i.i.i.i.i.i = icmp samesign ult i32 %i.ho, 2
  br i1 %.not.i7.i.i.i.i88.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i96.i.i.i.i.i.i, label %.split.i8.i.i.i.i89.i.i.i.i.i.i

.split.us.i11.i.i.i.i96.i.i.i.i.i.i:              ; preds = %bb.s
  %i.hp = add i32 %i.hn, -1                       ; 2 uses
  %i.hq = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hp)
  %i.hr = lshr i32 %i.hk, %i.hq
  %i.hs = and i32 %i.hp, %i.hk
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i

.split.i8.i.i.i.i89.i.i.i.i.i.i:                  ; preds = %bb.s
  %i.ht = udiv i32 %i.hk, %i.hn                   ; 2 uses
  %i.hu = mul i32 %i.ht, %i.hn                    ; 0 uses
  %.recomposed46 = urem i32 %i.hk, %i.hn
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i89.i.i.i.i.i.i, %.split.us.i11.i.i.i.i96.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i91.i.i.i.i.i.i = phi i32 [ %.recomposed46, %.split.i8.i.i.i.i89.i.i.i.i.i.i ], [ %i.hs, %.split.us.i11.i.i.i.i96.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i92.i.i.i.i.i.i = phi i32 [ %i.ht, %.split.i8.i.i.i.i89.i.i.i.i.i.i ], [ %i.hr, %.split.us.i11.i.i.i.i96.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i93.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i91.i.i.i.i.i.i to i64
  %i.hv = zext i32 %.us-phi23.i10.i.i.i.i92.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i, %.split.i.i.i.i.i98.i.i.i.i.i.i, %.split.us.i.i.i.i.i99.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i94.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i93.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i ], [ %.recomposed45, %.split.i.i.i.i.i98.i.i.i.i.i.i ], [ %i.hh, %.split.us.i.i.i.i.i99.i.i.i.i.i.i ]
  %.sink.i.i.i.i95.i.i.i.i.i.i = phi i64 [ %i.hv, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i.i ], [ %i.hi, %.split.i.i.i.i.i98.i.i.i.i.i.i ], [ %i.hg, %.split.us.i.i.i.i.i99.i.i.i.i.i.i ]
  %i.hw = load i64, ptr %8, align 8, !tbaa !17
  %i.hx = mul i64 %i.hw, %.sink.i.i.i.i95.i.i.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !17
  %i.ia = mul i64 %i.hz, %.sroa.5.1.le.i.sink.i.i.i.i94.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !378
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %i.hx
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %i.ia
  %i.if = load float, ptr %i.ie, align 4, !tbaa !81
  %i.ig = fcmp ule float %i.if, -1.000000e+00
  br i1 %i.ig, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i
  %i.ih = add nuw i64 %.sroa.0124.1.i.i.i.i.i.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i
  %.sroa.0124.2.i.i.i.i.i.i = phi i64 [ %i.ih, %bb.t ], [ %.sroa.0124.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 7 uses
  %i.ii = icmp ugt i64 %.sroa.0124.2.i.i.i.i.i.i, 4294967295
  br i1 %i.ii, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ij = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !17, !noalias !888 ; 5 uses
  %i.il = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ik)
  %.not.i.i.i.i.i110.i.i.i.i.i.i = icmp samesign ult i64 %i.il, 2
  br i1 %.not.i.i.i.i.i110.i.i.i.i.i.i, label %.split.us.i.i.i.i.i112.i.i.i.i.i.i, label %.split.i.i.i.i.i111.i.i.i.i.i.i

.split.us.i.i.i.i.i112.i.i.i.i.i.i:               ; preds = %bb.v
  %i.im = add i64 %i.ik, -1                       ; 2 uses
  %i.in = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.im)
  %i.io = lshr i64 %.sroa.0124.2.i.i.i.i.i.i, %i.in
  %i.ip = and i64 %i.im, %.sroa.0124.2.i.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i

.split.i.i.i.i.i111.i.i.i.i.i.i:                  ; preds = %bb.v
  %i.iq = udiv i64 %.sroa.0124.2.i.i.i.i.i.i, %i.ik ; 2 uses
  %i.ir = mul i64 %i.iq, %i.ik                    ; 0 uses
  %.recomposed47 = urem i64 %.sroa.0124.2.i.i.i.i.i.i, %i.ik
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.is = trunc nuw i64 %.sroa.0124.2.i.i.i.i.i.i to i32 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !17, !noalias !893
  %i.iv = trunc i64 %i.iu to i32                  ; 5 uses
  %i.iw = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.iv)
  %.not.i7.i.i.i.i101.i.i.i.i.i.i = icmp samesign ult i32 %i.iw, 2
  br i1 %.not.i7.i.i.i.i101.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i109.i.i.i.i.i.i, label %.split.i8.i.i.i.i102.i.i.i.i.i.i

.split.us.i11.i.i.i.i109.i.i.i.i.i.i:             ; preds = %bb.w
  %i.ix = add i32 %i.iv, -1                       ; 2 uses
  %i.iy = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ix)
  %i.iz = lshr i32 %i.is, %i.iy
  %i.ja = and i32 %i.ix, %i.is
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i

.split.i8.i.i.i.i102.i.i.i.i.i.i:                 ; preds = %bb.w
  %i.jb = udiv i32 %i.is, %i.iv                   ; 2 uses
  %i.jc = mul i32 %i.jb, %i.iv                    ; 0 uses
  %.recomposed48 = urem i32 %i.is, %i.iv
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i102.i.i.i.i.i.i, %.split.us.i11.i.i.i.i109.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i104.i.i.i.i.i.i = phi i32 [ %.recomposed48, %.split.i8.i.i.i.i102.i.i.i.i.i.i ], [ %i.ja, %.split.us.i11.i.i.i.i109.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i105.i.i.i.i.i.i = phi i32 [ %i.jb, %.split.i8.i.i.i.i102.i.i.i.i.i.i ], [ %i.iz, %.split.us.i11.i.i.i.i109.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i106.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i104.i.i.i.i.i.i to i64
  %i.jd = zext i32 %.us-phi23.i10.i.i.i.i105.i.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i, %.split.i.i.i.i.i111.i.i.i.i.i.i, %.split.us.i.i.i.i.i112.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i107.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i106.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i ], [ %.recomposed47, %.split.i.i.i.i.i111.i.i.i.i.i.i ], [ %i.ip, %.split.us.i.i.i.i.i112.i.i.i.i.i.i ]
  %.sink.i.i.i.i108.i.i.i.i.i.i = phi i64 [ %i.jd, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i.i ], [ %i.iq, %.split.i.i.i.i.i111.i.i.i.i.i.i ], [ %i.io, %.split.us.i.i.i.i.i112.i.i.i.i.i.i ]
  %i.je = load i64, ptr %8, align 8, !tbaa !17
  %i.jf = mul i64 %i.je, %.sink.i.i.i.i108.i.i.i.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !17
  %i.ji = mul i64 %i.jh, %.sroa.5.1.le.i.sink.i.i.i.i107.i.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !378
  %i.jl = getelementptr [4 x i8], ptr %i.jk, i64 %i.jf
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %i.ji
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !81
  %i.jo = fcmp ule float %i.jn, -1.000000e+00
  br i1 %i.jo, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i

bb.x:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.jp = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jp, ptr noundef nonnull @.str.117, i32 noundef 187)
  %i.jq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i unwind label %bb.y

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i: ; preds = %bb.x
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull @.str.123, i64 noundef 46)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_15SquaredLogErrorEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i, %bb.x
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume.i

bb.aa:                                            ; preds = %bb.y
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  %i.ju = extractvalue { ptr, i32 } %i.jt, 0
  call void @__clang_call_terminate(ptr %i.ju) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_15SquaredLogErrorEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.ab:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.jv = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jv, ptr noundef nonnull @.str.119, i32 noundef 271)
  %i.jw = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i unwind label %bb.ad ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i: ; preds = %bb.ab
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull @.str.122, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i
  %.sroa.0.0.copyload.i28.i.i.i = load i32, ptr %i.f, align 8
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i28.i.i.i to i16
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, i16 noundef signext %.sroa.0.0.extract.trunc.i.i.i)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

bb.ad:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i, %bb.ab
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ka, %bb.ae ], [ %i.jz, %bb.ad ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume.i

bb.ah:                                            ; preds = %bb.af
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #39
  unreachable

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i
  %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i = phi i64 [ %.sroa.0124.1.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i.i ], [ %.sroa.0124.0.lcssa.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i.i ], [ %.sroa.0124.2.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i ], [ %i.do, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread.i ], [ %i.ea, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.i ], [ %i.ck, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.i ], [ %.sroa.0124.0148.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.i ], [ %i.fi, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i.i ], [ %i.df, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.i ], [ %i.bs, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.i ], [ %.sroa.0124.0148.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.i ], [ %.sroa.0124.0148.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread.i ], [ %.sroa.0124.0148.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread.i ], [ %i.cu, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread.i ], [ %i.cb, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread.i ], [ %i.ek, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread.i ]
  %i.kd = icmp eq i64 %i.o, %.sroa.014.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %i.kd, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %bb.ac, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_15SquaredLogErrorEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i.i, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_15SquaredLogErrorEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ke = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ke, ptr noundef nonnull @.str.109, i32 noundef 85)
  %i.kf = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.ai

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull @.str.141, i64 noundef 76)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i

bb.ai:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aj unwind label %bb.as

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ar

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_15SquaredLogErrorEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.kj = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ki)
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_15SquaredLogErrorEEEvPKNS_7ContextERKNS_8MetaInfoE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_15SquaredLogErrorEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.kl = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ki) ; 2 uses
  store i64 %i.kl, ptr %i.a, align 8, !tbaa !17
  %i.km = load i64, ptr %2, align 8, !tbaa !17, !noalias !896
  %i.kn = icmp eq i64 %i.kl, %i.km
  br i1 %i.kn, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.ak
end_hunk_7
begin_hunk_8_@_ZN7xgboost6ToJsonINS_3obj22PoissonRegressionParamEEENS_10JsonObjectERKT_:bb.a
bb.k:                                             ; preds = %.noexc.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7xgboost10JsonStringD2Ev.exit15

bb.l:                                             ; preds = %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %3, align 8, !tbaa !57
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !9   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZN7xgboost10JsonStringD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.l
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !15
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #36
  br label %_ZN7xgboost10JsonStringD2Ev.exit15

_ZN7xgboost10JsonStringD2Ev.exit15:               ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ %i.be, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.m

bb.m:                                             ; preds = %_ZN7xgboost10JsonStringD2Ev.exit15, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7xgboost10JsonStringD2Ev.exit15 ], [ %i.v, %bb.d ]
  call void @_ZN7xgboost10JsonObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK4dmlc9ParameterIN7xgboost3obj22PoissonRegressionParamEE8__DICT__B5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map.131") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.96", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = tail call noundef ptr @_ZN7xgboost3obj22PoissonRegressionParam11__MANAGER__Ev() ; 0 uses
  call void @_ZNK4dmlc9parameter12ParamManager7GetDictB5cxx11EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.96") align 8 %2, ptr noundef nonnull align 8 dereferenceable(104) @_ZZN7xgboost3obj22PoissonRegressionParam11__MANAGER__EvE4inst, ptr noundef nonnull %1)
  %i.b = load ptr, ptr %2, align 8, !tbaa !226    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  store ptr %i.e, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !27
  %.not4.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.j, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_emplace_uniqueIJRS6_IS5_S5_EEEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.01.05.i.i)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2IN9__gnu_cxx17__normal_iteratorIPS8_IS5_S5_ESt6vectorISG_SaISG_EEEEEET_SM_.exit, label %.lr.ph.i.i, !llvm.loop !328

.body:                                            ; preds = %.lr.ph.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #21
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.k

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2IN9__gnu_cxx17__normal_iteratorIPS8_IS5_S5_ESt6vectorISG_SaISG_EEEEEET_SM_.exit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !202   ; 3 uses
  %.pre3 = load ptr, ptr %i.c, align 8, !tbaa !205 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre3
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2IN9__gnu_cxx17__normal_iteratorIPS8_IS5_S5_ESt6vectorISG_SaISG_EEEEEET_SM_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2IN9__gnu_cxx17__normal_iteratorIPS8_IS5_S5_ESt6vectorISG_SaISG_EEEEEET_SM_.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !15
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %.pre3
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %bb.a, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2IN9__gnu_cxx17__normal_iteratorIPS8_IS5_S5_ESt6vectorISG_SaISG_EEEEEET_SM_.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2IN9__gnu_cxx17__normal_iteratorIPS8_IS5_S5_ESt6vectorISG_SaISG_EEEEEET_SM_.exit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !207
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_12PoissonLabelEEEvPKNS_7ContextERKNS_8MetaInfoE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %5 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 24 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %5, ptr noundef nonnull align 8 dereferenceable(25) %i.b, i32 %.sroa.0.0.copyload.i)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i to i16
  %.off.i.i = add i16 %.sroa.0.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.d, ptr noundef nonnull @.str.117, i32 noundef 205)
  %i.e = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i unwind label %bb.c

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i: ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.118, i64 noundef 47)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_12PoissonLabelEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %bb.y, %bb.af, %bb.ar
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %bb.ar ], [ %i.g, %bb.d ], [ %i.jp, %bb.y ], [ %.pn.i.i, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_12PoissonLabelEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread

bb.f:                                             ; preds = %bb.a
  %sext.i.i = shl i32 %.sroa.0.0.copyload.i.i, 16
  %i.j = ashr exact i32 %sext.i.i, 16
  switch i32 %i.j, label %bb.aa [
    i32 0, label %bb.g
    i32 1, label %bb.w
  ]

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !381  ; 4 uses
  %i.m = lshr i64 %i.l, 2                         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = load i64, ptr %5, align 8, !tbaa !17     ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17   ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !378  ; 13 uses
  %9 = and i64 %i.l, -4
  %i.t = load i64, ptr %i.n, align 8              ; 15 uses
  %i.u = trunc i64 %i.t to i32                    ; 14 uses
  %i.v = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.u)
  %.not.i7.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.v, 2
  %i.w = add i32 %i.u, -1                         ; 3 uses
  %i.x = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.w) ; 4 uses
  %i.y = zext i32 %i.w to i64                     ; 3 uses
  %i.z = add i64 %i.t, -1                         ; 4 uses
  %i.aa = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %i.ab = shufflevector <2 x i64> %i.aa, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ac = add <2 x i64> %i.ab, <i64 0, i64 -1>
  %i.ad = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ac) ; 2 uses
  %i.ae = extractelement <2 x i64> %i.ad, i64 1   ; 4 uses
  %i.af = extractelement <2 x i64> %i.ad, i64 0
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.af, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.0149.i.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.fn, %bb.k ] ; 2 uses
  %.sroa.0124.0148.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.fm, %bb.k ] ; 24 uses
  %i.ag = icmp ugt i64 %.sroa.0124.0148.i.i.i.i.i, 4294967295
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread

bb.j:                                             ; preds = %bb.h
  %i.ah = trunc nuw i64 %.sroa.0124.0148.i.i.i.i.i to i32 ; 3 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ai = lshr i64 %.sroa.0124.0148.i.i.i.i.i, %i.ae
  %i.aj = and i64 %i.z, %.sroa.0124.0148.i.i.i.i.i
  %i.ak = mul i64 %i.ai, %i.o
  %i.al = mul i64 %i.aj, %i.q
  %i.am = getelementptr [4 x i8], ptr %i.s, i64 %i.ak
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.al
  %i.ao = load float, ptr %i.an, align 4, !tbaa !81
  %i.ap = fcmp ult float %i.ao, 0.000000e+00
  br i1 %i.ap, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread: ; preds = %bb.i
  %i.aq = udiv i64 %.sroa.0124.0148.i.i.i.i.i, %i.t ; 2 uses
  %i.ar = mul i64 %i.aq, %i.t                     ; 0 uses
  %.recomposed = urem i64 %.sroa.0124.0148.i.i.i.i.i, %i.t
  %i.as = mul i64 %i.aq, %i.o
  %i.at = mul i64 %.recomposed, %i.q
  %i.au = getelementptr [4 x i8], ptr %i.s, i64 %i.as
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !81
  %i.ax = fcmp ult float %i.aw, 0.000000e+00
  br i1 %i.ax, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i: ; preds = %bb.j
  %i.ay = lshr i32 %i.ah, %i.x
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i = and i64 %.sroa.0124.0148.i.i.i.i.i, %i.y
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul i64 %i.o, %i.az
  %i.bb = mul i64 %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i, %i.q
  %i.bc = getelementptr [4 x i8], ptr %i.s, i64 %i.ba
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load float, ptr %i.bd, align 4, !tbaa !81
  %i.bf = fcmp ult float %i.be, 0.000000e+00
  br i1 %i.bf, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread: ; preds = %bb.j
  %i.bg = udiv i32 %i.ah, %i.u                    ; 2 uses
  %i.bh = mul i32 %i.bg, %i.u                     ; 0 uses
  %.recomposed51 = urem i32 %i.ah, %i.u
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i28 = zext i32 %.recomposed51 to i64
  %i.bi = zext nneg i32 %i.bg to i64
  %i.bj = mul i64 %i.o, %i.bi
  %i.bk = mul i64 %i.q, %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i28
  %i.bl = getelementptr [4 x i8], ptr %i.s, i64 %i.bj
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !81
  %i.bo = fcmp ult float %i.bn, 0.000000e+00
  br i1 %i.bo, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i
  %i.bp = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 1 ; 3 uses
  %i.bq = lshr i64 %i.bp, %i.ae
  %i.br = and i64 %i.z, %i.bp
  %i.bs = mul i64 %i.bq, %i.o
  %i.bt = mul i64 %i.br, %i.q
  %i.bu = getelementptr [4 x i8], ptr %i.s, i64 %i.bs
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !81
  %i.bx = fcmp ult float %i.bw, 0.000000e+00
  br i1 %i.bx, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread
  %i.by = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 1 ; 3 uses
  %i.bz = udiv i64 %i.by, %i.t                    ; 2 uses
  %i.ca = mul i64 %i.bz, %i.t                     ; 0 uses
  %.recomposed52 = urem i64 %i.by, %i.t
  %i.cb = mul i64 %i.bz, %i.o
  %i.cc = mul i64 %.recomposed52, %i.q
  %i.cd = getelementptr [4 x i8], ptr %i.s, i64 %i.cb
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !81
  %i.cg = fcmp ult float %i.cf, 0.000000e+00
  br i1 %i.cg, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i
  %i.ch = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 1 ; 3 uses
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = lshr i32 %i.ci, %i.x
  %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i = and i64 %i.ch, %i.y
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul i64 %i.o, %i.ck
  %i.cm = mul i64 %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i, %i.q
  %i.cn = getelementptr [4 x i8], ptr %i.s, i64 %i.cl
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load float, ptr %i.co, align 4, !tbaa !81
  %i.cq = fcmp ult float %i.cp, 0.000000e+00
  br i1 %i.cq, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread
  %i.cr = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 1 ; 2 uses
  %i.cs = trunc nuw i64 %i.cr to i32              ; 2 uses
  %i.ct = udiv i32 %i.cs, %i.u                    ; 2 uses
  %i.cu = mul i32 %i.ct, %i.u                     ; 0 uses
  %.recomposed53 = urem i32 %i.cs, %i.u
  %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i33 = zext i32 %.recomposed53 to i64
  %i.cv = zext nneg i32 %i.ct to i64
  %i.cw = mul i64 %i.o, %i.cv
  %i.cx = mul i64 %i.q, %.sroa.5.1.le.i.i.i.i.i41.i.i.i.i.i33
  %i.cy = getelementptr [4 x i8], ptr %i.s, i64 %i.cw
  %i.cz = getelementptr [4 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load float, ptr %i.cz, align 4, !tbaa !81
  %i.db = fcmp ult float %i.da, 0.000000e+00
  br i1 %i.db, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i
  %i.dc = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 2 ; 3 uses
  %i.dd = lshr i64 %i.dc, %i.ae
  %i.de = and i64 %i.z, %i.dc
  %i.df = mul i64 %i.dd, %i.o
  %i.dg = mul i64 %i.de, %i.q
  %i.dh = getelementptr [4 x i8], ptr %i.s, i64 %i.df
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load float, ptr %i.di, align 4, !tbaa !81
  %i.dk = fcmp ult float %i.dj, 0.000000e+00
  br i1 %i.dk, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %.split.us.i.i.i.i.i73.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread
  %i.dl = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 2 ; 3 uses
  %i.dm = udiv i64 %i.dl, %i.t                    ; 2 uses
  %i.dn = mul i64 %i.dm, %i.t                     ; 0 uses
  %.recomposed54 = urem i64 %i.dl, %i.t
  %i.do = mul i64 %i.dm, %i.o
  %i.dp = mul i64 %.recomposed54, %i.q
  %i.dq = getelementptr [4 x i8], ptr %i.s, i64 %i.do
  %i.dr = getelementptr [4 x i8], ptr %i.dq, i64 %i.dp
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !81
  %i.dt = fcmp ult float %i.ds, 0.000000e+00
  br i1 %i.dt, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %.thread42

.thread42:                                        ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread
  %i.du = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 3 ; 3 uses
  %i.dv = udiv i64 %i.du, %i.t                    ; 2 uses
  %i.dw = mul i64 %i.dv, %i.t                     ; 0 uses
  %.recomposed55 = urem i64 %i.du, %i.t
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i
  %i.dx = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 2 ; 3 uses
  %i.dy = trunc nuw i64 %i.dx to i32
  %i.dz = lshr i32 %i.dy, %i.x
  %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i = and i64 %i.dx, %i.y
  %i.ea = zext i32 %i.dz to i64
  %i.eb = mul i64 %i.o, %i.ea
  %i.ec = mul i64 %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i, %i.q
  %i.ed = getelementptr [4 x i8], ptr %i.s, i64 %i.eb
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !81
  %i.eg = fcmp ult float %i.ef, 0.000000e+00
  br i1 %i.eg, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %.split.us.i11.i.i.i.i70.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread
  %i.eh = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 2 ; 2 uses
  %i.ei = trunc nuw i64 %i.eh to i32              ; 2 uses
  %i.ej = udiv i32 %i.ei, %i.u                    ; 2 uses
  %i.ek = mul i32 %i.ej, %i.u                     ; 0 uses
  %.recomposed56 = urem i32 %i.ei, %i.u
  %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i39 = zext i32 %.recomposed56 to i64
  %i.el = zext nneg i32 %i.ej to i64
  %i.em = mul i64 %i.o, %i.el
  %i.en = mul i64 %i.q, %.sroa.5.1.le.i.i.i.i.i54.i.i.i.i.i39
  %i.eo = getelementptr [4 x i8], ptr %i.s, i64 %i.em
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !81
  %i.er = fcmp ult float %i.eq, 0.000000e+00
  br i1 %i.er, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %.thread8.i.thread

.thread8.i.thread:                                ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread
  %i.es = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 3 ; 2 uses
  %i.et = trunc nuw i64 %i.es to i32              ; 2 uses
  %i.eu = udiv i32 %i.et, %i.u                    ; 2 uses
  %i.ev = mul i32 %i.eu, %i.u                     ; 0 uses
  %.recomposed57 = urem i32 %i.et, %i.u
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i

.split.us.i.i.i.i.i73.i.i.i.i.i:                  ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i
  %i.ew = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 3 ; 3 uses
  %i.ex = lshr i64 %i.ew, %i.ae
  %i.ey = and i64 %i.z, %i.ew
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i

.split.us.i11.i.i.i.i70.i.i.i.i.i:                ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i
  %i.ez = or disjoint i64 %.sroa.0124.0148.i.i.i.i.i, 3 ; 2 uses
  %i.fa = trunc nuw i64 %i.ez to i32              ; 2 uses
  %i.fb = lshr i32 %i.fa, %i.x
  %i.fc = and i32 %i.w, %i.fa
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i: ; preds = %.thread8.i.thread, %.split.us.i11.i.i.i.i70.i.i.i.i.i
  %i.fd = phi i64 [ %i.es, %.thread8.i.thread ], [ %i.ez, %.split.us.i11.i.i.i.i70.i.i.i.i.i ]
  %.us-phi.i9.i.i.i.i65.i.i.i.i.i = phi i32 [ %.recomposed57, %.thread8.i.thread ], [ %i.fc, %.split.us.i11.i.i.i.i70.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i66.i.i.i.i.i = phi i32 [ %i.eu, %.thread8.i.thread ], [ %i.fb, %.split.us.i11.i.i.i.i70.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i67.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i65.i.i.i.i.i to i64
  %i.fe = zext i32 %.us-phi23.i10.i.i.i.i66.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i, %.thread42, %.split.us.i.i.i.i.i73.i.i.i.i.i
  %i.ff = phi i64 [ %i.fd, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i ], [ %i.du, %.thread42 ], [ %i.ew, %.split.us.i.i.i.i.i73.i.i.i.i.i ]
  %.sroa.5.1.le.i.sink.i.i.i.i68.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i67.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i ], [ %.recomposed55, %.thread42 ], [ %i.ey, %.split.us.i.i.i.i.i73.i.i.i.i.i ]
  %.sink.i.i.i.i69.i.i.i.i.i = phi i64 [ %i.fe, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i64.i.i.i.i.i ], [ %i.dv, %.thread42 ], [ %i.ex, %.split.us.i.i.i.i.i73.i.i.i.i.i ]
  %i.fg = mul i64 %.sink.i.i.i.i69.i.i.i.i.i, %i.o
  %i.fh = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i68.i.i.i.i.i, %i.q
  %i.fi = getelementptr [4 x i8], ptr %i.s, i64 %i.fg
  %i.fj = getelementptr [4 x i8], ptr %i.fi, i64 %i.fh
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !81
  %i.fl = fcmp ult float %i.fk, 0.000000e+00
  br i1 %i.fl, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i
  %i.fm = add nuw i64 %.sroa.0124.0148.i.i.i.i.i, 4
  %i.fn = add nsw i64 %.0149.i.i.i.i.i, -1
  %i.fo = icmp sgt i64 %.0149.i.i.i.i.i, 1
  br i1 %i.fo, label %bb.h, label %._crit_edge.i.i.i.i.i, !llvm.loop !1386

._crit_edge.i.i.i.i.i:                            ; preds = %bb.k, %bb.g
  %.sroa.0124.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %9, %bb.k ] ; 11 uses
  %i.fp = sub i64 %i.l, %.sroa.0124.0.lcssa.i.i.i.i.i
  switch i64 %i.fp, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44 [
    i64 3, label %bb.l
    i64 2, label %bb.p
    i64 1, label %bb.t
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fq = icmp ugt i64 %.sroa.0124.0.lcssa.i.i.i.i.i, 4294967295
  br i1 %i.fq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !17, !noalias !1387 ; 5 uses
  %i.ft = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fs)
  %.not.i.i.i.i.i84.i.i.i.i.i = icmp samesign ult i64 %i.ft, 2
  br i1 %.not.i.i.i.i.i84.i.i.i.i.i, label %.split.us.i.i.i.i.i86.i.i.i.i.i, label %.split.i.i.i.i.i85.i.i.i.i.i

.split.us.i.i.i.i.i86.i.i.i.i.i:                  ; preds = %bb.m
  %i.fu = add i64 %i.fs, -1                       ; 2 uses
  %i.fv = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fu)
  %i.fw = lshr i64 %.sroa.0124.0.lcssa.i.i.i.i.i, %i.fv
  %i.fx = and i64 %i.fu, %.sroa.0124.0.lcssa.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i

.split.i.i.i.i.i85.i.i.i.i.i:                     ; preds = %bb.m
  %i.fy = udiv i64 %.sroa.0124.0.lcssa.i.i.i.i.i, %i.fs ; 2 uses
  %i.fz = mul i64 %i.fy, %i.fs                    ; 0 uses
  %.recomposed58 = urem i64 %.sroa.0124.0.lcssa.i.i.i.i.i, %i.fs
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ga = trunc nuw i64 %.sroa.0124.0.lcssa.i.i.i.i.i to i32 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !17, !noalias !1392
  %i.gd = trunc i64 %i.gc to i32                  ; 5 uses
  %i.ge = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gd)
  %.not.i7.i.i.i.i75.i.i.i.i.i = icmp samesign ult i32 %i.ge, 2
  br i1 %.not.i7.i.i.i.i75.i.i.i.i.i, label %.split.us.i11.i.i.i.i83.i.i.i.i.i, label %.split.i8.i.i.i.i76.i.i.i.i.i

.split.us.i11.i.i.i.i83.i.i.i.i.i:                ; preds = %bb.n
  %i.gf = add i32 %i.gd, -1                       ; 2 uses
  %i.gg = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gf)
  %i.gh = lshr i32 %i.ga, %i.gg
  %i.gi = and i32 %i.gf, %i.ga
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i

.split.i8.i.i.i.i76.i.i.i.i.i:                    ; preds = %bb.n
  %i.gj = udiv i32 %i.ga, %i.gd                   ; 2 uses
  %i.gk = mul i32 %i.gj, %i.gd                    ; 0 uses
  %.recomposed59 = urem i32 %i.ga, %i.gd
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i76.i.i.i.i.i, %.split.us.i11.i.i.i.i83.i.i.i.i.i
  %.us-phi.i9.i.i.i.i78.i.i.i.i.i = phi i32 [ %.recomposed59, %.split.i8.i.i.i.i76.i.i.i.i.i ], [ %i.gi, %.split.us.i11.i.i.i.i83.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i79.i.i.i.i.i = phi i32 [ %i.gj, %.split.i8.i.i.i.i76.i.i.i.i.i ], [ %i.gh, %.split.us.i11.i.i.i.i83.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i80.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i78.i.i.i.i.i to i64
  %i.gl = zext i32 %.us-phi23.i10.i.i.i.i79.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i, %.split.i.i.i.i.i85.i.i.i.i.i, %.split.us.i.i.i.i.i86.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i81.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i80.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i ], [ %.recomposed58, %.split.i.i.i.i.i85.i.i.i.i.i ], [ %i.fx, %.split.us.i.i.i.i.i86.i.i.i.i.i ]
  %.sink.i.i.i.i82.i.i.i.i.i = phi i64 [ %i.gl, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i77.i.i.i.i.i ], [ %i.fy, %.split.i.i.i.i.i85.i.i.i.i.i ], [ %i.fw, %.split.us.i.i.i.i.i86.i.i.i.i.i ]
  %i.gm = load i64, ptr %5, align 8, !tbaa !17
  %i.gn = mul i64 %i.gm, %.sink.i.i.i.i82.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !17
  %i.gq = mul i64 %i.gp, %.sroa.5.1.le.i.sink.i.i.i.i81.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !378
  %i.gt = getelementptr [4 x i8], ptr %i.gs, i64 %i.gn
  %i.gu = getelementptr [4 x i8], ptr %i.gt, i64 %i.gq
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !81
  %i.gw = fcmp ult float %i.gv, 0.000000e+00
  br i1 %i.gw, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i
  %10 = or disjoint i64 %.sroa.0124.0.lcssa.i.i.i.i.i, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i
  %.sroa.0124.1.i.i.i.i.i = phi i64 [ %10, %bb.o ], [ %.sroa.0124.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 8 uses
  %i.gx = icmp ugt i64 %.sroa.0124.1.i.i.i.i.i, 4294967295
  br i1 %i.gx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !17, !noalias !1395 ; 5 uses
  %i.ha = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gz)
  %.not.i.i.i.i.i97.i.i.i.i.i = icmp samesign ult i64 %i.ha, 2
  br i1 %.not.i.i.i.i.i97.i.i.i.i.i, label %.split.us.i.i.i.i.i99.i.i.i.i.i, label %.split.i.i.i.i.i98.i.i.i.i.i

.split.us.i.i.i.i.i99.i.i.i.i.i:                  ; preds = %bb.q
  %i.hb = add i64 %i.gz, -1                       ; 2 uses
  %i.hc = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hb)
  %i.hd = lshr i64 %.sroa.0124.1.i.i.i.i.i, %i.hc
  %i.he = and i64 %i.hb, %.sroa.0124.1.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i

.split.i.i.i.i.i98.i.i.i.i.i:                     ; preds = %bb.q
  %i.hf = udiv i64 %.sroa.0124.1.i.i.i.i.i, %i.gz ; 2 uses
  %i.hg = mul i64 %i.hf, %i.gz                    ; 0 uses
  %.recomposed60 = urem i64 %.sroa.0124.1.i.i.i.i.i, %i.gz
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.hh = trunc nuw i64 %.sroa.0124.1.i.i.i.i.i to i32 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !17, !noalias !1400
  %i.hk = trunc i64 %i.hj to i32                  ; 5 uses
  %i.hl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hk)
  %.not.i7.i.i.i.i88.i.i.i.i.i = icmp samesign ult i32 %i.hl, 2
  br i1 %.not.i7.i.i.i.i88.i.i.i.i.i, label %.split.us.i11.i.i.i.i96.i.i.i.i.i, label %.split.i8.i.i.i.i89.i.i.i.i.i

.split.us.i11.i.i.i.i96.i.i.i.i.i:                ; preds = %bb.r
  %i.hm = add i32 %i.hk, -1                       ; 2 uses
  %i.hn = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hm)
  %i.ho = lshr i32 %i.hh, %i.hn
  %i.hp = and i32 %i.hm, %i.hh
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i

.split.i8.i.i.i.i89.i.i.i.i.i:                    ; preds = %bb.r
  %i.hq = udiv i32 %i.hh, %i.hk                   ; 2 uses
  %i.hr = mul i32 %i.hq, %i.hk                    ; 0 uses
  %.recomposed61 = urem i32 %i.hh, %i.hk
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i89.i.i.i.i.i, %.split.us.i11.i.i.i.i96.i.i.i.i.i
  %.us-phi.i9.i.i.i.i91.i.i.i.i.i = phi i32 [ %.recomposed61, %.split.i8.i.i.i.i89.i.i.i.i.i ], [ %i.hp, %.split.us.i11.i.i.i.i96.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i92.i.i.i.i.i = phi i32 [ %i.hq, %.split.i8.i.i.i.i89.i.i.i.i.i ], [ %i.ho, %.split.us.i11.i.i.i.i96.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i93.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i91.i.i.i.i.i to i64
  %i.hs = zext i32 %.us-phi23.i10.i.i.i.i92.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i, %.split.i.i.i.i.i98.i.i.i.i.i, %.split.us.i.i.i.i.i99.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i94.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i93.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i ], [ %.recomposed60, %.split.i.i.i.i.i98.i.i.i.i.i ], [ %i.he, %.split.us.i.i.i.i.i99.i.i.i.i.i ]
  %.sink.i.i.i.i95.i.i.i.i.i = phi i64 [ %i.hs, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i90.i.i.i.i.i ], [ %i.hf, %.split.i.i.i.i.i98.i.i.i.i.i ], [ %i.hd, %.split.us.i.i.i.i.i99.i.i.i.i.i ]
  %i.ht = load i64, ptr %5, align 8, !tbaa !17
  %i.hu = mul i64 %i.ht, %.sink.i.i.i.i95.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !17
  %i.hx = mul i64 %i.hw, %.sroa.5.1.le.i.sink.i.i.i.i94.i.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !378
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.hu
  %i.ib = getelementptr [4 x i8], ptr %i.ia, i64 %i.hx
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !81
  %i.id = fcmp ult float %i.ic, 0.000000e+00
  br i1 %i.id, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i
  %i.ie = add nuw i64 %.sroa.0124.1.i.i.i.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i
  %.sroa.0124.2.i.i.i.i.i = phi i64 [ %i.ie, %bb.s ], [ %.sroa.0124.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 7 uses
  %i.if = icmp ugt i64 %.sroa.0124.2.i.i.i.i.i, 4294967295
  br i1 %i.if, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !17, !noalias !1403 ; 5 uses
  %i.ii = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ih)
  %.not.i.i.i.i.i110.i.i.i.i.i = icmp samesign ult i64 %i.ii, 2
  br i1 %.not.i.i.i.i.i110.i.i.i.i.i, label %.split.us.i.i.i.i.i112.i.i.i.i.i, label %.split.i.i.i.i.i111.i.i.i.i.i

.split.us.i.i.i.i.i112.i.i.i.i.i:                 ; preds = %bb.u
  %i.ij = add i64 %i.ih, -1                       ; 2 uses
  %i.ik = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ij)
  %i.il = lshr i64 %.sroa.0124.2.i.i.i.i.i, %i.ik
  %i.im = and i64 %i.ij, %.sroa.0124.2.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i

.split.i.i.i.i.i111.i.i.i.i.i:                    ; preds = %bb.u
  %i.in = udiv i64 %.sroa.0124.2.i.i.i.i.i, %i.ih ; 2 uses
  %i.io = mul i64 %i.in, %i.ih                    ; 0 uses
  %.recomposed62 = urem i64 %.sroa.0124.2.i.i.i.i.i, %i.ih
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ip = trunc nuw i64 %.sroa.0124.2.i.i.i.i.i to i32 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !17, !noalias !1408
  %i.is = trunc i64 %i.ir to i32                  ; 5 uses
  %i.it = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.is)
  %.not.i7.i.i.i.i101.i.i.i.i.i = icmp samesign ult i32 %i.it, 2
  br i1 %.not.i7.i.i.i.i101.i.i.i.i.i, label %.split.us.i11.i.i.i.i109.i.i.i.i.i, label %.split.i8.i.i.i.i102.i.i.i.i.i

.split.us.i11.i.i.i.i109.i.i.i.i.i:               ; preds = %bb.v
  %i.iu = add i32 %i.is, -1                       ; 2 uses
  %i.iv = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.iu)
  %i.iw = lshr i32 %i.ip, %i.iv
  %i.ix = and i32 %i.iu, %i.ip
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i

.split.i8.i.i.i.i102.i.i.i.i.i:                   ; preds = %bb.v
  %i.iy = udiv i32 %i.ip, %i.is                   ; 2 uses
  %i.iz = mul i32 %i.iy, %i.is                    ; 0 uses
  %.recomposed63 = urem i32 %i.ip, %i.is
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i102.i.i.i.i.i, %.split.us.i11.i.i.i.i109.i.i.i.i.i
  %.us-phi.i9.i.i.i.i104.i.i.i.i.i = phi i32 [ %.recomposed63, %.split.i8.i.i.i.i102.i.i.i.i.i ], [ %i.ix, %.split.us.i11.i.i.i.i109.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i105.i.i.i.i.i = phi i32 [ %i.iy, %.split.i8.i.i.i.i102.i.i.i.i.i ], [ %i.iw, %.split.us.i11.i.i.i.i109.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i106.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i104.i.i.i.i.i to i64
  %i.ja = zext i32 %.us-phi23.i10.i.i.i.i105.i.i.i.i.i to i64
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i, %.split.i.i.i.i.i111.i.i.i.i.i, %.split.us.i.i.i.i.i112.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i107.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i106.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i ], [ %.recomposed62, %.split.i.i.i.i.i111.i.i.i.i.i ], [ %i.im, %.split.us.i.i.i.i.i112.i.i.i.i.i ]
  %.sink.i.i.i.i108.i.i.i.i.i = phi i64 [ %i.ja, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i103.i.i.i.i.i ], [ %i.in, %.split.i.i.i.i.i111.i.i.i.i.i ], [ %i.il, %.split.us.i.i.i.i.i112.i.i.i.i.i ]
  %i.jb = load i64, ptr %5, align 8, !tbaa !17
  %i.jc = mul i64 %i.jb, %.sink.i.i.i.i108.i.i.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !17
  %i.jf = mul i64 %i.je, %.sroa.5.1.le.i.sink.i.i.i.i107.i.i.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !378
  %i.ji = getelementptr [4 x i8], ptr %i.jh, i64 %i.jc
  %i.jj = getelementptr [4 x i8], ptr %i.ji, i64 %i.jf
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !81
  %i.jl = fcmp ult float %i.jk, 0.000000e+00
  br i1 %i.jl, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.jm = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jm, ptr noundef nonnull @.str.117, i32 noundef 187)
  %i.jn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.x

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %bb.w
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull @.str.123, i64 noundef 46)
          to label %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_12PoissonLabelEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %bb.w
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

bb.z:                                             ; preds = %bb.x
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #39
  unreachable

_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_12PoissonLabelEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread

bb.aa:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.js = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.js, ptr noundef nonnull @.str.119, i32 noundef 271)
  %i.jt = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.ac ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.aa
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, ptr noundef nonnull @.str.122, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  %.sroa.0.0.copyload.i28.i.i = load i32, ptr %i.c, align 8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i28.i.i to i16
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, i16 noundef signext %.sroa.0.0.extract.trunc.i.i)
          to label %bb.ab unwind label %bb.ad     ; 0 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread

bb.ac:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.aa
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i.i = phi { ptr, i32 } [ %i.jx, %bb.ad ], [ %i.jw, %bb.ac ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume

bb.ag:                                            ; preds = %bb.ae
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #39
  unreachable

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i
  %.sroa.014.0.in.sroa.speculated.i.i.i.i.i = phi i64 [ %.sroa.0124.1.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit100.i.i.i.i.i ], [ %.sroa.0124.0.lcssa.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit87.i.i.i.i.i ], [ %.sroa.0124.2.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i ], [ %i.eh, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i.thread ], [ %i.by, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i.thread ], [ %i.cr, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i.thread ], [ %.sroa.0124.0148.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i.thread ], [ %.sroa.0124.0148.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i.thread ], [ %.sroa.0124.0148.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.i ], [ %i.bp, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.i ], [ %i.dc, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i ], [ %i.ff, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit74.i.i.i.i.i ], [ %.sroa.0124.0148.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit.i.i.i.i.thread.i ], [ %i.ch, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit48.i.i.i.i.thread.i ], [ %i.dx, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.thread.i ], [ %i.dl, %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit61.i.i.i.i.i.thread ]
  %i.ka = icmp eq i64 %i.l, %.sroa.014.0.in.sroa.speculated.i.i.i.i.i
  br i1 %i.ka, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44, label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread: ; preds = %bb.ab, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_12PoissonLabelEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE0_clEv.exit.i.i, %_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS0_12PoissonLabelEEEvPKNS_7ContextERKNS_8MetaInfoEENKUlvE1_clEv.exit.i, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.kb = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.kb, ptr noundef nonnull @.str.109, i32 noundef 85)
  %i.kc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.ah

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef nonnull @.str.178, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44

bb.ah:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ar

_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelINS3_12PoissonLabelEEEvPKNS2_7ContextERKNS2_8MetaInfoEENKUlvE_clEvEUlfE_EclINS2_6common18IndexTransformIterIZNS2_6linalg6cbeginIKfLi2EEEDaRKNSJ_10TensorViewIT_XT0_EEEEUlmE_EEEEbSN_.exit113.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.kg = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kf)
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelINS2_12PoissonLabelEEEvPKS0_RKNS_8MetaInfoEEUlvE_ZNS4_IS5_EEvS7_SA_EUlvE0_ZNS4_IS5_EEvS7_SA_EUlvE1_EEDcOT_OT0_OT1_.exit.thread44
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ki = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kf) ; 2 uses
  store i64 %i.ki, ptr %i.a, align 8, !tbaa !17
  %i.kj = load i64, ptr %1, align 8, !tbaa !17, !noalias !1411
  %i.kk = icmp eq i64 %i.ki, %i.kj
  br i1 %i.kk, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.aj
end_hunk_8
