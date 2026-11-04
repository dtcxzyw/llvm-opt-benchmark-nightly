Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl?download=true
inline.NumInlined: 5730
inline.NumDeleted: 3094
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #35
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_88NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS9_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.729", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !93
  store i8 0, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %1, align 8, !tbaa !22
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %i.c, i32 noundef %2, ptr noundef %3) #31
  br i1 %i.d, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_88NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS9_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %.val = load ptr, ptr %4, align 8, !tbaa !92    ; 2 uses
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !90, !alias.scope !738
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %.val3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %.val, ptr noundef %i.f) #30
          to label %"_ZZL31nanobind_test_stl_ext_exec_implN8nanobind7module_EENK4$_88clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit" unwind label %bb.d

"_ZZL31nanobind_test_stl_ext_exec_implN8nanobind7module_EENK4$_88clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit": ; preds = %bb.b
  %i.g = load ptr, ptr %5, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !93
  %i.j = invoke ptr @PyUnicode_FromStringAndSize(ptr noundef %i.g, i64 noundef %i.i) #30
          to label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.c

bb.c:                                             ; preds = %"_ZZL31nanobind_test_stl_ext_exec_implN8nanobind7module_EENK4$_88clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit"
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #35
  unreachable

_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %"_ZZL31nanobind_test_stl_ext_exec_implN8nanobind7module_EENK4$_88clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit"
  %i.m = load ptr, ptr %5, align 8, !tbaa !92     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit
  %i.o = load i64, ptr %i.e, align 8, !tbaa !25
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_88NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS9_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.r = load ptr, ptr %4, align 8, !tbaa !92     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.a, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #36
  br label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit

_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.q

"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_88NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS9_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit": ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.v = load ptr, ptr %4, align 8, !tbaa !92     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4: ; preds = %"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_88NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS9_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"
  %i.x = load i64, ptr %i.a, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #36
  br label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit6

_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit6: ; preds = %"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_88NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS9_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_89St6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EEJRKSE_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSK_jPNS0_12cleanup_listEE_8__invokeESY_SZ_jS11_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1433", align 8 ; 8 uses
  %5 = alloca %"class.std::vector.1436", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = call noundef zeroext i1 @_ZN8nanobind6detail11list_casterISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EESA_E11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.a, i32 noundef %2, ptr noundef %3) #31
  br i1 %i.b, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_89St6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EEJRKSE_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSK_jPNS0_12cleanup_listEE_clESY_SZ_jS11_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
          to label %"_ZZL31nanobind_test_stl_ext_exec_implN8nanobind7module_EENK4$_89clERKSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EE.exit" unwind label %bb.c

"_ZZL31nanobind_test_stl_ext_exec_implN8nanobind7module_EENK4$_89clERKSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EE.exit": ; preds = %bb.b
  %i.c = call ptr @_ZN8nanobind6detail11list_casterISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EESA_E8from_cppISC_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, ptr noundef %3) #31
  call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_89St6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EEJRKSE_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSK_jPNS0_12cleanup_listEE_clESY_SZ_jS11_.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.d

"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_89St6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EEJRKSE_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSK_jPNS0_12cleanup_listEE_clESY_SZ_jS11_.exit": ; preds = %bb.a, %"_ZZL31nanobind_test_stl_ext_exec_implN8nanobind7module_EENK4$_89clERKSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EE.exit"
  %.0.i = phi ptr [ %i.c, %"_ZZL31nanobind_test_stl_ext_exec_implN8nanobind7module_EENK4$_89clERKSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EE.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11list_casterISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EESA_E11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.nanobind::detail::type_caster.1442", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = call noundef ptr @_ZN8nanobind6detail7seq_getEP7_objectPmPS2_(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !288
  call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE15_M_erase_at_endEPS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d) #31
  %i.e = load i64, ptr %i.a, align 8, !tbaa !50
  invoke void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e) #30
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i8 0, ptr %i.f, align 8, !tbaa !290
  %i.g = icmp ne ptr %i.c, null                   ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !50
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backEOS7_.exit
  %.011 = phi i64 [ %i.m, %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backEOS7_.exit ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.011
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail15optional_casterISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_E11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %i.j, i32 noundef %2, ptr noundef %3) #31
  br i1 %i.k, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.l = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %4) #30
          to label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backEOS7_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.c
  %i.m = add nuw i64 %.011, 1                     ; 2 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !50
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !739

._crit_edge:                                      ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backEOS7_.exit, %.lr.ph, %bb.b
  %.09 = phi i1 [ %i.g, %bb.b ], [ false, %.lr.ph ], [ %i.g, %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE9push_backEOS7_.exit ]
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZL10Py_XDECREFP7_object.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = and i64 %i.q, 2147483648
  %.not2.i = icmp eq i64 %i.r, 0
  br i1 %.not2.i, label %bb.e, label %_ZL10Py_XDECREFP7_object.exit

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i64 %i.q, -1                     ; 2 uses
  store i64 %i.s, ptr %i.p, align 8, !tbaa !25
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %_ZL10Py_XDECREFP7_object.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.p) #30
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.e, %bb.d, %._crit_edge, %bb.f
  %i.u = load i8, ptr %i.f, align 8, !tbaa !290, !range !173, !noundef !86
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.f, align 8, !tbaa !290
  br i1 %i.v, label %bb.g, label %_ZN8nanobind6detail15optional_casterISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ED2Ev.exit

