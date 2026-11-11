Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_rtti_tests?download=true
inline.NumInlined: 1849
inline.NumDeleted: 779
begin_hunk_0_@_ZN49ProxyRttiTests_TestIndirectCast_Copy_Succeed_Test8TestBodyEv:.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn16 = phi { ptr, i32 } [ %i.au, %bb.w ], [ %i.at, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.av = load ptr, ptr %6, align 8, !tbaa !47    ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.av, null
  br i1 %.not.i.i41, label %_ZN7testing7MessageD2Ev.exit43, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42: ; preds = %bb.x
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit43

_ZN7testing7MessageD2Ev.exit43:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42, %bb.x, %bb.u
  %.pn16.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %.pn16, %bb.x ], [ %.pn16, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  br label %bb.ac

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit35, %_ZN7testing7MessageD2Ev.exit40
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41 ; 4 uses
  %.not.i.i44 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i44, label %_ZN7testing15AssertionResultD2Ev.exit48, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !45 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45: ; preds = %bb.z
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit48

_ZN7testing15AssertionResultD2Ev.exit48:          ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit48
  %i.bg = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i49, label %_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !52
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(24) %1) #21, !inline_history !1
  br label %_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit

_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit43, %bb.o
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %_ZN7testing7MessageD2Ev.exit43 ], [ %i.aj, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.n
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ac ], [ %.pn.pn.pn, %bb.n ]
  %i.bi = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i50, label %_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit51, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %1) #21, !inline_history !1
  br label %_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit51

_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit51: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn16.pn.pn.pn
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN46ProxyRttiTests_TestIndirectCast_Copy_Fail_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i:
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.pro::v4::proxy", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 123, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !25
  store i64 ptrtoint (ptr @_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN23proxy_rtti_tests_detail10TestFacadeEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS1_19proxy_cast_dispatchEFvNS1_18proxy_cast_contextEREEENS4_ISD_SE_KFvSF_REEENS4_ISD_SE_FvSF_OEEENS4_IS8_SE_SG_EENS4_IS8_SE_SI_EENS4_IS8_SE_SK_EENS1_15reflection_metaILb0ENS1_22proxy_typeid_reflectorEEENSP_ILb1ESQ_EEEEEE7storageIPiEE to i64), ptr %1, align 8, !tbaa !27
  %i.c = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3pro2v414bad_proxy_castE, i64 16), ptr %i.c, align 8, !tbaa !12
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN3pro2v414bad_proxy_castE, ptr nonnull @_ZNSt8bad_castD2Ev) #23
          to label %.noexc13 unwind label %bb.a

.noexc13:                                         ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i
  unreachable

bb.a:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3pro2v414bad_proxy_castE ; 3 uses
  %i.e = extractvalue { ptr, i32 } %i.d, 1
  %i.f = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3pro2v414bad_proxy_castE) #21
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i32 } %i.d, 0
  %i.i = call ptr @__cxa_begin_catch(ptr %i.h) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN7testing15AssertionResultD2Ev.exit unwind label %bb.d

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.j, null
  br i1 %.not.i.i21, label %_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %1) #21, !inline_history !1
  br label %_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit

_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %.not.i.i22 = icmp eq ptr %.pre, null
  br i1 %.not.i.i22, label %_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit23, label %.thread

.thread:                                          ; preds = %bb.a, %bb.d
  %.merged44 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.d, %bb.a ]
  %i.m = phi ptr [ %.pre, %bb.d ], [ @_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN23proxy_rtti_tests_detail10TestFacadeEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS1_19proxy_cast_dispatchEFvNS1_18proxy_cast_contextEREEENS4_ISD_SE_KFvSF_REEENS4_ISD_SE_FvSF_OEEENS4_IS8_SE_SG_EENS4_IS8_SE_SI_EENS4_IS8_SE_SK_EENS1_15reflection_metaILb0ENS1_22proxy_typeid_reflectorEEENSP_ILb1ESQ_EEEEEE7storageIPiEE, %bb.a ]
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %1) #21, !inline_history !1
  br label %_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit23

