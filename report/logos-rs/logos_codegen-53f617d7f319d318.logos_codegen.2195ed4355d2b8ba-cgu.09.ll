Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.09?download=true
inline.NumInlined: 75
inline.NumDeleted: 10
begin_hunk_0_@_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser6nested15AttributeParserENtB2_12IntoIterator9into_iterB1u_:bb.a
; Function Attrs: nonlazybind uwtable
define i32 @_RNvXs0_NtCs36YJ3mR2EUy_5quote7spannedNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtB5_7Spanned6___spanCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXs7_NtNtCshx33xqnyVJN_3syn8generics8printingNtB7_10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvYRNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens17into_token_streamCs2SM5xCHwwDm_13logos_codegen.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #16
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvYRNtNtCshx33xqnyVJN_3syn8generics10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens17into_token_streamCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call i32 @_RNvNtCs36YJ3mR2EUy_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvXs0_NtCs36YJ3mR2EUy_5quote7spannedNtNtCshx33xqnyVJN_3syn8generics13LifetimeParamNtB5_7Spanned6___spanCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsgSMwPvzVUxY_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXs3_NtNtCshx33xqnyVJN_3syn8generics8printingNtB7_13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvYRNtNtCshx33xqnyVJN_3syn8generics13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens17into_token_streamCs2SM5xCHwwDm_13logos_codegen.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgSMwPvzVUxY_11proc_macro211TokenStreamECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.a) #16
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvYRNtNtCshx33xqnyVJN_3syn8generics13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens17into_token_streamCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call i32 @_RNvNtCs36YJ3mR2EUy_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  ret i32 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCskKLDkoKarTP_4core3str7patterncNtB5_7Pattern13into_searcherCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 41)) %0, i32 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_rawCs2SM5xCHwwDm_13logos_codegen(i32 %1, ptr nonnull %i.a, i64 4) #18
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %i.d = icmp ugt i64 %i.c, 255                   ; 2 uses
  %i.e = trunc nuw i64 %i.c to i8
  %.sroa.3.0 = select i1 %i.d, i8 2, i8 %i.e
  %i.f = call i8 @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.d, i8 %.sroa.3.0, ptr nonnull @52, i64 32, ptr nonnull align 8 @54) #18
  %.sroa.01.0.copyload = load i32, ptr %i.a, align 4
  store ptr %2, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.f, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.01.0.copyload, ptr %i.l, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs5_NtNtCs2SM5xCHwwDm_13logos_codegen6parser12ignore_flagsNtB5_11IgnoreFlagsNtNtCskKLDkoKarTP_4core7default7Default7defaultB9_() unnamed_addr #1 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs_NtCs2SM5xCHwwDm_13logos_codegen6parserNtB4_6ParserNtNtCskKLDkoKarTP_4core7default7Default7defaultB6_(ptr nofree writeonly sret([296 x i8]) align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [96 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXs0_NtCs2SM5xCHwwDm_13logos_codegen5errorNtB5_6ErrorsNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_(ptr nonnull sret([24 x i8]) align 8 %i.h) #18
  %i.i = invoke { i32, i8 } @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCshx33xqnyVJN_3syn3lit7LitBoolENtNtB7_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen()
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.f, %bb.c
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.f ], [ %i.j, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2SM5xCHwwDm_13logos_codegen5error6ErrorsEBF_(ptr nonnull align 8 %i.h) #16
          to label %bb.x unwind label %bb.w

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition10DefinitionENtNtCskKLDkoKarTP_4core7default7Default7defaultBL_(ptr nonnull sret([24 x i8]) align 8 %i.g)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs2_NtCs2SM5xCHwwDm_13logos_codegen4utilNtB5_9MaybeVoidNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.i ], [ %i.k, %bb.g ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition10DefinitionEEB1e_(ptr nonnull align 8 %i.g) #16
          to label %bb.b unwind label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition7LiteralEENtNtCskKLDkoKarTP_4core7default7Default7defaultB1l_(ptr nonnull sret([24 x i8]) align 8 %i.e)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.l ], [ %i.l, %bb.j ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2SM5xCHwwDm_13logos_codegen4util9MaybeVoidEBF_(ptr nonnull align 8 %i.f) #16
          to label %bb.f unwind label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10error_type9ErrorTypeENtNtB7_7default7Default7defaultBQ_(ptr nonnull sret([96 x i8]) align 8 %i.d)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.o, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.m, %bb.m ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition7LiteralEEEB1O_(ptr nonnull align 8 %i.e) #16
          to label %bb.i unwind label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtB7_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.n, %bb.p ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10error_type9ErrorTypeEEB13_(ptr nonnull align 8 %i.d) #16
          to label %bb.l unwind label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.b)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.u, %bb.s
  %.pn = phi { ptr, i32 } [ %i.p, %bb.u ], [ %i.o, %bb.s ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgSMwPvzVUxY_11proc_macro211TokenStreamEECs36YJ3mR2EUy_5quote(ptr nonnull align 8 %i.c) #16
          to label %bb.o unwind label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentINtNtCskKLDkoKarTP_4core6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEENtNtB1k_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.a)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshx33xqnyVJN_3syn(ptr nonnull align 8 %i.b) #16
          to label %bb.r unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = extractvalue { i32, i8 } %i.i, 1
  %i.s = extractvalue { i32, i8 } %i.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i8 %i.r, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 8
  ret void

