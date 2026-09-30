Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.13?download=true
inline.NumInlined: 77
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs4_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1g_2kw10rename_allNtB1g_18RenamingRuleLitStrEENtB5_8ToTokens9to_tokensB1i_:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw10rename_allNtB5_18RenamingRuleLitStrENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %0, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1g_2kw11constructorNtNtNtB1i_10pyfunction9signature9SignatureEENtB5_8ToTokens9to_tokensB1i_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw11constructorNtNtNtB7_10pyfunction9signature9SignatureENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %0, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1g_2kw3newNtB1g_25NewImplTypeAttributeValueEENtB5_8ToTokens9to_tokensB1i_(ptr align 4 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw3newNtB5_25NewImplTypeAttributeValueENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 4 %i.c, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1g_2kw4nameNtB1g_10NameLitStrEENtB5_8ToTokens9to_tokensB1i_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw4nameNtB5_10NameLitStrENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %0, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCskKLDkoKarTP_4core6option6OptionNtCs3FigHW6Y7TR_11proc_macro211TokenStreamENtB5_8ToTokens9to_tokensCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsu_NtCs4yLFsuhaAhE_5quote9to_tokensNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %0, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprENtB5_8ToTokens9to_tokensCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsP_NtCs1QQTzni0HOp_3syn4exprNtB5_4ExprNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %0, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs1QQTzni0HOp_3syn4item10ImplItemFnENtB5_8ToTokens9to_tokensCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsn_NtNtCs1QQTzni0HOp_3syn4item8printingNtB7_10ImplItemFnNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %0, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes15StringFormatterENtB5_8ToTokens9to_tokensB1h_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtCsbi23obv45GP_19pyo3_macros_backend10attributesNtB4_15StringFormatterNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %0, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs4yLFsuhaAhE_5quote9to_tokensINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw4hashENtB5_8ToTokens9to_tokensB1j_(ptr align 4 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RNvXs1_NvNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kwsb_1__NtB7_4hashNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.c, ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw10rename_allNtBN_18RenamingRuleLitStrEENtNtB7_5clone5Clone5cloneBP_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((8, 9)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsg_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw10rename_allNtB5_18RenamingRuleLitStrENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw3newNtBN_25NewImplTypeAttributeValueEENtNtB7_5clone5Clone5cloneBP_(ptr align 4 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = tail call i32 @_RNvXsg_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw3newNtB5_25NewImplTypeAttributeValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull align 4 %i.c) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.e = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.f = insertvalue { i32, i32 } %i.e, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw4nameNtBN_10NameLitStrEENtNtB7_5clone5Clone5cloneBP_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((16, 17)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsg_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw4nameNtB5_10NameLitStrENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw6moduleNtNtCs1QQTzni0HOp_3syn3lit6LitStrEENtNtB7_5clone5Clone10clone_fromBP_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pr = load ptr, ptr %1, align 8
  %.not5 = icmp eq ptr %.pr, null
  br i1 %.not5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvYINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB5_2kw6moduleNtNtCs1QQTzni0HOp_3syn3lit6LitStrENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromB7_(ptr nonnull align 8 %0, ptr nonnull align 8 %1) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.b = tail call { ptr, i32 } @_RNvXsg_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw6moduleNtNtCs1QQTzni0HOp_3syn3lit6LitStrENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %1) #12 ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.e
  %.sroa.4.0 = phi i32 [ %i.d, %bb.e ], [ undef, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.c, %bb.e ], [ null, %bb.a ] ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB10_2kw6moduleNtNtCs1QQTzni0HOp_3syn3lit6LitStrEEEB12_(ptr nonnull align 8 %0)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.0, ptr %0, align 8
  store i32 %.sroa.4.0, ptr %i.a, align 8
  resume { ptr, i32 } %i.e

bb.g:                                             ; preds = %.thread
  store ptr %.sroa.0.0, ptr %0, align 8
  store i32 %.sroa.4.0, ptr %i.a, align 8
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw6moduleNtNtCs1QQTzni0HOp_3syn3lit6LitStrEENtNtB7_5clone5Clone5cloneBP_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i32 } @_RNvXsg_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw6moduleNtNtCs1QQTzni0HOp_3syn3lit6LitStrENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %0) #12 ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, i32 } %i.e, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw7extendsNtNtCs1QQTzni0HOp_3syn4path4PathEENtNtB7_5clone5Clone5cloneBP_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsg_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw7extendsNtNtCs1QQTzni0HOp_3syn4path4PathENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull sret([56 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw8freelistINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1QQTzni0HOp_3syn4expr4ExprEEENtNtB7_5clone5Clone5cloneBP_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i32 } @_RNvXsg_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw8freelistINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1QQTzni0HOp_3syn4expr4ExprEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %0) #12 ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, i32 } %i.e, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtCs1QQTzni0HOp_3syn5token5CrateINtBN_11LitStrValueNtNtB1W_4path4PathEEENtNtB7_5clone5Clone5cloneBP_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsg_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtCs1QQTzni0HOp_3syn5token5CrateINtB5_11LitStrValueNtNtB1k_4path4PathEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull sret([56 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes24OptionalKeywordAttributeNtNtBN_2kw3strNtBN_15StringFormatterEENtNtB7_5clone5Clone5cloneBP_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsi_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_24OptionalKeywordAttributeNtNtB5_2kw3strNtB5_15StringFormatterENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes15StringFormatterENtNtB7_5clone5Clone5cloneBO_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXse_NtCsbi23obv45GP_19pyo3_macros_backend10attributesNtB5_15StringFormatterNtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw10unsendableENtNtB7_5clone5Clone5cloneBQ_(ptr align 4 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = tail call i32 @_RNvXs3_NvNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kwsw_1__NtB7_10unsendableNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr nonnull align 4 %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.e = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.f = insertvalue { i32, i32 } %i.e, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw11transparentENtNtB7_5clone5Clone5cloneBQ_(ptr align 4 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = tail call i32 @_RNvXs3_NvNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kwsv_1__NtB7_11transparentNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr nonnull align 4 %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.e = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.f = insertvalue { i32, i32 } %i.e, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw13from_item_allENtNtB7_5clone5Clone5cloneBQ_(ptr align 4 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = trunc i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = tail call i32 @_RNvXs3_NvNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kwsf_1__NtB7_13from_item_allNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr nonnull align 4 %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.e = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.f = insertvalue { i32, i32 } %i.e, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.f
end_hunk_0