_ZN3pro2v45proxyIN23proxy_rtti_tests_detail10TestFacadeEED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS5_15destructibilityLS6_2E.exit23: ; preds = %bb.d, %.thread
  %.merged45 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %.merged44, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.merged45
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN49ProxyRttiTests_TestIndirectCast_Move_Succeed_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.pro::v4::detail::proxy_cast_context", align 8 ; 7 uses
  %2 = alloca %"class.std::optional.113", align 8 ; 9 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %4 = alloca %"class.pro::v4::proxy", align 8    ; 11 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #24 ; 5 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !60
  store i32 1, ptr %i.a, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 2, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 3, ptr %.sroa.6.0..sroa_idx, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.m ; 6 uses

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !noalias !117
  %i.f = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #24
          to label %.noexc4.i.i.i.i.i.i.i.i unwind label %_ZNSt10unique_ptrIN3pro2v46detail11inplace_ptrISt6vectorIiSaIiEEEEZNS2_8allocateIS7_SaIvEJRKSt10in_place_tRKS6_EEEPT_RKT0_DpOT1_EUlPS7_E_ED2Ev.exit6.i.i.i.i.i.i.i.i, !noalias !117 ; 6 uses

.noexc4.i.i.i.i.i.i.i.i:                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !25, !noalias !117 ; 3 uses
  %.pre13.i.i.i.i.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i.i.i.i.i to i64
  %.pre11.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !25, !noalias !117
  %.pre12.i.i.i.i.i.i.i.i.a = ptrtoint ptr %.pre11.i.i.i.i.i.i.i.i to i64
  store ptr %i.f, ptr %i.e, align 8, !tbaa !59, !noalias !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !61, !noalias !117
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !60, !noalias !117
  %i.j = sub i64 %.pre12.i.i.i.i.i.i.i.i.a, %.pre13.i.i.i.i.i.i.i.i ; 4 uses
  %i.k = icmp sgt i64 %i.j, 4
  br i1 %i.k, label %bb.b, label %bb.c, !prof !62

bb.b:                                             ; preds = %.noexc4.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %.pre.i.i.i.i.i.i.i.i, i64 %i.j, i1 false), !noalias !117
  br label %bb.e

bb.c:                                             ; preds = %.noexc4.i.i.i.i.i.i.i.i
  %i.l = icmp eq i64 %i.j, 4
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %.pre.i.i.i.i.i.i.i.i, align 4, !tbaa !28, !noalias !117
  store i32 %i.m, ptr %i.f, align 4, !tbaa !28, !noalias !117
  br label %bb.e

_ZNSt10unique_ptrIN3pro2v46detail11inplace_ptrISt6vectorIiSaIiEEEEZNS2_8allocateIS7_SaIvEJRKSt10in_place_tRKS6_EEEPT_RKT0_DpOT1_EUlPS7_E_ED2Ev.exit6.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #22, !noalias !117
  br label %.body27

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  store ptr %i.p, ptr %i.g, align 8, !tbaa !61, !noalias !117
  store ptr %i.e, ptr %i.o, align 8, !tbaa !65, !alias.scope !117
  store i64 ptrtoint (ptr @_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN23proxy_rtti_tests_detail10TestFacadeEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS1_19proxy_cast_dispatchEFvNS1_18proxy_cast_contextEREEENS4_ISD_SE_KFvSF_REEENS4_ISD_SE_FvSF_OEEENS4_IS8_SE_SG_EENS4_IS8_SE_SI_EENS4_IS8_SE_SK_EENS1_15reflection_metaILb0ENS1_22proxy_typeid_reflectorEEENSP_ILb1ESQ_EEEEEE7storageINS1_13allocated_ptrISt6vectorIiSaIiEESaIvEEEEE to i64), ptr %4, align 8, !tbaa !27, !alias.scope !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !118
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i8 0, ptr %i.q, align 8, !tbaa !67, !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !118
  store ptr @_ZTISt6vectorIiSaIiEE, ptr %1, align 8, !noalias !118
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !118
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 0, ptr %.sroa.5105.0..sroa_idx, align 1, !noalias !118
  %.sroa.7107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %.sroa.7107.0..sroa_idx, align 8, !noalias !118
  invoke void @_ZN3pro2v46detail18reinterpret_invokeINS1_13allocated_ptrISt6vectorIiSaIiEESaIvEEEN23proxy_rtti_tests_detail10TestFacadeELb0ELNS1_14qualifier_typeE2ENS1_19proxy_cast_dispatchEvJNS1_18proxy_cast_contextEEEET4_NS1_20add_qualifier_traitsINSt11conditionalIXT1_ENS0_5proxyIT0_EENS0_23proxy_indirect_accessorISI_EEE4typeEXT2_EE4typeEDpOT5_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN3pro2v46invokeINS0_6detail19proxy_cast_dispatchEFvNS2_18proxy_cast_contextEOEJRS4_EEENS2_15overload_traitsIT0_E11return_typeEONS0_23proxy_indirect_accessorIN23proxy_rtti_tests_detail10TestFacadeEEEDpOT1_.exit.i unwind label %bb.g