bb.g:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit
  %i.w = load ptr, ptr %4, align 8, !tbaa !92     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN8nanobind6detail15optional_casterISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.z = load i64, ptr %i.x, align 8, !tbaa !25
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZN8nanobind6detail15optional_casterISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ED2Ev.exit

_ZN8nanobind6detail15optional_casterISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ED2Ev.exit: ; preds = %bb.g, %_ZL10Py_XDECREFP7_object.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i1 %.09

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.f, %bb.a
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %lpad.loopexit.split-lp18, 0
  call void @__clang_call_terminate(ptr %i.ab) #35
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden ptr @_ZN8nanobind6detail11list_casterISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EESA_E8from_cppISC_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !288    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40                  ; 3 uses
  %i.h = invoke ptr @PyList_New(i64 noundef %i.g) #30
          to label %_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #35
  unreachable

_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit:  ; preds = %bb.a
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit, label %bb.c, !prof !102

bb.c:                                             ; preds = %_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit
  %i.k = load ptr, ptr %0, align 8, !tbaa !292    ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !292  ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = icmp eq ptr %i.b, %i.c
  %or.cond29 = or i1 %i.m, %i.n
  br i1 %or.cond29, label %.critedge, label %.lr.ph, !prof !109

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.h, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.013.031 = phi ptr [ %i.k, %.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.8.030 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.e ] ; 3 uses
  %i.p = tail call ptr @_ZN8nanobind6detail15optional_casterISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_E8from_cppIS9_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.013.031, i8 %1, ptr noundef %2) #31 ; 2 uses
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %.critedge, label %bb.e, !prof !102

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.q = getelementptr inbounds [8 x i8], ptr %.val, i64 %.sroa.8.030
  store ptr %i.p, ptr %i.q, align 8, !tbaa !22
  %i.r = add i64 %.sroa.8.030, 1                  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.031, i64 40 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.l
  %i.u = icmp eq i64 %i.r, %i.g
  %or.cond = select i1 %i.t, i1 true, i1 %i.u, !prof !114
  br i1 %or.cond, label %.critedge, label %bb.d, !prof !115

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.8.0.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.8.030, %bb.d ], [ %i.r, %bb.e ]
  %i.v = icmp eq i64 %.sroa.8.0.lcssa, %i.g
  br i1 %i.v, label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit, label %bb.f, !prof !116

bb.f:                                             ; preds = %.critedge
  %i.w = load i64, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.x = and i64 %i.w, 2147483648
  %.not28 = icmp eq i64 %i.x, 0
  br i1 %.not28, label %bb.g, label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1                     ; 2 uses
  store i64 %i.y, ptr %i.h, align 8, !tbaa !25
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.h) #30
          to label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #35
  unreachable

_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit:  ; preds = %.critedge, %bb.h, %bb.g, %bb.f, %_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit
  %.sroa.024.0 = phi ptr [ null, %_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit ], [ %i.h, %.critedge ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.sroa.024.0
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !288
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !291
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_(ptr noundef %i.a, ptr noundef %i.c) #30
          to label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !288    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !293
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #36
  br label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #35
  unreachable
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !293
  %i.d = load ptr, ptr %0, align 8, !tbaa !288
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !291
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = tail call noundef ptr @_ZNSt15__new_allocatorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef null) #30 ; 4 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !288
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !291
  %i.q = tail call noundef ptr @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_(ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.n, ptr noundef nonnull align 1 dereferenceable(1) %0) #31 ; 0 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !288    ; 3 uses
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_M_allocateEm.exit
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !293
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #36
  br label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_M_allocateEm.exit, %bb.d
  store ptr %i.n, ptr %0, align 8, !tbaa !288
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.w, ptr %i.j, align 8, !tbaa !291
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %1
  store ptr %i.x, ptr %i.b, align 8, !tbaa !293
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail15optional_casterISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_E11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::type_caster.730", align 8 ; 8 uses
  %i.a = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !290, !range !173, !noundef !86
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !290
  br i1 %i.d, label %bb.c, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !25
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #36
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEv.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !93
  store i8 0, ptr %i.j, align 8, !tbaa !25
  %i.l = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %1, i32 noundef %2, ptr noundef %3) #31 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7emplaceIJS5_EEENSt9enable_ifIX18is_constructible_vIS5_DpT_EERS5_E4typeEDpOS9_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #31 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = load ptr, ptr %4, align 8, !tbaa !92     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.j
  br i1 %i.o, label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.j, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #36
  br label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit

_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEv.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEv.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b, %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit
  %.1 = phi i1 [ %i.l, %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit ], [ true, %bb.b ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE15_M_erase_at_endEPS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_(ptr noundef %1, ptr noundef %i.b) #30
          to label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit unwind label %bb.d

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit: ; preds = %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !291
  br label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #35
  unreachable
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit
  %.05 = phi ptr [ %i.i, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !290, !range !173, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !290
  br i1 %i.c, label %bb.b, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.d = load ptr, ptr %.05, align 8, !tbaa !92   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit: ; preds = %bb.b, %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.i, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !740

._crit_edge:                                      ; preds = %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.l, %_ZSt19__relocate_object_aISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.k, %_ZSt19__relocate_object_aISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !290, !range !173, !alias.scope !744, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EbOS6_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i, i1 noundef zeroext %i.c, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i) #30
  %i.d = load i8, ptr %i.a, align 8, !tbaa !290, !range !173, !alias.scope !744, !noundef !86
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.a, align 8, !tbaa !290, !alias.scope !744
  br i1 %i.e, label %bb.b, label %_ZSt19__relocate_object_aISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %.0911.i.i, align 8, !tbaa !92, !alias.scope !744 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt19__relocate_object_aISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !25, !alias.scope !744
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZSt19__relocate_object_aISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !743

_ZSt12__relocate_aIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_SaIS7_EET0_T_SB_SA_RT1_.exit: ; preds = %_ZSt19__relocate_object_aISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.l, %_ZSt19__relocate_object_aISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef ptr @_ZNSt15__new_allocatorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %bb.e, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 461168601842738790
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.c = mul nuw nsw i64 %1, 40
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #37
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EbOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(33) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !290
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !290, !range !173, !noundef !86
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !90
  %i.f = load ptr, ptr %2, align 8, !tbaa !92     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !93   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %0, align 8, !tbaa !92
  %i.m = load i64, ptr %i.g, align 8, !tbaa !25
  store i64 %i.m, ptr %i.e, align 8, !tbaa !25
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !93
  store ptr %i.g, ptr %2, align 8, !tbaa !92
  store i64 0, ptr %i.n, align 8, !tbaa !93
  store i8 0, ptr %i.g, align 8, !tbaa !25
  store i8 1, ptr %i.a, align 8, !tbaa !290
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7emplaceIJS5_EEENSt9enable_ifIX18is_constructible_vIS5_DpT_EERS5_E4typeEDpOS9_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !290, !range !173, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !290
  br i1 %i.c, label %bb.b, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !90
  %i.j = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !92
  %i.q = load i64, ptr %i.k, align 8, !tbaa !25
  store i64 %i.q, ptr %i.i, align 8, !tbaa !25
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !93
  store ptr %i.k, ptr %1, align 8, !tbaa !92
  store i64 0, ptr %i.r, align 8, !tbaa !93
  store i8 0, ptr %i.k, align 8, !tbaa !25
  store i8 1, ptr %i.a, align 8, !tbaa !290
  ret ptr %0
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !293
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !290, !range !173, !noundef !86
  %i.g = trunc nuw i8 %i.f to i1
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EbOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 dereferenceable(40) %1) #30
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !291
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !291
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1) #30
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !292
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -40
  ret ptr %i.k
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_M_allocateEm.exit:
  %i.a = tail call noundef i64 @_ZNKSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.128) #30 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !288    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !291
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %.not.i = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.h = tail call noundef ptr @_ZNSt15__new_allocatorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a, ptr noundef null) #30 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !290, !range !173, !noundef !86
  %i.l = trunc nuw i8 %i.k to i1
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EbOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i1 noundef zeroext %i.l, ptr noundef nonnull align 8 dereferenceable(40) %2) #30
  %i.m = tail call noundef ptr @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_(ptr noundef %i.b, ptr noundef %1, ptr noundef %i.h, ptr noundef nonnull align 1 dereferenceable(1) %0) #31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = tail call noundef ptr @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_(ptr noundef %1, ptr noundef %i.d, ptr noundef nonnull %i.n, ptr noundef nonnull align 1 dereferenceable(1) %0) #31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.b, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_M_allocateEm.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.s) #36
  br label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_M_allocateEm.exit, %bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !288
  store ptr %i.o, ptr %i.c, align 8, !tbaa !291
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.a
  store ptr %i.t, ptr %i.p, align 8, !tbaa !293
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef i64 @_ZNKSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291
  %i.c = load ptr, ptr %0, align 8, !tbaa !288
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = sub nsw i64 230584300921369395, %i.g
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.j = add nsw i64 %.sroa.speculated, %i.g      ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 230584300921369395)
  %i.m = select i1 %i.k, i64 230584300921369395, i64 %i.l
  ret i64 %i.m
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden ptr @_ZN8nanobind6detail15optional_casterISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_E8from_cppIS9_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nanobind::none", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !290, !range !173, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr null, ptr %3, align 8, !tbaa !27
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !93
  %i.h = invoke ptr @PyUnicode_FromStringAndSize(ptr noundef %i.e, i64 noundef %i.g) #30
          to label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #35
  unreachable

_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi ptr [ @_Py_NoneStruct, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.sroa.04.0
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !288    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = tail call noundef ptr @_ZNSt15__new_allocatorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr noundef null) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !288
end_hunk_0
