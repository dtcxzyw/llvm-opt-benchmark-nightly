Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.15?download=true
inline.NumInlined: 83
inline.NumDeleted: 19
begin_hunk_0_@_RNvNtNtCskKLDkoKarTP_4core4char7methods25encode_utf8_raw_uncheckedCsbi23obv45GP_19pyo3_macros_backend:bb.a
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %0, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %0, 18
  %i.o = trunc i32 %i.n to i8
  %i.p = or i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %0 to i8
  store i8 %i.q, ptr %1, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.e, ptr %i.s, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i32 %0, 65536
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.k, -32
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.e, ptr %i.w, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.m, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.e, ptr %i.z, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.d, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvNtCsbi23obv45GP_19pyo3_macros_backend6module20pymodule_module_impl17extract_use_items(ptr noalias nonnull align 8 %0, ptr align 8 %1, ptr align 8 %2, i64 %3, ptr align 8 %4, ptr align 8 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = load i32, ptr %1, align 8
  switch i32 %i.m, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call fastcc void @_RNvNvNtCsbi23obv45GP_19pyo3_macros_backend6module20pymodule_module_impl17extract_use_items(ptr noalias align 8 %i.i, ptr align 8 %i.o, ptr align 8 %2, i64 %3, ptr align 8 %4, ptr align 8 %5)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i) #20
  %i.p = load i64, ptr %i.j, align 8
  %.not4 = icmp eq i64 %i.p, -1
  br i1 %.not4, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs15_Cs3FigHW6Y7TR_11proc_macro2NtB6_5IdentNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.q) #20
  call void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs3FigHW6Y7TR_11proc_macro25IdentE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %4, ptr nonnull align 8 %i.l) #20
  call void @_RNvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs1QQTzni0HOp_3syn4attr9Attribute6to_vecCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr align 8 %2, i64 %3) #20
  call void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCs1QQTzni0HOp_3syn4attr9AttributeEE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %5, ptr nonnull align 8 %i.k) #20
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvXs15_Cs3FigHW6Y7TR_11proc_macro2NtB6_5IdentNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.r) #20
  call void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs3FigHW6Y7TR_11proc_macro25IdentE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %4, ptr nonnull align 8 %i.d) #20
  call void @_RNvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs1QQTzni0HOp_3syn4attr9Attribute6to_vecCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %2, i64 %3) #20
  call void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCs1QQTzni0HOp_3syn4attr9AttributeEE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %5, ptr nonnull align 8 %i.c) #20
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = tail call i32 @_RNvXNtCs1QQTzni0HOp_3syn7spannedNtNtB4_4item7UseGlobNtB2_7Spanned4spanCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 4 %i.s)
  call void @_RINvMNtCs1QQTzni0HOp_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.e, i32 %i.t, ptr nonnull @159, i64 41)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = tail call { ptr, ptr } @_RNvXs9_NtCs1QQTzni0HOp_3syn10punctuatedRINtB5_10PunctuatedNtNtB7_4item7UseTreeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.u) ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  store ptr %i.w, ptr %i.h, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.x, ptr %i.y, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @158) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.o, %bb.e, %bb.d, %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.s, %bb.i, %bb.h, %bb.f
  ret void

bb.k:                                             ; preds = %bb.q, %bb.g
  %i.z = invoke align 8 ptr @_RNvXst_NtCs1QQTzni0HOp_3syn10punctuatedINtB5_4IterNtNtB7_4item7UseTreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.h)
          to label %bb.m unwind label %.loopexit  ; 2 uses

.loopexit:                                        ; preds = %bb.k, %bb.n, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtBG_4item7UseTreeEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.h) #18
          to label %bb.u unwind label %bb.t

bb.m:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RNvNvNtCsbi23obv45GP_19pyo3_macros_backend6module20pymodule_module_impl17extract_use_items(ptr noalias align 8 %i.f, ptr nonnull align 8 %i.z, ptr align 8 %2, i64 %3, ptr align 8 %4, ptr align 8 %5)
          to label %bb.p unwind label %.loopexit