_ZN3pro2v46invokeINS0_6detail19proxy_cast_dispatchEFvNS2_18proxy_cast_contextEOEJRS4_EEENS2_15overload_traitsIT0_E11return_typeEONS0_23proxy_indirect_accessorIN23proxy_rtti_tests_detail10TestFacadeEEEDpOT1_.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !118
  %i.r = load i8, ptr %i.q, align 8, !tbaa !67, !range !39, !noalias !118, !noundef !40
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.k, label %bb.f, !prof !62

bb.f:                                             ; preds = %_ZN3pro2v46invokeINS0_6detail19proxy_cast_dispatchEFvNS2_18proxy_cast_contextEOEJRS4_EEENS2_15overload_traitsIT0_E11return_typeEONS0_23proxy_indirect_accessorIN23proxy_rtti_tests_detail10TestFacadeEEEDpOT1_.exit.i
  %i.t = call ptr @__cxa_allocate_exception(i64 8) #21, !noalias !118 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3pro2v414bad_proxy_castE, i64 16), ptr %i.t, align 8, !tbaa !12, !noalias !118
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN3pro2v414bad_proxy_castE, ptr nonnull @_ZNSt8bad_castD2Ev) #23
          to label %bb.j unwind label %bb.g, !noalias !118

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i8, ptr %i.q, align 8, !tbaa !67, !range !39, !noalias !118, !noundef !40
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %_ZNSt14_Optional_baseISt6vectorIiSaIiEELb0ELb0EED2Ev.exit.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.q, align 8, !tbaa !67, !noalias !118
  %i.x = load ptr, ptr %2, align 8, !tbaa !59, !noalias !118 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIiSaIiEELb0ELb0EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60, !noalias !118
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #22, !noalias !118
  br label %_ZNSt14_Optional_baseISt6vectorIiSaIiEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseISt6vectorIiSaIiEELb0ELb0EED2Ev.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !118
  br label %.body29

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %_ZN3pro2v46invokeINS0_6detail19proxy_cast_dispatchEFvNS2_18proxy_cast_contextEOEJRS4_EEENS2_15overload_traitsIT0_E11return_typeEONS0_23proxy_indirect_accessorIN23proxy_rtti_tests_detail10TestFacadeEEEDpOT1_.exit.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !59, !noalias !118 ; 4 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !59, !alias.scope !118
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !25, !noalias !118
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !61, !noalias !118 ; 2 uses
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !25, !alias.scope !118
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ad to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !61, !noalias !119
  %i.an = load ptr, ptr %3, align 8, !tbaa !59, !noalias !119 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp eq i64 %i.al, %i.aq
  br i1 %i.ar, label %bb.l, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i

bb.l:                                             ; preds = %bb.k
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i:    ; preds = %bb.l
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ad, ptr %i.an, i64 %i.al), !noalias !119
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i, label %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i, %bb.l
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.n

_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.i.i, %bb.k
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIiSaIiEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.n

_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i, %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i
  %i.as = load i8, ptr %6, align 8, !tbaa !38, !range !39, !noundef !40
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.critedge, label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body27

bb.n:                                             ; preds = %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i, %_ZSteqIiSaIiEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIiSaIiEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.q, %bb.p
  %i.az = phi ptr [ %i.ay, %bb.q ], [ @.str.76, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef %i.az)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ba = load ptr, ptr %7, align 8, !tbaa !47    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 4 uses
  %.not.i.i33 = icmp eq ptr %i.be, null
  br i1 %.not.i.i33, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !45 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !48
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN3pro2v46detail19proxy_cast_dispatchclIRKSt6vectorIiSaIiEEEEvOT_NS1_18proxy_cast_contextE:bb.a
  %i.p = load i8, ptr %i.o, align 8, !tbaa !67, !range !39, !noundef !40
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %_ZNSt19_Optional_base_implISt6vectorIiSaIiEESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.o, align 8, !tbaa !67
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt19_Optional_base_implISt6vectorIiSaIiEESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #22
  br label %_ZNSt19_Optional_base_implISt6vectorIiSaIiEESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i

