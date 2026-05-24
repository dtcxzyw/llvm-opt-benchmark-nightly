inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_:bb.a
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i: ; preds = %bb.b
  %i.s = load i64, ptr %i.q, align 8, !tbaa !70
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.o

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_EUlRKNS_5ArrayElPSoE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(76) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(41) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(76) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::chrono::time_point", align 4 ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !674
  %.val4 = load i64, ptr %2, align 8, !tbaa !408
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52
  %i.b = getelementptr inbounds [4 x i8], ptr %.val, i64 %.val4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 %i.c, ptr %5, align 4
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIiSt5ratioILl86400ELl1EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.d = load ptr, ptr %4, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !70
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !70
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.m

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_EUlRKNS_5ArrayElPSoE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIiSt5ratioILl86400ELl1EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !684
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !684
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !684
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !684 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !684   ; 2 uses
  %6 = icmp ugt ptr %i.l, %5
  %.08.i.i.i = select i1 %6, ptr %i.l, ptr %5
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !687, !noalias !684 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !684 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !684
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !446
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !446
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #26
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.al) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::chrono::duration.160", align 8 ; 5 uses
  %5 = alloca %"struct.arrow_vendored::date::fields", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.9, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %2, align 4, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.g = add nsw i32 %.sroa.0.0.copyload.i.i, 719468 ; 2 uses
  %i.h = icmp sgt i32 %.sroa.0.0.copyload.i.i, -719469
  %i.i = add nsw i32 %.sroa.0.0.copyload.i.i, 573372
  %i.j = select i1 %i.h, i32 %i.g, i32 %i.i
  %i.k = sdiv i32 %i.j, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.k, -146097
  %i.l = add i32 %.neg.i.i, %i.g                  ; 5 uses
  %i.m = udiv i32 %i.l, 1460
  %i.n = udiv i32 %i.l, 36524
  %i.o = udiv i32 %i.l, 146096
  %.neg94 = add i32 %i.n, %i.l
  %i.p = add nuw nsw i32 %i.o, %i.m
  %i.q = sub i32 %.neg94, %i.p                    ; 3 uses
  %i.r = udiv i32 %i.q, 365                       ; 2 uses
  %i.s = mul nsw i32 %i.k, 400
  %i.t = add nsw i32 %i.r, %i.s
  %i.u = udiv i32 %i.q, 1460
  %i.v = udiv i32 %i.q, 36500
  %.neg36.i.i = mul i32 %i.r, -365
  %.neg37.i.i = sub i32 %i.l, %i.u
  %.neg25.i.i = add i32 %.neg37.i.i, %i.v
  %i.w = add i32 %.neg25.i.i, %.neg36.i.i         ; 2 uses
  %i.x = mul i32 %i.w, 5
  %i.y = add i32 %i.x, 2                          ; 2 uses
  %i.z = udiv i32 %i.y, 153                       ; 2 uses
  %i.aa = mul nuw i32 %i.z, 153
  %i.ab = add nuw i32 %i.aa, 2
  %i.ac = udiv i32 %i.ab, 5
  %i.ad = sub i32 %i.w, %i.ac
  %i.ae = icmp ult i32 %i.y, 1530
  %.v.i.i = select i1 %i.ae, i32 3, i32 -9
  %i.af = add nsw i32 %.v.i.i, %i.z               ; 2 uses
  %i.ag = icmp ult i32 %i.af, 3
  %i.ah = zext i1 %i.ag to i32
  %i.ai = add nsw i32 %i.t, %i.ah
  %i.aj = shl i32 %i.ad, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.aj, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.af, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.ai, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  store i32 %.sroa.030.0.insert.insert.i.i, ptr %5, align 8
  store i8 8, ptr %i.d, align 4, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.e, i8 0, i64 33, i1 false)
  store i8 1, ptr %i.f, align 8, !tbaa !560
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.am = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ao = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !70
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %i.ak

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.a
  %i.as = load i64, ptr %i.a, align 8, !tbaa !70
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
end_hunk_0
begin_hunk_1_@_Znwm

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !177  ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !376

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #29
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !102
  store i64 %.0, ptr %i.d, align 8, !tbaa !70
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !177
  store i8 0, ptr %i.c, align 1, !tbaa !70
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !70
  store i8 %i.s, ptr %i.q, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !177
  %i.u = load ptr, ptr %0, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::chrono::time_point.174", align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !752
  %.val4 = load i64, ptr %2, align 8, !tbaa !408
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52
  %i.b = getelementptr inbounds [8 x i8], ptr %.val, i64 %.val4
  %i.c = load i64, ptr %i.b, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.c, ptr %5, align 8
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.d = load ptr, ptr %4, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !70
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !70
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.m

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_EUlRKNS_5ArrayElPSoE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !760
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !760
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !760
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !760 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !760   ; 2 uses
  %6 = icmp ugt ptr %i.l, %5
  %.08.i.i.i = select i1 %6, ptr %i.l, ptr %5
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !687, !noalias !760 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !760 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !760
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !446
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !446
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #26
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.al) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::chrono::duration.160", align 8 ; 5 uses
  %5 = alloca %"struct.arrow_vendored::date::fields.175", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.9, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !408 ; 4 uses
  %i.d = sdiv i64 %.sroa.0.0.copyload.i.i, 86400000 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %sext = shl i64 %i.d, 32
  %i.i = ashr exact i64 %sext, 32                 ; 3 uses
  %i.j = mul nsw i64 %i.i, 86400000
  %.not = icmp sgt i64 %i.j, %.sroa.0.0.copyload.i.i
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.k = add nsw i32 %i.e, 719468                 ; 2 uses
  %i.l = icmp sgt i32 %i.e, -719469
  %i.m = add nsw i32 %i.e, 573372
  %i.n = select i1 %i.l, i32 %i.k, i32 %i.m
  %i.o = sdiv i32 %i.n, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.o, -146097
  %i.p = add i32 %.neg.i.i, %i.k                  ; 5 uses
  %i.q = udiv i32 %i.p, 1460
  %i.r = udiv i32 %i.p, 36524
  %i.s = udiv i32 %i.p, 146096
  %.neg97 = add i32 %i.r, %i.p
  %i.t = add nuw nsw i32 %i.s, %i.q
  %i.u = sub i32 %.neg97, %i.t                    ; 3 uses
  %i.v = udiv i32 %i.u, 365                       ; 2 uses
  %i.w = mul nsw i32 %i.o, 400
  %i.x = add nsw i32 %i.v, %i.w
  %i.y = udiv i32 %i.u, 1460
  %i.z = udiv i32 %i.u, 36500
  %.neg36.i.i = mul i32 %i.v, -365
  %.neg37.i.i = sub i32 %i.p, %i.y
  %.neg25.i.i = add i32 %.neg37.i.i, %i.z
  %i.aa = add i32 %.neg25.i.i, %.neg36.i.i        ; 2 uses
  %i.ab = mul i32 %i.aa, 5
  %i.ac = add i32 %i.ab, 2                        ; 2 uses
  %i.ad = udiv i32 %i.ac, 153                     ; 2 uses
  %i.ae = mul nuw i32 %i.ad, 153
  %i.af = add nuw i32 %i.ae, 2
  %i.ag = udiv i32 %i.af, 5
  %i.ah = sub i32 %i.aa, %i.ag
  %i.ai = icmp ult i32 %i.ac, 1530
  %.v.i.i = select i1 %i.ai, i32 3, i32 -9
  %i.aj = add nsw i32 %.v.i.i, %i.ad              ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 3
  %i.al = zext i1 %i.ak to i32
  %i.am = add nsw i32 %i.x, %i.al
  %i.an = shl i32 %i.ah, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.an, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.aj, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.am, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  %.neg.i.i27 = mul nsw i64 %i.i, -86400000
  %i.ao = add i64 %.neg.i.i27, %.sroa.0.0.copyload.i.i
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aq = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.as = add nsw i32 %i.e, 719467                ; 2 uses
  %i.at = icmp sgt i32 %i.e, -719468
  %i.au = add nsw i32 %i.e, 573371
  %i.av = select i1 %i.at, i32 %i.as, i32 %i.au
  %i.aw = sdiv i32 %i.av, 146097                  ; 2 uses
  %.neg.i.i30 = mul nsw i32 %i.aw, -146097
  %i.ax = add i32 %.neg.i.i30, %i.as              ; 5 uses
  %i.ay = udiv i32 %i.ax, 1460
  %i.az = udiv i32 %i.ax, 36524
  %i.ba = udiv i32 %i.ax, 146096
  %.neg101 = add i32 %i.az, %i.ax
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = sub i32 %.neg101, %i.bb                 ; 3 uses
  %i.bd = udiv i32 %i.bc, 365                     ; 2 uses
  %i.be = mul nsw i32 %i.aw, 400
  %i.bf = add nsw i32 %i.bd, %i.be
  %i.bg = udiv i32 %i.bc, 1460
  %i.bh = udiv i32 %i.bc, 36500
  %.neg36.i.i32 = mul i32 %i.bd, -365
  %.neg37.i.i33 = sub i32 %i.ax, %i.bg
  %.neg25.i.i34 = add i32 %.neg37.i.i33, %i.bh
  %i.bi = add i32 %.neg25.i.i34, %.neg36.i.i32    ; 2 uses
  %i.bj = mul i32 %i.bi, 5
  %i.bk = add i32 %i.bj, 2                        ; 2 uses
  %i.bl = udiv i32 %i.bk, 153                     ; 2 uses
  %i.bm = mul nuw i32 %i.bl, 153
  %i.bn = add nuw i32 %i.bm, 2
  %i.bo = udiv i32 %i.bn, 5
  %i.bp = sub i32 %i.bi, %i.bo
  %i.bq = icmp ult i32 %i.bk, 1530
  %.v.i.i35 = select i1 %i.bq, i32 3, i32 -9
  %i.br = add nsw i32 %.v.i.i35, %i.bl            ; 2 uses
  %i.bs = icmp ult i32 %i.br, 3
  %i.bt = zext i1 %i.bs to i32
  %i.bu = add nsw i32 %i.bf, %i.bt
  %i.bv = shl i32 %i.bp, 24
  %.sroa.3.0.insert.ext.i.i36 = add i32 %i.bv, 16777216
  %.sroa.2.0.insert.ext.i.i37 = shl i32 %i.br, 16
  %.sroa.2.0.insert.shift.i.i38 = and i32 %.sroa.2.0.insert.ext.i.i37, 16711680
  %.sroa.2.0.insert.insert.i.i39 = or disjoint i32 %.sroa.3.0.insert.ext.i.i36, %.sroa.2.0.insert.shift.i.i38
  %.sroa.030.0.insert.ext.i.i40 = and i32 %i.bu, 65535
  %.sroa.030.0.insert.insert.i.i41 = or disjoint i32 %.sroa.2.0.insert.insert.i.i39, %.sroa.030.0.insert.ext.i.i40
  %.neg94 = mul nsw i64 %i.i, -86400000
  %.neg = add nsw i64 %.sroa.0.0.copyload.i.i, 86400000
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_13TimestampTypeELb1EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store i64 %i.e, ptr %11, align 8
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %.val4, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %i.ay = load ptr, ptr %10, align 8, !tbaa !102
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !177
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val8, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36.i.i.i unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36.i.i.i: ; preds = %bb.h
  %i.bc = load ptr, ptr %10, align 8, !tbaa !102  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36.i.i.i
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !70
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_13TimestampTypeELb1EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit

bb.i:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %10, align 8, !tbaa !102  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i.i: ; preds = %bb.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !70
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i ]
  resume { ptr, i32 } %.pn.i.i.i

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_13TimestampTypeELb1EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_13TimestampTypeELb1EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.j
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS7_lS8_E_, ptr %0, align 8, !tbaa !777
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !237
  store ptr %.val, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %.val7.i = load ptr, ptr %.val6, align 8        ; 2 uses
  %i.a = getelementptr i8, ptr %.val6, i64 8
  %.val8.i = load i64, ptr %i.a, align 8          ; 8 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !176
  %i.d = icmp ugt i64 %.val8.i, 15
  br i1 %i.d, label %bb.e, label %._crit_edge.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.e = icmp slt i64 %.val8.i, 0
  br i1 %i.e, label %.noexc.i.i.i.i.i, label %bb.f

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #30
          to label %.noexc.i.i.i unwind label %bb.i

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.f = add nuw i64 %.val8.i, 1                  ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !376

.noexc6.i.i.i.i.i:                                ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc3.i.i.i unwind label %bb.i

.noexc3.i.i.i:                                    ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
          to label %.noexc4.i.i.i unwind label %bb.i ; 2 uses

.noexc4.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !102
  store i64 %.val8.i, ptr %i.c, align 8, !tbaa !70
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc4.i.i.i, %bb.d
  %i.i = phi ptr [ %i.h, %.noexc4.i.i.i ], [ %i.c, %bb.d ] ; 3 uses
  switch i64 %.val8.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.j = load i8, ptr %.val7.i, align 1, !tbaa !70
  store i8 %i.j, ptr %i.i, align 1, !tbaa !70
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %.val7.i, i64 %.val8.i, i1 false)
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #29
  resume { ptr, i32 } %i.k

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val8.i, ptr %i.l, align 8, !tbaa !177
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.val8.i
  store i8 0, ptr %i.m, align 1, !tbaa !70
  store ptr %i.b, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.j:                                             ; preds = %bb.a
  %.val9.i = load ptr, ptr %0, align 8, !tbaa !237 ; 4 uses
  %i.n = icmp eq ptr %.val9.i, null
  br i1 %i.n, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr %.val9.i, align 8, !tbaa !102 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.r = load i64, ptr %i.p, align 8, !tbaa !70
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val9.i, i64 noundef 32) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit: ; preds = %bb.a, %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i, %bb.j, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !785
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !785
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !785
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !785 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !785   ; 2 uses
  %6 = icmp ugt ptr %i.l, %5
  %.08.i.i.i = select i1 %6, ptr %i.l, ptr %5
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !687, !noalias !785 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !785 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !785
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !446
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !446
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #26
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.al) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !792
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !792
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !792
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !792 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !792   ; 2 uses
  %6 = icmp ugt ptr %i.l, %5
  %.08.i.i.i = select i1 %6, ptr %i.l, ptr %5
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !687, !noalias !792 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !792 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !792
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !446
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !446
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #26
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.al) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !799
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !799
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !799
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !799 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8, !noalias !799   ; 2 uses
  %6 = icmp ugt ptr %i.l, %5
  %.08.i.i.i = select i1 %6, ptr %i.l, ptr %5
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !687, !noalias !799 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !799 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !799
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !446
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !446
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !446
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #26
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.al) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::chrono::duration.160", align 8 ; 5 uses
  %5 = alloca %"struct.arrow_vendored::date::fields.188", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.9, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !408 ; 4 uses
  %i.d = sdiv i64 %.sroa.0.0.copyload.i.i, 86400000000000 ; 4 uses
  %i.e = trunc nsw i64 %i.d to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.i = mul nsw i64 %i.d, 86400000000000
  %.not = icmp sgt i64 %i.i, %.sroa.0.0.copyload.i.i
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = add nsw i32 %i.e, 719468                 ; 2 uses
  %i.k = udiv i32 %i.j, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.k, -146097
  %i.l = add nsw i32 %.neg.i.i, %i.j              ; 5 uses
  %i.m = udiv i32 %i.l, 1460
  %i.n = udiv i32 %i.l, 36524
  %i.o = udiv i32 %i.l, 146096
  %.neg97 = add nsw i32 %i.n, %i.l
  %i.p = add nuw nsw i32 %i.o, %i.m
  %i.q = sub nsw i32 %.neg97, %i.p                ; 3 uses
  %i.r = udiv i32 %i.q, 365                       ; 2 uses
  %i.s = mul nuw nsw i32 %i.k, 400
  %i.t = add nuw nsw i32 %i.r, %i.s
  %i.u = udiv i32 %i.q, 1460
  %i.v = udiv i32 %i.q, 36500
  %.neg36.i.i = mul i32 %i.r, -365
  %.neg37.i.i = sub nsw i32 %i.l, %i.u
  %.neg25.i.i = add nsw i32 %.neg37.i.i, %i.v
  %i.w = add i32 %.neg25.i.i, %.neg36.i.i         ; 2 uses
  %i.x = mul i32 %i.w, 5
  %i.y = add i32 %i.x, 2                          ; 2 uses
  %i.z = udiv i32 %i.y, 153                       ; 2 uses
  %i.aa = mul nuw i32 %i.z, 153
  %i.ab = add nuw i32 %i.aa, 2
  %i.ac = udiv i32 %i.ab, 5
  %i.ad = sub i32 %i.w, %i.ac
  %i.ae = icmp ult i32 %i.y, 1530
  %.v.i.i = select i1 %i.ae, i32 3, i32 -9
  %i.af = add nsw i32 %.v.i.i, %i.z               ; 2 uses
  %i.ag = icmp ult i32 %i.af, 3
  %i.ah = zext i1 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.t, %i.ah
  %i.aj = shl i32 %i.ad, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.aj, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.af, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.ai, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  %.neg.i.i27 = mul nsw i64 %i.d, -86400000000000
  %i.ak = add i64 %.neg.i.i27, %.sroa.0.0.copyload.i.i
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.am = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ao = add nsw i32 %i.e, 719467                ; 2 uses
  %i.ap = udiv i32 %i.ao, 146097                  ; 2 uses
  %.neg.i.i30 = mul nsw i32 %i.ap, -146097
  %i.aq = add nsw i32 %.neg.i.i30, %i.ao          ; 5 uses
  %i.ar = udiv i32 %i.aq, 1460
  %i.as = udiv i32 %i.aq, 36524
  %i.at = udiv i32 %i.aq, 146096
  %.neg101 = add nsw i32 %i.as, %i.aq
  %i.au = add nuw nsw i32 %i.at, %i.ar
  %i.av = sub nsw i32 %.neg101, %i.au             ; 3 uses
  %i.aw = udiv i32 %i.av, 365                     ; 2 uses
  %i.ax = mul nuw nsw i32 %i.ap, 400
  %i.ay = add nuw nsw i32 %i.aw, %i.ax
  %i.az = udiv i32 %i.av, 1460
  %i.ba = udiv i32 %i.av, 36500
  %.neg36.i.i32 = mul i32 %i.aw, -365
  %.neg37.i.i33 = sub nsw i32 %i.aq, %i.az
  %.neg25.i.i34 = add nsw i32 %.neg37.i.i33, %i.ba
  %i.bb = add i32 %.neg25.i.i34, %.neg36.i.i32    ; 2 uses
  %i.bc = mul i32 %i.bb, 5
  %i.bd = add i32 %i.bc, 2                        ; 2 uses
  %i.be = udiv i32 %i.bd, 153                     ; 2 uses
  %i.bf = mul nuw i32 %i.be, 153
  %i.bg = add nuw i32 %i.bf, 2
  %i.bh = udiv i32 %i.bg, 5
  %i.bi = sub i32 %i.bb, %i.bh
  %i.bj = icmp ult i32 %i.bd, 1530
  %.v.i.i35 = select i1 %i.bj, i32 3, i32 -9
  %i.bk = add nsw i32 %.v.i.i35, %i.be            ; 2 uses
  %i.bl = icmp ult i32 %i.bk, 3
  %i.bm = zext i1 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.ay, %i.bm
  %i.bo = shl i32 %i.bi, 24
  %.sroa.3.0.insert.ext.i.i36 = add i32 %i.bo, 16777216
  %.sroa.2.0.insert.ext.i.i37 = shl i32 %i.bk, 16
  %.sroa.2.0.insert.shift.i.i38 = and i32 %.sroa.2.0.insert.ext.i.i37, 16711680
  %.sroa.2.0.insert.insert.i.i39 = or disjoint i32 %.sroa.3.0.insert.ext.i.i36, %.sroa.2.0.insert.shift.i.i38
  %.sroa.030.0.insert.ext.i.i40 = and i32 %i.bn, 65535
  %.sroa.030.0.insert.insert.i.i41 = or disjoint i32 %.sroa.2.0.insert.insert.i.i39, %.sroa.030.0.insert.ext.i.i40
  %.neg94 = mul nsw i64 %i.d, -86400000000000
  %.neg = add i64 %.sroa.0.0.copyload.i.i, 86400000000000
  %i.bp = add i64 %.neg, %.neg94
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sink119 = phi i64 [ %i.bp, %bb.c ], [ %i.ak, %bb.a ] ; 2 uses
  %.sroa.030.0.insert.insert.i.i41.sink = phi i32 [ %.sroa.030.0.insert.insert.i.i41, %bb.c ], [ %.sroa.030.0.insert.insert.i.i, %bb.a ]
  %spec.select.i.i45 = call i64 @llvm.abs.i64(i64 %.sink119, i1 true) ; 3 uses
  %i.bq = udiv i64 %spec.select.i.i45, 3600000000000 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time32TypeELb0EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_:bb.a
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i: ; preds = %bb.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !70
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  resume { ptr, i32 } %.pn.i.i.i

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time32TypeELb0EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time32TypeELb0EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.j
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS7_lS8_E_, ptr %0, align 8, !tbaa !777
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !237
  store ptr %.val, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %.val7.i = load ptr, ptr %.val6, align 8        ; 2 uses
  %i.a = getelementptr i8, ptr %.val6, i64 8
  %.val8.i = load i64, ptr %i.a, align 8          ; 8 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !176
  %i.d = icmp ugt i64 %.val8.i, 15
  br i1 %i.d, label %bb.e, label %._crit_edge.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.e = icmp slt i64 %.val8.i, 0
  br i1 %i.e, label %.noexc.i.i.i.i.i, label %bb.f

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #30
          to label %.noexc.i.i.i unwind label %bb.i

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.f = add nuw i64 %.val8.i, 1                  ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !376

