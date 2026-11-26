Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.05?download=true
inline.NumInlined: 132
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3mem4takeINtNtB4_6option6OptionNtCs3FigHW6Y7TR_11proc_macro24SpanEECsbi23obv45GP_19pyo3_macros_backend:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNtCskKLDkoKarTP_4core3mem4takeNtNtCsexYYUdYSQU6_5alloc6string6StringECsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvXsp_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core7default7Default7defaultCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.a) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i8 3, 2) i8 @_RINvNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator12iter_compareINtNtNtB8_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrEINtNtNtB6_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB2S_4path11PathSegmentENCNCNvB1s_28has_attribute_with_namespace00ENCINvNvNtB2_8Iterator5eq_by7compareRB1q_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYB10_B4G_2eqB2m_E0E0uEB1u_(ptr %0, ptr %1, ptr %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.d, align 8
  %i.e = invoke i8 @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvNvB1H_12iter_compare7compareINtNtNtB1L_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB3C_4path11PathSegmentENCNCNvBL_28has_attribute_with_namespace00ERBJ_uNCINvNvB1F_5eq_by7compareB5i_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYB3_B1F_2eqB35_E0E0E0INtNtNtBa_3ops12control_flow11ControlFlowIB6R_uNtNtBa_3cmp8OrderingEEEBN_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB1e_4path11PathSegmentENCNCNvNtCsbi23obv45GP_19pyo3_macros_backend5utils28has_attribute_with_namespace00EEB2m_(ptr nonnull align 8 %i.a) #15
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = invoke align 8 ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB11_4path11PathSegmentENCNCNvNtCsbi23obv45GP_19pyo3_macros_backend5utils28has_attribute_with_namespace00ENtNtNtB9_6traits8iterator8Iterator4nextB29_(ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %.not5 = icmp ne ptr %i.g, null
  %. = sext i1 %.not5 to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.0.0 = phi i8 [ %., %bb.e ], [ %i.e, %bb.c ]
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB1e_4path11PathSegmentENCNCNvNtCsbi23obv45GP_19pyo3_macros_backend5utils28has_attribute_with_namespace00EEB2m_(ptr nonnull align 8 %i.a)
  ret i8 %.sroa.0.0

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RINvNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator7iter_eqINtNtNtB8_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrEINtNtNtB6_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB2M_4path11PathSegmentENCNCNvB1m_28has_attribute_with_namespace00ENCINvNvNtB2_8Iterator5eq_by7compareRB1k_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYBU_B4A_2eqB2g_E0E0EB1o_(ptr %0, ptr %1, ptr %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.d, align 8
  %i.e = invoke i8 @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvNvB1H_12iter_compare7compareINtNtNtB1L_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB3C_4path11PathSegmentENCNCNvBL_28has_attribute_with_namespace00ERBJ_uNCINvNvB1F_5eq_by7compareB5i_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYB3_B1F_2eqB35_E0E0E0INtNtNtBa_3ops12control_flow11ControlFlowIB6R_uNtNtBa_3cmp8OrderingEEEBN_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB1e_4path11PathSegmentENCNCNvNtCsbi23obv45GP_19pyo3_macros_backend5utils28has_attribute_with_namespace00EEB2m_(ptr nonnull align 8 %i.a) #15
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %i.e, 2
  br i1 %.not.i, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator12iter_compareINtNtNtB8_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrEINtNtNtB6_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB2S_4path11PathSegmentENCNCNvB1s_28has_attribute_with_namespace00ENCINvNvNtB2_8Iterator5eq_by7compareRB1q_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYB10_B4G_2eqB2m_E0E0uEB1u_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = invoke align 8 ptr @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB11_4path11PathSegmentENCNCNvNtCsbi23obv45GP_19pyo3_macros_backend5utils28has_attribute_with_namespace00ENtNtNtB9_6traits8iterator8Iterator4nextB29_(ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %.not5.i = icmp ne ptr %i.g, null
  %..i = sext i1 %.not5.i to i8
  br label %_RINvNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator12iter_compareINtNtNtB8_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrEINtNtNtB6_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB2S_4path11PathSegmentENCNCNvB1s_28has_attribute_with_namespace00ENCINvNvNtB2_8Iterator5eq_by7compareRB1q_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYB10_B4G_2eqB2m_E0E0uEB1u_.exit

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f

_RINvNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator12iter_compareINtNtNtB8_5slice4iter4IterNtNtCsbi23obv45GP_19pyo3_macros_backend5utils10IdentOrStrEINtNtNtB6_8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB2S_4path11PathSegmentENCNCNvB1s_28has_attribute_with_namespace00ENCINvNvNtB2_8Iterator5eq_by7compareRB1q_RNtCs3FigHW6Y7TR_11proc_macro25IdentNCINvYB10_B4G_2eqB2m_E0E0uEB1u_.exit: ; preds = %bb.c, %bb.e
  %.sroa.0.0.i = phi i8 [ %..i, %bb.e ], [ %i.e, %bb.c ]
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtB1e_4path11PathSegmentENCNCNvNtCsbi23obv45GP_19pyo3_macros_backend5utils28has_attribute_with_namespace00EEB2m_(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = icmp eq i8 %.sroa.0.0.i, 0
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNvXNtCs4yLFsuhaAhE_5quote3extNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCs1QQTzni0HOp_3syn10punctuated5PairsBv_NtNtB22_5token5CommaEECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtCs1QQTzni0HOp_3syn10punctuated5PairsNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNtNtBQ_5token5CommaENtB2_12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.a) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXsc_NtCs1QQTzni0HOp_3syn10punctuatedINtB5_5PairsNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
  %i.f = load i64, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @_RNvXs_NtNtCs1QQTzni0HOp_3syn10punctuated8printingINtB6_4PairRNtCs3FigHW6Y7TR_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.b, ptr align 8 %0)
  call void @_RNvXsc_NtCs1QQTzni0HOp_3syn10punctuatedINtB5_5PairsNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
  %i.i = load i64, ptr %i.c, align 8
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNvXNtCs4yLFsuhaAhE_5quote3extNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCs1QQTzni0HOp_3syn10punctuated5PairsNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtB22_5token5CommaEEB2I_(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtCs1QQTzni0HOp_3syn10punctuated5PairsNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtBQ_5token5CommaENtB2_12IntoIterator9into_iterB1w_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.a) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXsc_NtCs1QQTzni0HOp_3syn10punctuatedINtB5_5PairsNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBT_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
  %i.f = load i64, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @_RNvXs_NtNtCs1QQTzni0HOp_3syn10punctuated8printingINtB6_4PairRNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemRNtNtB8_5token5CommaENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB13_(ptr nonnull align 8 %i.b, ptr align 8 %0)
  call void @_RNvXsc_NtCs1QQTzni0HOp_3syn10punctuatedINtB5_5PairsNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBT_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
  %i.i = load i64, ptr %i.c, align 8
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RINvXNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyzNtB3_14DestroyedState13register_dtorINtNtCskKLDkoKarTP_4core4cell4CellTyyEEECsbi23obv45GP_19pyo3_macros_backend(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs1QQTzni0HOp_3syn4expr6MemberNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = tail call { i64, ptr } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3FigHW6Y7TR_11proc_macro2(i64 %2, i64 8, i64 24) #14 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  store i64 %i.f, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %3 = phi i64 [ %.pr, %bb.g ], [ %i.f, %bb.a ]
  %i.m = phi i64 [ %i.p, %bb.g ], [ 0, %bb.a ]
  %i.n = add i64 %3, -1
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %i.o = invoke { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs1QQTzni0HOp_3syn4expr6MemberEENtNtNtB8_6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.a
  store i64 %2, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.d
  %4 = phi i64 [ %i.m, %.lr.ph ], [ %i.p, %bb.d ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %4, ptr %i.j, align 8
  br label %5

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  br label %5

5:                                                ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtNtCs1QQTzni0HOp_3syn4expr6MemberNtNtBM_5alloc6GlobalEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.c) #15
          to label %bb.i unwind label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.p = extractvalue { i64, ptr } %i.o, 0        ; 6 uses
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.p, %i.f
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs1K_NtNtCs1QQTzni0HOp_3syn3gen5cloneNtNtBa_4expr6MemberNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.q)
          to label %bb.g unwind label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i64 %i.p, ptr %i.j, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.p, i64 %i.f, ptr nonnull align 8 @1) #17
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.t = icmp eq i64 %.pr, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.i, %5
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.i:                                             ; preds = %5
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4expr6MemberEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.d) #15
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB22_12try_for_each4callBX_INtNtB2a_6result6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENCNvMs1_BZ_NtBZ_18PyClassPyO3Options17take_pyo3_options0E0B3E_EB11_(ptr sret([24 x i8]) align 8 %0, ptr nofree align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [64 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not = icmp eq ptr %i.j, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.k, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @_RNCNvMs1_NtCsbi23obv45GP_19pyo3_macros_backend7pyclassNtB7_18PyClassPyO3Options17take_pyo3_options0B9_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d) #14
  %i.l = load i64, ptr %i.e, align 8
  %.not1 = icmp eq i64 %i.l, -1
  br i1 %.not1, label %bb.b, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCsbi23obv45GP_19pyo3_macros_backend(ptr sret([24 x i8]) align 8 %0) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBP_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @3) #14
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB26_12try_for_each4callBX_INtNtB2e_6result6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENCNvMsd_BZ_NtBZ_22EnumVariantPyO3Options17take_pyo3_options0E0B3I_EB11_(ptr sret([24 x i8]) align 8 %0, ptr nofree align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [72 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not = icmp eq ptr %i.j, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %i.k, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @_RNCNvMsd_NtCsbi23obv45GP_19pyo3_macros_backend7pyclassNtB7_22EnumVariantPyO3Options17take_pyo3_options0B9_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d) #14
  %i.l = load i64, ptr %i.e, align 8
  %.not1 = icmp eq i64 %i.l, -1
  br i1 %.not1, label %bb.b, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCsbi23obv45GP_19pyo3_macros_backend(ptr sret([24 x i8]) align 8 %0) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBP_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @3) #14
  br label %bb.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3mapINtNtB24_6result6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENCINvMs_BT_NtBT_15PyModuleOptions14add_attributesINtB8_3VecBR_EE0EBV_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCNvMs1_BT_NtBT_18PyClassPyO3Options17take_pyo3_options0INtNtB24_6result6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorEEBV_(ptr sret([24 x i8]) align 8 %0, ptr nofree align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.k, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @_RNCNvMs1_NtCsbi23obv45GP_19pyo3_macros_backend7pyclassNtB7_18PyClassPyO3Options17take_pyo3_options0B9_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d) #14
  %i.l = load i64, ptr %i.e, align 8
  %.not1.i = icmp eq i64 %i.l, -1
  br i1 %.not1.i, label %bb.b, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCsbi23obv45GP_19pyo3_macros_backend(ptr sret([24 x i8]) align 8 %0) #14
  br label %_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB22_12try_for_each4callBX_INtNtB2a_6result6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENCNvMs1_BZ_NtBZ_18PyClassPyO3Options17take_pyo3_options0E0B3E_EB11_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBP_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @3) #14
  br label %_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB22_12try_for_each4callBX_INtNtB2a_6result6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENCNvMs1_BZ_NtBZ_18PyClassPyO3Options17take_pyo3_options0E0B3E_EB11_.exit

_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB22_12try_for_each4callBX_INtNtB2a_6result6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENCNvMs1_BZ_NtBZ_18PyClassPyO3Options17take_pyo3_options0E0B3E_EB11_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCNvMsd_BT_NtBT_22EnumVariantPyO3Options17take_pyo3_options0INtNtB28_6result6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorEEBV_(ptr sret([24 x i8]) align 8 %0, ptr nofree align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %i.k, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @_RNCNvMsd_NtCsbi23obv45GP_19pyo3_macros_backend7pyclassNtB7_22EnumVariantPyO3Options17take_pyo3_options0B9_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d) #14
  %i.l = load i64, ptr %i.e, align 8
  %.not1.i = icmp eq i64 %i.l, -1
  br i1 %.not1.i, label %bb.b, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCsbi23obv45GP_19pyo3_macros_backend(ptr sret([24 x i8]) align 8 %0) #14
  br label %_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass21EnumVariantPyO3OptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB26_12try_for_each4callBX_INtNtB2e_6result6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENCNvMsd_BZ_NtBZ_22EnumVariantPyO3Options17take_pyo3_options0E0B3I_EB11_.exit
end_hunk_0