bb.w:                                             ; preds = %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.b
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.x:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5array4iter8IntoIterbKj100_EB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((8, 9)) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5array4iter8IntoIterbKj100_EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1) #18 ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0          ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  store i64 %i.e, ptr %0, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.c, ptr %.sroa.36.0..sroa_idx, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6filter6FilterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0ENCNvMs6_B2f_NtB2f_5Graph13retain_states0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2h_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0ENCNvMs6_B1O_NtB1O_5Graph13retain_states0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Q_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range14RangeInclusivehEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range14RangeInclusivehEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafEENtNtNtB8_6traits8iterator8Iterator4nextB1B_(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr align 8 %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1A_5StateEEENtNtNtB8_6traits8iterator8Iterator4nextB1C_(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBS_5StateEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8 %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTRAbj100_RjEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTRAbj100_RjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter6ChunksTRAbj100_RjEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((8, 16)) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs17_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_6ChunksTRAbj100_RjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1) #18 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  store i64 %i.e, ptr %0, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.36.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5LinesENtNtNtB8_6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a) #18
  ret void
}

end_hunk_0
begin_hunk_1_@_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtB8_10filter_map9FilterMapINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB1y_4path11PathSegmentENCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetime0EIB1u_NtB2c_15GenericArgumentENCB2D_s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCB2D_s0_0EB2J_
; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCshx33xqnyVJN_3syn8lifetime8LifetimeE4takeCs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMse_CsgSMwPvzVUxY_11proc_macro2NtB5_4Span9call_site() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMNtCshx33xqnyVJN_3syn8lifetimeNtB2_8Lifetime4span(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshx33xqnyVJN_3syn8lifetime8LifetimeEEB11_(ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #12

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj4_ECs8UJyeeIGyGC_12regex_syntax(ptr, ptr) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj2_ECs8UJyeeIGyGC_12regex_syntax(ptr, ptr) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj1_ECs8UJyeeIGyGC_12regex_syntax(ptr, ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtNtCshx33xqnyVJN_3syn8generics8printingNtB7_10ConstParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCshx33xqnyVJN_3syn8generics8printingNtB7_13LifetimeParamNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvNtCs36YJ3mR2EUy_5quote7spanned10join_spans(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_rawCs2SM5xCHwwDm_13logos_codegen(i32, ptr, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs8UJyeeIGyGC_12regex_syntax(i1 zeroext, i8, ptr, i64, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs2SM5xCHwwDm_13logos_codegen5errorNtB5_6ErrorsNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_(ptr sret([24 x i8]) align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i8 } @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCshx33xqnyVJN_3syn3lit7LitBoolENtNtB7_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition10DefinitionENtNtCskKLDkoKarTP_4core7default7Default7defaultBL_(ptr sret([24 x i8]) align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtCs2SM5xCHwwDm_13logos_codegen4utilNtB5_9MaybeVoidNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_(ptr sret([32 x i8]) align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition7LiteralEENtNtCskKLDkoKarTP_4core7default7Default7defaultB1l_(ptr sret([24 x i8]) align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10error_type9ErrorTypeENtNtB7_7default7Default7defaultBQ_(ptr sret([96 x i8]) align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtCsgSMwPvzVUxY_11proc_macro211TokenStreamENtNtB7_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshx33xqnyVJN_3syn(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10error_type9ErrorTypeEEB13_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition7LiteralEEEB1O_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2SM5xCHwwDm_13logos_codegen4util9MaybeVoidEBF_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition10DefinitionEEB1e_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2SM5xCHwwDm_13logos_codegen5error6ErrorsEBF_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentINtNtCskKLDkoKarTP_4core6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEENtNtB1k_7default7Default7defaultCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i8, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5array4iter8IntoIterbKj100_EBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0ENCNvMs6_B1O_NtB1O_5Graph13retain_states0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Q_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range14RangeInclusivehEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBS_5StateEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTRAbj100_RjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs17_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_6ChunksTRAbj100_RjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCshx33xqnyVJN_3syn6bufferNtB2_11TokenBuffer4new2(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCshx33xqnyVJN_3syn5parse22tokens_to_parse_buffer(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvYNvYNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn11parse_quote10ParseQuote5parseINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtNtBP_5parse11ParseBufferEE9call_onceCs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCshx33xqnyVJN_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCshx33xqnyVJN_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs9_NtCshx33xqnyVJN_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i8 } @_RNvNtCshx33xqnyVJN_3syn5parse33span_of_unexpected_ignoring_nones(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCshx33xqnyVJN_3syn5parse20err_unexpected_token(ptr sret([24 x i8]) align 8, i32, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn5parse11ParseBufferEBF_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshx33xqnyVJN_3syn6buffer11TokenBufferEBF_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtCsgSMwPvzVUxY_11proc_macro211TokenStreamNtNtCshx33xqnyVJN_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { noreturn }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { inlinehint }
attributes #19 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"address", !"read_provenance"}
!5 = distinct !{!5, i1 true, !"_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams4find"}
!6 = distinct !{!6, !5, !"_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams4find: argument 0"}
!7 = !{!6}
!8 = distinct !{!8, i1 true, !"_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr"}
!9 = distinct !{!9, !8, !"_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr: argument 0"}
!10 = !{!9}
!11 = distinct !{!11, i1 true, !"_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr"}
!12 = distinct !{!12, !11, !"_RNvMNtCs2SM5xCHwwDm_13logos_codegen6parserNtB2_6Parser10parse_attr: argument 0"}
!13 = !{!12}
!14 = distinct !{!14, i1 true, !"_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams8generics"}
!15 = distinct !{!15, !14, !"_RNvMNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_paramsNtB2_10TypeParams8generics: argument 0"}
!16 = !{!15}
end_hunk_1