_ZNSt19_Optional_base_implISt6vectorIiSaIiEESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61   ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt19_Optional_base_implISt6vectorIiSaIiEESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !87

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %_ZNSt19_Optional_base_implISt6vectorIiSaIiEESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.af = phi ptr [ null, %_ZNSt19_Optional_base_implISt6vectorIiSaIiEESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i ], [ %i.ae, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.af, ptr %i.n, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !60
  %i.aj = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !62

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.af, ptr align 4 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJRKS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJRKS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !28
  store i32 %i.aq, ptr %i.af, align 4, !tbaa !28
  br label %_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJRKS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit

_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJRKS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 %i.an
  store ptr %i.ar, ptr %i.ag, align 8, !tbaa !61
  store i8 1, ptr %i.o, align 8, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJRKS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit, %_ZNKSt9type_infoeqERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3pro2v46detail18reinterpret_invokeINS1_13allocated_ptrISt6vectorIiSaIiEESaIvEEEN23proxy_rtti_tests_detail10TestFacadeELb0ELNS1_14qualifier_typeE2ENS1_19proxy_cast_dispatchEvJNS1_18proxy_cast_contextEEEET4_NS1_20add_qualifier_traitsINSt11conditionalIXT1_ENS0_5proxyIT0_EENS0_23proxy_indirect_accessorISI_EEE4typeEXT2_EE4typeEDpOT5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 4 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !195
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !196
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !75 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt6vectorIiSaIiEE
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 1, !tbaa !48
  %i.g = icmp eq i8 %i.f, 42
  %.idx.i.i.i.i = zext i1 %i.g to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @_ZTSSt6vectorIiSaIiEE, ptr noundef nonnull dereferenceable(1) %i.h) #21
  %i.j = icmp ne i32 %i.i, 0
  br label %_ZNKSt9type_infoeqERKS_.exit.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i:                 ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  %or.cond.i.i = select i1 %.0.i.i.i, i1 true, i1 %i.k, !prof !80
  br i1 %or.cond.i.i, label %_ZN3pro2v46detail15invoke_dispatchINS1_19proxy_cast_dispatchEvJSt6vectorIiSaIiEENS1_18proxy_cast_contextEEEET0_DpOT1_.exit, label %bb.c, !prof !80

bb.c:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !67, !range !39, !noundef !40
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.l, align 8, !tbaa !67
  %i.o = load ptr, ptr %.sroa.44.0.copyload.i, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #22
  br label %_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i

_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.u = load <2 x ptr>, ptr %i.b, align 8, !tbaa !25
  store <2 x ptr> %i.u, ptr %.sroa.44.0.copyload.i, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  store ptr %i.x, ptr %i.v, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.l, align 8, !tbaa !67
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %_ZN3pro2v46detail15invoke_dispatchINS1_19proxy_cast_dispatchEvJSt6vectorIiSaIiEENS1_18proxy_cast_contextEEEET0_DpOT1_.exit

_ZN3pro2v46detail15invoke_dispatchINS1_19proxy_cast_dispatchEvJSt6vectorIiSaIiEENS1_18proxy_cast_contextEEEET0_DpOT1_.exit: ; preds = %_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i, %_ZNKSt9type_infoeqERKS_.exit.i.i
  %i.y = phi ptr [ %.pre, %_ZNSt8optionalISt6vectorIiSaIiEEE7emplaceIJS2_EEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i.i ], [ %i.b, %_ZNKSt9type_infoeqERKS_.exit.i.i ] ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i4, label %_ZN3pro2v46detail12proxy_helper15resetting_guardINS1_13allocated_ptrISt6vectorIiSaIiEESaIvEEEN23proxy_rtti_tests_detail10TestFacadeEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3pro2v46detail15invoke_dispatchINS1_19proxy_cast_dispatchEvJSt6vectorIiSaIiEENS1_18proxy_cast_contextEEEET0_DpOT1_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #22
  br label %_ZN3pro2v46detail12proxy_helper15resetting_guardINS1_13allocated_ptrISt6vectorIiSaIiEESaIvEEEN23proxy_rtti_tests_detail10TestFacadeEED2Ev.exit

_ZN3pro2v46detail12proxy_helper15resetting_guardINS1_13allocated_ptrISt6vectorIiSaIiEESaIvEEEN23proxy_rtti_tests_detail10TestFacadeEED2Ev.exit: ; preds = %_ZN3pro2v46detail15invoke_dispatchINS1_19proxy_cast_dispatchEvJSt6vectorIiSaIiEENS1_18proxy_cast_contextEEEET0_DpOT1_.exit, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 24) #22
  store ptr null, ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8optionalIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE7emplaceIJRS8_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EESB_E4typeEDpOSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !89, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !89
  %i.d = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE10_M_destroyEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #22
  br label %_ZNSt22_Optional_payload_baseIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE10_M_destroyEv.exit.i.i