.noexc6.i.i.i.i.i:                                ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc3.i.i.i unwind label %bb.i

.noexc3.i.i.i:                                    ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
          to label %.noexc4.i.i.i unwind label %bb.i ; 2 uses

.noexc4.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !102
  store i64 %.val8.i, ptr %i.c, align 8, !tbaa !70
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc4.i.i.i, %bb.d
  %i.i = phi ptr [ %i.h, %.noexc4.i.i.i ], [ %i.c, %bb.d ] ; 3 uses
  switch i64 %.val8.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.j = load i8, ptr %.val7.i, align 1, !tbaa !70
  store i8 %i.j, ptr %i.i, align 1, !tbaa !70
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %.val7.i, i64 %.val8.i, i1 false)
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #29
  resume { ptr, i32 } %i.k

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val8.i, ptr %i.l, align 8, !tbaa !177
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.val8.i
  store i8 0, ptr %i.m, align 1, !tbaa !70
  store ptr %i.b, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.j:                                             ; preds = %bb.a
  %.val9.i = load ptr, ptr %0, align 8, !tbaa !237 ; 4 uses
  %i.n = icmp eq ptr %.val9.i, null
  br i1 %i.n, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr %.val9.i, align 8, !tbaa !102 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.r = load i64, ptr %i.p, align 8, !tbaa !70
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val9.i, i64 noundef 32) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit: ; preds = %bb.a, %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i, %bb.j, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::fields.188", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !408 ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i, i1 true) ; 3 uses
  %i.h = udiv i64 %spec.select.i.i.i, 3600000000000 ; 3 uses
  %i.i = udiv i64 %spec.select.i.i.i, 60000000000
  %.neg.i.i.i = mul nsw i64 %i.h, -60
  %i.j = add nsw i64 %.neg.i.i.i, %i.i            ; 2 uses
  %.neg.i7.i.i = mul nsw i64 %i.h, -3600000000000
  %i.k = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.j, -60000000000
  %i.l = add i64 %i.k, %.neg.i8.i.i               ; 2 uses
  %i.m = sdiv i64 %i.l, 1000000000                ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.m, -1000000000
  %i.n = add i64 %.neg.i.i.i.i, %i.l
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.o = trunc nuw nsw i64 %.lobit.i.i to i8
  store i32 32768, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 8, ptr %i.p, align 4, !tbaa !746
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.q, align 8, !tbaa !408
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.m, ptr %.sroa.56.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.n, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.o, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !560
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.r, align 8, !tbaa !800
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef null, ptr noundef null)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !176, !alias.scope !826
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !177, !alias.scope !826
  store i8 0, ptr %i.t, align 8, !tbaa !70, !alias.scope !826
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !685, !noalias !826 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.w, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %6 = load ptr, ptr %5, align 8, !noalias !826   ; 2 uses
  %7 = icmp ugt ptr %i.w, %6
  %.08.i.i.i = select i1 %7, ptr %i.w, ptr %6
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !687, !noalias !826 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !826 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.t
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !70, !alias.scope !826
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.aj = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !446
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %4, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !446
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ao, align 8, !tbaa !446
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !102 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !70
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ao, align 8, !tbaa !446
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.f ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::fields.194", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !408 ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i, i1 true) ; 3 uses
  %i.h = udiv i64 %spec.select.i.i.i, 3600000000  ; 3 uses
  %i.i = udiv i64 %spec.select.i.i.i, 60000000
  %.neg.i.i.i = mul nsw i64 %i.h, -60
  %i.j = add nsw i64 %.neg.i.i.i, %i.i            ; 2 uses
  %.neg.i7.i.i = mul nsw i64 %i.h, -3600000000
  %i.k = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.j, -60000000
  %i.l = add i64 %i.k, %.neg.i8.i.i               ; 2 uses
  %i.m = sdiv i64 %i.l, 1000000                   ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.m, -1000000
  %i.n = add i64 %.neg.i.i.i.i, %i.l
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.o = trunc nuw nsw i64 %.lobit.i.i to i8
  store i32 32768, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 8, ptr %i.p, align 4, !tbaa !746
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.q, align 8, !tbaa !408
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.m, ptr %.sroa.56.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.n, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.o, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !560
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.r, align 8, !tbaa !808
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef null, ptr noundef null)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !176, !alias.scope !833
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !177, !alias.scope !833
  store i8 0, ptr %i.t, align 8, !tbaa !70, !alias.scope !833
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !685, !noalias !833 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.w, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %6 = load ptr, ptr %5, align 8, !noalias !833   ; 2 uses
  %7 = icmp ugt ptr %i.w, %6
  %.08.i.i.i = select i1 %7, ptr %i.w, ptr %6
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !687, !noalias !833 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !833 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.t
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !70, !alias.scope !833
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.aj = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !446
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %4, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !446
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ao, align 8, !tbaa !446
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !102 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !70
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ao, align 8, !tbaa !446
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.f ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::fields.175", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !408 ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i, i1 true) ; 3 uses
  %i.h = udiv i64 %spec.select.i.i.i, 3600000     ; 3 uses
  %i.i = udiv i64 %spec.select.i.i.i, 60000
  %.neg.i.i.i = mul nsw i64 %i.h, -60
  %i.j = add nsw i64 %.neg.i.i.i, %i.i            ; 2 uses
  %.neg.i7.i.i = mul nsw i64 %i.h, -3600000
  %i.k = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.j, -60000
  %i.l = add i64 %i.k, %.neg.i8.i.i               ; 2 uses
  %i.m = sdiv i64 %i.l, 1000                      ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.m, -1000
  %i.n = add i64 %.neg.i.i.i.i, %i.l
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.o = trunc nuw nsw i64 %.lobit.i.i to i8
  store i32 32768, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 8, ptr %i.p, align 4, !tbaa !746
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.q, align 8, !tbaa !408
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.m, ptr %.sroa.56.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.n, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.o, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !560
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.r, align 8, !tbaa !761
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef null, ptr noundef null)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !176, !alias.scope !840
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !177, !alias.scope !840
  store i8 0, ptr %i.t, align 8, !tbaa !70, !alias.scope !840
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !685, !noalias !840 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.w, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %6 = load ptr, ptr %5, align 8, !noalias !840   ; 2 uses
  %7 = icmp ugt ptr %i.w, %6
  %.08.i.i.i = select i1 %7, ptr %i.w, ptr %6
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !687, !noalias !840 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !840 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.t
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !70, !alias.scope !840
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.aj = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !446
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %4, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !446
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ao, align 8, !tbaa !446
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !102 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !70
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ao, align 8, !tbaa !446
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.f ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::fields", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !408 ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i, i1 true) ; 3 uses
  %i.h = udiv i64 %spec.select.i.i.i, 3600        ; 3 uses
  %i.i = udiv i64 %spec.select.i.i.i, 60
  %.neg.i.i.i = mul nsw i64 %i.h, -60
  %i.j = add nsw i64 %.neg.i.i.i, %i.i            ; 2 uses
  %.neg.i7.i.i = mul nsw i64 %i.h, -3600
  %i.k = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.j, -60
  %i.l = add i64 %i.k, %.neg.i8.i.i
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.m = trunc nuw nsw i64 %.lobit.i.i to i8
  store i32 32768, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 8, ptr %i.n, align 4, !tbaa !746
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.o, align 8, !tbaa !408
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.l, ptr %.sroa.56.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.m, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !560
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.p, align 8, !tbaa !702
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef null, ptr noundef null)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !176, !alias.scope !847
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !177, !alias.scope !847
  store i8 0, ptr %i.r, align 8, !tbaa !70, !alias.scope !847
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !685, !noalias !847 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.u, null
  br i1 %.not5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %6 = load ptr, ptr %5, align 8, !noalias !847   ; 2 uses
  %7 = icmp ugt ptr %i.u, %6
  %.08.i.i.i = select i1 %7, ptr %i.u, ptr %6
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !687, !noalias !847 ; 2 uses
  %i.x = ptrtoint ptr %.08.i.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.w, i64 noundef %i.z)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !847 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !70, !alias.scope !847
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ah = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !446
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %4, i64 %i.ak
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !446
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8, !tbaa !446
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !102 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !70
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !446
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #26
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.au) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.f ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::chrono::duration.185", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::chrono::duration.187", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::chrono::duration.172", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::chrono::duration.160", align 8 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !237
  %.val4 = load ptr, ptr %.val, align 8, !tbaa !102 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.b = getelementptr i8, ptr %1, i64 40
  %.val6 = load ptr, ptr %i.b, align 8, !tbaa !848
  %.val7 = load i64, ptr %2, align 8, !tbaa !408
  %.val8 = load ptr, ptr %3, align 8, !tbaa !52   ; 4 uses
  %.val5.val = load ptr, ptr %.val5, align 8, !tbaa !225
  %i.c = getelementptr i8, ptr %.val5.val, i64 72
  %.val5.val.val = load i32, ptr %i.c, align 8, !tbaa !818
  %i.d = getelementptr inbounds [8 x i8], ptr %.val6, i64 %.val7
  %i.e = load i64, ptr %i.d, align 8, !tbaa !408  ; 4 uses
  switch i32 %.val5.val.val, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit [
    i32 3, label %bb.b
    i32 2, label %bb.d
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.e, ptr %5, align 8, !tbaa !807
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %.val4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.f = load ptr, ptr %4, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !177
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val8, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.b
  %i.j = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !70
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !70
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 %i.e, ptr %7, align 8, !tbaa !815
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %.val4, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.u = load ptr, ptr %6, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !177
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val8, ptr noundef %i.u, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19.i.i.i unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19.i.i.i: ; preds = %bb.d
  %i.y = load ptr, ptr %6, align 8, !tbaa !102    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !70
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !70
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 %i.e, ptr %9, align 8, !tbaa !769
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %.val4, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.aj = load ptr, ptr %8, align 8, !tbaa !102
end_hunk_3
