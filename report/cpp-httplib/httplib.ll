Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 103
begin_hunk_0_@"_ZNSt17_Function_handlerIFbPKcmmmEZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS3_6detail26insertion_ordered_multimapISA_NSD_11case_ignore8equal_toEEESC_SC_St8functionIFbS1_mEESK_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation":bb.a

bb.i:                                             ; preds = %bb.h
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %.body.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #48
  unreachable

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #46
  resume { ptr, i32 } %i.g

"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E15_M_init_functorIRKSP_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.g, %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit"

bb.k:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !183 ; 5 uses
  %i.l = icmp eq ptr %.val7.i, null
  br i1 %i.l, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %"_ZZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS6_NS9_11case_ignore8equal_toEEES8_S8_St8functionIFbPKcmEESG_IFbmmEEEN3$_0D2Ev.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, i32 noundef 3)
          to label %"_ZZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS6_NS9_11case_ignore8equal_toEEES8_S8_St8functionIFbPKcmEESG_IFbmmEEEN3$_0D2Ev.exit.i.i" unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #48
  unreachable

"_ZZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS6_NS9_11case_ignore8equal_toEEES8_S8_St8functionIFbPKcmEESG_IFbmmEEEN3$_0D2Ev.exit.i.i": ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit": ; preds = %"_ZZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS6_NS9_11case_ignore8equal_toEEES8_S8_St8functionIFbPKcmEESG_IFbmmEEEN3$_0D2Ev.exit.i.i", %bb.k, %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl3PutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E15_M_init_functorIRKSP_EEvRSt9_Any_dataOT_.exit.i", %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKcmmmEZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS3_6detail26insertion_ordered_multimapISA_NSD_11case_ignore8equal_toEEESC_SC_St8functionIFbS1_mEESK_IFbmmEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_OmSV_SV_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree nonnull readonly align 8 captures(none) %3, ptr nofree nonnull readonly align 8 captures(none) %4) #7 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !183   ; 3 uses
  %.val5 = load ptr, ptr %1, align 8, !tbaa !310
  %.val6 = load i64, ptr %2, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.val5, ptr %i.a, align 8, !tbaa !310
  store i64 %.val6, ptr %i.b, align 8, !tbaa !190
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !256
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIbRZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_6detail26insertion_ordered_multimapIS7_NSA_11case_ignore8equal_toEEES9_S9_St8functionIFbPKcmEESH_IFbmmEEE3$_0JSJ_mmmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

"_ZSt10__invoke_rIbRZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_6detail26insertion_ordered_multimapIS7_NSA_11case_ignore8equal_toEEES9_S9_St8functionIFbPKcmEESH_IFbmmEEE3$_0JSJ_mmmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !403
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !4028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKcmmmEZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS3_6detail26insertion_ordered_multimapISA_NSD_11case_ignore8equal_toEEESC_SC_St8functionIFbS1_mEESK_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS6_NS9_11case_ignore8equal_toEEES8_S8_St8functionIFbPKcmEESG_IFbmmEEE3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !183
  store ptr %.val, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit" [
    i32 3, label %bb.k
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #50 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val6, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E15_M_init_functorIRKSP_EEvRSt9_Any_dataOT_.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.val6, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !183
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E15_M_init_functorIRKSP_EEvRSt9_Any_dataOT_.exit.i"

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %.body.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #48
  unreachable

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #46
  resume { ptr, i32 } %i.g

"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E15_M_init_functorIRKSP_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.g, %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit"

bb.k:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !183 ; 5 uses
  %i.l = icmp eq ptr %.val7.i, null
  br i1 %i.l, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %"_ZZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS6_NS9_11case_ignore8equal_toEEES8_S8_St8functionIFbPKcmEESG_IFbmmEEEN3$_0D2Ev.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, i32 noundef 3)
          to label %"_ZZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS6_NS9_11case_ignore8equal_toEEES8_S8_St8functionIFbPKcmEESG_IFbmmEEEN3$_0D2Ev.exit.i.i" unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #48
  unreachable

"_ZZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS6_NS9_11case_ignore8equal_toEEES8_S8_St8functionIFbPKcmEESG_IFbmmEEEN3$_0D2Ev.exit.i.i": ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit": ; preds = %"_ZZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS6_NS9_11case_ignore8equal_toEEES8_S8_St8functionIFbPKcmEESG_IFbmmEEEN3$_0D2Ev.exit.i.i", %bb.k, %"_ZNSt14_Function_base13_Base_managerIZN7httplib10ClientImpl5PatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_6detail26insertion_ordered_multimapIS8_NSB_11case_ignore8equal_toEEESA_SA_St8functionIFbPKcmEESI_IFbmmEEE3$_0E15_M_init_functorIRKSP_EEvRSt9_Any_dataOT_.exit.i", %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(60) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !854  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !853    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
  unreachable

_ZNKSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #50 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !657
  store i32 %i.r, ptr %i.q, align 8, !tbaa !657
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !175
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !189  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !176  ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN7httplib6detail12NoProxyEntryC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !189
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !177
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !177
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !176
  br label %_ZN7httplib6detail12NoProxyEntryC2EOS1_.exit

_ZN7httplib6detail12NoProxyEntryC2EOS1_.exit:     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !176
  store ptr %i.w, ptr %i.t, align 8, !tbaa !189
  store i64 0, ptr %i.ae, align 8, !tbaa !176
  store i8 0, ptr %i.w, align 8, !tbaa !177
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ag, ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i64 20, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7httplib6detail12NoProxyEntryC2EOS1_.exit, %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN7httplib6detail12NoProxyEntryC2EOS1_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.az, %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN7httplib6detail12NoProxyEntryC2EOS1_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4036)
  %i.ai = load i32, ptr %.0911.i.i.i, align 8, !tbaa !657, !alias.scope !4036, !noalias !4035
  store i32 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !657, !alias.scope !4035, !noalias !4036
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !175, !alias.scope !4035, !noalias !4036
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !189, !alias.scope !4036, !noalias !4035 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !176, !alias.scope !4036, !noalias !4035 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !4037
  br label %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !189, !alias.scope !4035, !noalias !4036
  %i.at = load i64, ptr %i.an, align 8, !tbaa !177, !alias.scope !4036, !noalias !4035
  store i64 %i.at, ptr %i.al, align 8, !tbaa !177, !alias.scope !4035, !noalias !4036
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !176, !alias.scope !4036, !noalias !4035
  br label %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.au = phi i64 [ %i.aq, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !176, !alias.scope !4035, !noalias !4036
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !189, !alias.scope !4036, !noalias !4035
  store i64 0, ptr %i.av, align 8, !tbaa !176, !alias.scope !4036, !noalias !4035
  store i8 0, ptr %i.an, align 8, !tbaa !177, !alias.scope !4036, !noalias !4035
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ax, ptr noundef nonnull align 8 dereferenceable(20) %i.ay, i64 20, i1 false), !alias.scope !4037
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !81

_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN7httplib6detail12NoProxyEntryC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN7httplib6detail12NoProxyEntryC2EOS1_.exit ], [ %i.ba, %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.bb, %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bt, %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4039)
  %i.bc = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !657, !alias.scope !4039, !noalias !4038
  store i32 %i.bc, ptr %.012.i.i.i18, align 8, !tbaa !657, !alias.scope !4038, !noalias !4039
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !175, !alias.scope !4038, !noalias !4039
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !189, !alias.scope !4039, !noalias !4038 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !176, !alias.scope !4039, !noalias !4038 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !4040
  br label %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !189, !alias.scope !4038, !noalias !4039
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !177, !alias.scope !4039, !noalias !4038
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !177, !alias.scope !4038, !noalias !4039
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !176, !alias.scope !4039, !noalias !4038
  br label %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bo = phi i64 [ %i.bk, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !176, !alias.scope !4038, !noalias !4039
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !189, !alias.scope !4039, !noalias !4038
  store i64 0, ptr %i.bp, align 8, !tbaa !176, !alias.scope !4039, !noalias !4038
  store i8 0, ptr %i.bh, align 8, !tbaa !177, !alias.scope !4039, !noalias !4038
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.br, ptr noundef nonnull align 8 dereferenceable(20) %i.bs, i64 20, i1 false), !alias.scope !4040
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bt, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !81