_ZNSt22_Optional_payload_baseIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE10_M_destroyEv.exit.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #22
  br label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit

_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE10_M_destroyEv.exit.i.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !65     ; 3 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !59   ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit
  %i.s = icmp ugt i64 %i.r, 9223372036854775804
  br i1 %i.s, label %.noexc.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !87

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc.i.i.i.i.i unwind label %_ZNSt10unique_ptrIN3pro2v46detail11inplace_ptrISt6vectorIiSaIiEEEEZNS2_8allocateIS7_SaIvEJRKSt10in_place_tRKS6_EEEPT_RKT0_DpOT1_EUlPS7_E_ED2Ev.exit6.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #24
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i unwind label %_ZNSt10unique_ptrIN3pro2v46detail11inplace_ptrISt6vectorIiSaIiEEEEZNS2_8allocateIS7_SaIvEJRKSt10in_place_tRKS6_EEEPT_RKT0_DpOT1_EUlPS7_E_ED2Ev.exit6.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !25 ; 2 uses
  %.pre11.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !25
  %.pre12.i.i.i.i.i = ptrtoint ptr %.pre11.i.i.i.i.i to i64
  %.pre13.i.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i.i to i64
  br label %.noexc4.i.i.i.i.i

.noexc4.i.i.i.i.i:                                ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit
  %.pre-phi14.i.i.i.i.i = phi i64 [ %.pre13.i.i.i.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i ], [ %i.q, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit ]
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre12.i.i.i.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i ], [ %i.p, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit ]
  %i.u = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i ], [ %i.o, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit ] ; 2 uses
  %i.v = phi ptr [ %i.t, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i ], [ null, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit ] ; 6 uses
  store ptr %i.v, ptr %i.l, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !60
  %i.z = sub i64 %.pre-phi.i.i.i.i.i, %.pre-phi14.i.i.i.i.i ; 4 uses
  %i.aa = icmp sgt i64 %i.z, 4
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !62

bb.e:                                             ; preds = %.noexc4.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.u, i64 %i.z, i1 false)
  br label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE12_M_constructIJRS8_EEEvDpOT_.exit

bb.f:                                             ; preds = %.noexc4.i.i.i.i.i
  %i.ab = icmp eq i64 %i.z, 4
  br i1 %i.ab, label %bb.g, label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE12_M_constructIJRS8_EEEvDpOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.u, align 4, !tbaa !28
  store i32 %i.ac, ptr %i.v, align 4, !tbaa !28
  br label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE12_M_constructIJRS8_EEEvDpOT_.exit

_ZNSt10unique_ptrIN3pro2v46detail11inplace_ptrISt6vectorIiSaIiEEEEZNS2_8allocateIS7_SaIvEJRKSt10in_place_tRKS6_EEEPT_RKT0_DpOT1_EUlPS7_E_ED2Ev.exit6.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #22
  resume { ptr, i32 } %i.ad

_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE12_M_constructIJRS8_EEEvDpOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !61
  store ptr %i.l, ptr %0, align 8, !tbaa !65
  store i8 1, ptr %i.a, align 8, !tbaa !89
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8optionalIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE7emplaceIJRKS8_EEENSt9enable_ifIX18is_constructible_vIS8_DpT_EERS8_E4typeEDpOSE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !89, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !89
  %i.d = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE10_M_destroyEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #22
  br label %_ZNSt22_Optional_payload_baseIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE10_M_destroyEv.exit.i.i

_ZNSt22_Optional_payload_baseIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE10_M_destroyEv.exit.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #22
  br label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit

_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEEE10_M_destroyEv.exit.i.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !65     ; 3 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !59   ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit
  %i.s = icmp ugt i64 %i.r, 9223372036854775804
  br i1 %i.s, label %.noexc.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !87

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc.i.i.i.i.i unwind label %_ZNSt10unique_ptrIN3pro2v46detail11inplace_ptrISt6vectorIiSaIiEEEEZNS2_8allocateIS7_SaIvEJRKSt10in_place_tRKS6_EEEPT_RKT0_DpOT1_EUlPS7_E_ED2Ev.exit6.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #24
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i unwind label %_ZNSt10unique_ptrIN3pro2v46detail11inplace_ptrISt6vectorIiSaIiEEEEZNS2_8allocateIS7_SaIvEJRKSt10in_place_tRKS6_EEEPT_RKT0_DpOT1_EUlPS7_E_ED2Ev.exit6.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !25 ; 2 uses
  %.pre11.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !25
  %.pre12.i.i.i.i.i = ptrtoint ptr %.pre11.i.i.i.i.i to i64
  %.pre13.i.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i.i to i64
  br label %.noexc4.i.i.i.i.i