bb.o:                                             ; preds = %bb.m
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtBG_4item7UseTreeEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.h)
  br label %bb.i

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.aa = load i64, ptr %i.g, align 8
  %.not3 = icmp eq i64 %i.aa, -1
  br i1 %.not3, label %bb.k, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @160)
          to label %bb.s unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtBG_4item7UseTreeEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.h)
  br label %bb.j

bb.t:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.u:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvNvNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw8do_panic7runtimeCsbi23obv45GP_19pyo3_macros_backend(i32 %0, i64 range(i64 1, 5) %1, i64 range(i64 0, 4) %2) unnamed_addr #7 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.d, align 4
  store i64 %1, ptr %i.c, align 8
  store i64 %2, ptr %i.b, align 8
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.22.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.26.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.210.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @161, ptr nonnull %i.a, ptr nonnull align 8 @157) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentNtNtCsexYYUdYSQU6_5alloc6string6StringE10equivalentCsbi23obv45GP_19pyo3_macros_backend(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs0_NtCsexYYUdYSQU6_5alloc3strNtNtB7_6string6StringINtNtCskKLDkoKarTP_4core6borrow6BorroweE6borrowCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %2) #20 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = tail call zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsbi23obv45GP_19pyo3_macros_backend(ptr %0, i64 %1, ptr %i.b, i64 %i.c) #20
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRNtNtCsbi23obv45GP_19pyo3_macros_backend5utils11StaticIdentNtB2_8ToTokens9to_tokensBD_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call i32 @_RNvMsi_Cs3FigHW6Y7TR_11proc_macro2NtB5_4Span9call_site()
  call void @_RNvMsx_Cs3FigHW6Y7TR_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.c, i64 %i.e, i32 %i.f, ptr nonnull align 8 @167)
  call void @_RINvXNtCs4yLFsuhaAhE_5quote3extNtCs3FigHW6Y7TR_11proc_macro211TokenStreamNtB3_14TokenStreamExt6appendNtBv_5IdentEB5_(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRNtNtCsbi23obv45GP_19pyo3_macros_backend5utils13PyO3CratePathNtB2_8ToTokens9to_tokensBD_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXs2_NtCsbi23obv45GP_19pyo3_macros_backend5utilsNtB5_13PyO3CratePathNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRNtNtCsbi23obv45GP_19pyo3_macros_backend5utils9StrOrExprNtB2_8ToTokens9to_tokensBD_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsP_NtCs1QQTzni0HOp_3syn4exprNtB5_4ExprNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.a, ptr align 8 %1)
  br label %_RNvXs_NtCsbi23obv45GP_19pyo3_macros_backend5utilsNtB4_9StrOrExprNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_RNvXs6_NtCs4yLFsuhaAhE_5quote9to_tokensNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.c, ptr align 8 %1)
  br label %_RNvXs_NtCsbi23obv45GP_19pyo3_macros_backend5utilsNtB4_9StrOrExprNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens.exit