_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26: ; preds = %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bb, %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bu, %_ZSt19__relocate_object_aIN7httplib6detail12NoProxyEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN7httplib6detail12NoProxyEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !855
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.by) #46
  br label %_ZNSt12_Vector_baseIN7httplib6detail12NoProxyEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7httplib6detail12NoProxyEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7httplib6detail12NoProxyEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !853
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !854
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !855
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7httplib9SSLServer24process_and_close_socketEiE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !183   ; 6 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !4042, !nonnull !192
  %i.b = load i8, ptr %i.a, align 1, !tbaa !301, !range !191, !noundef !192
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN7httplib3tls8shutdownEPvb.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4043, !nonnull !192, !align !253
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !183  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4044, !nonnull !192
  %i.i = load i8, ptr %i.h, align 1, !tbaa !301, !range !191, !noundef !192
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN7httplib3tls8shutdownEPvb.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !4045, !nonnull !192
  %i.m = load i8, ptr %i.l, align 1, !tbaa !301, !range !191, !noundef !192
  %i.n = trunc nuw i8 %i.m to i1
  %.not.i.i.i.i = icmp ne ptr %i.f, null
  %brmerge.not.i.i.i.i = and i1 %.not.i.i.i.i, %i.n
  br i1 %brmerge.not.i.i.i.i, label %bb.d, label %_ZN7httplib3tls8shutdownEPvb.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @SSL_shutdown(ptr noundef nonnull %i.f)
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvvEZN7httplib9SSLClient14initialize_sslERNS1_10ClientImpl6SocketERNS1_5ErrorEE3$_0E9_M_invokeERKSt9_Any_data"
define internal void @"_ZNSt17_Function_handlerIFvvEZN7httplib9SSLClient14initialize_sslERNS1_10ClientImpl6SocketERNS1_5ErrorEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !4065
  %.val.val = load i8, ptr %.val, align 1, !tbaa !301, !range !191, !noundef !192
  %i.a = trunc nuw i8 %.val.val to i1
  br i1 %i.a, label %"_ZSt10__invoke_rIvRZN7httplib9SSLClient14initialize_sslERNS0_10ClientImpl6SocketERNS0_5ErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8
  %i.c = load ptr, ptr %.val1, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIvRZN7httplib9SSLClient14initialize_sslERNS0_10ClientImpl6SocketERNS0_5ErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SSL_free(ptr noundef nonnull %i.c)
  br label %"_ZSt10__invoke_rIvRZN7httplib9SSLClient14initialize_sslERNS0_10ClientImpl6SocketERNS0_5ErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIvRZN7httplib9SSLClient14initialize_sslERNS0_10ClientImpl6SocketERNS0_5ErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7httplib9SSLClient14initialize_sslERNS1_10ClientImpl6SocketERNS1_5ErrorEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib9SSLClient14initialize_sslERNS1_10ClientImpl6SocketERNS1_5ErrorEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib9SSLClient14initialize_sslERNS_10ClientImpl6SocketERNS_5ErrorEE3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib9SSLClient14initialize_sslERNS1_10ClientImpl6SocketERNS1_5ErrorEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib9SSLClient14initialize_sslERNS1_10ClientImpl6SocketERNS1_5ErrorEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !4066
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib9SSLClient14initialize_sslERNS1_10ClientImpl6SocketERNS1_5ErrorEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib9SSLClient14initialize_sslERNS1_10ClientImpl6SocketERNS1_5ErrorEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7httplib3tls19connect_nonblockingEPvillPNS2_8TlsErrorEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4068, !nonnull !192, !align !253
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !561  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZN7httplib3tls19connect_nonblockingEPvillPNS1_8TlsErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.b, i32 noundef 102, i64 noundef 0, ptr noundef null) ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN7httplib3tls19connect_nonblockingEPvillPNS1_8TlsErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

"_ZSt10__invoke_rIvRZN7httplib3tls19connect_nonblockingEPvillPNS1_8TlsErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4069, !nonnull !192, !align !1216
  %i.f = load i32, ptr %i.e, align 4, !tbaa !266  ; 2 uses
  %i.g = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.f, i32 noundef 3, i32 noundef 0)
  %i.h = and i32 %i.g, -2049
  %i.i = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.f, i32 noundef 4, i32 noundef %i.h) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7httplib3tls19connect_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls19connect_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib3tls19connect_nonblockingEPvillPNS0_8TlsErrorEE3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls19connect_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls19connect_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1295
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls19connect_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls19connect_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7httplib3tls18accept_nonblockingEPvillPNS2_8TlsErrorEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4071, !nonnull !192, !align !253
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !561  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZN7httplib3tls18accept_nonblockingEPvillPNS1_8TlsErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.b, i32 noundef 102, i64 noundef 0, ptr noundef null) ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN7httplib3tls18accept_nonblockingEPvillPNS1_8TlsErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

"_ZSt10__invoke_rIvRZN7httplib3tls18accept_nonblockingEPvillPNS1_8TlsErrorEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4072, !nonnull !192, !align !1216
  %i.f = load i32, ptr %i.e, align 4, !tbaa !266  ; 2 uses
  %i.g = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.f, i32 noundef 3, i32 noundef 0)
  %i.h = and i32 %i.g, -2049
  %i.i = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.f, i32 noundef 4, i32 noundef %i.h) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7httplib3tls18accept_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls18accept_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib3tls18accept_nonblockingEPvillPNS0_8TlsErrorEE3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls18accept_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls18accept_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1295
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls18accept_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls18accept_nonblockingEPvillPNS2_8TlsErrorEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7httplib3tls14is_peer_closedEPviE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !4074
  %.val.val = load i32, ptr %.val, align 4, !tbaa !266 ; 2 uses
  %i.a = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %.val.val, i32 noundef 3, i32 noundef 0)
  %i.b = and i32 %i.a, -2049
  %i.c = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %.val.val, i32 noundef 4, i32 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7httplib3tls14is_peer_closedEPviE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls14is_peer_closedEPviE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib3tls14is_peer_closedEPviE3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls14is_peer_closedEPviE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls14is_peer_closedEPviE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !473
  store i64 %.val.i, ptr %0, align 8, !tbaa !473
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls14is_peer_closedEPviE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls14is_peer_closedEPviE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !928  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !927    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7httplib3tls8SanEntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
  unreachable

