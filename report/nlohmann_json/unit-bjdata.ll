Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-bjdata?download=true
inline.NumInlined: 19583
inline.NumDeleted: 3431
loop-unroll.NumCompletelyUnrolled: 525
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 527
begin_hunk_0_@"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_26ED0Ev":bb.a
  tail call void @__clang_call_terminate(ptr %i.e) #30, !inline_history !172
  unreachable

"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_26ED2Ev.exit": ; preds = %bb.a, %bb.b
  tail call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %0) #29, !inline_history !172
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNK7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_26E9stringifyEPSo"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.doctest::String", align 8   ; 7 uses
  %3 = alloca %"struct.doctest::detail::MessageBuilder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6detail14MessageBuilderC1EPKciNS_10assertType4EnumE(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull @.str.5, i32 noundef 1537, i32 noundef 1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !207
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN7doctest6detail14MessageBuildercmIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 1 dereferenceable(19) @.str.724)
          to label %_ZN7doctest6detail14MessageBuildermlIA19_cEERS1_RKT_.exit.i unwind label %bb.c

_ZN7doctest6detail14MessageBuildermlIA19_cEERS1_RKT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2874, !nonnull !65, !align !243
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.g = load i32, ptr %i.d, align 4, !tbaa !146, !noalias !2875
  invoke void @_ZN7doctest8toStringEi(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %2, i32 noundef %i.g)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN7doctest6detail14MessageBuildermlIA19_cEERS1_RKT_.exit.i
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %"_ZZL20DOCTEST_ANON_FUNC_28vENK4$_26clEPSo.exit" unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.body.i

bb.c:                                             ; preds = %_ZN7doctest6detail14MessageBuildermlIA19_cEERS1_RKT_.exit.i, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %eh.lpad-body.i

"_ZZL20DOCTEST_ANON_FUNC_28vENK4$_26clEPSo.exit": ; preds = %.noexc.i
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(49) ptr @_ZN7doctest6detail14MessageBuildercmIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 1 dereferenceable(19) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.doctest::String", align 8   ; 7 uses
  %3 = alloca %"class.doctest::String", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.c = tail call noundef ptr @_ZN7doctest6detail8tlssPushEv(), !noalias !2882
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !2882
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.e = load i8, ptr %i.d, align 1, !tbaa !81, !noalias !2882
  %.not.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = select i1 %.not.i.i.i.i.i.i, i32 18, i32 19
  call void @_ZN7doctest6StringC1EPKcj(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(19) %1, i32 noundef %i.f), !noalias !2882
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN7doctest8toStringIA19_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit unwind label %bb.b, !noalias !2882 ; 0 uses

common.resume:                                    ; preds = %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29, !noalias !2882
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !2882
  br label %common.resume

_ZN7doctest8toStringIA19_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit: ; preds = %bb.a
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29, !noalias !2882
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !2882
  call void @_ZN7doctest6detail7tlssPopEv(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %3)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZN7doctest8toStringIA19_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret ptr %0

bb.d:                                             ; preds = %_ZN7doctest8toStringIA19_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_27ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_27EE", i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !64, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_27ED2Ev.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_27ED2Ev.exit" unwind label %bb.c, !inline_history !167

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30, !inline_history !167
  unreachable

"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_27ED2Ev.exit": ; preds = %bb.a, %bb.b
  tail call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %0) #29, !inline_history !167
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNK7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_27E9stringifyEPSo"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.doctest::String", align 8   ; 7 uses
  %3 = alloca %"struct.doctest::detail::MessageBuilder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6detail14MessageBuilderC1EPKciNS_10assertType4EnumE(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull @.str.5, i32 noundef 1544, i32 noundef 1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !207
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN7doctest6detail14MessageBuildercmIA6_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.722)
          to label %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i unwind label %bb.c

_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2884, !nonnull !65, !align !223
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.g = load i64, ptr %i.d, align 8, !tbaa !68
  invoke void @_ZN7doctest8toStringEm(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %2, i64 noundef %i.g)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %"_ZZL20DOCTEST_ANON_FUNC_28vENK4$_27clEPSo.exit" unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.body.i

bb.c:                                             ; preds = %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %eh.lpad-body.i

"_ZZL20DOCTEST_ANON_FUNC_28vENK4$_27clEPSo.exit": ; preds = %.noexc.i
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE2EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEESH_TnNSt9enable_ifIXntsr3std7is_sameIT0_NT_7array_tEEE5valueEiE4typeELi0EEEvRSL_RKSK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !91
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b)
  store i8 2, ptr %0, align 8, !tbaa !91
  %i.c = load ptr, ptr %1, align 8, !tbaa !82     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 3 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.562) #33
          to label %.noexc.i.i unwind label %_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JN9__gnu_cxx17__normal_iteratorIPKhSD_EESM_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit8.i

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread.i.i.i: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i.i
  %i.k = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !324
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS3_ISD_SaISD_EEJN9__gnu_cxx17__normal_iteratorIPKhSC_EESL_EEEPT_DpOT0_.exit

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit.i.i.i
  %i.m = shl nuw nsw i64 %i.i, 4
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #32
          to label %.noexc5.i.i unwind label %_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JN9__gnu_cxx17__normal_iteratorIPKhSD_EESM_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit8.i ; 4 uses