.noexc4.i.i.i.i.i:                                ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit
  %.pre-phi14.i.i.i.i.i = phi i64 [ %.pre13.i.i.i.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i ], [ %i.q, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit ]
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre12.i.i.i.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i ], [ %i.p, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit ]
  %i.u = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i ], [ %i.o, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit ] ; 2 uses
  %i.v = phi ptr [ %i.t, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc4_crit_edge.i.i.i.i.i ], [ null, %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE8_M_resetEv.exit ] ; 6 uses
  store ptr %i.v, ptr %i.l, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !60
  %i.z = sub i64 %.pre-phi.i.i.i.i.i, %.pre-phi14.i.i.i.i.i ; 4 uses
  %i.aa = icmp sgt i64 %i.z, 4
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !62

bb.e:                                             ; preds = %.noexc4.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.u, i64 %i.z, i1 false)
  br label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE12_M_constructIJRKS8_EEEvDpOT_.exit

bb.f:                                             ; preds = %.noexc4.i.i.i.i.i
  %i.ab = icmp eq i64 %i.z, 4
  br i1 %i.ab, label %bb.g, label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE12_M_constructIJRKS8_EEEvDpOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.u, align 4, !tbaa !28
  store i32 %i.ac, ptr %i.v, align 4, !tbaa !28
  br label %_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE12_M_constructIJRKS8_EEEvDpOT_.exit

_ZNSt10unique_ptrIN3pro2v46detail11inplace_ptrISt6vectorIiSaIiEEEEZNS2_8allocateIS7_SaIvEJRKSt10in_place_tRKS6_EEEPT_RKT0_DpOT1_EUlPS7_E_ED2Ev.exit6.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #22
  resume { ptr, i32 } %i.ad

_ZNSt19_Optional_base_implIN3pro2v46detail13allocated_ptrISt6vectorIiSaIiEESaIvEEESt14_Optional_baseIS8_Lb0ELb0EEE12_M_constructIJRKS8_EEEvDpOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !61
  store ptr %i.l, ptr %0, align 8, !tbaa !65
  store i8 1, ptr %i.a, align 8, !tbaa !89
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI46ProxyRttiTests_TestIndirectCast_Move_Fail_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI46ProxyRttiTests_TestIndirectCast_Move_Fail_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV46ProxyRttiTests_TestIndirectCast_Move_Fail_Test, i64 16), ptr %i.a, align 8, !tbaa !12
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI48ProxyRttiTests_TestIndirectCast_Ptr_Succeed_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI48ProxyRttiTests_TestIndirectCast_Ptr_Succeed_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV48ProxyRttiTests_TestIndirectCast_Ptr_Succeed_Test, i64 16), ptr %i.a, align 8, !tbaa !12
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI45ProxyRttiTests_TestIndirectCast_Ptr_Fail_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI45ProxyRttiTests_TestIndirectCast_Ptr_Fail_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV45ProxyRttiTests_TestIndirectCast_Ptr_Fail_Test, i64 16), ptr %i.a, align 8, !tbaa !12
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI53ProxyRttiTests_TestIndirectCast_ConstPtr_Succeed_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI53ProxyRttiTests_TestIndirectCast_ConstPtr_Succeed_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV53ProxyRttiTests_TestIndirectCast_ConstPtr_Succeed_Test, i64 16), ptr %i.a, align 8, !tbaa !12
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI50ProxyRttiTests_TestIndirectCast_ConstPtr_Fail_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI50ProxyRttiTests_TestIndirectCast_ConstPtr_Fail_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV50ProxyRttiTests_TestIndirectCast_ConstPtr_Fail_Test, i64 16), ptr %i.a, align 8, !tbaa !12
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI38ProxyRttiTests_TestIndirectTypeid_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI38ProxyRttiTests_TestIndirectTypeid_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV38ProxyRttiTests_TestIndirectTypeid_Test, i64 16), ptr %i.a, align 8, !tbaa !12
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI46ProxyRttiTests_TestDirectCast_Ref_Succeed_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI46ProxyRttiTests_TestDirectCast_Ref_Succeed_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV46ProxyRttiTests_TestDirectCast_Ref_Succeed_Test, i64 16), ptr %i.a, align 8, !tbaa !12
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
end_hunk_1