_ZNKSt6vectorIN7httplib3tls8SanEntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #50 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !931
  store i32 %i.r, ptr %i.q, align 8, !tbaa !931
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !175
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !189  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN7httplib3tls8SanEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !176  ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN7httplib3tls8SanEntryC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN7httplib3tls8SanEntryESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !189
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !177
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !177
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !176
  br label %_ZN7httplib3tls8SanEntryC2EOS1_.exit

_ZN7httplib3tls8SanEntryC2EOS1_.exit:             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !176
  store ptr %i.w, ptr %i.t, align 8, !tbaa !189
  store i64 0, ptr %i.ae, align 8, !tbaa !176
  store i8 0, ptr %i.w, align 8, !tbaa !177
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7httplib3tls8SanEntryC2EOS1_.exit, %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN7httplib3tls8SanEntryC2EOS1_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN7httplib3tls8SanEntryC2EOS1_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4083)
  %i.ag = load i32, ptr %.0911.i.i.i, align 8, !tbaa !931, !alias.scope !4083, !noalias !4082
  store i32 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !931, !alias.scope !4082, !noalias !4083
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !175, !alias.scope !4082, !noalias !4083
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !189, !alias.scope !4083, !noalias !4082 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !176, !alias.scope !4083, !noalias !4082 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !4084
  br label %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !189, !alias.scope !4082, !noalias !4083
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !177, !alias.scope !4083, !noalias !4082
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !177, !alias.scope !4082, !noalias !4083
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !176, !alias.scope !4083, !noalias !4082
  br label %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.as, ptr %i.au, align 8, !tbaa !176, !alias.scope !4082, !noalias !4083
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !189, !alias.scope !4083, !noalias !4082
  store i64 0, ptr %i.at, align 8, !tbaa !176, !alias.scope !4083, !noalias !4082
  store i8 0, ptr %i.al, align 8, !tbaa !177, !alias.scope !4083, !noalias !4082
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4078

_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN7httplib3tls8SanEntryC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN7httplib3tls8SanEntryC2EOS1_.exit ], [ %i.aw, %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ax, %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4086)
  %i.ay = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !931, !alias.scope !4086, !noalias !4085
  store i32 %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !931, !alias.scope !4085, !noalias !4086
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !175, !alias.scope !4085, !noalias !4086
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !189, !alias.scope !4086, !noalias !4085 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !176, !alias.scope !4086, !noalias !4085 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !4087
  br label %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !189, !alias.scope !4085, !noalias !4086
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !177, !alias.scope !4086, !noalias !4085
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !177, !alias.scope !4085, !noalias !4086
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !176, !alias.scope !4086, !noalias !4085
  br label %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bk = phi i64 [ %i.bg, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !176, !alias.scope !4085, !noalias !4086
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !189, !alias.scope !4086, !noalias !4085
  store i64 0, ptr %i.bl, align 8, !tbaa !176, !alias.scope !4086, !noalias !4085
  store i8 0, ptr %i.bd, align 8, !tbaa !177, !alias.scope !4086, !noalias !4085
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !4078

_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26: ; preds = %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bo, %_ZSt19__relocate_object_aIN7httplib3tls8SanEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN7httplib3tls8SanEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !932
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #46
  br label %_ZNSt12_Vector_baseIN7httplib3tls8SanEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7httplib3tls8SanEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7httplib3tls8SanEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !927
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !928
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !932
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7httplib3tls17get_cert_validityEPvRlS4_E3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !4089
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !934
  tail call void @ASN1_TIME_free(ptr noundef %.val.val)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7httplib3tls17get_cert_validityEPvRlS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls17get_cert_validityEPvRlS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib3tls17get_cert_validityEPvRlS2_E3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls17get_cert_validityEPvRlS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls17get_cert_validityEPvRlS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !4090
  store i64 %.val.i, ptr %0, align 8, !tbaa !4090
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls17get_cert_validityEPvRlS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib3tls17get_cert_validityEPvRlS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @ASN1_TIME_free(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