.noexc5.i.i:                                      ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  store ptr %i.n, ptr %i.f, align 8, !tbaa !176
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !324
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.noexc5.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.n, %.noexc5.i.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.c, %.noexc5.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.noexc5.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 8
  store i64 6, ptr %.09.i.i.i.i.i.i.i.prol, align 8
  %i.r = load i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.prol, align 1, !tbaa !81
  %i.s = zext i8 %i.r to i64
  store i64 %i.s, ptr %i.q, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !2885

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.noexc5.i.i
  %.lcssa.unr = phi ptr [ poison, %.noexc5.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %i.n, %.noexc5.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.unr = phi ptr [ %i.c, %.noexc5.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %2 = sub i64 %i.h, %i.g
  %3 = icmp ugt i64 %2, -8
  br i1 %3, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS3_ISD_SaISD_EEJN9__gnu_cxx17__normal_iteratorIPKhSC_EESL_EEEPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  store i64 6, ptr %.09.i.i.i.i.i.i.i, align 8
  %i.w = load i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 1, !tbaa !81
  %i.x = zext i8 %i.w to i64
  store i64 %i.x, ptr %i.v, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  store i64 6, ptr %i.z, align 8
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !81
  %i.ac = zext i8 %i.ab to i64
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 40
  store i64 6, ptr %i.ae, align 8
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !81
  %i.ah = zext i8 %i.ag to i64
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 3
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 56
  store i64 6, ptr %i.aj, align 8
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !81
  %i.am = zext i8 %i.al to i64
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !81
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 72
  store i64 6, ptr %i.ao, align 8
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !81
  %i.ar = zext i8 %i.aq to i64
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 5
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 88
  store i64 6, ptr %i.at, align 8
  %i.av = load i8, ptr %i.as, align 1, !tbaa !81
  %i.aw = zext i8 %i.av to i64
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 104
  store i64 6, ptr %i.ay, align 8
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !81
  %i.bb = zext i8 %i.ba to i64
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !81
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 7
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 120
  store i64 6, ptr %i.bd, align 8
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !81
  %i.bg = zext i8 %i.bf to i64
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bh, %i.e
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS3_ISD_SaISD_EEJN9__gnu_cxx17__normal_iteratorIPKhSC_EESL_EEEPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2886

_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JN9__gnu_cxx17__normal_iteratorIPKhSD_EESM_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit8.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #31
  resume { ptr, i32 } %i.bj

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS3_ISD_SaISD_EEJN9__gnu_cxx17__normal_iteratorIPKhSC_EESL_EEEPT_DpOT0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread.i.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !175
  store ptr %i.f, ptr %i.a, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_28ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_28EE", i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !64, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_28ED2Ev.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_28ED2Ev.exit" unwind label %bb.c, !inline_history !168

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30, !inline_history !168
  unreachable

"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_28ED2Ev.exit": ; preds = %bb.a, %bb.b
  tail call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %0) #29, !inline_history !168
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNK7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_28E9stringifyEPSo"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.doctest::String", align 8   ; 7 uses
  %3 = alloca %"struct.doctest::detail::MessageBuilder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6detail14MessageBuilderC1EPKciNS_10assertType4EnumE(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull @.str.5, i32 noundef 1604, i32 noundef 1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !207
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN7doctest6detail14MessageBuildercmIA6_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.722)
          to label %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i unwind label %bb.c

_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2889, !nonnull !65, !align !223
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.g = load i64, ptr %i.d, align 8, !tbaa !68
  invoke void @_ZN7doctest8toStringEm(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %2, i64 noundef %i.g)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %"_ZZL20DOCTEST_ANON_FUNC_28vENK4$_28clEPSo.exit" unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.body.i

bb.c:                                             ; preds = %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %eh.lpad-body.i

"_ZZL20DOCTEST_ANON_FUNC_28vENK4$_28clEPSo.exit": ; preds = %.noexc.i
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_29ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_29EE", i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !64, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_29ED2Ev.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_29ED2Ev.exit" unwind label %bb.c, !inline_history !169

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30, !inline_history !169
  unreachable

"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_29ED2Ev.exit": ; preds = %bb.a, %bb.b
  tail call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %0) #29, !inline_history !169
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNK7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_29E9stringifyEPSo"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.doctest::String", align 8   ; 7 uses
  %3 = alloca %"struct.doctest::detail::MessageBuilder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6detail14MessageBuilderC1EPKciNS_10assertType4EnumE(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull @.str.5, i32 noundef 1653, i32 noundef 1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !207
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN7doctest6detail14MessageBuildercmIA6_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.722)
          to label %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i unwind label %bb.c

_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2891, !nonnull !65, !align !223
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.g = load i64, ptr %i.d, align 8, !tbaa !68
end_hunk_0
