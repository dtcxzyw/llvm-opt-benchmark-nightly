Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-a7f17b7b4e7a41f9.dsl_auto_type.a0dd34975a68d28a-cgu.1?download=true
inline.NumInlined: 173
inline.NumDeleted: 22
begin_hunk_0_@_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4path15GenericArgumentReECsdOh5Xhm0ZW8_13dsl_auto_type:bb.a
bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.b) #25
          to label %bb.b unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error11new_spannedRNtNtB5_8lifetime8LifetimeReECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.d, align 8
  call void @_RNvYRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens17into_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1)
  invoke void @_RNvXsB_NtCs40k4W9msRzi_5alloc6stringReNtB5_8ToString9to_stringCshMFl0SviwmK_3syn(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c)
          to label %bb.c unwind label %bb.d

bb.b:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  call void @_RNvNvMNtCshMFl0SviwmK_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.b) #25
          to label %bb.b unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMNtCsjWx9XcG30NR_12darling_core5errorNtB3_5Error23unknown_field_with_altsReRAB1d_j5_ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([80 x i8]) align 8 %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @_RINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB6_17ErrorUnknownValue9with_altsReRAB1l_j5_ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([88 x i8]) align 8 %i.a, i1 zeroext false, ptr %1, i64 %2, ptr align 8 %3)
  call void @_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtNtCsjWx9XcG30NR_12darling_core5error4kind17ErrorUnknownValueINtB5_4IntoNtBA_9ErrorKindE4intoBE_(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr nonnull align 8 @1)
  call void @_RNvMNtCsjWx9XcG30NR_12darling_core5errorNtB2_5Error3new(ptr sret([80 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs0_NtCsjWx9XcG30NR_12darling_core5errorNtB6_5Error2atReECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8
  invoke void @_RNvXsB_NtCs40k4W9msRzi_5alloc6stringReNtB5_8ToString9to_stringCshMFl0SviwmK_3syn(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjWx9XcG30NR_12darling_core5error5ErrorEBF_(ptr align 8 %1) #25
          to label %bb.e unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6insertCsjWx9XcG30NR_12darling_core(ptr align 8 %1, i64 0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  ret void

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs0_NtCsjWx9XcG30NR_12darling_core5errorNtB6_5Error9with_spanRNtNtCshMFl0SviwmK_3syn4attr4MetaECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = invoke zeroext i1 @_RNvMs0_NtCsjWx9XcG30NR_12darling_core5errorNtB5_5Error8has_span(ptr align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtCsa66IwKi6YE3_5quote7spannedRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB5_7Spanned6___spanCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i, %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.e, %bb.e ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjWx9XcG30NR_12darling_core5error5ErrorEBF_(ptr align 8 %1) #25
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr align 8 %2, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCsa66IwKi6YE3_5quote7spannedRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB5_7Spanned6___spanCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvXs0_NtCsa66IwKi6YE3_5quote7spannedRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB5_7Spanned6___spanCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = invoke i32 @_RNvNtCsa66IwKi6YE3_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
          to label %bb.h unwind label %bb.b

bb.g:                                             ; preds = %bb.h, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  ret void

bb.h:                                             ; preds = %_RNvXs0_NtCsa66IwKi6YE3_5quote7spannedRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB5_7Spanned6___spanCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.g, ptr %i.i, align 4
  br label %bb.g

bb.i:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB6_17ErrorUnknownValue9with_altsReRAB1l_j5_ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) %0, i1 zeroext %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = tail call { ptr, ptr } @_RNvXsb_NtCscI6d9CVNmLh_4core5arrayRARej5_NtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %4) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = tail call { ptr, ptr } @_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB2g_17ErrorUnknownValue9with_altsBJ_RABJ_j5_E0ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr %i.e, ptr %i.f) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  call void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB1t_17ErrorUnknownValue9with_altsB1h_RAB1h_j5_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3set8BTreeSetNtNtB3O_6string6StringEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.h, ptr %i.i)
  invoke void @_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCsjWx9XcG30NR_12darling_core(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %2, i64 %3, ptr nonnull align 8 @4)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.c) #25
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RINvNtNtCsjWx9XcG30NR_12darling_core5error4kind12did_you_meanNtNtCs40k4W9msRzi_5alloc6string6StringRINtNtNtNtB11_11collections5btree3set8BTreeSetBX_EEB6_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %2, i64 %3, ptr nonnull align 8 %i.c)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdfcQ11shQaG_6strsim(ptr nonnull align 8 %i.b) #25
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = zext i1 %1 to i8
  store i8 %i.m, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB6_11Accumulator6handleINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB8_4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  call void @_RNvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB5_11Accumulator4push(ptr align 8 %1, ptr nonnull align 8 %i.a)
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB6_11Accumulator6handleINtNtCscI6d9CVNmLh_4core6option6OptionNtCsf5uYjtxkodL_11proc_macro25IdentEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((16, 17)) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  call void @_RNvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB5_11Accumulator4push(ptr align 8 %1, ptr nonnull align 8 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -2, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB6_11Accumulator6handleINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCshMFl0SviwmK_3syn4path4PathEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  call void @_RNvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB5_11Accumulator4push(ptr align 8 %1, ptr nonnull align 8 %i.a)
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RINvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB6_11Accumulator6handleNtNtNtB8_4util4flag4FlagECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @_RNvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB5_11Accumulator4push(ptr align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.f, %bb.c ]
  %.sroa.0.0 = phi i32 [ -1, %bb.b ], [ %i.d, %bb.c ]
  %i.g = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableINtNtNtB4_3mem12maybe_uninit11MaybeUninitOTRNtCsf5uYjtxkodL_11proc_macro25IdentbEEECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableINtNtNtB4_3mem12maybe_uninit11MaybeUninitOTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEEECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableINtNtNtB4_3mem12maybe_uninit11MaybeUninitPTRNtCsf5uYjtxkodL_11proc_macro25IdentbEEECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableINtNtNtB4_3mem12maybe_uninit11MaybeUninitPTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEEECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableINtNtNtB4_3mem12maybe_uninit11MaybeUninitjEECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, i64 %1, i64 %2
  ret i64 %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableOOTRNtCsf5uYjtxkodL_11proc_macro25IdentbEECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableOOTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableOPTRNtCsf5uYjtxkodL_11proc_macro25IdentbEECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableOPTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCscI6d9CVNmLh_4core10intrinsics20select_unpredictableOjECsdOh5Xhm0ZW8_13dsl_auto_type(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTRNtCsf5uYjtxkodL_11proc_macro25IdentbEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdfcQ11shQaG_6strsim(ptr %0, ptr %1, i64 2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr19swap_nonoverlappingTRNtCsf5uYjtxkodL_11proc_macro25IdentbEECsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr19swap_nonoverlappingTRNtCsf5uYjtxkodL_11proc_macro25IdentbEECsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr %0, ptr %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdfcQ11shQaG_6strsim(ptr %0, ptr %1, i64 2)
end_hunk_0
begin_hunk_1_@_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjWx9XcG30NR_12darling_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16DeriveParametersNtNtCsjWx9XcG30NR_12darling_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nofree writeonly sret([120 x i8]) align 8 captures(none) initializes((0, 88)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn4item6ItemFnNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([352 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i64 352, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCshMFl0SviwmK_3syn4path13PathArgumentsNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type4case4CaseNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultQNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultRNtNtCshMFl0SviwmK_3syn4stmt4StmtNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultjNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtNtCsjWx9XcG30NR_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringENtNtBR_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2u_EE13from_residualCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 80)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtCsdOh5Xhm0ZW8_13dsl_auto_type5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCshMFl0SviwmK_3syn5error5ErrorEE13from_residualB1s_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtCsdOh5Xhm0ZW8_13dsl_auto_type5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjWx9XcG30NR_12darling_core5error5ErrorEE13from_residualB1s_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 80)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16DeriveParametersNtNtCsjWx9XcG30NR_12darling_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1J_EE13from_residualBO_(ptr nofree writeonly sret([120 x i8]) align 8 captures(none) initializes((0, 88)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCsf5uYjtxkodL_11proc_macro23impNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXs1_NtCsf5uYjtxkodL_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXsU_Cs50gxqRnCXtk_10proc_macroNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 4 %i.h), !noalias !7 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !7
  invoke void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsf5uYjtxkodL_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.d, !noalias !7

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsf5uYjtxkodL_11proc_macro2(ptr nonnull align 4 %i.b) #25
          to label %bb.f unwind label %bb.e, !noalias !7

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !noalias !7
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtBb_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1v_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTOhEE9call_onceB1B_(ptr %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0B1y_(ptr nonnull %i.a, ptr %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden ptr @_RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call ptr @_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsdfcQ11shQaG_6strsim(ptr nonnull %i.a, ptr align 8 %0)
  ret ptr %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB9_12TypeInferrer25try_infer_expression_types3_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_onceBd_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RNCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB6_12TypeInferrer25try_infer_expression_types3_0Ba_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RNvYNcNtINtNtCscI6d9CVNmLh_4core6option6OptionRNtNtCshMFl0SviwmK_3syn4expr4ExprE4Some0INtNtNtBb_3ops8function5FnMutTBI_EE8call_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_RNcNtINtNtCscI6d9CVNmLh_4core6option6OptionRNtNtCshMFl0SviwmK_3syn4expr4ExprE4Some0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden ptr @_RNvYNvYINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneINtNtNtB1d_3ops8function5FnMutTRB5_EE8call_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_RNvXsx_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNvYINtNtCscI6d9CVNmLh_4core6option8IntoIterNtNtCshMFl0SviwmK_3syn4path15GenericArgumentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextINtNtNtBa_3ops8function6FnOnceTQB5_EE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([312 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterNtNtCshMFl0SviwmK_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([312 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, ptr } @_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBY_4expr4ExprENcNtINtNtBe_6option6OptionRB1x_E4Some0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB11_4expr4ExprENcNtINtNtBb_6option6OptionRB1A_E4Some0ENtNtNtB9_6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB14_4path11PathSegmentEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([88 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB16_4path11PathSegmentEENtNtNtB8_6traits8iterator8Iterator4nextCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([88 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNvYNtNtCshMFl0SviwmK_3syn4item6ItemFnNtNtB9_5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtBF_11ParseBufferEE9call_onceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([352 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs7_NtNtCshMFl0SviwmK_3syn4item7parsingNtB7_6ItemFnNtNtB9_5parse5Parse5parse(ptr sret([352 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvYNvYTRNtCsf5uYjtxkodL_11proc_macro25IdentbENtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtBM_3ops8function5FnMutTRB5_B1S_EE8call_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readnone captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXsc_NtCscI6d9CVNmLh_4core5tupleTRNtCsf5uYjtxkodL_11proc_macro25IdentbENtNtB7_3cmp10PartialOrd2ltCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1, ptr align 8 %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvYNvYTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readnone captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXsc_NtCscI6d9CVNmLh_4core5tupleTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebENtNtB7_3cmp10PartialOrd2ltCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1, ptr align 8 %2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8
  invoke void @_RNvXNtNtCshMFl0SviwmK_3syn3pat8printingNtB4_8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c

_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens17into_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXNtNtCshMFl0SviwmK_3syn3pat8printingNtB4_8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYRNtNtCshMFl0SviwmK_3syn3pat8PatIdentNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c

_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens17into_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRRNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens15to_token_streamCsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #25
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
end_hunk_1