_RNvXs_NtCsbi23obv45GP_19pyo3_macros_backend5utilsNtB4_9StrOrExprNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsbi23obv45GP_19pyo3_macros_backend6moduleNtB2_15PyModuleOptionsNtNtCs1QQTzni0HOp_3syn5parse5Parse5parse(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [56 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 3 uses
  %i.r = alloca [24 x i8], align 8                ; 3 uses
  %i.s = alloca [128 x i8], align 8               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtCs1QQTzni0HOp_3syn5token5CrateINtBN_11LitStrValueNtNtB1W_4path4PathEEENtNtB7_7default7Default7defaultBP_(ptr nonnull sret([56 x i8]) align 8 %i.l) #20, !noalias !49
  invoke void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw4nameNtBN_10NameLitStrEENtNtB7_7default7Default7defaultBP_(ptr nonnull sret([32 x i8]) align 8 %i.k)
          to label %bb.d unwind label %bb.c, !noalias !49

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.t, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtCs1QQTzni0HOp_3syn5token5CrateINtB10_11LitStrValueNtNtB29_4path4PathEEEEB12_(ptr nonnull align 8 %i.l) #18
          to label %common.resume unwind label %bb.j, !noalias !49

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.u = invoke { ptr, i32 } @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw6moduleNtNtCs1QQTzni0HOp_3syn3lit6LitStrEENtNtB7_7default7Default7defaultBP_()
          to label %bb.g unwind label %bb.f, !noalias !49 ; 2 uses

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.v, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB10_2kw4nameNtB10_10NameLitStrEEEB12_(ptr nonnull align 8 %i.k) #18
          to label %bb.b unwind label %bb.j, !noalias !49

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.w = extractvalue { ptr, i32 } %i.u, 0        ; 2 uses
  %i.x = extractvalue { ptr, i32 } %i.u, 1        ; 2 uses
  store ptr %i.w, ptr %i.j, align 8, !noalias !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.x, ptr %i.y, align 8, !noalias !49
  %i.z = invoke { i32, i32 } @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw9submoduleENtNtB7_7default7Default7defaultBQ_()
          to label %bb.i unwind label %bb.h, !noalias !49 ; 2 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB10_2kw6moduleNtNtCs1QQTzni0HOp_3syn3lit6LitStrEEEB12_(ptr nonnull align 8 %i.j) #18
          to label %bb.e unwind label %bb.j, !noalias !49

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBN_2kw8gil_usedNtNtCs1QQTzni0HOp_3syn3lit7LitBoolEENtNtB7_7default7Default7defaultBP_(ptr nonnull sret([12 x i8]) align 4 %i.i)
          to label %_RNvXs3_NtCsbi23obv45GP_19pyo3_macros_backend6moduleNtB5_15PyModuleOptionsNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_.exit unwind label %bb.h, !noalias !49

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.b
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !49
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.b ], [ %i.ak, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvXs3_NtCsbi23obv45GP_19pyo3_macros_backend6moduleNtB5_15PyModuleOptionsNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_.exit: ; preds = %bb.i
  %i.ac = extractvalue { i32, i32 } %i.z, 1
  %i.ad = extractvalue { i32, i32 } %i.z, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 2 uses
  store ptr %i.w, ptr %i.af, align 8, !alias.scope !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store i32 %i.x, ptr %i.ag, align 8, !alias.scope !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  store i32 %i.ad, ptr %i.ah, align 8, !alias.scope !49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  store i32 %i.ac, ptr %i.ai, align 4, !alias.scope !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtCs1QQTzni0HOp_3syn10punctuatedINtB2_10PunctuatedNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtB4_5token5CommaE16parse_terminatedBU_(ptr nonnull sret([32 x i8]) align 8 %i.o, ptr align 8 %1)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %.invoke, %bb.q, %bb.p, %.noexc2, %.noexc1, %.noexc, %bb.o, %bb.r, %bb.l, %_RNvXs3_NtCsbi23obv45GP_19pyo3_macros_backend6moduleNtB5_15PyModuleOptionsNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbi23obv45GP_19pyo3_macros_backend6module15PyModuleOptionsEBF_(ptr nonnull align 8 %i.s) #18
          to label %common.resume unwind label %bb.x

bb.l:                                             ; preds = %_RNvXs3_NtCsbi23obv45GP_19pyo3_macros_backend6moduleNtB5_15PyModuleOptionsNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_.exit
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtCs1QQTzni0HOp_3syn10punctuated10PunctuatedNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1z_(ptr nonnull sret([32 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.al = load i64, ptr %i.p, align 8
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  br label %.invoke

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXs8_NtCs1QQTzni0HOp_3syn10punctuatedINtB5_10PunctuatedNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBX_(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.b)
          to label %.noexc unwind label %bb.k

end_hunk_0
